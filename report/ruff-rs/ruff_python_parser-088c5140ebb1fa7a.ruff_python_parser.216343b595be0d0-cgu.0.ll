Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_parser-088c5140ebb1fa7a.ruff_python_parser.216343b595be0d0-cgu.0?download=true
inline.NumInlined: 5180
inline.NumDeleted: 1805
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser10parse_listNCNvMNtB5_10expressionBL_34parse_interpolated_string_elements0EB7_:bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(24) %i.c) #44
          to label %.body unwind label %bb.fi, !noalias !689, !inline_history !426

bb.fi:                                            ; preds = %bb.fh
  %i.ot = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !689, !inline_history !426
  unreachable

_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i: ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !688
  %.sroa.0231.0.copyload = load i64, ptr %i.c, align 8, !noalias !688 ; 2 uses
  %.sroa.4232.0.copyload = load ptr, ptr %i.ct, align 8, !noalias !688
  %.sroa.5233.0.copyload = load i64, ptr %i.cu, align 8, !noalias !688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !687
  %i.ou = load i16, ptr %i.cs, align 2, !alias.scope !665, !noalias !666, !noundef !15
  %i.ov = add i16 %i.ou, 1
  store i16 %i.ov, ptr %i.cs, align 2, !alias.scope !665, !noalias !666
  %.not109.i = icmp eq i64 %.sroa.0231.0.copyload, -1
  br i1 %.not109.i, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i._RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i.thread_crit_edge, label %bb.fj

_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i._RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i.thread_crit_edge: ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i
  %.val144.i.pre = load i32, ptr %i.bg, align 8, !alias.scope !626, !noalias !627
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i.thread

_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i.thread: ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i._RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i.thread_crit_edge, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit229.i
  %.val144.i = phi i32 [ %.val144.i.pre, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i._RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i.thread_crit_edge ], [ %.val139.i, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit229.i ]
  %.val145.i = load i32, ptr %i.bh, align 4, !alias.scope !626, !noalias !627, !noundef !15
  invoke fastcc void @_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser31report_recursion_limit_exceededNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB7_(ptr noalias noundef nonnull align 8 dereferenceable(464) %0, i32 noundef %.val144.i, i32 noundef %.val145.i)
          to label %bb.fj unwind label %.loopexit.split-lp331.loopexit.split-lp.loopexit, !noalias !627, !inline_history !321

bb.fj:                                            ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i.thread, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i
  %.sroa.6197.0 = phi i64 [ %.sroa.5233.0.copyload, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i ], [ 0, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i.thread ]
  %.sroa.5194.0 = phi ptr [ %.sroa.4232.0.copyload, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i ], [ inttoptr (i64 8 to ptr), %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i.thread ]
  %.sroa.0192.0 = phi i64 [ %.sroa.0231.0.copyload, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i ], [ 0, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !628
  %.val151.i = load i32, ptr %i.cc, align 4, !alias.scope !626, !noalias !627, !noundef !15 ; 2 uses
  %.sroa.0.0.i247.i = call i32 @llvm.umin.i32(i32 %.val151.i, i32 %.val139.i)
  store i32 %.sroa.0.0.i247.i, ptr %i.cy, align 8, !noalias !628
  store i32 %.val151.i, ptr %i.cz, align 4, !noalias !628
  store i32 -2, ptr %i.da, align 8, !noalias !628
  store i64 %.sroa.0192.0, ptr %i.s, align 8, !noalias !628
  store ptr %.sroa.5194.0, ptr %.sroa.4208.0..sroa_idx, align 8, !noalias !628
  store i64 %.sroa.6197.0, ptr %.sroa.5209.0..sroa_idx, align 8, !noalias !628
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !690, !inline_history !321
  %i.ow = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !690, !inline_history !321 ; 3 uses
  %i.ox = icmp eq ptr %i.ow, null
  br i1 %i.ox, label %bb.fk, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i, !prof !29

bb.fk:                                            ; preds = %bb.fj
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #41
          to label %.noexc248.i unwind label %bb.fl, !noalias !627, !inline_history !321

.noexc248.i:                                      ; preds = %bb.fk
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ow, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i64 40, i1 false), !noalias !627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !628
  br label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit229.i.thread

bb.fl:                                            ; preds = %bb.fk
  %i.oy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.s) #44
          to label %.body unwind label %bb.fm, !noalias !627, !inline_history !321

bb.fm:                                            ; preds = %bb.fl
  %i.oz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
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

.loopexit.split-lp.loopexit:                      ; preds = %bb.hl
  %lpad.loopexit322 = landingpad { ptr, i32 }
          cleanup
  br label %.body132.i

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit: ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel
  %lpad.loopexit2184 = landingpad { ptr, i32 }
          cleanup
  br label %.body132.i

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp: ; preds = %bb.ik
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

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit229.i.thread, %bb.fp, %.split.i.i.i.i, %.noexc9.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECsb6FLkjZuKG_18ruff_python_parser.exit15.i.i, %bb.hq, %bb.ig, %bb.ii
  %lpad.loopexit355 = landingpad { ptr, i32 }
          cleanup
  br label %.body132.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc7.i.i.i.invoke, %.loopexit1234.invoke, %.invoke2167, %.invoke2165, %.noexc.i.i.i, %bb.hv
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

.invoke2165:                                      ; preds = %4, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit131.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.peel, %bb.ga, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %3 = phi ptr [ @85, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ @85, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit131.i ], [ @85, %4 ], [ @85, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.peel ], [ @27, %bb.ga ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #41
          to label %.cont2166 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !627, !inline_history !321

.cont2166:                                        ; preds = %.invoke2165
  unreachable

bb.gb:                                            ; preds = %bb.fw, %bb.ga
  %.sroa.11.0.i = phi i32 [ %.val150.i, %bb.fw ], [ %i.qe, %bb.ga ] ; 3 uses
  %i.qf = and i16 %i.ia, 2                        ; 2 uses
  %.not.i.i273.i = icmp eq i16 %i.qf, 0           ; 6 uses
  %.not.i2.i.i = trunc i16 %i.ia to i1            ; 6 uses
  %..i.i = select i1 %.not.i2.i.i, ptr @643, ptr @642
  %.1.i.i = select i1 %.not.i2.i.i, ptr @641, ptr @640 ; 2 uses
  %.sroa.5.0.i.i.neg = select i1 %.not.i.i273.i, i64 -1, i64 -3
  %.sroa.5.0.i.i = select i1 %.not.i.i273.i, i64 1, i64 3 ; 10 uses
  %.sroa.0.0.i274.i = select i1 %.not.i.i273.i, ptr %..i.i, ptr %.1.i.i ; 9 uses
  %i.qg = icmp ne i16 %i.qf, 0                    ; 2 uses
  %..i55 = select i1 %i.qg, i32 3, i32 1
  %i.qh = load ptr, ptr %i.bl, align 8, !alias.scope !626, !noalias !627, !nonnull !15, !noundef !15 ; 8 uses
  %i.qi = load i64, ptr %i.bm, align 8, !alias.scope !626, !noalias !627, !noundef !15 ; 8 uses
  %i.qj = zext i32 %.sroa.0.0.i266.i to i64       ; 14 uses
  %i.qk = zext i32 %.sroa.11.0.i to i64           ; 14 uses
  %i.ql = icmp eq i32 %.sroa.0.0.i266.i, 0        ; 3 uses
  br i1 %i.ql, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %.not5.i.i = icmp ugt i64 %i.qi, %i.qj
  br i1 %.not5.i.i, label %bb.ge, label %.split.i.i

bb.gd:                                            ; preds = %bb.ge, %.split.i.i, %bb.gb
  %i.qm = icmp eq i32 %.sroa.11.0.i, 0            ; 3 uses
  br i1 %i.qm, label %.peel.begin, label %bb.gf

.split.i.i:                                       ; preds = %bb.gc
  %i.qn = icmp eq i64 %i.qi, %i.qj
  br i1 %i.qn, label %bb.gd, label %.invoke2167

bb.ge:                                            ; preds = %bb.gc
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.qj
  %i.qp = load i8, ptr %i.qo, align 1, !alias.scope !701, !noalias !627, !noundef !15
  %i.qq = icmp sgt i8 %i.qp, -65
  br i1 %i.qq, label %bb.gd, label %.invoke2167

bb.gf:                                            ; preds = %bb.gd
  %.not6.i.i = icmp ugt i64 %i.qi, %i.qk
  br i1 %.not6.i.i, label %bb.gg, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.gf
  %i.qr = icmp eq i64 %i.qi, %i.qk
  br i1 %i.qr, label %.peel.begin, label %.invoke2167

bb.gg:                                            ; preds = %bb.gf
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.qk
  %i.qt = load i8, ptr %i.qs, align 1, !alias.scope !701, !noalias !627, !noundef !15
  %i.qu = icmp sgt i8 %i.qt, -65
  br i1 %i.qu, label %.peel.begin, label %.invoke2167

.peel.begin:                                      ; preds = %bb.gg, %.split7.i.i, %bb.gd
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.qj ; 2 uses
  %i.qw = getelementptr i8, ptr %i.qh, i64 %i.qk  ; 2 uses
  %i.qx = ptrtoint ptr %i.qv to i64               ; 2 uses
  %i.qy = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !702, !nonnull !15, !noundef !15
  %i.qz = invoke { i64, ptr } %i.qy(i8 noundef 92, ptr noundef nonnull %i.qv, ptr noundef %i.qw)
          to label %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !627, !inline_history !451 ; 2 uses

_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i.peel: ; preds = %.peel.begin
  %i.ra = extractvalue { i64, ptr } %i.qz, 0
  %i.rb = trunc nuw i64 %i.ra to i1
  br i1 %i.rb, label %bb.gh, label %.loopexit1233

bb.gh:                                            ; preds = %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i.peel
  %i.rc = extractvalue { i64, ptr } %i.qz, 1      ; 4 uses
  %i.rd = ptrtoint ptr %i.rc to i64
  %i.re = sub i64 %i.rd, %i.qx                    ; 3 uses
  %i.rf = icmp sgt i64 %i.re, -1
  call void @llvm.assume(i1 %i.rf), !noalias !623
  %i.rg = icmp samesign ugt i64 %i.re, 4294967295
  %i.rh = shl nuw i64 %i.re, 32
  %.sroa.085.0.insert.insert.i.peel = select i1 %i.rg, i64 513, i64 %i.rh ; 2 uses
  %i.ri = trunc i64 %.sroa.085.0.insert.insert.i.peel to i1
  br i1 %i.ri, label %.loopexit1234, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.peel, !prof !14

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.peel: ; preds = %bb.gh
  %.sroa.6.0.extract.shift.i.i.peel = lshr i64 %.sroa.085.0.insert.insert.i.peel, 32
  %.sroa.6.0.extract.trunc.i.i.peel = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.peel to i32
  %i.rj = add i32 %.sroa.0.0.i266.i, %.sroa.6.0.extract.trunc.i.i.peel ; 3 uses
  %.not116.i.peel = icmp eq i32 %i.rj, -1
  br i1 %.not116.i.peel, label %.invoke2165, label %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i.peel, !prof !14

_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i.peel: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.peel
  %i.rk = load i8, ptr %i.dc, align 4, !alias.scope !703, !noalias !704, !noundef !15 ; 4 uses
  %i.rl = load i8, ptr %i.dd, align 1, !alias.scope !703, !noalias !704, !noundef !15 ; 3 uses
  %i.rm = icmp eq i8 %i.rk, 3
  %i.rn = icmp ult i8 %i.rk, 3
  %i.ro = icmp ult i8 %i.rl, 12
  %spec.select9.i.i329.i.peel = select i1 %i.rm, i1 %i.ro, i1 %i.rn
  br i1 %spec.select9.i.i329.i.peel, label %bb.gi, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.preheader

bb.gi:                                            ; preds = %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i.peel
  %i.rp = load i64, ptr %i.df, align 8, !alias.scope !705, !noalias !706, !noundef !15 ; 3 uses
  %i.rq = load i64, ptr %i.de, align 8, !range !26, !alias.scope !705, !noalias !706, !noundef !15
  %i.rr = icmp eq i64 %i.rp, %i.rq
  br i1 %i.rr, label %bb.gj, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split

bb.gj:                                            ; preds = %bb.gi
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !627, !inline_history !321

.invoke2167:                                      ; preds = %.split.i305.i, %.split7.i309.i, %bb.id, %bb.if, %.split.i281.i, %.split7.i285.i, %bb.gn, %bb.gp, %.split.i.i, %.split7.i.i, %bb.ge, %bb.gg
  %i.rs = phi ptr [ %i.sl, %.split.i281.i ], [ %i.qh, %.split.i.i ], [ %i.qh, %bb.gg ], [ %i.qh, %bb.ge ], [ %i.qh, %.split7.i.i ], [ %i.sl, %bb.gp ], [ %i.sl, %bb.gn ], [ %i.sl, %.split7.i285.i ], [ %i.zg, %bb.if ], [ %i.zg, %bb.id ], [ %i.zg, %.split7.i309.i ], [ %i.zg, %.split.i305.i ]
  %i.rt = phi i64 [ %i.sm, %.split.i281.i ], [ %i.qi, %.split.i.i ], [ %i.qi, %bb.gg ], [ %i.qi, %bb.ge ], [ %i.qi, %.split7.i.i ], [ %i.sm, %bb.gp ], [ %i.sm, %bb.gn ], [ %i.sm, %.split7.i285.i ], [ %i.zh, %bb.if ], [ %i.zh, %bb.id ], [ %i.zh, %.split7.i309.i ], [ %i.zh, %.split.i305.i ]
  %i.ru = phi ptr [ @109, %.split.i281.i ], [ @108, %.split.i.i ], [ @108, %bb.gg ], [ @108, %bb.ge ], [ @108, %.split7.i.i ], [ @109, %bb.gp ], [ @109, %bb.gn ], [ @109, %.split7.i285.i ], [ @111, %bb.if ], [ @111, %bb.id ], [ @111, %.split7.i309.i ], [ @111, %.split.i305.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.rs, i64 noundef %i.rt, i64 noundef %i.qj, i64 noundef %i.qk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ru) #41
          to label %.cont2168 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !627, !inline_history !321

.cont2168:                                        ; preds = %.invoke2167
  unreachable

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split: ; preds = %bb.gi, %bb.gj, %bb.ij, %bb.ik
  %.sink2182 = phi i64 [ %i.aan, %bb.ij ], [ %i.aan, %bb.ik ], [ %i.rp, %bb.gj ], [ %i.rp, %bb.gi ] ; 2 uses
  %.sink2177 = phi i32 [ %i.sk, %bb.ij ], [ %i.sk, %bb.ik ], [ %i.rj, %bb.gj ], [ %i.rj, %bb.gi ] ; 2 uses
  %.sink2173 = phi i8 [ %i.aai, %bb.ij ], [ %i.aai, %bb.ik ], [ %i.rk, %bb.gj ], [ %i.rk, %bb.gi ]
  %.sink2171 = phi i8 [ %i.aaj, %bb.ij ], [ %i.aaj, %bb.ik ], [ %i.rl, %bb.gj ], [ %i.rl, %bb.gi ]
  %.pn.ph = phi ptr [ %i.sc, %bb.ij ], [ %i.sc, %bb.ik ], [ %i.rc, %bb.gj ], [ %i.rc, %bb.gi ]
  %.sink2175 = add nuw i32 %.sink2177, 1
  %i.rv = load ptr, ptr %i.dg, align 8, !alias.scope !707, !noalias !706, !nonnull !15, !noundef !15
  %i.rw = getelementptr inbounds nuw [40 x i8], ptr %i.rv, i64 %.sink2182 ; 6 uses
  store i8 12, ptr %i.rw, align 8, !noalias !627
  %.sroa.5213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rw, i64 1
  store i8 0, ptr %.sroa.5213.0..sroa_idx, align 1, !noalias !627
  %.sroa.4.0..sroa_idx.i331.i = getelementptr inbounds nuw i8, ptr %i.rw, i64 24
  store i32 %.sink2177, ptr %.sroa.4.0..sroa_idx.i331.i, align 8, !noalias !704
  %.sroa.5.0..sroa_idx.i332.i = getelementptr inbounds nuw i8, ptr %i.rw, i64 28
  store i32 %.sink2175, ptr %.sroa.5.0..sroa_idx.i332.i, align 4, !noalias !704
  %.sroa.6.0..sroa_idx.i333.i = getelementptr inbounds nuw i8, ptr %i.rw, i64 32
  store i8 %.sink2173, ptr %.sroa.6.0..sroa_idx.i333.i, align 8, !noalias !704
  %.sroa.7.0..sroa_idx.i334.i = getelementptr inbounds nuw i8, ptr %i.rw, i64 33
  store i8 %.sink2171, ptr %.sroa.7.0..sroa_idx.i334.i, align 1, !noalias !704
  %i.rx = add i64 %.sink2182, 1
  store i64 %i.rx, ptr %i.df, align 8, !alias.scope !707, !noalias !706
  br label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.preheader

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.preheader: ; preds = %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i.peel, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split
  %.pn.ph2183 = phi ptr [ %.pn.ph, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split ], [ %i.rc, %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i.peel ]
  br label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel: ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.preheader, %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i
  %.pn = phi ptr [ %i.sc, %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i ], [ %.pn.ph2183, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.preheader ]
  %.sroa.4.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  %i.ry = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !702, !nonnull !15, !noundef !15
  %i.rz = invoke { i64, ptr } %i.ry(i8 noundef 92, ptr noundef nonnull %.sroa.4.0, ptr noundef %i.qw)
          to label %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit, !noalias !627, !inline_history !451 ; 2 uses

_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel
  %i.sa = extractvalue { i64, ptr } %i.rz, 0
  %i.sb = trunc nuw i64 %i.sa to i1
  br i1 %i.sb, label %bb.gk, label %.loopexit1233

bb.gk:                                            ; preds = %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.sc = extractvalue { i64, ptr } %i.rz, 1      ; 4 uses
  %i.sd = ptrtoint ptr %i.sc to i64
  %i.se = sub i64 %i.sd, %i.qx                    ; 3 uses
  %i.sf = icmp sgt i64 %i.se, -1
  call void @llvm.assume(i1 %i.sf), !noalias !623
  %i.sg = icmp samesign ugt i64 %i.se, 4294967295
  %i.sh = shl nuw i64 %i.se, 32
  %.sroa.085.0.insert.insert.i = select i1 %i.sg, i64 513, i64 %i.sh ; 2 uses
  %i.si = trunc i64 %.sroa.085.0.insert.insert.i to i1
  br i1 %i.si, label %.loopexit1234, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i, !prof !14

.loopexit1234:                                    ; preds = %bb.gh, %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !708
  br label %.loopexit1234.invoke

.loopexit1234.invoke:                             ; preds = %bb.ho, %.noexc5.i.i.i, %.noexc4.i.i.i, %.loopexit1234
  %.sink = phi ptr [ %i.o, %bb.ho ], [ %i.g, %.noexc5.i.i.i ], [ %i.f, %.noexc4.i.i.i ], [ %i.p, %.loopexit1234 ] ; 2 uses
  %i.sj = phi ptr [ @110, %bb.ho ], [ @9, %.noexc5.i.i.i ], [ @10, %.noexc4.i.i.i ], [ @112, %.loopexit1234 ]
  store i8 2, ptr %.sink, align 1, !noalias !628
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 43, ptr noundef nonnull %.sink, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sj) #41
          to label %.loopexit1234.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !627, !inline_history !321

.loopexit1234.cont:                               ; preds = %.loopexit1234.invoke
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.gk
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.085.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  %i.sk = add i32 %.sroa.0.0.i266.i, %.sroa.6.0.extract.trunc.i.i ; 3 uses
  %.not116.i = icmp eq i32 %i.sk, -1
  br i1 %.not116.i, label %.invoke2165, label %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i, !prof !14

.loopexit1233:                                    ; preds = %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i, %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i.peel
  %.sroa.022.0.i.lcssa841 = phi i1 [ %i.qg, %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i.peel ], [ true, %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i ]
  %i.sl = load ptr, ptr %i.bl, align 8, !alias.scope !626, !noalias !627, !nonnull !15, !noundef !15 ; 8 uses
  %i.sm = load i64, ptr %i.bm, align 8, !alias.scope !626, !noalias !627, !noundef !15 ; 8 uses
  br i1 %i.ql, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %.loopexit1233
  %.not5.i280.i = icmp ugt i64 %i.sm, %i.qj
  br i1 %.not5.i280.i, label %bb.gn, label %.split.i281.i
end_hunk_0
begin_hunk_1_@_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser10parse_listNCNvMNtB5_10expressionBL_34parse_interpolated_string_elements0EB7_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !736), !noalias !623
  %i.xr = load i64, ptr %i.df, align 8, !alias.scope !737, !noalias !738, !noundef !15 ; 3 uses
  %i.xs = load i64, ptr %i.de, align 8, !range !26, !alias.scope !737, !noalias !738, !noundef !15
  %i.xt = icmp eq i64 %i.xr, %i.xs
  br i1 %i.xt, label %bb.hq, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i

bb.hq:                                            ; preds = %bb.hp
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !noalias !627, !inline_history !321

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i: ; preds = %bb.hq, %bb.hp
  %i.xu = load ptr, ptr %i.dg, align 8, !alias.scope !737, !noalias !738, !nonnull !15, !noundef !15
  %i.xv = getelementptr inbounds nuw [40 x i8], ptr %i.xu, i64 %i.xr ; 6 uses
  store i8 12, ptr %i.xv, align 8, !noalias !739
  %.sroa.5216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xv, i64 1
  store i8 3, ptr %.sroa.5216.0..sroa_idx, align 1, !noalias !739
  %.sroa.4.0..sroa_idx.i.i56 = getelementptr inbounds nuw i8, ptr %i.xv, i64 24
  store i32 %i.xk, ptr %.sroa.4.0..sroa_idx.i.i56, align 8, !noalias !740
  %.sroa.5.0..sroa_idx.i.i57 = getelementptr inbounds nuw i8, ptr %i.xv, i64 28
  store i32 %i.xl, ptr %.sroa.5.0..sroa_idx.i.i57, align 4, !noalias !740
  %.sroa.6.0..sroa_idx.i.i58 = getelementptr inbounds nuw i8, ptr %i.xv, i64 32
  store i8 %i.xm, ptr %.sroa.6.0..sroa_idx.i.i58, align 8, !noalias !740
  %.sroa.7.0..sroa_idx.i.i59 = getelementptr inbounds nuw i8, ptr %i.xv, i64 33
  store i8 %i.xn, ptr %.sroa.7.0..sroa_idx.i.i59, align 1, !noalias !740
  %i.xw = add i64 %i.xr, 1
  store i64 %i.xw, ptr %i.df, align 8, !alias.scope !737, !noalias !738
  br label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread

_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread: ; preds = %bb.hk, %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !741), !noalias !623
  %.val.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !742, !noalias !627, !nonnull !15, !noundef !15 ; 7 uses
  %.val1.i.i = load i64, ptr %i.cf, align 8, !alias.scope !742, !noalias !627, !noundef !15 ; 11 uses
  %.idx = mul nuw nsw i64 %.val1.i.i, 12
  %i.xx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx ; 2 uses
  %.not.i.i299.i2156 = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i299.i2156, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, label %.lr.ph

bb.hr:                                            ; preds = %.lr.ph
  %.not.i.i299.i = icmp eq ptr %.val.i.i, %i.xz
  br i1 %.not.i.i299.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread, %bb.hr
  %.sroa.03.0.i.i.i.i2157 = phi i64 [ %i.ya, %bb.hr ], [ %.val1.i.i, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ]
  %i.xy = phi ptr [ %i.xz, %bb.hr ], [ %i.xx, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ]
  %i.xz = getelementptr inbounds i8, ptr %i.xy, i64 -12 ; 3 uses
  %i.ya = add i64 %.sroa.03.0.i.i.i.i2157, -1     ; 3 uses
  %.val9.i.i.i.i = load i32, ptr %i.xz, align 4, !noalias !743, !noundef !15
  %i.yb = icmp eq i32 %.val9.i.i.i.i, %.sroa.0.0.i266.i
  br i1 %i.yb, label %bb.hs, label %bb.hr

bb.hs:                                            ; preds = %.lr.ph
  %i.yc = icmp ult i64 %i.ya, %.val1.i.i
  call void @llvm.assume(i1 %i.yc), !noalias !623
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i: ; preds = %bb.hr, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread, %bb.hs
  %.not.i.i299.i1818 = phi i1 [ false, %bb.hs ], [ true, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ], [ true, %bb.hr ]
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.ya, %bb.hs ], [ undef, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ], [ undef, %bb.hr ] ; 4 uses
  %i.yd = icmp eq i64 %.val1.i.i, 0
  br i1 %i.yd, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i, label %.lr.ph2160

bb.ht:                                            ; preds = %.lr.ph2160
  %i.ye = getelementptr inbounds i8, ptr %i.yg, i64 -12 ; 2 uses
  %i.yf = icmp eq ptr %.val.i.i, %i.ye
  br i1 %i.yf, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i, label %.lr.ph2160

.lr.ph2160:                                       ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, %bb.ht
  %.sroa.03.0.i7.i.i.i2159 = phi i64 [ %i.yh, %bb.ht ], [ %.val1.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ] ; 4 uses
  %i.yg = phi ptr [ %i.ye, %bb.ht ], [ %i.xx, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ] ; 2 uses
  %i.yh = add i64 %.sroa.03.0.i7.i.i.i2159, -1    ; 2 uses
  %i.yi = getelementptr i8, ptr %i.yg, i64 -8
  %.val9.i8.i.i.i = load i32, ptr %i.yi, align 4, !noalias !744, !noundef !15
  %i.yj = icmp eq i32 %.val9.i8.i.i.i, %.sroa.11.0.i
  br i1 %i.yj, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i, label %bb.ht

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i: ; preds = %.lr.ph2160
  %i.yk = icmp ult i64 %i.yh, %.val1.i.i
  call void @llvm.assume(i1 %i.yk), !noalias !623
  br i1 %.not.i.i299.i1818, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i, label %bb.hu

bb.hu:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i
  %i.yl = icmp ult i64 %.sroa.03.0.i7.i.i.i2159, %.sroa.3.0.i.i.i.i
  br i1 %i.yl, label %bb.hv, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, !prof !14

bb.hv:                                            ; preds = %bb.hu
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.3.0.i.i.i.i, i64 noundef %.sroa.03.0.i7.i.i.i2159, i64 noundef range(i64 0, 768614336404564651) %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #41
          to label %.noexc301.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !627, !inline_history !321

.noexc301.i:                                      ; preds = %bb.hv
  unreachable

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %bb.hu
  %i.ym = sub nuw nsw i64 %.sroa.03.0.i7.i.i.i2159, %.sroa.3.0.i.i.i.i
  %i.yn = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i, i64 %.sroa.3.0.i.i.i.i
  br label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i

_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i: ; preds = %bb.ht, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i
  %.pn11.i.i.i = phi ptr [ %i.yn, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ], [ %.val.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i ], [ %.val.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ], [ %.val.i.i, %bb.ht ] ; 2 uses
  %.pn9.i.i.i = phi i64 [ %i.ym, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ], [ %.val1.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i ], [ %.val1.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ], [ %.val1.i.i, %bb.ht ]
  %i.yo = getelementptr inbounds nuw [12 x i8], ptr %.pn11.i.i.i, i64 %.pn9.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !745), !noalias !623
  br label %bb.hw

bb.hw:                                            ; preds = %.noexc302.i, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i
  %.sroa.0.0.i300.i = phi i1 [ %.sroa.022.0.i.lcssa841, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i ], [ true, %.noexc302.i ]
  %i.yp = phi ptr [ %.pn11.i.i.i, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i ], [ %i.ys, %.noexc302.i ]
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hy, %bb.hw
  %i.yq = phi ptr [ %i.ys, %bb.hy ], [ %i.yp, %bb.hw ] ; 4 uses
  %i.yr = icmp eq ptr %i.yq, %i.yo
  br i1 %i.yr, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser22check_fstring_comments.exit.i, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 12 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yq, i64 10
  %i.yu = load i8, ptr %i.yt, align 2, !range !22, !noalias !746, !noundef !15
  %i.yv = icmp eq i8 %i.yu, 12
  br i1 %i.yv, label %bb.hz, label %bb.hx

bb.hz:                                            ; preds = %bb.hy
  %i.yw = load <2 x i32>, ptr %i.yq, align 4, !noalias !747
  %i.yx = load i8, ptr %i.dc, align 4, !alias.scope !742, !noalias !748, !noundef !15
  %i.yy = load i8, ptr %i.dd, align 1, !alias.scope !742, !noalias !748, !noundef !15
  %i.yz = load i64, ptr %i.df, align 8, !alias.scope !749, !noalias !750, !noundef !15 ; 5 uses
  %i.za = icmp ult i64 %i.yz, 230584300921369396
  call void @llvm.assume(i1 %i.za), !noalias !623
  %i.zb = load i64, ptr %i.de, align 8, !range !26, !alias.scope !749, !noalias !750, !noundef !15
  %i.zc = icmp eq i64 %i.yz, %i.zb
  br i1 %i.zc, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE7reserveBH_.exit.i.i.i, label %.noexc302.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE7reserveBH_.exit.i.i.i: ; preds = %bb.hz
  invoke fastcc void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de, i64 noundef %i.yz, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 40)
          to label %.noexc302.i unwind label %.loopexit, !noalias !627, !inline_history !321

.noexc302.i:                                      ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE7reserveBH_.exit.i.i.i, %bb.hz
  %i.zd = load ptr, ptr %i.dg, align 8, !alias.scope !749, !noalias !750, !nonnull !15, !noundef !15
  %i.ze = getelementptr inbounds nuw [40 x i8], ptr %i.zd, i64 %i.yz ; 5 uses
  store i8 12, ptr %i.ze, align 8, !noalias !751
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ze, i64 1
  store i8 1, ptr %.sroa.415.0..sroa_idx.i.i.i, align 1, !noalias !751
  %.sroa.617.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ze, i64 24
  store <2 x i32> %i.yw, ptr %.sroa.617.0..sroa_idx.i.i.i, align 8, !noalias !751
  %.sroa.819.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ze, i64 32
  store i8 %i.yx, ptr %.sroa.819.0..sroa_idx.i.i.i, align 8, !noalias !751
  %.sroa.920.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ze, i64 33
  store i8 %i.yy, ptr %.sroa.920.0..sroa_idx.i.i.i, align 1, !noalias !751
  %i.zf = add nuw nsw i64 %i.yz, 1
  store i64 %i.zf, ptr %i.df, align 8, !alias.scope !749, !noalias !750
  br label %bb.hw

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser22check_fstring_comments.exit.i: ; preds = %bb.hx
  br i1 %.sroa.0.0.i300.i, label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.ia

bb.ia:                                            ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser22check_fstring_comments.exit.i
  %i.zg = load ptr, ptr %i.bl, align 8, !alias.scope !626, !noalias !627, !nonnull !15, !noundef !15 ; 8 uses
  %i.zh = load i64, ptr %i.bm, align 8, !alias.scope !626, !noalias !627, !noundef !15 ; 8 uses
  br i1 %i.ql, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %.not5.i304.i = icmp ugt i64 %i.zh, %i.qj
  br i1 %.not5.i304.i, label %bb.id, label %.split.i305.i

bb.ic:                                            ; preds = %bb.id, %.split.i305.i, %bb.ia
  br i1 %i.qm, label %bb.ig, label %bb.ie

.split.i305.i:                                    ; preds = %bb.ib
  %i.zi = icmp eq i64 %i.zh, %i.qj
  br i1 %i.zi, label %bb.ic, label %.invoke2167

bb.id:                                            ; preds = %bb.ib
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.qj
  %i.zk = load i8, ptr %i.zj, align 1, !alias.scope !752, !noalias !627, !noundef !15
  %i.zl = icmp sgt i8 %i.zk, -65
  br i1 %i.zl, label %bb.ic, label %.invoke2167

bb.ie:                                            ; preds = %bb.ic
  %.not6.i308.i = icmp ugt i64 %i.zh, %i.qk
  br i1 %.not6.i308.i, label %bb.if, label %.split7.i309.i

.split7.i309.i:                                   ; preds = %bb.ie
  %i.zm = icmp eq i64 %i.zh, %i.qk
  br i1 %i.zm, label %bb.ig, label %.invoke2167

bb.if:                                            ; preds = %bb.ie
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.qk
  %i.zo = load i8, ptr %i.zn, align 1, !alias.scope !752, !noalias !627, !noundef !15
  %i.zp = icmp sgt i8 %i.zo, -65
  br i1 %i.zp, label %bb.ig, label %.invoke2167

bb.ig:                                            ; preds = %bb.if, %.split7.i309.i, %bb.ic
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.qj ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.qk
  %i.zs = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !753, !nonnull !15, !noundef !15
  %i.zt = invoke { i64, ptr } %i.zs(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %i.zq, ptr noundef nonnull readonly %i.zr)
          to label %_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr7memchr20Csb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !noalias !627, !inline_history !529 ; 2 uses

_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr7memchr20Csb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.ig
  %i.zu = extractvalue { i64, ptr } %i.zt, 0
  %i.zv = trunc nuw i64 %i.zu to i1
  br i1 %i.zv, label %4, label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i

4:                                                ; preds = %_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr7memchr20Csb6FLkjZuKG_18ruff_python_parser.exit.i
  %5 = extractvalue { i64, ptr } %i.zt, 1
  %6 = ptrtoint ptr %5 to i64
  %7 = ptrtoint ptr %i.zq to i64
  %8 = sub i64 %6, %7
  %.not.i.i = icmp samesign ult i64 %8, %i.sv
  call void @llvm.assume(i1 %.not.i.i), !noalias !623
  %.not115.i = icmp eq i32 %.sroa.0.0.i266.i, -1
  br i1 %.not115.i, label %.invoke2165, label %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i313.i, !prof !14

_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i313.i: ; preds = %4
  %i.zw = add nuw i32 %.sroa.0.0.i266.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !754), !noalias !623
  %i.zx = load i8, ptr %i.dc, align 4, !alias.scope !755, !noalias !756, !noundef !15 ; 3 uses
  %i.zy = load i8, ptr %i.dd, align 1, !alias.scope !755, !noalias !756, !noundef !15 ; 2 uses
  %i.zz = icmp eq i8 %i.zx, 3
  %i.aaa = icmp ult i8 %i.zx, 3
  %i.aab = icmp ult i8 %i.zy, 12
  %spec.select9.i.i315.i = select i1 %i.zz, i1 %i.aab, i1 %i.aaa
  br i1 %spec.select9.i.i315.i, label %bb.ih, label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i

bb.ih:                                            ; preds = %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i313.i
  call void @llvm.experimental.noalias.scope.decl(metadata !757), !noalias !623
  %i.aac = load i64, ptr %i.df, align 8, !alias.scope !758, !noalias !759, !noundef !15 ; 3 uses
  %i.aad = load i64, ptr %i.de, align 8, !range !26, !alias.scope !758, !noalias !759, !noundef !15
  %i.aae = icmp eq i64 %i.aac, %i.aad
  br i1 %i.aae, label %bb.ii, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i316.i

bb.ii:                                            ; preds = %bb.ih
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i316.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !noalias !627, !inline_history !321

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i316.i: ; preds = %bb.ii, %bb.ih
  %i.aaf = load ptr, ptr %i.dg, align 8, !alias.scope !758, !noalias !759, !nonnull !15, !noundef !15
  %i.aag = getelementptr inbounds nuw [40 x i8], ptr %i.aaf, i64 %i.aac ; 6 uses
  store i8 12, ptr %i.aag, align 8, !noalias !760
  %.sroa.5219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aag, i64 1
  store i8 2, ptr %.sroa.5219.0..sroa_idx, align 1, !noalias !760
  %.sroa.4.0..sroa_idx.i317.i = getelementptr inbounds nuw i8, ptr %i.aag, i64 24
  store i32 %.sroa.0.0.i266.i, ptr %.sroa.4.0..sroa_idx.i317.i, align 8, !noalias !761
  %.sroa.5.0..sroa_idx.i318.i = getelementptr inbounds nuw i8, ptr %i.aag, i64 28
  store i32 %i.zw, ptr %.sroa.5.0..sroa_idx.i318.i, align 4, !noalias !761
  %.sroa.6.0..sroa_idx.i319.i = getelementptr inbounds nuw i8, ptr %i.aag, i64 32
  store i8 %i.zx, ptr %.sroa.6.0..sroa_idx.i319.i, align 8, !noalias !761
  %.sroa.7.0..sroa_idx.i320.i = getelementptr inbounds nuw i8, ptr %i.aag, i64 33
  store i8 %i.zy, ptr %.sroa.7.0..sroa_idx.i320.i, align 1, !noalias !761
  %i.aah = add i64 %i.aac, 1
  store i64 %i.aah, ptr %i.df, align 8, !alias.scope !758, !noalias !759
  br label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i

_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.aai = load i8, ptr %i.dc, align 4, !alias.scope !762, !noalias !704, !noundef !15 ; 4 uses
  %i.aaj = load i8, ptr %i.dd, align 1, !alias.scope !762, !noalias !704, !noundef !15 ; 3 uses
  %i.aak = icmp eq i8 %i.aai, 3
  %i.aal = icmp ult i8 %i.aai, 3
  %i.aam = icmp ult i8 %i.aaj, 12
  %spec.select9.i.i329.i = select i1 %i.aak, i1 %i.aam, i1 %i.aal
  br i1 %spec.select9.i.i329.i, label %bb.ij, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel, !llvm.loop !536

bb.ij:                                            ; preds = %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i
  %i.aan = load i64, ptr %i.df, align 8, !alias.scope !763, !noalias !706, !noundef !15 ; 3 uses
  %i.aao = load i64, ptr %i.de, align 8, !range !26, !alias.scope !763, !noalias !706, !noundef !15
  %i.aap = icmp eq i64 %i.aan, %i.aao
  br i1 %i.aap, label %bb.ik, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split, !llvm.loop !536

bb.ik:                                            ; preds = %bb.ij
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp, !noalias !627, !llvm.loop !536, !inline_history !321

bb.il:                                            ; preds = %bb.ev
  %i.aaq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error14ParseErrorTypeEBF_(ptr noalias noundef align 8 dereferenceable(32) %i.x) #44, !noalias !627, !inline_history !321
  br label %.body

common.resume:                                    ; preds = %.body.i.i, %.loopexit.split-lp.i.i, %bb.ls, %bb.ip, %.noexc209.i, %.thread
  %common.resume.op = phi { ptr, i32 } [ %i.aaw, %bb.ip ], [ %.pn.pn.i, %.noexc209.i ], [ %.pn.pn.pn.i261, %.thread ], [ %i.acz, %.body.i.i ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %lpad.phi.i.i, %bb.ls ]
  resume { ptr, i32 } %common.resume.op

.thread:                                          ; preds = %.loopexit337, %.loopexit.split-lp338.loopexit.split-lp, %.loopexit.split-lp338.loopexit, %bb.cg, %.noexc209.i
  %.pn.pn.pn.i261 = phi { ptr, i32 } [ %.pn.pn.i, %.noexc209.i ], [ %i.jb, %bb.cg ], [ %lpad.loopexit339, %.loopexit337 ], [ %lpad.loopexit350, %.loopexit.split-lp338.loopexit ], [ %lpad.loopexit.split-lp351, %.loopexit.split-lp338.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.aa) #44
          to label %common.resume unwind label %bb.ch, !noalias !627, !inline_history !321

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser26parse_interpolated_element.exit: ; preds = %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pz, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !628
  %.sroa.5177.sroa.5.0.insert.ext = zext i8 %.sroa.5177.sroa.5.0 to i64
  %.sroa.5177.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5177.sroa.5.0.insert.ext, 56
  %.sroa.5177.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5177.sroa.5.0.insert.shift, %.sroa.5177.sroa.0.sroa.0.0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !628
  store ptr %.sroa.0172.0, ptr %i.ak, align 8, !noalias !625
  store i64 %.sroa.5174.0, ptr %.sroa.575.0..sroa_idx76, align 8, !noalias !625
  store i64 %.sroa.5177.sroa.0.0.insert.insert, ptr %.sroa.678.0..sroa_idx79, align 8, !noalias !625
  store i64 %.sroa.8181.0, ptr %.sroa.884.0..sroa_idx85, align 8, !noalias !625
  store ptr %i.pz, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !625
  store i32 %.sroa.0.0.i266.i, ptr %.sroa.570.0..sroa_idx, align 8, !noalias !625
  store i32 %.val150.i, ptr %.sroa.6.0..sroa_idx, align 4, !noalias !625
  store ptr %storemerge, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !625
  store i32 -2, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !625
  br label %bb.in

bb.im:                                            ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.thread.thread, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.thread
  %.val.i431357 = phi i8 [ %.val.i43.ph, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.thread.thread ], [ %i.ee, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.thread ] ; 4 uses
  %i.aar = load i8, ptr %i.bk, align 1, !range !22, !noalias !625, !noundef !15
  %i.aas = icmp eq i8 %.val.i431357, %i.aar
  br i1 %i.aas, label %bb.is, label %bb.ir

bb.in:                                            ; preds = %bb.lz, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser26parse_interpolated_element.exit
  %storemerge1355 = phi i8 [ 0, %bb.lz ], [ %.sroa.0.0.i, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser26parse_interpolated_element.exit ]
  store i8 %storemerge1355, ptr %i.bx, align 4, !noalias !625
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.aat = load i64, ptr %i.dn, align 8, !alias.scope !764, !noalias !765, !noundef !15 ; 3 uses
  %i.aau = load i64, ptr %i.dm, align 8, !range !26, !alias.scope !764, !noalias !765, !noundef !15
  %i.aav = icmp eq i64 %i.aat, %i.aau
  br i1 %i.aav, label %bb.io, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit

bb.io:                                            ; preds = %bb.in
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit unwind label %bb.ip, !noalias !765

bb.ip:                                            ; preds = %bb.io
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.ak) #44
          to label %common.resume unwind label %bb.iq, !noalias !766

bb.iq:                                            ; preds = %bb.ip
  %i.aax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !767
  unreachable

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.in, %bb.io
  %i.aay = load ptr, ptr %i.do, align 8, !alias.scope !764, !noalias !765, !nonnull !15, !noundef !15
  %i.aaz = getelementptr inbounds nuw [64 x i8], ptr %i.aay, i64 %i.aat
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aaz, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ak, i64 64, i1 false), !noalias !766
  %i.aba = add i64 %i.aat, 1
  store i64 %i.aba, ptr %i.dn, align 8, !alias.scope !764, !noalias !765
  br label %_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB6_6Parser34parse_interpolated_string_elements0B8_.exit

bb.ir:                                            ; preds = %bb.im
  %i.abb = icmp eq i8 %.val.i431357, 106
  br i1 %i.abb, label %bb.lv, label %bb.lw, !prof !30

bb.is:                                            ; preds = %bb.im
  %.val13.i47 = load i32, ptr %i.bg, align 8, !alias.scope !624, !noalias !623, !noundef !15 ; 7 uses
  %.val14.i = load i32, ptr %i.bh, align 4, !alias.scope !624, !noalias !623, !noundef !15 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %.val.i48 = load ptr, ptr %i.bl, align 8, !alias.scope !768, !noalias !623, !nonnull !15, !noundef !15 ; 5 uses
  %.val1.i = load i64, ptr %i.bm, align 8, !alias.scope !768, !noalias !623, !noundef !15 ; 5 uses
  %i.abc = zext i32 %.val13.i47 to i64            ; 6 uses
  %i.abd = zext i32 %.val14.i to i64              ; 6 uses
  %.not.i.i.i49 = icmp ugt i32 %.val13.i47, %.val14.i
  br i1 %.not.i.i.i49, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.abe = icmp eq i32 %.val13.i47, 0
  br i1 %i.abe, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %.not5.i.i.i50 = icmp ugt i64 %.val1.i, %i.abc
  br i1 %.not5.i.i.i50, label %bb.iw, label %.split.i.i.i51

bb.iv:                                            ; preds = %bb.iw, %.split.i.i.i51, %bb.it
  %i.abf = icmp eq i32 %.val14.i, 0
  br i1 %i.abf, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser18current_token_text.exit, label %bb.ix

.split.i.i.i51:                                   ; preds = %bb.iu
  %i.abg = icmp eq i64 %.val1.i, %i.abc
  br i1 %i.abg, label %bb.iv, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

bb.iw:                                            ; preds = %bb.iu
  %i.abh = getelementptr inbounds nuw i8, ptr %.val.i48, i64 %i.abc
  %i.abi = load i8, ptr %i.abh, align 1, !alias.scope !769, !noalias !770, !noundef !15
  %i.abj = icmp sgt i8 %i.abi, -65
  br i1 %i.abj, label %bb.iv, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

bb.ix:                                            ; preds = %bb.iv
  %.not6.i.i.i52 = icmp ugt i64 %.val1.i, %i.abd
  br i1 %.not6.i.i.i52, label %bb.iy, label %.split7.i.i.i53

.split7.i.i.i53:                                  ; preds = %bb.ix
  %i.abk = icmp eq i64 %.val1.i, %i.abd
  br i1 %i.abk, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser18current_token_text.exit, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

bb.iy:                                            ; preds = %bb.ix
  %i.abl = getelementptr inbounds nuw i8, ptr %.val.i48, i64 %i.abd
  %i.abm = load i8, ptr %i.abl, align 1, !alias.scope !769, !noalias !770, !noundef !15
  %i.abn = icmp sgt i8 %i.abm, -65
  br i1 %i.abn, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser18current_token_text.exit, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i: ; preds = %bb.iy, %.split7.i.i.i53, %bb.iw, %.split.i.i.i51, %bb.is
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i48, i64 noundef %.val1.i, i64 noundef %i.abc, i64 noundef %i.abd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #41, !noalias !770
  unreachable

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser18current_token_text.exit: ; preds = %bb.iv, %.split7.i.i.i53, %bb.iy
  %i.abo = getelementptr inbounds nuw i8, ptr %.val.i48, i64 %i.abc ; 5 uses
  %i.abp = sub nuw nsw i64 %i.abd, %i.abc         ; 11 uses
  call fastcc void @_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser4bump(ptr noalias noundef nonnull align 8 dereferenceable(464) %0, i8 noundef %.val.i431357), !noalias !623, !inline_history !544
  %i.abq = load i16, ptr %i.bn, align 2, !noalias !623, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !771
  store ptr %i.abo, ptr %i.af, align 8, !noalias !771
  store i64 %i.abp, ptr %i.bo, align 8, !noalias !771
  store i64 0, ptr %i.bp, align 8, !noalias !771
  store i16 %i.abq, ptr %i.bq, align 4, !noalias !771
  store i32 %.val13.i47, ptr %i.br, align 8, !noalias !771
  store i32 %.val13.i47, ptr %i.bs, align 8, !noalias !771
  store i32 %.val14.i, ptr %i.bt, align 4, !noalias !771
  call void @llvm.experimental.noalias.scope.decl(metadata !772), !noalias !623
end_hunk_1
begin_hunk_2_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsEEECsb6FLkjZuKG_18ruff_python_parser
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsEEECsb6FLkjZuKG_18ruff_python_parser(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsEECsb6FLkjZuKG_18ruff_python_parser.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(40) %.0.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsEECsb6FLkjZuKG_18ruff_python_parser.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #42
  resume { ptr, i32 } %i.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #42
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !17, !noundef !15 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit unwind label %bb.d, !noalias !961, !inline_history !37

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #42, !noalias !961
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #42, !noalias !961
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEEECsb6FLkjZuKG_18ruff_python_parser(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %.0.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser.exit unwind label %bb.d, !noalias !965, !inline_history !964

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 72, i64 noundef 8) #42, !noalias !965
  resume { ptr, i32 } %i.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 72, i64 noundef 8) #42, !noalias !965
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.b = load i8, ptr %i.a, align 1, !range !39, !noundef !15 ; 2 uses
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  %i.e = and i8 %i.b, -2
  %switch.i.i.i.i.i = icmp eq i8 %i.e, -48
  br i1 %switch.i.i.i.i.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %.pn.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !984, !nonnull !15, !noundef !15
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i, i64 -8
  %i.f = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i, i64 1 release, align 8, !noalias !984
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit, !prof !14

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 6 uses
  %i.e = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  %i.f = load i8, ptr %i.d, align 8, !range !38, !alias.scope !1000, !noundef !15
  switch i8 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i [
    i8 0, label %bb.b
    i8 19, label %bb.c
    i8 42, label %bb.d
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.sink.split.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.val1.i4.sink.i.i.i.i = phi i64 [ %.val.i1.i.i.i.i, %bb.c ], [ %.val.i.i.i.i.i, %bb.b ], [ %.val1.i4.i.i.i.i, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val.i5.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1000, !nonnull !15, !noundef !15
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i5.i.i.i.i, i64 noundef %.val1.i4.sink.i.i.i.i, i64 noundef 1) #42, !noalias !1000
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !1001 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.sink.split.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i1.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !1002 ; 2 uses
  %i.k = icmp eq i64 %.val.i1.i.i.i.i, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.sink.split.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i8, ptr %i.l, align 8, !range !28, !alias.scope !1003, !noundef !15
  %switch.i.i.i.i.i = icmp samesign ult i8 %i.m, 12
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val1.i4.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !1000 ; 2 uses
  %i.o = icmp eq i64 %.val1.i4.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %switch.i.i.i.i.i, i1 true, i1 %i.o
  br i1 %or.cond.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.sink.split.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.sink.split.i.i.i.i, %.lr.ph.i.i
  %i.p = icmp eq i64 %i.e, %.val1
  br i1 %i.p, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph.i.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.q = icmp eq i64 %.val2, 0
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEEB1i_.exit6, label %bb.e

bb.e:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.r = mul nuw i64 %.val2, 40
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEEB1i_.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEEB1i_.exit6: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.b, align 8, !noundef !15 ; 4 uses
  %i.c = icmp eq i64 %.val5, 0
  br i1 %i.c, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val5
  br i1 %i.d, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %.val4, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeEBF_(ptr noalias noundef readonly align 8 dereferenceable(48) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val5
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val5
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %.val4, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeEBF_(ptr noalias noundef readonly align 8 dereferenceable(48) %i.k) #44
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !1006
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val2 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.m = icmp eq i64 %.val2, 0
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeEEB1i_.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val2, 48
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %bb.b, %bb.a
  %.val = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.o = icmp eq i64 %.val, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeEEB1i_.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.p = mul nuw i64 %.val, 48
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeEEB1i_.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeEEB1i_.exit6: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.g
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeEEB1i_.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !15 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.012.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 23
  %i.h = load i8, ptr %i.g, align 1, !range !16, !alias.scope !1038, !noundef !15
  %i.i = and i8 %i.h, -2
  %switch.i.i.i.i.i.i.i = icmp eq i8 %i.i, -48
  br i1 %switch.i.i.i.i.i.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  %.pn.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1040, !nonnull !15, !noundef !15
  %.sroa.0.0.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i.i, i64 -8
  %i.j = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !1041
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i.i, !prof !14

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.l = icmp eq i64 %i.e, %.val1
  br i1 %i.l, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.e, %.val1
  br i1 %i.n, label %.body, label %.lr.ph15.i.i

.lr.ph15.i.i:                                     ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit11.i.i
  %.sroa.0.113.i.i = phi i64 [ %i.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit11.i.i ], [ %i.e, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.113.i.i ; 2 uses
  %i.p = add i64 %.sroa.0.113.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 23
  %i.s = load i8, ptr %i.r, align 1, !range !16, !alias.scope !1047, !noundef !15
  %i.t = and i8 %i.s, -2
  %switch.i.i.i.i.i7.i.i = icmp eq i8 %i.t, -48
  br i1 %switch.i.i.i.i.i7.i.i, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit11.i.i

bb.e:                                             ; preds = %.lr.ph15.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  %.pn.i.i.i.i.i.i8.i.i = load ptr, ptr %i.q, align 8, !alias.scope !1049, !nonnull !15, !noundef !15
  %.sroa.0.0.i.i.i.i.i.i9.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i8.i.i, i64 -8
  %i.u = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i9.i.i, i64 1 release, align 8, !noalias !1050
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit11.i.i, !prof !14

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit11.i.i unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit11.i.i: ; preds = %bb.f, %bb.e, %.lr.ph15.i.i
  %i.w = icmp eq i64 %i.p, %.val1
  br i1 %i.w, label %.body, label %.lr.ph15.i.i

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit11.i.i, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.y = icmp eq i64 %.val4, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.z = shl nuw i64 %.val4, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsb6FLkjZuKG_18ruff_python_parser.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.aa = icmp eq i64 %.val2, 0
  br i1 %i.aa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsb6FLkjZuKG_18ruff_python_parser.exit6, label %bb.i

bb.i:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.ab = shl nuw i64 %.val2, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsb6FLkjZuKG_18ruff_python_parser.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsb6FLkjZuKG_18ruff_python_parser.exit6: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, %bb.i
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1066, !nonnull !15, !noundef !15 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1066, !noundef !15 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %.sroa.0.0.i11 = phi i64 [ %i.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartECsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.0.i11 ; 5 uses
  %i.g = add nuw i64 %.sroa.0.0.i11, 1            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  %i.h = load i64, ptr %i.f, align 8, !range !40, !alias.scope !1068, !noundef !15 ; 5 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %i.f, i64 16
  %.val1.i.i = load i64, ptr %i.j, align 8, !alias.scope !1068, !noundef !15 ; 2 uses
  %i.k = icmp eq i64 %.val1.i.i, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1068, !nonnull !15, !noundef !15
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #42, !noalias !1067
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartECsb6FLkjZuKG_18ruff_python_parser.exit.i

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1071, !nonnull !15, !noundef !15 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !1071, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %i.p)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i unwind label %bb.d, !noalias !1072, !inline_history !1063

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i: ; preds = %bb.c
  %i.q = icmp eq i64 %i.h, 0
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.h, 0
  br i1 %i.s, label %.body7, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = shl nuw i64 %i.h, 6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1072, !inline_history !1064
  br label %.body7

bb.f:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  %i.u = shl nuw i64 %i.h, 6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1072, !inline_history !1064
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartECsb6FLkjZuKG_18ruff_python_parser.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i, %bb.f, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.b
  %i.v = icmp eq i64 %i.g, %i.d
  br i1 %i.v, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph41
  %i.w = add i64 %.sroa.0.1.i40, 1                ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.d
  br i1 %i.x, label %.body, label %.lr.ph41

.body7:                                           ; preds = %bb.d, %bb.e
  %i.y = icmp eq i64 %i.g, %i.d
  br i1 %i.y, label %.body, label %.lr.ph41

.lr.ph41:                                         ; preds = %.body7, %bb.g
  %.sroa.0.1.i40 = phi i64 [ %i.w, %bb.g ], [ %i.g, %.body7 ] ; 2 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.1.i40
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(40) %i.z) #44
          to label %bb.g unwind label %bb.h, !inline_history !1065

bb.h:                                             ; preds = %.lr.ph41
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !inline_history !1065
  unreachable

.body:                                            ; preds = %bb.g, %.body7
  %.val2 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.ab = icmp eq i64 %.val2, 0
  br i1 %i.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.ac = mul nuw i64 %.val2, 40
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEECsb6FLkjZuKG_18ruff_python_parser.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartECsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.ad = icmp eq i64 %.val, 0
  br i1 %i.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEECsb6FLkjZuKG_18ruff_python_parser.exit4, label %bb.j

bb.j:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.ae = mul nuw i64 %.val, 40
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEECsb6FLkjZuKG_18ruff_python_parser.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEECsb6FLkjZuKG_18ruff_python_parser.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, %bb.j
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.r
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralECsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralECsb6FLkjZuKG_18ruff_python_parser.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.012.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load i64, ptr %i.f, align 8, !alias.scope !1075, !noundef !15 ; 2 uses
  %i.g = icmp eq i64 %.val9.i.i, 0
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralECsb6FLkjZuKG_18ruff_python_parser.exit.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %.val8.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1075, !nonnull !15, !noundef !15
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %.val9.i.i, i64 noundef 1) #42, !noalias !1075
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralECsb6FLkjZuKG_18ruff_python_parser.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralECsb6FLkjZuKG_18ruff_python_parser.exit.i.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %.lr.ph.i.i
end_hunk_2
begin_hunk_3_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEECsb6FLkjZuKG_18ruff_python_parser:bb.a
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.o, %bb.d ]
  %i.t = icmp eq i64 %i.h, %i.d
  br i1 %i.t, label %.body, label %.lr.ph19

.lr.ph19:                                         ; preds = %.body.i, %bb.f
  %.sroa.0.1.i18 = phi i64 [ %i.q, %bb.f ], [ %i.h, %.body.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [120 x i8], ptr %i.b, i64 %.sroa.0.1.i18
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(120) %i.u) #44
          to label %bb.f unwind label %bb.h, !inline_history !1098

bb.h:                                             ; preds = %.lr.ph19
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !inline_history !1098
  unreachable

.body:                                            ; preds = %bb.f, %.body.i
  %.val2 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.w = icmp eq i64 %.val2, 0
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = mul nuw i64 %.val2, 120
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEECsb6FLkjZuKG_18ruff_python_parser.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordECsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.y = icmp eq i64 %.val, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEECsb6FLkjZuKG_18ruff_python_parser.exit4, label %bb.j

bb.j:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.z = mul nuw i64 %.val, 120
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEECsb6FLkjZuKG_18ruff_python_parser.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEECsb6FLkjZuKG_18ruff_python_parser.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, %bb.j
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %.val, i64 noundef %.val1)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val4 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.d = icmp eq i64 %.val4, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = mul nuw i64 %.val4, 80
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEECsb6FLkjZuKG_18ruff_python_parser.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.f = icmp eq i64 %.val2, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEECsb6FLkjZuKG_18ruff_python_parser.exit6, label %bb.d

bb.d:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.g = mul nuw i64 %.val2, 80
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEECsb6FLkjZuKG_18ruff_python_parser.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEECsb6FLkjZuKG_18ruff_python_parser.exit6: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, %bb.d
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1112, !nonnull !15, !noundef !15 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1112, !noundef !15 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %.sroa.0.0.i5 = phi i64 [ %i.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringECsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.0.i5
  %i.h = add i64 %.sroa.0.0.i5, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringECsb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %bb.b, !inline_history !1110

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringECsb6FLkjZuKG_18ruff_python_parser.exit7.i: ; preds = %.lr.ph7
  %i.i = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph7

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringECsb6FLkjZuKG_18ruff_python_parser.exit7.i
  %.sroa.0.1.i6 = phi i64 [ %i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringECsb6FLkjZuKG_18ruff_python_parser.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringECsb6FLkjZuKG_18ruff_python_parser.exit7.i unwind label %bb.c, !inline_history !1110

bb.c:                                             ; preds = %.lr.ph7
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !inline_history !1111
  unreachable

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringECsb6FLkjZuKG_18ruff_python_parser.exit7.i, %bb.b
  %.val2 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.d

bb.d:                                             ; preds = %.body
  %i.p = mul nuw i64 %.val2, 40
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEECsb6FLkjZuKG_18ruff_python_parser.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringECsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEECsb6FLkjZuKG_18ruff_python_parser.exit4, label %bb.e

bb.e:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.r = mul nuw i64 %.val, 40
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEECsb6FLkjZuKG_18ruff_python_parser.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEECsb6FLkjZuKG_18ruff_python_parser.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, %bb.e
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.d, %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1122, !nonnull !15, !noundef !15 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1122, !noundef !15 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %.sroa.0.0.i17 = phi i64 [ %i.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemECsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.0.0.i17 ; 3 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i17, 1        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !range !41, !alias.scope !1123, !noundef !15
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %bb.c, !inline_history !1119

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.g) #44
          to label %.body.i unwind label %bb.d, !inline_history !1120

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.b, %.lr.ph
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemECsb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %bb.f, !inline_history !1120

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !inline_history !1120
  unreachable

bb.e:                                             ; preds = %.lr.ph19
  %i.n = add i64 %.sroa.0.1.i18, 1                ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.d
  br i1 %i.o, label %.body, label %.lr.ph19

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.l, %bb.c ]
  %i.q = icmp eq i64 %i.h, %i.d
  br i1 %i.q, label %.body, label %.lr.ph19

.lr.ph19:                                         ; preds = %.body.i, %bb.e
  %.sroa.0.1.i18 = phi i64 [ %i.n, %bb.e ], [ %i.h, %.body.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.0.1.i18
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(144) %i.r) #44
          to label %bb.e unwind label %bb.g, !inline_history !1121

bb.g:                                             ; preds = %.lr.ph19
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !inline_history !1121
  unreachable

.body:                                            ; preds = %bb.e, %.body.i
  %.val2 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.t = icmp eq i64 %.val2, 0
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.u = mul nuw i64 %.val2, 144
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEECsb6FLkjZuKG_18ruff_python_parser.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemECsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.v = icmp eq i64 %.val, 0
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEECsb6FLkjZuKG_18ruff_python_parser.exit4, label %bb.i

bb.i:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.w = mul nuw i64 %.val, 144
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEECsb6FLkjZuKG_18ruff_python_parser.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEECsb6FLkjZuKG_18ruff_python_parser.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, %bb.i
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %.val, i64 noundef %.val1)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val4 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.d = icmp eq i64 %.val4, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = mul nuw i64 %.val4, 96
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEECsb6FLkjZuKG_18ruff_python_parser.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.f = icmp eq i64 %.val2, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEECsb6FLkjZuKG_18ruff_python_parser.exit6, label %bb.d

bb.d:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.g = mul nuw i64 %.val2, 96
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEECsb6FLkjZuKG_18ruff_python_parser.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEECsb6FLkjZuKG_18ruff_python_parser.exit6: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, %bb.d
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !15 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(104) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [104 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(104) %i.k) #44
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 104
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEECsb6FLkjZuKG_18ruff_python_parser.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEECsb6FLkjZuKG_18ruff_python_parser.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.p = mul nuw i64 %.val2, 104
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEECsb6FLkjZuKG_18ruff_python_parser.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEECsb6FLkjZuKG_18ruff_python_parser.exit6: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, %bb.g
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !15 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(64) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(64) %i.k) #44
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = shl nuw i64 %.val4, 6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEECsb6FLkjZuKG_18ruff_python_parser.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEECsb6FLkjZuKG_18ruff_python_parser.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.p = shl nuw i64 %.val2, 6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEECsb6FLkjZuKG_18ruff_python_parser.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEECsb6FLkjZuKG_18ruff_python_parser.exit6: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, %bb.g
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1127, !nonnull !15, !noundef !15 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1127, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %i.b, i64 noundef %i.d)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit unwind label %bb.b, !inline_history !1126

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.f = icmp eq i64 %.val2, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %.val2, 6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEECsb6FLkjZuKG_18ruff_python_parser.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.h = icmp eq i64 %.val, 0
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEECsb6FLkjZuKG_18ruff_python_parser.exit4, label %bb.d

bb.d:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.i = shl nuw i64 %.val, 6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEECsb6FLkjZuKG_18ruff_python_parser.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEECsb6FLkjZuKG_18ruff_python_parser.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, %bb.d
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1131, !nonnull !15, !noundef !15 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1131, !noundef !15 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.0.i5
  %i.h = add i64 %.sroa.0.0.i5, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !1130

bb.c:                                             ; preds = %.lr.ph7
  %i.i = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph7

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i6 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.m) #44
          to label %bb.c unwind label %bb.e, !inline_history !1130

bb.e:                                             ; preds = %.lr.ph7
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !inline_history !1130
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val2 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.p = mul nuw i64 %.val2, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.b, %bb.a
  %.val = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit4, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.r = mul nuw i64 %.val, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, %bb.g
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !15 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [88 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(88) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(88) %i.k) #44
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 88
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEECsb6FLkjZuKG_18ruff_python_parser.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEECsb6FLkjZuKG_18ruff_python_parser.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.p = mul nuw i64 %.val2, 88
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEECsb6FLkjZuKG_18ruff_python_parser.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEECsb6FLkjZuKG_18ruff_python_parser.exit6: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, %bb.g
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1135, !nonnull !15, !noundef !15 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1135, !noundef !15 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.0.i5
  %i.h = add nuw nsw i64 %.sroa.0.0.i5, 1         ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !1134

bb.c:                                             ; preds = %.lr.ph7
  %i.i = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph7

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i6 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.m) #44
          to label %bb.c unwind label %bb.e, !inline_history !1134

bb.e:                                             ; preds = %.lr.ph7
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !inline_history !1134
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val2 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.p = mul nuw i64 %.val2, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.b, %bb.a
  %.val = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser.exit4, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.r = mul nuw i64 %.val, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, %bb.g
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !15 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.k) #44
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamEECsb6FLkjZuKG_18ruff_python_parser.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamEECsb6FLkjZuKG_18ruff_python_parser.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.p = mul nuw i64 %.val2, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamEECsb6FLkjZuKG_18ruff_python_parser.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamEECsb6FLkjZuKG_18ruff_python_parser.exit6: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, %bb.g
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEEB1d_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.b, align 8, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEBI_(ptr noalias noundef nonnull align 8 %.val4, i64 noundef %.val5)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.d = icmp eq i64 %.val2, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEEB1k_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = mul nuw i64 %.val2, 104
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEEB1k_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit: ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.f = icmp eq i64 %.val, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEEB1k_.exit6, label %bb.d

bb.d:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit
  %i.g = mul nuw i64 %.val, 104
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEEB1k_.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEEB1k_.exit6: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit, %bb.d
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEEB1k_.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10ParametersEECsb6FLkjZuKG_18ruff_python_parser(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10ParametersECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(56) %.0.val)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 56, i64 noundef 8) #42
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 56, i64 noundef 8) #42
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecECsb6FLkjZuKG_18ruff_python_parser.exit unwind label %bb.b, !inline_history !1136

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #42
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #42
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 39
  %i.d = load i8, ptr %i.c, align 1, !range !16, !alias.scope !1158, !noundef !15
  %i.e = and i8 %i.d, -2
  %switch.i.i.i.i.i = icmp eq i8 %i.e, -48
  br i1 %switch.i.i.i.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  %.pn.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !1160, !nonnull !15, !noundef !15
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i, i64 -8
  %i.f = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i, i64 1 release, align 8, !noalias !1160
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit, !prof !14

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(8) %i.i) #44
          to label %bb.h unwind label %bb.g, !inline_history !1161

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1162, !align !17, !noundef !15 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %bb.f, !noalias !1163, !inline_history !1164

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef 72, i64 noundef 8) #42, !noalias !1163
  br label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef 72, i64 noundef 8) #42, !noalias !1163
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterECsb6FLkjZuKG_18ruff_python_parser.exit

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !inline_history !1161
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #42
  ret void

bb.h:                                             ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.m, %bb.f ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #42
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.a)
          to label %bb.b unwind label %bb.c
end_hunk_3
begin_hunk_4_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiqnnZIZlexh_7tinyvec7tinyvec7TinyVecAThcEj4_EECsb6FLkjZuKG_18ruff_python_parser:bb.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecThcEEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.d = icmp eq i64 %.val, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecThcEEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !15, !noundef !15
  %i.f = shl nuw i64 %.val, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 4) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecThcEEECsb6FLkjZuKG_18ruff_python_parser.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEEBI_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1171, !nonnull !15, !noundef !15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1171, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %.val.i, i64 noundef %.val1.i)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %bb.b, !noalias !1171

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val4.i = load i64, ptr %0, align 8, !range !26, !alias.scope !1171, !noundef !15 ; 2 uses
  %i.d = icmp eq i64 %.val4.i, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = mul nuw i64 %.val4.i, 96
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1171
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEECsb6FLkjZuKG_18ruff_python_parser.exit.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !26, !alias.scope !1171, !noundef !15 ; 2 uses
  %i.f = icmp eq i64 %.val2.i, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.g = mul nuw i64 %.val2.i, 96
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1171
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEECsb6FLkjZuKG_18ruff_python_parser.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1174, !nonnull !15, !noundef !15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1174, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %.val.i, i64 noundef %.val1.i)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %bb.b, !noalias !1174

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val4.i = load i64, ptr %0, align 8, !range !26, !alias.scope !1174, !noundef !15 ; 2 uses
  %i.d = icmp eq i64 %.val4.i, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = mul nuw i64 %.val4.i, 80
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1174
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsb6FLkjZuKG_18ruff_python_parser.exit.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !26, !alias.scope !1174, !noundef !15 ; 2 uses
  %i.f = icmp eq i64 %.val2.i, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.g = mul nuw i64 %.val2.i, 80
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1174
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsb6FLkjZuKG_18ruff_python_parser.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEBI_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1177, !nonnull !15, !noundef !15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1177, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %.val.i, i64 noundef %.val1.i)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %bb.b, !noalias !1177

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val4.i = load i64, ptr %0, align 8, !range !26, !alias.scope !1177, !noundef !15 ; 2 uses
  %i.d = icmp eq i64 %.val4.i, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = mul nuw i64 %.val4.i, 80
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1177
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEECsb6FLkjZuKG_18ruff_python_parser.exit.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !26, !alias.scope !1177, !noundef !15 ; 2 uses
  %i.f = icmp eq i64 %.val2.i, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.g = mul nuw i64 %.val2.i, 80
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1177
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEECsb6FLkjZuKG_18ruff_python_parser.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEEBI_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1180, !nonnull !15, !noundef !15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1180, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %.val.i, i64 noundef %.val1.i)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %bb.b, !noalias !1180

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val4.i = load i64, ptr %0, align 8, !range !26, !alias.scope !1180, !noundef !15 ; 2 uses
  %i.d = icmp eq i64 %.val4.i, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = mul nuw i64 %.val4.i, 120
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1180
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsb6FLkjZuKG_18ruff_python_parser.exit.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !26, !alias.scope !1180, !noundef !15 ; 2 uses
  %i.f = icmp eq i64 %.val2.i, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.g = mul nuw i64 %.val2.i, 120
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1180
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsb6FLkjZuKG_18ruff_python_parser.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser(ptr %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %.8.val to i64
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = udiv exact i64 %i.c, 72                  ; 3 uses
  %i.e = icmp eq ptr %.8.val, %.0.val
  br i1 %i.e, label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %.0.val, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !1

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.m) #44
          to label %bb.c unwind label %bb.e, !inline_history !1

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !inline_history !1
  unreachable

_RNvXs_NtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternNtB1M_4ExprEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1183, !nonnull !15, !noundef !15 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1183, !noundef !15 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1183, !noundef !15 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.i, %i.e
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i2 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.0.i.i2
  %i.i = add nuw nsw i64 %.sroa.0.0.i.i2, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.h)
          to label %bb.b unwind label %bb.d, !noalias !1183, !inline_history !1

bb.c:                                             ; preds = %.lr.ph4
  %i.j = add i64 %.sroa.0.1.i.i3, 1               ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %.body.i, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.i, %i.e
  br i1 %i.m, label %.body.i, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i3 = phi i64 [ %i.j, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.1.i.i3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.n) #44
          to label %bb.c unwind label %bb.e, !noalias !1183, !inline_history !1

bb.e:                                             ; preds = %.lr.ph4
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !1183, !inline_history !1
  unreachable

.body.i:                                          ; preds = %bb.c, %bb.d
  %i.p = icmp eq i64 %i.c, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.q = mul nuw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1183
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.b, %bb.a
  %i.r = icmp eq i64 %i.c, 0
  br i1 %i.r, label %_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternNtB1j_4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.s = mul nuw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1183
  br label %_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternNtB1j_4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %i.l

_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternNtB1j_4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEEB1Q_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1186, !nonnull !15, !noundef !15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1186, !noundef !15 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1186, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %i.a, i64 noundef %i.e)
          to label %bb.d unwind label %bb.b, !noalias !1186

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEEB1k_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = mul nuw i64 %i.c, 104
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1186
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEEB1k_.exit.i

bb.d:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.c, 0
  br i1 %i.i, label %_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1n_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = mul nuw i64 %i.c, 104
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1186
  br label %_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1n_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEEB1k_.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1n_.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1189, !nonnull !15, !noundef !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1189, !nonnull !15, !noundef !15 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8, !alias.scope !1189
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !alias.scope !1189
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1189, !nonnull !15, !noundef !15 ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.a
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1189, !noundef !15 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noalias !1189, !noundef !15 ; 4 uses
  %i.k = icmp ult i64 %i.j, 115292150460684698
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1189, !noundef !15 ; 2 uses
  %.not3.i.i.i = icmp eq i64 %i.m, %i.j
  br i1 %.not3.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.h
  store i64 %i.n, ptr %i.i, align 8, !noalias !1189
  br label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1189, !nonnull !15, !noundef !15 ; 2 uses
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.j
  %i.s = mul i64 %i.h, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false), !noalias !1189
  br label %bb.d

bb.f:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultNtNtBO_5alloc6GlobalEECsb6FLkjZuKG_18ruff_python_parser(ptr nonnull align 8 dereferenceable(40) %0) #44
  resume { ptr, i32 } %i.t

bb.g:                                             ; preds = %bb.a
  %i.u = ptrtoint ptr %i.c to i64
  %i.v = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.w = sub nuw i64 %i.u, %i.v
  %i.x = udiv exact i64 %i.w, 80
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !noalias !1189, !nonnull !15, !noundef !15 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub nuw i64 %i.v, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %i.ac, i64 noundef %i.x)
          to label %bb.h unwind label %bb.f, !noalias !1189

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1189, !noundef !15 ; 3 uses
  %.not.i.i5.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i5.i, label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1189, !noundef !15 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 115292150460684698
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !1189, !noundef !15 ; 2 uses
  %.not3.i.i6.i = icmp eq i64 %i.aj, %i.ag
  br i1 %.not3.i.i6.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ak = add i64 %i.ag, %i.ae
  store i64 %i.ak, ptr %i.af, align 8, !noalias !1189
  br label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.y, align 8, !noalias !1189, !nonnull !15, !noundef !15 ; 2 uses
  %i.am = getelementptr inbounds nuw [80 x i8], ptr %i.al, i64 %i.aj
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %i.al, i64 %i.ag
  %i.ao = mul i64 %i.ae, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 8 %i.am, i64 %i.ao, i1 false), !noalias !1189
  br label %bb.j

_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.b, %bb.d, %bb.h, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1192, !nonnull !15, !noundef !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1192, !nonnull !15, !noundef !15 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8, !alias.scope !1192
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !alias.scope !1192
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1192, !nonnull !15, !noundef !15 ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.a
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1192, !noundef !15 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.c
end_hunk_4
begin_hunk_5_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEECsb6FLkjZuKG_18ruff_python_parser:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1192, !noundef !15 ; 3 uses
  %.not.i.i5.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i5.i, label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1192, !noundef !15 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 115292150460684698
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !1192, !noundef !15 ; 2 uses
  %.not3.i.i6.i = icmp eq i64 %i.aj, %i.ag
  br i1 %.not3.i.i6.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ak = add i64 %i.ag, %i.ae
  store i64 %i.ak, ptr %i.af, align 8, !noalias !1192
  br label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.y, align 8, !noalias !1192, !nonnull !15, !noundef !15 ; 2 uses
  %i.am = getelementptr inbounds nuw [80 x i8], ptr %i.al, i64 %i.aj
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %i.al, i64 %i.ag
  %i.ao = mul i64 %i.ae, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 8 %i.am, i64 %i.ao, i1 false), !noalias !1192
  br label %bb.j

_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.b, %bb.d, %bb.h, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1195, !nonnull !15, !noundef !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1195, !nonnull !15, !noundef !15 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8, !alias.scope !1195
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !alias.scope !1195
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1195, !nonnull !15, !noundef !15 ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.a
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1195, !noundef !15 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noalias !1195, !noundef !15 ; 4 uses
  %i.k = icmp ult i64 %i.j, 76861433640456466
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1195, !noundef !15 ; 2 uses
  %.not3.i.i.i = icmp eq i64 %i.m, %i.j
  br i1 %.not3.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.h
  store i64 %i.n, ptr %i.i, align 8, !noalias !1195
  br label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1195, !nonnull !15, !noundef !15 ; 2 uses
  %i.q = getelementptr inbounds nuw [120 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw [120 x i8], ptr %i.p, i64 %i.j
  %i.s = mul i64 %i.h, 120
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false), !noalias !1195
  br label %bb.d

bb.f:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordNtNtBO_5alloc6GlobalEECsb6FLkjZuKG_18ruff_python_parser(ptr nonnull align 8 dereferenceable(40) %0) #44
  resume { ptr, i32 } %i.t

bb.g:                                             ; preds = %bb.a
  %i.u = ptrtoint ptr %i.c to i64
  %i.v = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.w = sub nuw i64 %i.u, %i.v
  %i.x = udiv exact i64 %i.w, 120
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !noalias !1195, !nonnull !15, !noundef !15 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub nuw i64 %i.v, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %i.ac, i64 noundef %i.x)
          to label %bb.h unwind label %bb.f, !noalias !1195

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1195, !noundef !15 ; 3 uses
  %.not.i.i5.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i5.i, label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1195, !noundef !15 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 76861433640456466
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !1195, !noundef !15 ; 2 uses
  %.not3.i.i6.i = icmp eq i64 %i.aj, %i.ag
  br i1 %.not3.i.i6.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ak = add i64 %i.ag, %i.ae
  store i64 %i.ak, ptr %i.af, align 8, !noalias !1195
  br label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.y, align 8, !noalias !1195, !nonnull !15, !noundef !15 ; 2 uses
  %i.am = getelementptr inbounds nuw [120 x i8], ptr %i.al, i64 %i.aj
  %i.an = getelementptr inbounds nuw [120 x i8], ptr %i.al, i64 %i.ag
  %i.ao = mul i64 %i.ae, 120
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 8 %i.am, i64 %i.ao, i1 false), !noalias !1195
  br label %bb.j

_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.b, %bb.d, %bb.h, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1198, !nonnull !15, !noundef !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1198, !nonnull !15, !noundef !15 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8, !alias.scope !1198
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !alias.scope !1198
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 72                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1198, !nonnull !15, !noundef !15 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1198, !noundef !15 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !1198, !noundef !15 ; 4 uses
  %i.o = icmp ult i64 %i.n, 128102389400760776
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1198, !noundef !15 ; 2 uses
  %.not3.i.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8, !noalias !1198
  br label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !1198, !nonnull !15, !noundef !15 ; 2 uses
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %i.t, i64 %i.n
  %i.w = mul i64 %i.l, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false), !noalias !1198
  br label %bb.d

.body.i:                                          ; preds = %bb.h, %bb.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtBO_5alloc6GlobalEECsb6FLkjZuKG_18ruff_python_parser(ptr nonnull align 8 dereferenceable(40) %0) #44
  resume { ptr, i32 } %i.ah

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !noalias !1198, !nonnull !15, !noundef !15 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.ae, %i.g
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.i.i7 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.ab, i64 %.sroa.0.0.i.i7
  %i.ae = add nuw nsw i64 %.sroa.0.0.i.i7, 1      ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.ad)
          to label %bb.f unwind label %bb.i, !noalias !1198, !inline_history !1

bb.h:                                             ; preds = %.lr.ph9
  %i.af = add i64 %.sroa.0.1.i.i8, 1              ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.g
  br i1 %i.ag, label %.body.i, label %.lr.ph9

bb.i:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = icmp eq i64 %i.ae, %i.g
  br i1 %i.ai, label %.body.i, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.i, %bb.h
  %.sroa.0.1.i.i8 = phi i64 [ %i.af, %bb.h ], [ %i.ae, %bb.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [72 x i8], ptr %i.ab, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.aj) #44
          to label %bb.h unwind label %bb.j, !noalias !1198, !inline_history !1

bb.j:                                             ; preds = %.lr.ph9
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !1198, !inline_history !1
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1198, !noundef !15 ; 3 uses
  %.not.i.i5.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i5.i, label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noalias !1198, !noundef !15 ; 4 uses
  %i.ap = icmp ult i64 %i.ao, 128102389400760776
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !1198, !noundef !15 ; 2 uses
  %.not3.i.i6.i = icmp eq i64 %i.ar, %i.ao
  br i1 %.not3.i.i6.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.as = add i64 %i.ao, %i.am
  store i64 %i.as, ptr %i.an, align 8, !noalias !1198
  br label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit

bb.m:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.x, align 8, !noalias !1198, !nonnull !15, !noundef !15 ; 2 uses
  %i.au = getelementptr inbounds nuw [72 x i8], ptr %i.at, i64 %i.ar
  %i.av = getelementptr inbounds nuw [72 x i8], ptr %i.at, i64 %i.ao
  %i.aw = mul i64 %i.am, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull align 8 %i.au, i64 %i.aw, i1 false), !noalias !1198
  br label %bb.l

_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.b, %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1201, !nonnull !15, !noundef !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1201, !nonnull !15, !noundef !15 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8, !alias.scope !1201
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !alias.scope !1201
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 88                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1201, !nonnull !15, !noundef !15 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1201, !noundef !15 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !1201, !noundef !15 ; 4 uses
  %i.o = icmp ult i64 %i.n, 104811045873349726
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1201, !noundef !15 ; 2 uses
  %.not3.i.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8, !noalias !1201
  br label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !1201, !nonnull !15, !noundef !15 ; 2 uses
  %i.u = getelementptr inbounds nuw [88 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [88 x i8], ptr %i.t, i64 %i.n
  %i.w = mul i64 %i.l, 88
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false), !noalias !1201
  br label %bb.d

.body.i:                                          ; preds = %bb.h, %bb.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNtNtBO_5alloc6GlobalEECsb6FLkjZuKG_18ruff_python_parser(ptr nonnull align 8 dereferenceable(40) %0) #44
  resume { ptr, i32 } %i.ah

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !noalias !1201, !nonnull !15, !noundef !15 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.ae, %i.g
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.i.i7 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [88 x i8], ptr %i.ab, i64 %.sroa.0.0.i.i7
  %i.ae = add nuw nsw i64 %.sroa.0.0.i.i7, 1      ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(88) %i.ad)
          to label %bb.f unwind label %bb.i, !noalias !1201

bb.h:                                             ; preds = %.lr.ph9
  %i.af = add i64 %.sroa.0.1.i.i8, 1              ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.g
  br i1 %i.ag, label %.body.i, label %.lr.ph9

bb.i:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = icmp eq i64 %i.ae, %i.g
  br i1 %i.ai, label %.body.i, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.i, %bb.h
  %.sroa.0.1.i.i8 = phi i64 [ %i.af, %bb.h ], [ %i.ae, %bb.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [88 x i8], ptr %i.ab, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(88) %i.aj) #44
          to label %bb.h unwind label %bb.j, !noalias !1201

bb.j:                                             ; preds = %.lr.ph9
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !1201
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1201, !noundef !15 ; 3 uses
  %.not.i.i5.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i5.i, label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noalias !1201, !noundef !15 ; 4 uses
  %i.ap = icmp ult i64 %i.ao, 104811045873349726
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !1201, !noundef !15 ; 2 uses
  %.not3.i.i6.i = icmp eq i64 %i.ar, %i.ao
  br i1 %.not3.i.i6.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.as = add i64 %i.ao, %i.am
  store i64 %i.as, ptr %i.an, align 8, !noalias !1201
  br label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit

bb.m:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.x, align 8, !noalias !1201, !nonnull !15, !noundef !15 ; 2 uses
  %i.au = getelementptr inbounds nuw [88 x i8], ptr %i.at, i64 %i.ar
  %i.av = getelementptr inbounds nuw [88 x i8], ptr %i.at, i64 %i.ao
  %i.aw = mul i64 %i.am, 88
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull align 8 %i.au, i64 %i.aw, i1 false), !noalias !1201
  br label %bb.l

_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.b, %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.l
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEEB1s_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1216, !nonnull !15, !noundef !15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !1216, !nonnull !15, !noundef !15 ; 2 uses
  %i.c = ptrtoint ptr %.val1.i to i64
  %i.d = ptrtoint ptr %.val.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  %i.g = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBG_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i ; 6 uses
  %i.i = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %i.j = load i8, ptr %i.h, align 8, !range !38, !alias.scope !1220, !noalias !1216, !noundef !15
  switch i8 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i [
    i8 0, label %bb.b
    i8 19, label %bb.c
    i8 42, label %bb.d
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.sink.split.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.val1.i4.sink.i.i.i.i = phi i64 [ %.val.i1.i.i.i.i, %bb.c ], [ %.val.i.i.i.i.i, %bb.b ], [ %.val1.i4.i.i.i.i, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val.i5.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !1220, !noalias !1216, !nonnull !15, !noundef !15
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i5.i.i.i.i, i64 noundef %.val1.i4.sink.i.i.i.i, i64 noundef 1) #42, !noalias !1221
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !1222, !noalias !1216 ; 2 uses
  %i.m = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.sink.split.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val.i1.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !1223, !noalias !1216 ; 2 uses
  %i.o = icmp eq i64 %.val.i1.i.i.i.i, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.sink.split.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = load i8, ptr %i.p, align 8, !range !28, !alias.scope !1224, !noalias !1216, !noundef !15
  %switch.i.i.i.i.i = icmp samesign ult i8 %i.q, 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.val1.i4.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !1220, !noalias !1216 ; 2 uses
  %i.s = icmp eq i64 %.val1.i4.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %switch.i.i.i.i.i, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.sink.split.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.sink.split.i.i.i.i, %.lr.ph.i.i
  %i.t = icmp eq i64 %i.i, %i.f
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBG_.exit.i, label %.lr.ph.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBG_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !1216, !noundef !15 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBG_.exit.i
  %i.x = load ptr, ptr %0, align 8, !alias.scope !1216, !nonnull !15, !noundef !15
  %i.y = mul nuw i64 %i.v, 40
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.x, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1216
  br label %_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_.exit

_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBG_.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeEEB1s_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1229, !nonnull !15, !noundef !15 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !1229, !nonnull !15, !noundef !15 ; 2 uses
  %i.c = ptrtoint ptr %.val1.i to i64
  %i.d = ptrtoint ptr %.val.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 48                  ; 3 uses
  %i.g = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeEBG_.exit.i, label %.lr.ph

.body.i:                                          ; preds = %bb.d, %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1229, !noundef !15 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeNtNtBO_5alloc6GlobalEEB2j_.exit.i, label %bb.b

bb.b:                                             ; preds = %.body.i
  %i.k = load ptr, ptr %0, align 8, !alias.scope !1229, !nonnull !15, !noundef !15
  %i.l = mul nuw i64 %i.i, 48
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1229
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeNtNtBO_5alloc6GlobalEEB2j_.exit.i

bb.c:                                             ; preds = %.lr.ph
  %i.m = icmp eq i64 %i.o, %i.f
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeEBG_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.0.i.i3 = phi i64 [ %i.o, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i3
  %i.o = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeEBF_(ptr noalias noundef readonly align 8 dereferenceable(48) %i.n)
          to label %bb.c unwind label %bb.e, !noalias !1229

bb.d:                                             ; preds = %.lr.ph5
  %i.p = add i64 %.sroa.0.1.i.i4, 1               ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.f
  br i1 %i.q, label %.body.i, label %.lr.ph5

bb.e:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.o, %i.f
  br i1 %i.s, label %.body.i, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.p, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeEBF_(ptr noalias noundef readonly align 8 dereferenceable(48) %i.t) #44
          to label %bb.d unwind label %bb.f, !noalias !1229

bb.f:                                             ; preds = %.lr.ph5
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !1230
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeEBG_.exit.i: ; preds = %bb.c, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !1229, !noundef !15 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeEBG_.exit.i
  %i.y = load ptr, ptr %0, align 8, !alias.scope !1229, !nonnull !15, !noundef !15
  %i.z = mul nuw i64 %i.w, 48
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1229
  br label %_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeNtNtBO_5alloc6GlobalEEB2j_.exit.i: ; preds = %bb.b, %.body.i
  resume { ptr, i32 } %i.r

_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsb6FLkjZuKG_18ruff_python_parser6string10StringTypeEBG_.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1233, !nonnull !15, !noundef !15 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !1233, !nonnull !15, !noundef !15 ; 2 uses
  %i.c = ptrtoint ptr %.val1.i to i64
  %i.d = ptrtoint ptr %.val.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 72                  ; 3 uses
  %i.g = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %.lr.ph

.body.i:                                          ; preds = %bb.d, %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1233, !noundef !15 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternNtNtBO_5alloc6GlobalEECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.b

bb.b:                                             ; preds = %.body.i
  %i.k = load ptr, ptr %0, align 8, !alias.scope !1233, !nonnull !15, !noundef !15
  %i.l = mul nuw i64 %i.i, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1233
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternNtNtBO_5alloc6GlobalEECsb6FLkjZuKG_18ruff_python_parser.exit.i

bb.c:                                             ; preds = %.lr.ph
  %i.m = icmp eq i64 %i.o, %i.f
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.0.i.i3 = phi i64 [ %i.o, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i3
  %i.o = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.n)
          to label %bb.c unwind label %bb.e, !noalias !1233, !inline_history !2

bb.d:                                             ; preds = %.lr.ph5
  %i.p = add i64 %.sroa.0.1.i.i4, 1               ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.f
  br i1 %i.q, label %.body.i, label %.lr.ph5

bb.e:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.o, %i.f
  br i1 %i.s, label %.body.i, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.p, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.t) #44
          to label %bb.d unwind label %bb.f, !noalias !1233, !inline_history !2

bb.f:                                             ; preds = %.lr.ph5
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !1233, !inline_history !2
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.c, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !1233, !noundef !15 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.y = load ptr, ptr %0, align 8, !alias.scope !1233, !nonnull !15, !noundef !15
  %i.z = mul nuw i64 %i.w, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1233
  br label %_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternNtNtBO_5alloc6GlobalEECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.b, %.body.i
  resume { ptr, i32 } %i.r

_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprEEB2G_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1236, !nonnull !15, !noundef !15
  %i.b = icmp eq ptr %i.a, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvXsI_CsaSrGj5dYoxL_8thin_vecINtB8_8IntoIterpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %_RNvXsI_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %bb.d

_RNvXsI_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.b
  tail call void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser.exit

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.a, %_RNvXsI_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEIB1q_NtB20_7PatternEENCNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_expr0EEB3g_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1243, !nonnull !15, !noundef !15
  %i.b = icmp eq ptr %i.a, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvXsI_CsaSrGj5dYoxL_8thin_vecINtB8_8IntoIterpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %0)
          to label %_RNvXsI_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBN_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %.body.i unwind label %bb.d

_RNvXsI_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i: ; preds = %bb.b
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBN_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.e:                                             ; preds = %_RNvXsI_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(16) %i.f) #44
          to label %common.resume.i unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %_RNvXsI_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1244, !nonnull !15, !noundef !15
  %i.i = icmp eq ptr %i.h, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEIB1a_NtB1K_7PatternEEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.f, !prof !30

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i
  invoke void @_RINvNvXsI_CsaSrGj5dYoxL_8thin_vecINtB8_8IntoIterpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.g)
          to label %_RNvXsI_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %common.resume.i unwind label %bb.h

_RNvXsI_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i: ; preds = %bb.f
  tail call void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEIB1a_NtB1K_7PatternEEECsb6FLkjZuKG_18ruff_python_parser.exit

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

common.resume.i:                                  ; preds = %bb.g, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.g ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.i:                                             ; preds = %.body.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEIB1a_NtB1K_7PatternEEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i, %_RNvXsI_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordENCNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprs_0EEB30_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1267, !nonnull !15, !noundef !15 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.b, align 8, !alias.scope !1267, !nonnull !15, !noundef !15 ; 2 uses
  %i.c = ptrtoint ptr %.val1.i.i to i64
  %i.d = ptrtoint ptr %.val.i.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 120                 ; 3 uses
  %i.g = icmp eq ptr %.val1.i.i, %.val.i.i
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordECsb6FLkjZuKG_18ruff_python_parser.exit.i.i, label %.lr.ph

.body.i.i:                                        ; preds = %bb.g, %.body.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1267, !noundef !15 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordNtNtBO_5alloc6GlobalEECsb6FLkjZuKG_18ruff_python_parser.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.body.i.i
  %i.k = load ptr, ptr %0, align 8, !alias.scope !1267, !nonnull !15, !noundef !15
  %i.l = mul nuw i64 %i.i, 120
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1267
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordNtNtBO_5alloc6GlobalEECsb6FLkjZuKG_18ruff_python_parser.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  %i.m = icmp eq i64 %i.o, %i.f
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordECsb6FLkjZuKG_18ruff_python_parser.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  %.sroa.0.0.i.i.i15 = phi i64 [ %i.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [120 x i8], ptr %.val.i.i, i64 %.sroa.0.0.i.i.i15 ; 4 uses
  %i.o = add nuw nsw i64 %.sroa.0.0.i.i.i15, 1    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 95
  %i.r = load i8, ptr %i.q, align 1, !range !16, !alias.scope !1273, !noalias !1267, !noundef !15
  %i.s = and i8 %i.r, -2
  %switch.i.i.i.i.i.i.i.i = icmp eq i8 %i.s, -48
  br i1 %switch.i.i.i.i.i.i.i.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  %.pn.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !1275, !noalias !1267, !nonnull !15, !noundef !15
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i.i.i, i64 -8
  %i.t = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !1276
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, !prof !14

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i unwind label %bb.e, !noalias !1267, !inline_history !1263

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.n) #44
          to label %.body.i.i.i unwind label %bb.f, !noalias !1267, !inline_history !1264

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i unwind label %bb.h, !noalias !1267, !inline_history !1264

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !1267, !inline_history !1264
  unreachable

bb.g:                                             ; preds = %.lr.ph17
  %i.x = add i64 %.sroa.0.1.i.i.i16, 1            ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.f
  br i1 %i.y, label %.body.i.i, label %.lr.ph17

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.v, %bb.e ]
  %i.aa = icmp eq i64 %i.o, %i.f
  br i1 %i.aa, label %.body.i.i, label %.lr.ph17

.lr.ph17:                                         ; preds = %.body.i.i.i, %bb.g
  %.sroa.0.1.i.i.i16 = phi i64 [ %i.x, %bb.g ], [ %i.o, %.body.i.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [120 x i8], ptr %.val.i.i, i64 %.sroa.0.1.i.i.i16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(120) %i.ab) #44
          to label %bb.g unwind label %bb.i, !noalias !1267, !inline_history !1263

bb.i:                                             ; preds = %.lr.ph17
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !1267, !inline_history !1263
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordECsb6FLkjZuKG_18ruff_python_parser.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1267, !noundef !15 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordECsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  %i.ag = load ptr, ptr %0, align 8, !alias.scope !1267, !nonnull !15, !noundef !15
  %i.ah = mul nuw i64 %i.ae, 120
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1267
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEECsb6FLkjZuKG_18ruff_python_parser.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordNtNtBO_5alloc6GlobalEECsb6FLkjZuKG_18ruff_python_parser.exit.i.i: ; preds = %bb.b, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordECsb6FLkjZuKG_18ruff_python_parser.exit.i.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENCNvMB1Y_NtB20_6Parser34try_parse_parenthesized_with_itemss0_0EEB22_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1283, !nonnull !15, !noundef !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.b, align 8, !alias.scope !1283, !nonnull !15, !noundef !15
  %i.c = ptrtoint ptr %.val1.i.i to i64
  %i.d = ptrtoint ptr %.val.i.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 104
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEBI_(ptr noalias noundef nonnull align 8 %.val.i.i, i64 noundef %i.f)
          to label %bb.d unwind label %bb.b, !noalias !1283

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1283, !noundef !15 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemNtNtBO_5alloc6GlobalEEB2l_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !alias.scope !1283, !nonnull !15, !noundef !15
  %i.l = mul nuw i64 %i.i, 104
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1283
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemNtNtBO_5alloc6GlobalEEB2l_.exit.i.i

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1283, !noundef !15 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEEB1u_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %0, align 8, !alias.scope !1283, !nonnull !15, !noundef !15
  %i.q = mul nuw i64 %i.n, 104
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1283
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEEB1u_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemNtNtBO_5alloc6GlobalEEB2l_.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEEB1u_.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEEEB2a_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !1316, !nonnull !15, !noundef !15 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i = load ptr, ptr %i.c, align 8, !alias.scope !1316, !nonnull !15, !noundef !15 ; 2 uses
  %i.d = ptrtoint ptr %.val1.i.i to i64
  %i.e = ptrtoint ptr %.val.i.i to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  %i.h = icmp eq ptr %.val1.i.i, %.val.i.i
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBG_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i, i64 %.sroa.0.07.i.i.i ; 6 uses
  %i.j = add nuw nsw i64 %.sroa.0.07.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  %i.k = load i8, ptr %i.i, align 8, !range !38, !alias.scope !1320, !noalias !1316, !noundef !15
  switch i8 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i.i [
    i8 0, label %bb.b
    i8 19, label %bb.c
    i8 42, label %bb.d
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.sink.split.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.val1.i4.sink.i.i.i.i.i = phi i64 [ %.val.i1.i.i.i.i.i, %bb.c ], [ %.val.i.i.i.i.i.i, %bb.b ], [ %.val1.i4.i.i.i.i.i, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val.i5.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1320, !noalias !1316, !nonnull !15, !noundef !15
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i5.i.i.i.i.i, i64 noundef %.val1.i4.sink.i.i.i.i.i, i64 noundef 1) #42, !noalias !1321
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !1322, !noalias !1316 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.sink.split.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val.i1.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !1323, !noalias !1316 ; 2 uses
  %i.p = icmp eq i64 %.val.i1.i.i.i.i.i, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.sink.split.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.r = load i8, ptr %i.q, align 8, !range !28, !alias.scope !1324, !noalias !1316, !noundef !15
  %switch.i.i.i.i.i.i = icmp samesign ult i8 %i.r, 12
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.val1.i4.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !1320, !noalias !1316 ; 2 uses
  %i.t = icmp eq i64 %.val1.i4.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = select i1 %switch.i.i.i.i.i.i, i1 true, i1 %i.t
  br i1 %or.cond.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.sink.split.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.u = icmp eq i64 %i.j, %i.g
  br i1 %i.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBG_.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBG_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_.exit.i.i.i, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !1316, !noundef !15 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEEB1s_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBG_.exit.i.i
  %i.y = load ptr, ptr %i.a, align 8, !alias.scope !1316, !nonnull !15, !noundef !15
  %i.z = mul nuw i64 %i.w, 40
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1316
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEEB1s_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEEB1s_.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBG_.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  %i.aa = load i8, ptr %0, align 8, !range !1326, !alias.scope !1325, !noundef !15 ; 3 uses
  %i.ab = icmp eq i8 %i.aa, -2
  br i1 %i.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEEEB15_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEEB1s_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  %i.ac = icmp eq i8 %i.aa, -1
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEEEB15_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  switch i8 %i.aa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEEEB15_.exit [
    i8 0, label %bb.h
    i8 19, label %bb.i
    i8 42, label %bb.j
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.sink.split.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %.val1.i4.sink.i.i.i.i = phi i64 [ %.val.i1.i.i.i.i, %bb.i ], [ %.val.i.i.i.i.i, %bb.h ], [ %.val1.i4.i.i.i.i, %bb.j ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i5.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !1330, !nonnull !15, !noundef !15
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i5.i.i.i.i, i64 noundef %.val1.i4.sink.i.i.i.i, i64 noundef 1) #42, !noalias !1330
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEEEB15_.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !1331 ; 2 uses
  %i.af = icmp eq i64 %.val.i.i.i.i.i, 0
end_hunk_5
begin_hunk_6_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamECsb6FLkjZuKG_18ruff_python_parser:bb.a

bb.u:                                             ; preds = %bb.t
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(8) %i.an) #44
          to label %common.resume unwind label %bb.x

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i9: ; preds = %bb.t, %bb.s, %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3015)
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !3016, !align !17, !noundef !15 ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated18TypeParamParamSpecECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i9
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.ap) #45
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated18TypeParamParamSpecECsb6FLkjZuKG_18ruff_python_parser.exit.sink.split unwind label %bb.w, !noalias !3017, !inline_history !46

bb.w:                                             ; preds = %bb.v
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.x:                                             ; preds = %bb.u
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated18TypeParamParamSpecECsb6FLkjZuKG_18ruff_python_parser.exit.sink.split: ; preds = %bb.v, %bb.o, %bb.f
  %.sink19 = phi ptr [ %i.ac, %bb.o ], [ %i.k, %bb.f ], [ %i.ap, %bb.v ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink19, i64 noundef 72, i64 noundef 8) #42, !noalias !15
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated18TypeParamParamSpecECsb6FLkjZuKG_18ruff_python_parser.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated18TypeParamParamSpecECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated18TypeParamParamSpecECsb6FLkjZuKG_18ruff_python_parser.exit.sink.split, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i9, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsb6FLkjZuKG_18ruff_python_parser.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEBH_(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(8) %i.b) #44
          to label %common.resume.i unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3024)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3025, !align !17, !noundef !15 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.d) #45
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i.i unwind label %bb.e, !noalias !3026, !inline_history !46

common.resume.i:                                  ; preds = %bb.e, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 72, i64 noundef 8) #42, !noalias !3026, !inline_history !47
  br label %common.resume.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i.i: ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 72, i64 noundef 8) #42, !noalias !3026, !inline_history !47
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemECsb6FLkjZuKG_18ruff_python_parser.exit

bb.f:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 50127021939428130) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionECsb6FLkjZuKG_18ruff_python_parser.exit
  %.sroa.0.019 = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionECsb6FLkjZuKG_18ruff_python_parser.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [184 x i8], ptr %0, i64 %.sroa.0.019 ; 8 uses
  %i.c = add nuw nsw i64 %.sroa.0.019, 1          ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.d)
          to label %bb.c unwind label %bb.b, !inline_history !3032

bb.b:                                             ; preds = %.lr.ph
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.f) #44
          to label %bb.d unwind label %bb.m, !inline_history !3032

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.g)
          to label %bb.f unwind label %bb.e, !inline_history !3032

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.e, %bb.b ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.b) #44
          to label %.body unwind label %bb.m, !inline_history !3032

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3033)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !3034, !nonnull !15, !noundef !15 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !3034, !noundef !15 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i, label %.lr.ph60

bb.g:                                             ; preds = %.lr.ph60
  %i.n = icmp eq i64 %i.p, %i.l
  br i1 %i.n, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.f, %bb.g
  %.sroa.0.0.i58 = phi i64 [ %i.p, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %.sroa.0.0.i58
  %i.p = add i64 %.sroa.0.0.i58, 1                ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.o)
          to label %bb.g unwind label %bb.i, !noalias !3033, !inline_history !3031

bb.h:                                             ; preds = %.lr.ph63
  %i.q = add i64 %.sroa.0.1.i61, 1                ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.l
  br i1 %i.r, label %.body9, label %.lr.ph63

bb.i:                                             ; preds = %.lr.ph60
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = icmp eq i64 %i.p, %i.l
  br i1 %i.t, label %.body9, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.i, %bb.h
  %.sroa.0.1.i61 = phi i64 [ %i.q, %bb.h ], [ %i.p, %bb.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %.sroa.0.1.i61
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.u) #44
          to label %bb.h unwind label %bb.j, !noalias !3033, !inline_history !3031

bb.j:                                             ; preds = %.lr.ph63
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !3033, !inline_history !3031
  unreachable

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.g, %bb.f
  %.val.i = load i64, ptr %i.b, align 8, !range !26, !alias.scope !3033, !noundef !15 ; 2 uses
  %i.w = icmp eq i64 %.val.i, 0
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.l

.body9:                                           ; preds = %bb.h, %bb.i
  %.val2.i = load i64, ptr %i.b, align 8, !range !26, !alias.scope !3033, !noundef !15 ; 2 uses
  %i.x = icmp eq i64 %.val2.i, 0
  br i1 %i.x, label %.body, label %bb.k

bb.k:                                             ; preds = %.body9
  %i.y = mul nuw i64 %.val2.i, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !3033, !inline_history !3035
  br label %.body

bb.l:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.z = mul nuw i64 %.val.i, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !3033, !inline_history !3035
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionECsb6FLkjZuKG_18ruff_python_parser.exit

bb.m:                                             ; preds = %bb.d, %bb.b
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !inline_history !3032
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.l, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.ab = icmp eq i64 %i.c, %1
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionECsb6FLkjZuKG_18ruff_python_parser.exit, %bb.a
  ret void

bb.n:                                             ; preds = %.lr.ph65
  %i.ac = add i64 %.sroa.0.164, 1                 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %1
  br i1 %i.ad, label %._crit_edge66, label %.lr.ph65

.body:                                            ; preds = %bb.k, %.body9, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.s, %.body9 ], [ %i.s, %bb.k ]
  %i.ae = icmp eq i64 %i.c, %1
  br i1 %i.ae, label %._crit_edge66, label %.lr.ph65

.lr.ph65:                                         ; preds = %.body, %bb.n
  %.sroa.0.164 = phi i64 [ %i.ac, %bb.n ], [ %i.c, %.body ] ; 2 uses
  %i.af = getelementptr inbounds nuw [184 x i8], ptr %0, i64 %.sroa.0.164
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(184) %i.af) #44
          to label %bb.n unwind label %bb.o

._crit_edge66:                                    ; preds = %bb.n, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %.lr.ph65
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 96076792050570582) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseECsb6FLkjZuKG_18ruff_python_parser.exit
  %.sroa.0.010 = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseECsb6FLkjZuKG_18ruff_python_parser.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.0.010 ; 4 uses
  %i.c = add nuw nsw i64 %.sroa.0.010, 1          ; 4 uses
  %i.d = load i32, ptr %i.b, align 8, !range !41, !alias.scope !3048, !noundef !15
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %bb.c, !inline_history !5

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !3049, !nonnull !15, !noundef !15
  %i.i = icmp eq ptr %i.h, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.i, label %.body, label %bb.d, !prof !30

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.b, %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3050, !nonnull !15, !noundef !15
  %i.l = icmp eq ptr %i.k, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.e, !prof !30

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseECsb6FLkjZuKG_18ruff_python_parser.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.n = icmp eq i64 %i.c, %1
  br i1 %i.n, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseECsb6FLkjZuKG_18ruff_python_parser.exit, %bb.a
  ret void

bb.g:                                             ; preds = %.lr.ph28
  %i.o = add i64 %.sroa.0.127, 1                  ; 2 uses
  %i.p = icmp eq i64 %i.o, %1
  br i1 %i.p, label %._crit_edge29, label %.lr.ph28

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.f, %bb.d ], [ %i.f, %bb.c ]
  %i.r = icmp eq i64 %i.c, %1
  br i1 %i.r, label %._crit_edge29, label %.lr.ph28

.lr.ph28:                                         ; preds = %.body, %bb.g
  %.sroa.0.127 = phi i64 [ %i.o, %bb.g ], [ %i.c, %.body ] ; 2 uses
  %i.s = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.0.127
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(96) %i.s) #44
          to label %bb.g unwind label %bb.i

._crit_edge29:                                    ; preds = %bb.g, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.i:                                             ; preds = %.lr.ph28
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser.exit
  %.sroa.0.011 = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.011 ; 3 uses
  %i.c = add nuw nsw i64 %.sroa.0.011, 1          ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(56) %i.d)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(8) %i.f) #44
          to label %.body unwind label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3057)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !3058, !align !17, !noundef !15 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.h) #45
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i.i unwind label %bb.e, !noalias !3059, !inline_history !46

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 72, i64 noundef 8) #42, !noalias !3059, !inline_history !47
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i.i: ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 72, i64 noundef 8) #42, !noalias !3059, !inline_history !47
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser.exit

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  %i.l = icmp eq i64 %i.c, %1
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser.exit, %bb.a
  ret void

bb.g:                                             ; preds = %.lr.ph36
  %i.m = add i64 %.sroa.0.135, 1                  ; 2 uses
  %i.n = icmp eq i64 %i.m, %1
  br i1 %i.n, label %._crit_edge37, label %.lr.ph36

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.j, %bb.e ]
  %i.o = icmp eq i64 %i.c, %1
  br i1 %i.o, label %._crit_edge37, label %.lr.ph36

.lr.ph36:                                         ; preds = %.body, %bb.g
  %.sroa.0.135 = phi i64 [ %i.m, %bb.g ], [ %i.c, %.body ] ; 2 uses
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.135
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(80) %i.p) #44
          to label %bb.g unwind label %bb.h

._crit_edge37:                                    ; preds = %bb.g, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.h:                                             ; preds = %.lr.ph36
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasECsb6FLkjZuKG_18ruff_python_parser.exit
  %.sroa.0.010 = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasECsb6FLkjZuKG_18ruff_python_parser.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.010 ; 5 uses
  %i.c = add nuw nsw i64 %.sroa.0.010, 1          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3089)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3093)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 63
  %i.f = load i8, ptr %i.e, align 1, !range !16, !alias.scope !3094, !noundef !15
  %i.g = and i8 %i.f, -2
  %switch.i.i.i.i.i.i = icmp eq i8 %i.g, -48
  br i1 %switch.i.i.i.i.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3095)
  %.pn.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !3096, !nonnull !15, !noundef !15
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i, i64 -8
  %i.h = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !3096
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i, !prof !14

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b) #44
          to label %.body unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3097)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.l = load i8, ptr %i.k, align 1, !range !39, !alias.scope !3098, !noundef !15 ; 2 uses
  %i.m = icmp eq i8 %i.l, -1
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3099)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3103)
  %i.o = and i8 %i.l, -2
  %switch.i.i.i.i.i.i.i = icmp eq i8 %i.o, -48
  br i1 %switch.i.i.i.i.i.i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasECsb6FLkjZuKG_18ruff_python_parser.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3104)
  %.pn.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !3105, !nonnull !15, !noundef !15
  %.sroa.0.0.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i.i, i64 -8
  %i.p = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !3106
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasECsb6FLkjZuKG_18ruff_python_parser.exit, !prof !14

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasECsb6FLkjZuKG_18ruff_python_parser.exit unwind label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.e, %bb.f
  %i.s = icmp eq i64 %i.c, %1
  br i1 %i.s, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasECsb6FLkjZuKG_18ruff_python_parser.exit, %bb.a
  ret void

bb.i:                                             ; preds = %.lr.ph29
  %i.t = add i64 %.sroa.0.128, 1                  ; 2 uses
  %i.u = icmp eq i64 %i.t, %1
  br i1 %i.u, label %._crit_edge30, label %.lr.ph29

bb.j:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.j, %bb.d ]
  %i.w = icmp eq i64 %i.c, %1
  br i1 %i.w, label %._crit_edge30, label %.lr.ph29

.lr.ph29:                                         ; preds = %.body, %bb.i
  %.sroa.0.128 = phi i64 [ %i.t, %bb.i ], [ %i.c, %.body ] ; 2 uses
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.128
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(80) %i.x) #44
          to label %bb.i unwind label %bb.k

._crit_edge30:                                    ; preds = %bb.i, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.k:                                             ; preds = %.lr.ph29
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsb6FLkjZuKG_18ruff_python_parser.exit._crit_edge, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsb6FLkjZuKG_18ruff_python_parser.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsb6FLkjZuKG_18ruff_python_parser.exit
  %.sroa.0.020 = phi i64 [ %i.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsb6FLkjZuKG_18ruff_python_parser.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.0.020 ; 4 uses
  %i.d = add nuw nsw i64 %.sroa.0.020, 1          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3124)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 95
  %i.f = load i8, ptr %i.e, align 1, !range !39, !alias.scope !3125, !noundef !15 ; 2 uses
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3126)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3130)
  %i.i = and i8 %i.f, -2
  %switch.i.i.i.i.i.i.i = icmp eq i8 %i.i, -48
  br i1 %switch.i.i.i.i.i.i.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsb6FLkjZuKG_18ruff_python_parser.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3131)
  %.pn.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !3132, !nonnull !15, !noundef !15
  %.sroa.0.0.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i.i, i64 -8
  %i.j = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !3132
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsb6FLkjZuKG_18ruff_python_parser.exit.i, !prof !14

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.c) #44
          to label %.body unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsb6FLkjZuKG_18ruff_python_parser.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsb6FLkjZuKG_18ruff_python_parser.exit._crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsb6FLkjZuKG_18ruff_python_parser.exit, %bb.a
  ret void

bb.g:                                             ; preds = %.lr.ph22
  %i.n = add i64 %.sroa.0.121, 1                  ; 2 uses
  %i.o = icmp eq i64 %i.n, %1
  br i1 %i.o, label %._crit_edge, label %.lr.ph22

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.l, %bb.e ]
  %i.q = icmp eq i64 %i.d, %1
  br i1 %i.q, label %._crit_edge, label %.lr.ph22

.lr.ph22:                                         ; preds = %.body, %bb.g
  %.sroa.0.121 = phi i64 [ %i.n, %bb.g ], [ %i.d, %.body ] ; 2 uses
  %i.r = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.0.121
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(120) %i.r) #44
          to label %bb.g unwind label %bb.i

._crit_edge:                                      ; preds = %bb.g, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.i:                                             ; preds = %.lr.ph22
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 96076792050570582) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemECsb6FLkjZuKG_18ruff_python_parser.exit
  %.sroa.0.011 = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemECsb6FLkjZuKG_18ruff_python_parser.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.0.011 ; 3 uses
  %i.c = add nuw nsw i64 %.sroa.0.011, 1          ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(8) %i.e) #44
          to label %.body unwind label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3139)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3140, !align !17, !noundef !15 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.g) #45
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i.i unwind label %bb.e, !noalias !3141, !inline_history !46

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 72, i64 noundef 8) #42, !noalias !3141, !inline_history !47
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i.i: ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 72, i64 noundef 8) #42, !noalias !3141, !inline_history !47
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemECsb6FLkjZuKG_18ruff_python_parser.exit

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  %i.k = icmp eq i64 %i.c, %1
  br i1 %i.k, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemECsb6FLkjZuKG_18ruff_python_parser.exit, %bb.a
  ret void

bb.g:                                             ; preds = %.lr.ph36
  %i.l = add i64 %.sroa.0.135, 1                  ; 2 uses
  %i.m = icmp eq i64 %i.l, %1
  br i1 %i.m, label %._crit_edge37, label %.lr.ph36

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.i, %bb.e ]
  %i.n = icmp eq i64 %i.c, %1
  br i1 %i.n, label %._crit_edge37, label %.lr.ph36

.lr.ph36:                                         ; preds = %.body, %bb.g
  %.sroa.0.135 = phi i64 [ %i.l, %bb.g ], [ %i.c, %.body ] ; 2 uses
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.0.135
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(96) %i.o) #44
          to label %bb.g unwind label %bb.h

._crit_edge37:                                    ; preds = %bb.g, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.h:                                             ; preds = %.lr.ph36
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 144115188075855872) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementECsb6FLkjZuKG_18ruff_python_parser.exit
  %.sroa.0.022 = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementECsb6FLkjZuKG_18ruff_python_parser.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.0.022 ; 12 uses
  %i.c = add nuw nsw i64 %.sroa.0.022, 1          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3179)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.e = load i8, ptr %i.d, align 4, !range !49, !alias.scope !3179, !noundef !15
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.k, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3180)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3181)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3182, !nonnull !15, !noundef !15 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %bb.c, !noalias !3182, !inline_history !3148

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 72, i64 noundef 8) #42, !noalias !3182
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.j = load i8, ptr %i.i, align 1, !range !50, !alias.scope !3183, !noundef !15
  %cond = icmp eq i8 %i.j, -40
  br i1 %cond, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsb6FLkjZuKG_18ruff_python_parser.exit.i, !prof !27

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 72, i64 noundef 8) #42, !noalias !3182
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.l = load i8, ptr %i.k, align 1, !range !50, !alias.scope !3184, !noundef !15
  %cond12 = icmp eq i8 %i.l, -40
  br i1 %cond12, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsb6FLkjZuKG_18ruff_python_parser.exit3.i, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.b, align 8, !alias.scope !3185, !nonnull !15, !noundef !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !3185, !noundef !15
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %i.m, i64 noundef %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %bb.j, !noalias !3180, !inline_history !3161

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.p = load ptr, ptr %i.b, align 8, !alias.scope !3186, !nonnull !15, !noundef !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !3186, !noundef !15
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %i.p, i64 noundef %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsb6FLkjZuKG_18ruff_python_parser.exit3.i unwind label %bb.g, !noalias !3180, !inline_history !3161

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsb6FLkjZuKG_18ruff_python_parser.exit3.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !3187, !align !17, !noundef !15 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.c, %bb.d, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.h, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !3188, !align !17, !noundef !15
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.body, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsb6FLkjZuKG_18ruff_python_parser.exit.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.body unwind label %bb.j, !inline_history !3174

bb.g:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsb6FLkjZuKG_18ruff_python_parser.exit.i

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsb6FLkjZuKG_18ruff_python_parser.exit3.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %.noexc7 unwind label %bb.i, !noalias !3189, !inline_history !3177

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef 40, i64 noundef 8) #42, !noalias !3189, !inline_history !3178
  br label %.body

.noexc7:                                          ; preds = %bb.h
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef 40, i64 noundef 8) #42, !noalias !3189, !inline_history !3178
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementECsb6FLkjZuKG_18ruff_python_parser.exit

bb.j:                                             ; preds = %bb.f, %bb.d
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !inline_history !3161
  unreachable

bb.k:                                             ; preds = %.lr.ph
  %i.ab = getelementptr i8, ptr %i.b, i64 8
  %.val1.i = load i64, ptr %i.ab, align 8, !alias.scope !3179, !noundef !15 ; 2 uses
  %i.ac = icmp eq i64 %.val1.i, 0
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementECsb6FLkjZuKG_18ruff_python_parser.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.k
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !3179, !nonnull !15, !noundef !15
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val1.i, i64 noundef 1) #42, !noalias !3179
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementECsb6FLkjZuKG_18ruff_python_parser.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsb6FLkjZuKG_18ruff_python_parser.exit3.i, %.noexc7
  %i.ad = icmp eq i64 %i.c, %1
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementECsb6FLkjZuKG_18ruff_python_parser.exit, %bb.a
  ret void

bb.l:                                             ; preds = %.lr.ph94
  %i.ae = add i64 %.sroa.0.193, 1                 ; 2 uses
  %i.af = icmp eq i64 %i.ae, %1
  br i1 %i.af, label %._crit_edge95, label %.lr.ph94

.body:                                            ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ %.pn.i, %bb.f ], [ %i.z, %bb.i ]
  %i.ag = icmp eq i64 %i.c, %1
  br i1 %i.ag, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %.body, %bb.l
  %.sroa.0.193 = phi i64 [ %i.ae, %bb.l ], [ %i.c, %.body ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.0.193
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(64) %i.ah) #44
          to label %bb.l unwind label %bb.m

._crit_edge95:                                    ; preds = %bb.l, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.m:                                             ; preds = %.lr.ph94
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEBI_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 88686269585142076) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEBH_.exit
  %.sroa.0.011 = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEBH_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.0.011 ; 3 uses
  %i.c = add nuw nsw i64 %.sroa.0.011, 1          ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(8) %i.e) #44
          to label %.body unwind label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3198)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3199, !align !17, !noundef !15 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEBH_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.g) #45
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i unwind label %bb.e, !noalias !3200, !inline_history !46

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 72, i64 noundef 8) #42, !noalias !3200, !inline_history !47
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 72, i64 noundef 8) #42, !noalias !3200, !inline_history !47
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEBH_.exit

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEBH_.exit: ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  %i.k = icmp eq i64 %i.c, %1
  br i1 %i.k, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEBH_.exit, %bb.a
  ret void

bb.g:                                             ; preds = %.lr.ph36
  %i.l = add i64 %.sroa.0.135, 1                  ; 2 uses
  %i.m = icmp eq i64 %i.l, %1
  br i1 %i.m, label %._crit_edge37, label %.lr.ph36

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.i, %bb.e ]
  %i.n = icmp eq i64 %i.c, %1
  br i1 %i.n, label %._crit_edge37, label %.lr.ph36

.lr.ph36:                                         ; preds = %.body, %bb.g
  %.sroa.0.135 = phi i64 [ %i.l, %bb.g ], [ %i.c, %.body ] ; 2 uses
  %i.o = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.0.135
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEBH_(ptr noalias noundef align 8 dereferenceable(104) %i.o) #44
          to label %bb.g unwind label %bb.h

._crit_edge37:                                    ; preds = %bb.g, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.h:                                             ; preds = %.lr.ph36
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtCskLngH8kgpZI_15ruff_python_ast5token9TokenKindBM_ECsb6FLkjZuKG_18ruff_python_parser(i8 noundef range(i8 0, 3) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %2, ptr noundef %3, ptr %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #8 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noundef %3, ptr %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor15walk_parametersNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorEB12_(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [56 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10Parameters24iter_non_variadic_params(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %1)
  %.sroa.015.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.516.0.copyload = load ptr, ptr %.sroa.516.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.sroa.12.0 = phi ptr [ %.sroa.6.0.copyload, %bb.a ], [ %.sroa.12.2.ph, %.loopexit ] ; 4 uses
  %.sroa.9.0 = phi ptr [ %.sroa.4.0.copyload, %bb.a ], [ %.sroa.9.4.ph, %.loopexit ] ; 4 uses
  %.sroa.5.0 = phi ptr [ %.sroa.2.0.copyload, %bb.a ], [ %.sroa.5.3.ph, %.loopexit ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %.sroa.015.0.copyload, %bb.a ], [ %.sroa.0.2.ph, %.loopexit ]
  %i.c = trunc nuw i64 %.sroa.0.0 to i1
  br i1 %i.c, label %bb.c, label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.0, null
  br i1 %.not.i.i, label %.loopexit79, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.d = phi ptr [ %i.f, %bb.f ], [ %.sroa.5.0, %bb.d ] ; 3 uses
  %i.e = icmp eq ptr %i.d, %.sroa.3.0.copyload
  br i1 %i.e, label %.loopexit79, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !noalias !3214, !align !17, !noundef !15 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not7.i.i.i, label %bb.e, label %.loopexit

.loopexit79:                                      ; preds = %bb.e, %bb.c
  %.not9.i.i = icmp eq ptr %.sroa.9.0, null
  br i1 %.not9.i.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %.loopexit79
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.516.0.copyload) ]
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.9.2 = phi ptr [ %.sroa.9.0, %bb.g ], [ %i.i, %bb.i ] ; 4 uses
  %i.h = icmp eq ptr %.sroa.9.2, %.sroa.516.0.copyload
  br i1 %i.h, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.9.2, i64 80 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.9.2, i64 8
  %.val.i12.i.i = load ptr, ptr %i.j, align 8, !noalias !3215, !align !17, !noundef !15 ; 2 uses
  %.not7.i13.i.i = icmp eq ptr %.val.i12.i.i, null
  br i1 %.not7.i13.i.i, label %bb.h, label %.loopexit

.loopexit.i:                                      ; preds = %bb.h, %.loopexit79, %bb.b
  %.sroa.9.1 = phi ptr [ %.sroa.9.0, %bb.b ], [ null, %.loopexit79 ], [ %.sroa.9.2, %bb.h ]
  %.sroa.5.1 = phi ptr [ %.sroa.5.0, %bb.b ], [ null, %.loopexit79 ], [ null, %bb.h ]
  %.not10.i = icmp eq ptr %.sroa.12.0, null
  br i1 %.not10.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2G_8find_map5checkRB1u_RNtNtB1y_9generated4ExprQNCINvNtB1y_7visitor15walk_parametersNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorE0E0INtNtNtBb_3ops12control_flow11ControlFlowB3T_EEB4W_.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.k = phi ptr [ %i.m, %bb.l ], [ %.sroa.12.0, %bb.j ] ; 3 uses
  %i.l = icmp eq ptr %i.k, %.sroa.7.0.copyload
  br i1 %i.l, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2G_8find_map5checkRB1u_RNtNtB1y_9generated4ExprQNCINvNtB1y_7visitor15walk_parametersNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorE0E0INtNtNtBb_3ops12control_flow11ControlFlowB3T_EEB4W_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %.val.i.i = load ptr, ptr %i.n, align 8, !noalias !3216, !align !17, !noundef !15 ; 2 uses
  %.not7.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not7.i.i, label %bb.k, label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.i, %bb.l
  %.sroa.12.2.ph = phi ptr [ %i.m, %bb.l ], [ %.sroa.12.0, %bb.i ], [ %.sroa.12.0, %bb.f ]
  %.sroa.9.4.ph = phi ptr [ %.sroa.9.1, %bb.l ], [ %i.i, %bb.i ], [ %.sroa.9.0, %bb.f ]
  %.sroa.5.3.ph = phi ptr [ %.sroa.5.1, %bb.l ], [ null, %bb.i ], [ %i.f, %bb.f ]
  %.sroa.0.2.ph = phi i64 [ 0, %bb.l ], [ 1, %bb.i ], [ 1, %bb.f ]
  %.sroa.0.0.i.ph = phi ptr [ %.val.i.i, %bb.l ], [ %.val.i12.i.i, %bb.i ], [ %.val.i.i.i, %bb.f ]
  call void @_RNvXs9_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_27ReboundComprehensionVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 %.sroa.0.0.i.ph)
  br label %bb.b

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2G_8find_map5checkRB1u_RNtNtB1y_9generated4ExprQNCINvNtB1y_7visitor15walk_parametersNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorE0E0INtNtNtBb_3ops12control_flow11ControlFlowB3T_EEB4W_.exit: ; preds = %.loopexit.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10Parameters4iter(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull align 8 %1)
  %.sroa.025.0.copyload = load ptr, ptr %i.a, align 8
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.226.0.copyload = load ptr, ptr %.sroa.226.0..sroa_idx, align 8, !nonnull !15, !noundef !15
  %.sroa.327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.327.0.copyload = load ptr, ptr %.sroa.327.0..sroa_idx, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.428.0.copyload = load ptr, ptr %.sroa.428.0..sroa_idx, align 8 ; 2 uses
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.529.0.copyload = load ptr, ptr %.sroa.529.0..sroa_idx, align 8
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.630.0.copyload = load ptr, ptr %.sroa.630.0..sroa_idx, align 8 ; 2 uses
  %.sroa.731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.731.0.copyload = load ptr, ptr %.sroa.731.0..sroa_idx, align 8
  %.sroa.832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.832.0.copyload = load ptr, ptr %.sroa.832.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvYNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor15visit_parameterB6_.exit

_RNvYNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor15visit_parameterB6_.exit: ; preds = %_RNvYNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor15visit_parameterB6_.exit.backedge, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2G_8find_map5checkRB1u_RNtNtB1y_9generated4ExprQNCINvNtB1y_7visitor15walk_parametersNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorE0E0INtNtNtBb_3ops12control_flow11ControlFlowB3T_EEB4W_.exit
  %.sroa.017.0 = phi ptr [ %.sroa.025.0.copyload, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2G_8find_map5checkRB1u_RNtNtB1y_9generated4ExprQNCINvNtB1y_7visitor15walk_parametersNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorE0E0INtNtNtBb_3ops12control_flow11ControlFlowB3T_EEB4W_.exit ], [ %.sroa.017.151, %_RNvYNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor15visit_parameterB6_.exit.backedge ] ; 8 uses
  %.sroa.619.0 = phi ptr [ %.sroa.327.0.copyload, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2G_8find_map5checkRB1u_RNtNtB1y_9generated4ExprQNCINvNtB1y_7visitor15walk_parametersNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorE0E0INtNtNtBb_3ops12control_flow11ControlFlowB3T_EEB4W_.exit ], [ %.sroa.619.153, %_RNvYNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor15visit_parameterB6_.exit.backedge ] ; 8 uses
  %.sroa.921.0 = phi ptr [ %.sroa.529.0.copyload, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2G_8find_map5checkRB1u_RNtNtB1y_9generated4ExprQNCINvNtB1y_7visitor15walk_parametersNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorE0E0INtNtNtBb_3ops12control_flow11ControlFlowB3T_EEB4W_.exit ], [ %.sroa.921.155, %_RNvYNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor15visit_parameterB6_.exit.backedge ] ; 8 uses
  %.sroa.1223.0 = phi ptr [ %.sroa.731.0.copyload, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2G_8find_map5checkRB1u_RNtNtB1y_9generated4ExprQNCINvNtB1y_7visitor15walk_parametersNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorE0E0INtNtNtBb_3ops12control_flow11ControlFlowB3T_EEB4W_.exit ], [ %.sroa.1223.157, %_RNvYNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor15visit_parameterB6_.exit.backedge ] ; 4 uses
  %.sroa.1424.0 = phi ptr [ %.sroa.832.0.copyload, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2G_8find_map5checkRB1u_RNtNtB1y_9generated4ExprQNCINvNtB1y_7visitor15walk_parametersNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorE0E0INtNtNtBb_3ops12control_flow11ControlFlowB3T_EEB4W_.exit ], [ %.sroa.1424.159, %_RNvYNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor15visit_parameterB6_.exit.backedge ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.017.0) ]
  %i.o = icmp eq ptr %.sroa.017.0, %.sroa.226.0.copyload
  br i1 %i.o, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNvYNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor15visit_parameterB6_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 80
  br label %bb.u

bb.n:                                             ; preds = %_RNvYNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors27ReboundComprehensionVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor15visit_parameterB6_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.619.0) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.428.0.copyload) ]
  %i.q = icmp eq ptr %.sroa.619.0, %.sroa.428.0.copyload
  br i1 %i.q, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.619.0, i64 80
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %.not.i = icmp eq ptr %.sroa.1223.0, null
  br i1 %.not.i, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.921.0) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.630.0.copyload) ]
  %i.s = icmp eq ptr %.sroa.921.0, %.sroa.630.0.copyload
  br i1 %i.s, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.921.0, i64 80
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %.not10.i13 = icmp eq ptr %.sroa.1424.0, null
  br i1 %.not10.i13, label %bb.t, label %bb.v

end_hunk_6
begin_hunk_7_@_RINvNvMs5_NtCsiqnnZIZlexh_7tinyvec7tinyvecINtB8_7TinyVecpE4push22drain_to_heap_and_pushAThcEj4_ECsb6FLkjZuKG_18ruff_python_parser:bb.a
  %i.al = icmp eq i16 %i.b, 0
  br i1 %i.al, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_RNvMsL_NtCsiqnnZIZlexh_7tinyvec8arrayvecINtB5_8ArrayVecAThcEj4_E24drain_to_vec_and_reserveCsb6FLkjZuKG_18ruff_python_parser.exit
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecThcEE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %._crit_edge unwind label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !3663
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.an = icmp eq i64 %.val, 0
  br i1 %i.an, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val3 = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !15, !noundef !15
  %i.ao = shl nuw i64 %.val, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 4) #42
  br label %common.resume

bb.g:                                             ; preds = %._crit_edge, %_RNvMsL_NtCsiqnnZIZlexh_7tinyvec8arrayvecINtB5_8ArrayVecAThcEj4_E24drain_to_vec_and_reserveCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.ap = phi ptr [ %.pre, %._crit_edge ], [ %i.ak, %_RNvMsL_NtCsiqnnZIZlexh_7tinyvec8arrayvecINtB5_8ArrayVecAThcEj4_E24drain_to_vec_and_reserveCsb6FLkjZuKG_18ruff_python_parser.exit ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.c ; 2 uses
  store i8 %2, ptr %i.aq, align 4, !noalias !3663
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %3, ptr %i.ar, align 4, !noalias !3663
  %i.as = add nuw nsw i64 %i.c, 1
  store i64 %i.as, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !3663
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i32 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs5_NtCsiqnnZIZlexh_7tinyvec7tinyvecINtB8_7TinyVecpE4push22drain_to_heap_and_pushAcj4_ECsb6FLkjZuKG_18ruff_python_parser(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(20) %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i16, ptr %1, align 4, !noundef !15  ; 7 uses
  %i.c = zext i16 %i.b to i64                     ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3697)
  %i.d = shl nuw nsw i64 %i.c, 1
  %i.e = shl nuw nsw i64 %i.c, 3                  ; 3 uses
  %i.f = icmp eq i16 %i.b, 0
  br i1 %i.f, label %_RNvMsL_NtCsiqnnZIZlexh_7tinyvec8arrayvecINtB5_8ArrayVecAcj4_E24drain_to_vec_and_reserveCsb6FLkjZuKG_18ruff_python_parser.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3698
  %i.g = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #42, !noalias !3698 ; 10 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser.exit.i

bb.b:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #41, !noalias !3699
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.j = icmp ult i16 %i.b, 5
  br i1 %i.j, label %.preheader.i.i.i, label %bb.c, !prof !58

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser.exit.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.c, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @391) #41
          to label %.noexc.i unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VeccEECsb6FLkjZuKG_18ruff_python_parser.exit.i, !noalias !3699

.noexc.i:                                         ; preds = %bb.c
  unreachable

.preheader.i.i.i:                                 ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3700)
  %i.k = load i32, ptr %i.i, align 4, !range !55, !alias.scope !3701, !noalias !3702, !noundef !15
  store i32 0, ptr %i.i, align 4, !alias.scope !3701, !noalias !3702
  store i32 %i.k, ptr %i.g, align 4, !noalias !3703
  %i.l = icmp eq i16 %i.b, 1
  br i1 %i.l, label %_RNvMsL_NtCsiqnnZIZlexh_7tinyvec8arrayvecINtB5_8ArrayVecAcj4_E24drain_to_vec_and_reserveCsb6FLkjZuKG_18ruff_python_parser.exit, label %.preheader.i.i.i.1

.preheader.i.i.i.1:                               ; preds = %.preheader.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3704)
  %i.n = load i32, ptr %i.m, align 4, !range !55, !alias.scope !3705, !noalias !3702, !noundef !15
  store i32 0, ptr %i.m, align 4, !alias.scope !3705, !noalias !3702
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.n, ptr %i.o, align 4, !noalias !3706
  %i.p = icmp eq i16 %i.b, 2
  br i1 %i.p, label %_RNvMsL_NtCsiqnnZIZlexh_7tinyvec8arrayvecINtB5_8ArrayVecAcj4_E24drain_to_vec_and_reserveCsb6FLkjZuKG_18ruff_python_parser.exit, label %.preheader.i.i.i.2

.preheader.i.i.i.2:                               ; preds = %.preheader.i.i.i.1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3707)
  %i.r = load i32, ptr %i.q, align 4, !range !55, !alias.scope !3708, !noalias !3702, !noundef !15
  store i32 0, ptr %i.q, align 4, !alias.scope !3708, !noalias !3702
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %i.r, ptr %i.s, align 4, !noalias !3709
  %i.t = icmp eq i16 %i.b, 3
  br i1 %i.t, label %_RNvMsL_NtCsiqnnZIZlexh_7tinyvec8arrayvecINtB5_8ArrayVecAcj4_E24drain_to_vec_and_reserveCsb6FLkjZuKG_18ruff_python_parser.exit, label %.preheader.i.i.i.3

.preheader.i.i.i.3:                               ; preds = %.preheader.i.i.i.2
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3710)
  %i.v = load i32, ptr %i.u, align 4, !range !55, !alias.scope !3711, !noalias !3702, !noundef !15
  store i32 0, ptr %i.u, align 4, !alias.scope !3711, !noalias !3702
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 %i.v, ptr %i.w, align 4, !noalias !3712
  br label %_RNvMsL_NtCsiqnnZIZlexh_7tinyvec8arrayvecINtB5_8ArrayVecAcj4_E24drain_to_vec_and_reserveCsb6FLkjZuKG_18ruff_python_parser.exit

common.resume:                                    ; preds = %bb.e, %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VeccEECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.x, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VeccEECsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ %i.aa, %bb.f ], [ %i.aa, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VeccEECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #42, !noalias !3699
  br label %common.resume

_RNvMsL_NtCsiqnnZIZlexh_7tinyvec8arrayvecINtB5_8ArrayVecAcj4_E24drain_to_vec_and_reserveCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %.preheader.i.i.i, %.preheader.i.i.i.1, %.preheader.i.i.i.2, %.preheader.i.i.i.3, %bb.a
  %i.y = phi ptr [ inttoptr (i64 4 to ptr), %bb.a ], [ %i.g, %.preheader.i.i.i.3 ], [ %i.g, %.preheader.i.i.i.2 ], [ %i.g, %.preheader.i.i.i.1 ], [ %i.g, %.preheader.i.i.i ] ; 2 uses
  store i16 0, ptr %1, align 4, !alias.scope !3713, !noalias !3714
  store i64 %i.d, ptr %i.a, align 8, !noalias !3697
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.y, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !3697
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 %i.c, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !3697
  %i.z = icmp eq i16 %i.b, 0
  br i1 %i.z, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_RNvMsL_NtCsiqnnZIZlexh_7tinyvec8arrayvecINtB5_8ArrayVecAcj4_E24drain_to_vec_and_reserveCsb6FLkjZuKG_18ruff_python_parser.exit
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeccE8grow_oneCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %._crit_edge unwind label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !3715
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ab = icmp eq i64 %.val, 0
  br i1 %i.ab, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val3 = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !15, !noundef !15
  %i.ac = shl nuw i64 %.val, 2
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 4) #42
  br label %common.resume

bb.g:                                             ; preds = %._crit_edge, %_RNvMsL_NtCsiqnnZIZlexh_7tinyvec8arrayvecINtB5_8ArrayVecAcj4_E24drain_to_vec_and_reserveCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.ad = phi ptr [ %.pre, %._crit_edge ], [ %i.y, %_RNvMsL_NtCsiqnnZIZlexh_7tinyvec8arrayvecINtB5_8ArrayVecAcj4_E24drain_to_vec_and_reserveCsb6FLkjZuKG_18ruff_python_parser.exit ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.c
  store i32 %2, ptr %i.ae, align 4
  %i.af = add nuw nsw i64 %i.c, 1
  store i64 %i.af, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !3715
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i32 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvNvXsI_CsaSrGj5dYoxL_8thin_vecINtB8_8IntoIterpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.a = load i64, ptr %.val, align 8, !noundef !15 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 5 uses
  %i.d = icmp ugt i64 %i.c, %i.a
  br i1 %i.d, label %bb.h, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.h
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = sub nuw i64 %i.a, %i.c                   ; 3 uses
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %i.c ; 2 uses
  %i.i = icmp eq i64 %i.a, %i.c
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = icmp eq i64 %i.l, %i.g
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.0.i8 = phi i64 [ %i.l, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %.sroa.0.0.i8
  %i.l = add nuw nsw i64 %.sroa.0.0.i8, 1         ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.k)
          to label %bb.d unwind label %bb.f, !inline_history !1

bb.e:                                             ; preds = %.lr.ph10
  %i.m = add i64 %.sroa.0.1.i9, 1                 ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.g
  br i1 %i.n, label %.loopexit, label %.lr.ph10

bb.f:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = icmp eq i64 %i.l, %i.g
  br i1 %i.p, label %.loopexit, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.f, %bb.e
  %.sroa.0.1.i9 = phi i64 [ %i.m, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %.sroa.0.1.i9
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.q) #44
          to label %bb.e unwind label %bb.g, !inline_history !1

bb.g:                                             ; preds = %.lr.ph10
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !inline_history !1
  unreachable

bb.h:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.c, i64 noundef %i.a, i64 noundef %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #41
          to label %bb.i unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.d, %bb.c
  store i64 0, ptr %.val, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  unreachable

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.o, %bb.f ], [ %i.o, %bb.e ]
  store i64 0, ptr %.val, align 8
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvNvXsI_CsaSrGj5dYoxL_8thin_vecINtB8_8IntoIterpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.a = load i64, ptr %.val, align 8, !noundef !15 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 5 uses
  %i.d = icmp ugt i64 %i.c, %i.a
  br i1 %i.d, label %bb.h, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.h
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = sub nuw i64 %i.a, %i.c                   ; 3 uses
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %i.c ; 2 uses
  %i.i = icmp eq i64 %i.a, %i.c
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = icmp eq i64 %i.l, %i.g
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.0.i8 = phi i64 [ %i.l, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %.sroa.0.0.i8
  %i.l = add nuw nsw i64 %.sroa.0.0.i8, 1         ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.k)
          to label %bb.d unwind label %bb.f, !inline_history !2

bb.e:                                             ; preds = %.lr.ph10
  %i.m = add i64 %.sroa.0.1.i9, 1                 ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.g
  br i1 %i.n, label %.loopexit, label %.lr.ph10

bb.f:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = icmp eq i64 %i.l, %i.g
  br i1 %i.p, label %.loopexit, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.f, %bb.e
  %.sroa.0.1.i9 = phi i64 [ %i.m, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %.sroa.0.1.i9
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.q) #44
          to label %bb.e unwind label %bb.g, !inline_history !2

bb.g:                                             ; preds = %.lr.ph10
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !inline_history !2
  unreachable

bb.h:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.c, i64 noundef %i.a, i64 noundef %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #41
          to label %bb.i unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.d, %bb.c
  store i64 0, ptr %.val, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  unreachable

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.o, %bb.f ], [ %i.o, %bb.e ]
  store i64 0, ptr %.val, align 8
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXsL_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB6_23SemanticSyntaxErrorKindNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1s_7tracker15StandardTrackerEB8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 3 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 3 uses
  %i.d = load i8, ptr %1, align 8, !range !59, !noundef !15
  switch i8 %i.d, label %default.unreachable66 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.aq
    i8 13, label %bb.n
    i8 14, label %bb.o
    i8 15, label %bb.p
    i8 16, label %bb.q
    i8 17, label %bb.r
    i8 18, label %bb.s
    i8 19, label %bb.t
    i8 20, label %bb.u
    i8 21, label %bb.v
    i8 22, label %bb.w
    i8 23, label %bb.x
    i8 24, label %bb.y
    i8 25, label %bb.z
    i8 26, label %bb.aa
    i8 27, label %bb.ab
    i8 28, label %bb.ac
    i8 29, label %bb.ad
    i8 30, label %bb.ae
    i8 31, label %bb.af
    i8 32, label %bb.ag
    i8 33, label %bb.ah
    i8 34, label %bb.ai
    i8 35, label %bb.aj
    i8 36, label %bb.ak
    i8 37, label %bb.al
    i8 38, label %bb.am
  ]

default.unreachable66:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  br label %bb.an

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  br label %bb.an

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  br label %bb.an

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  br label %bb.an

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  br label %bb.an

bb.g:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  br label %bb.an

bb.h:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  br label %bb.an

bb.i:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  br label %bb.an

bb.j:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  call fastcc void @_RINvXs_NtNtCsj8vhLppEnlJ_8char_str8features8get_sizeNtNtB9_8char_str7CharStrNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1e_7tracker15StandardTrackerECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(48) %2)
  %i.o = load i64, ptr %i.a, align 8, !noundef !15
  store i64 %i.o, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  br label %bb.an

bb.k:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  br label %bb.an

bb.l:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.s = load i8, ptr %i.r, align 1, !range !39, !noundef !15
  %i.t = icmp eq i8 %i.s, -1
  br i1 %i.t, label %bb.ap, label %bb.ao

bb.m:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  br label %bb.an

bb.n:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  br label %bb.an

bb.o:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !26, !noundef !15
  store i64 %i.x, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  br label %bb.an

bb.p:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  call fastcc void @_RINvXs_NtNtCsj8vhLppEnlJ_8char_str8features8get_sizeNtNtB9_8char_str7CharStrNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1e_7tracker15StandardTrackerECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aa, ptr noalias noundef align 8 captures(address) dereferenceable(48) %2)
  %i.ab = load i64, ptr %i.c, align 8, !noundef !15
  store i64 %i.ab, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false)
  br label %bb.an

bb.q:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !26, !noundef !15
  store i64 %i.ae, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  br label %bb.an

bb.r:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_7
begin_hunk_8_@_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statementNtB4_6Parser21try_parse_type_params:bb.a

_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit44.i.i.i.i.i: ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit.thread.i.i.i.i.i
  %i.kd = add nsw i8 %i.kc, -67
  %spec.select17.i43.i.i.i.i.i = icmp ult i8 %i.kd, 39
  br i1 %spec.select17.i43.i.i.i.i.i, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit63.thread.i.i.i.i.i, label %bb.bw, !prof !61

bb.bw:                                            ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit44.i.i.i.i.i
  %.val45.i.i.i.i.i = load i32, ptr %i.ai, align 8, !alias.scope !12543, !noalias !12544, !noundef !15
  %i.ke = invoke fastcc noundef zeroext i1 @_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser39is_enclosing_list_element_or_terminator(i8 %i.kc, i32 %.val45.i.i.i.i.i)
          to label %.noexc20.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, !noalias !12549

.noexc20.i.i.i.i:                                 ; preds = %bb.bw
  br i1 %i.ke, label %bb.cd, label %bb.cc

bb.bx:                                            ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit.thread.i.i.i.i.i, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit.thread.i.i.i.i.i, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit.thread.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12660)
  %i.kf = icmp eq i8 %i.kc, 25
  br i1 %i.kf, label %bb.by, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit63.thread.i.i.i.i.i

bb.by:                                            ; preds = %bb.bx
  %i.kg = load i32, ptr %i.al, align 4, !alias.scope !12661, !noalias !12544, !noundef !15
  %i.kh = load <2 x i32>, ptr %i.af, align 8, !alias.scope !12661, !noalias !12544
  store i32 %i.kg, ptr %i.am, align 4, !alias.scope !12661, !noalias !12544
  %i.ki = load i16, ptr %i.ao, align 8, !alias.scope !12662, !noalias !12544, !noundef !15
  %i.kj = load i64, ptr %i.ap, align 8, !alias.scope !12663, !noalias !12664, !noundef !15 ; 2 uses
  %i.kk = load i64, ptr %i.an, align 8, !range !26, !alias.scope !12663, !noalias !12664, !noundef !15
  %i.kl = icmp eq i64 %i.kj, %i.kk
  br i1 %i.kl, label %bb.bz, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i.preheader

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, !noalias !12549

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i.preheader: ; preds = %bb.bz, %bb.by
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i.backedge, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i.preheader
  %.sink9.i.i.i52.i.i.i.i.i = phi i64 [ %i.kj, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i.preheader ], [ %i.ks, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i.backedge ] ; 2 uses
  %.sink2.i.i.i55.i.i.i.i.i = phi i16 [ %i.ki, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i.preheader ], [ %i.kr, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i.backedge ]
  %.sink.i.i.i56.i.i.i.i.i = phi i8 [ 25, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i.preheader ], [ %i.kp, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i.backedge ]
  %i.km = phi <2 x i32> [ %i.kh, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i.preheader ], [ %i.kq, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i.backedge ]
  %i.kn = load ptr, ptr %i.aq, align 8, !alias.scope !12662, !noalias !12544, !nonnull !15, !noundef !15
  %i.ko = getelementptr inbounds nuw [12 x i8], ptr %i.kn, i64 %.sink9.i.i.i52.i.i.i.i.i ; 3 uses
  store <2 x i32> %i.km, ptr %i.ko, align 4, !noalias !12544
  %.sroa.5.0..sroa_idx.i.i.i.i58.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i16 %.sink2.i.i.i55.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i58.i.i.i.i.i, align 4, !noalias !12544
  %.sroa.6.0..sroa_idx.i.i.i.i59.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ko, i64 10
  store i8 %.sink.i.i.i56.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i59.i.i.i.i.i, align 2, !noalias !12544
  %storemerge.i.i.i60.i.i.i.i.i = add i64 %.sink9.i.i.i52.i.i.i.i.i, 1
  store i64 %storemerge.i.i.i60.i.i.i.i.i, ptr %i.ap, align 8, !alias.scope !12662, !noalias !12544
  %i.kp = invoke noundef i8 @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10next_token(ptr noalias noundef nonnull align 8 dereferenceable(464) %1)
          to label %.noexc22.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i, !noalias !12549 ; 2 uses

.noexc22.i.i.i.i:                                 ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i
  switch i8 %i.kp, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit63.i.i.i.i.i [
    i8 12, label %bb.ca
    i8 14, label %bb.ca
  ]

bb.ca:                                            ; preds = %.noexc22.i.i.i.i, %.noexc22.i.i.i.i
  %i.kq = load <2 x i32>, ptr %i.af, align 8, !alias.scope !12665, !noalias !12544
  %i.kr = load i16, ptr %i.ao, align 8, !alias.scope !12665, !noalias !12544, !noundef !15
  %i.ks = load i64, ptr %i.ap, align 8, !alias.scope !12666, !noalias !12667, !noundef !15 ; 2 uses
  %i.kt = load i64, ptr %i.an, align 8, !range !26, !alias.scope !12666, !noalias !12667, !noundef !15
  %i.ku = icmp eq i64 %i.ks, %i.kt
  br i1 %i.ku, label %bb.cb, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i.backedge

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i.backedge unwind label %.loopexit.split-lp.loopexit.i.i.i.i, !noalias !12549

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i.backedge: ; preds = %bb.cb, %bb.ca
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit63.i.i.i.i.i: ; preds = %.noexc22.i.i.i.i
  %i.kv = load i32, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !12661, !noalias !12544, !noundef !15
  %i.kw = add i32 %i.kv, 1
  store i32 %i.kw, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !12661, !noalias !12544
  br label %.backedge.i.i.i.i.i

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit63.thread.i.i.i.i.i: ; preds = %bb.bx, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit44.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12668
  store i8 25, ptr %i.ay, align 1, !noalias !12668
  store i8 %i.kc, ptr %i.az, align 2, !noalias !12668
  store i8 35, ptr %i.c, align 8, !noalias !12668
  %i.kx = load i32, ptr %i.af, align 8, !alias.scope !12669, !noalias !12544, !noundef !15
  %i.ky = load i32, ptr %i.al, align 4, !alias.scope !12669, !noalias !12544, !noundef !15
  invoke fastcc void @_RNvNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB6_6Parser9add_error5inner(ptr noalias noundef align 8 dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c, i32 noundef %i.kx, i32 noundef %i.ky)
          to label %.noexc24.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, !noalias !12549

.noexc24.i.i.i.i:                                 ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit63.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12668
  br label %.backedge.i.i.i.i.i

bb.cc:                                            ; preds = %.noexc20.i.i.i.i
  %.val46.pre.i.i.i.i.i = load i8, ptr %i.ad, align 4, !alias.scope !12543, !noalias !12544 ; 3 uses
  %i.kz = icmp eq i8 %.val46.pre.i.i.i.i.i, 25
  %or.cond82.i.i.i.i.i = select i1 %.sroa.018.1.i.i.i.i.i, i1 true, i1 %i.kz
  br i1 %or.cond82.i.i.i.i.i, label %bb.ce, label %.noexc30.i.i.i.i

bb.cd:                                            ; preds = %.noexc20.i.i.i.i
  invoke fastcc void @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource20re_lex_logical_token(ptr noalias noundef nonnull align 8 dereferenceable(464) %1)
          to label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser35parse_comma_separated_list_into_vecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamNvMNtB5_9statementBL_16parse_type_paramEB7_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !12549

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !12670
  invoke fastcc void @_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind12create_error(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.z, i16 7, i8 %.val46.pre.i.i.i.i.i)
          to label %.noexc26.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, !noalias !12549

.noexc26.i.i.i.i:                                 ; preds = %bb.ce
  %i.la = load i32, ptr %i.af, align 8, !alias.scope !12543, !noalias !12544, !noundef !15
  %i.lb = load i32, ptr %i.al, align 4, !alias.scope !12543, !noalias !12544, !noundef !15
  invoke fastcc void @_RNvNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB6_6Parser9add_error5inner(ptr noalias noundef align 8 dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.z, i32 noundef %i.la, i32 noundef %i.lb)
          to label %.noexc27.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, !noalias !12549

.noexc27.i.i.i.i:                                 ; preds = %.noexc26.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !12670
  br label %bb.cf

.noexc30.i.i.i.i:                                 ; preds = %bb.cc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12671)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12672
  store i8 25, ptr %i.bb, align 1, !noalias !12672
  store i8 %.val46.pre.i.i.i.i.i, ptr %i.bc, align 2, !noalias !12672
  store i8 35, ptr %i.b, align 8, !noalias !12672
  %i.lc = load i32, ptr %i.af, align 8, !alias.scope !12673, !noalias !12549, !noundef !15
  %i.ld = load i32, ptr %i.al, align 4, !alias.scope !12673, !noalias !12549, !noundef !15
  invoke fastcc void @_RNvNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB6_6Parser9add_error5inner(ptr noalias noundef align 8 dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b, i32 noundef %i.lc, i32 noundef %i.ld)
          to label %.noexc28.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, !noalias !12549

.noexc28.i.i.i.i:                                 ; preds = %.noexc30.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12672
  br label %bb.cf

bb.cf:                                            ; preds = %.noexc28.i.i.i.i, %.noexc27.i.i.i.i
  invoke fastcc void @_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser8bump_any(ptr noalias noundef nonnull align 8 dereferenceable(464) %1)
          to label %.backedge.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, !noalias !12549

.backedge.i.i.i.i.i:                              ; preds = %bb.cf, %.noexc24.i.i.i.i, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit63.i.i.i.i.i, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit.i.i.i.i.i
  %i.le = phi ptr [ %i.je, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit.i.i.i.i.i ], [ %i.ka, %.noexc24.i.i.i.i ], [ %i.ka, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit63.i.i.i.i.i ], [ %i.ka, %bb.cf ] ; 3 uses
  %i.lf = phi i64 [ %i.jg, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit.i.i.i.i.i ], [ %i.kb, %.noexc24.i.i.i.i ], [ %i.kb, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit63.i.i.i.i.i ], [ %i.kb, %bb.cf ] ; 3 uses
  %.sroa.018.0.be.i.i.i.i.i = phi i1 [ false, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit.i.i.i.i.i ], [ %.sroa.018.1.i.i.i.i.i, %.noexc24.i.i.i.i ], [ %.sroa.018.1.i.i.i.i.i, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit63.i.i.i.i.i ], [ %.sroa.018.1.i.i.i.i.i, %bb.cf ]
  %i.lg = load i32, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !12674, !noalias !12546 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.br, %i.lg
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing.exit.i.i.i.i.i, !prof !23

.loopexit.i.i.i.i:                                ; preds = %bb.bv, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.loopexit.i.i.i.i:              ; preds = %bb.cb, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i
  %lpad.loopexit37.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i: ; preds = %bb.h, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit40.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i: ; preds = %bb.l, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i51.i.i.i.i.i.i.i.i
  %lpad.loopexit42.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i: ; preds = %bb.cf, %.noexc30.i.i.i.i, %.noexc26.i.i.i.i, %bb.ce, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit63.thread.i.i.i.i.i, %bb.bz, %bb.bw, %bb.bt, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit63.thread.i.i.i.i.i.i.i.i, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit63.i.i.i.i.i.i.i.i, %bb.j, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit.i.i.i.i.i.i.i.i, %bb.f
  %.val1.i9.i.i.i = phi i64 [ %i.kb, %bb.cf ], [ %i.kb, %.noexc30.i.i.i.i ], [ %i.kb, %.noexc26.i.i.i.i ], [ %i.kb, %bb.ce ], [ %i.kb, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit63.thread.i.i.i.i.i ], [ %i.kb, %bb.bz ], [ %i.kb, %bb.bw ], [ %i.jg, %bb.bt ], [ %i.bq, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit63.thread.i.i.i.i.i.i.i.i ], [ %i.bq, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit63.i.i.i.i.i.i.i.i ], [ %i.bq, %bb.j ], [ %i.bq, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit.i.i.i.i.i.i.i.i ], [ %i.bq, %bb.f ]
  %.val.i6.i.i.i = phi ptr [ %i.ka, %bb.cf ], [ %i.ka, %.noexc30.i.i.i.i ], [ %i.ka, %.noexc26.i.i.i.i ], [ %i.ka, %bb.ce ], [ %i.ka, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit63.thread.i.i.i.i.i ], [ %i.ka, %bb.bz ], [ %i.ka, %bb.bw ], [ %i.je, %bb.bt ], [ %i.bp, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit63.thread.i.i.i.i.i.i.i.i ], [ %i.bp, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit63.i.i.i.i.i.i.i.i ], [ %i.bp, %bb.j ], [ %i.bp, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit.i.i.i.i.i.i.i.i ], [ %i.bp, %bb.f ]
  %lpad.loopexit45.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i: ; preds = %bb.cd, %.noexc.i.i.i.i, %bb.d
  %.val1.i10.i.i.i = phi i64 [ %i.kb, %bb.cd ], [ %i.lf, %.noexc.i.i.i.i ], [ %i.lf, %bb.d ]
  %.val.i7.i.i.i = phi ptr [ %i.ka, %bb.cd ], [ %i.le, %.noexc.i.i.i.i ], [ %i.le, %bb.d ]
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i, %.loopexit.i.i.i.i, %..body.i_crit_edge.i.i.i, %bb.bg, %bb.bf, %.body.i.i.i.i.i.i.i.i, %bb.ax, %bb.aw, %.body25.i.i.i.i.i.i.i.i, %bb.z, %bb.y, %.body31.i.i.i.i.i.i.i.i
  %.val1.i.i.i.i = phi i64 [ %.val1.i.pre.i.i.i, %..body.i_crit_edge.i.i.i ], [ %i.bq, %bb.bf ], [ %i.bq, %bb.aw ], [ %i.bq, %bb.y ], [ %i.bq, %bb.z ], [ %i.bq, %.body31.i.i.i.i.i.i.i.i ], [ %i.bq, %bb.ax ], [ %i.bq, %.body25.i.i.i.i.i.i.i.i ], [ %i.bq, %bb.bg ], [ %i.bq, %.body.i.i.i.i.i.i.i.i ], [ %i.jg, %.loopexit.i.i.i.i ], [ %i.kb, %.loopexit.split-lp.loopexit.i.i.i.i ], [ %i.bq, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i ], [ %i.bq, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i ], [ %.val1.i9.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i ], [ %.val1.i10.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i ] ; 4 uses
  %.val.i.i.i.i = phi ptr [ %.val.i.pre.i.i.i, %..body.i_crit_edge.i.i.i ], [ %i.bp, %bb.bf ], [ %i.bp, %bb.aw ], [ %i.bp, %bb.y ], [ %i.bp, %bb.z ], [ %i.bp, %.body31.i.i.i.i.i.i.i.i ], [ %i.bp, %bb.ax ], [ %i.bp, %.body25.i.i.i.i.i.i.i.i ], [ %i.bp, %bb.bg ], [ %i.bp, %.body.i.i.i.i.i.i.i.i ], [ %i.je, %.loopexit.i.i.i.i ], [ %i.ka, %.loopexit.split-lp.loopexit.i.i.i.i ], [ %i.bp, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i ], [ %i.bp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i ], [ %.val.i6.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i ], [ %.val.i7.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i ] ; 4 uses
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.jc, %..body.i_crit_edge.i.i.i ], [ %.pn22.i.i.i.i.i.i.i.i, %bb.bf ], [ %.pn20.i.i.i.i.i.i.i.i, %bb.aw ], [ %.pn.pn.i.i.i.i.i.i.i.i, %bb.y ], [ %.pn.pn.i.i.i.i.i.i.i.i, %bb.z ], [ %.pn.pn.i.i.i.i.i.i.i.i, %.body31.i.i.i.i.i.i.i.i ], [ %.pn20.i.i.i.i.i.i.i.i, %bb.ax ], [ %.pn20.i.i.i.i.i.i.i.i, %.body25.i.i.i.i.i.i.i.i ], [ %.pn22.i.i.i.i.i.i.i.i, %bb.bg ], [ %.pn22.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit37.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i ], [ %lpad.loopexit40.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i ], [ %lpad.loopexit42.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i ], [ %lpad.loopexit45.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12651)
  %i.lh = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.lh, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i, label %.lr.ph

bb.cg:                                            ; preds = %.lr.ph
  %i.li = icmp eq i64 %i.lk, %.val1.i.i.i.i
  br i1 %i.li, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i.i.i, %bb.cg
  %.sroa.0.0.i.i.i.i.i.i256 = phi i64 [ %i.lk, %bb.cg ], [ 0, %.body.i.i.i.i ] ; 2 uses
  %i.lj = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i256
  %i.lk = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i256, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.lj)
          to label %bb.cg unwind label %bb.ci, !noalias !12675

bb.ch:                                            ; preds = %.lr.ph258
  %i.ll = add i64 %.sroa.0.1.i.i.i.i.i.i257, 1    ; 2 uses
  %i.lm = icmp eq i64 %i.ll, %.val1.i.i.i.i
  br i1 %i.lm, label %.body.i4.i.i.i, label %.lr.ph258

bb.ci:                                            ; preds = %.lr.ph
  %i.ln = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.lo = icmp eq i64 %i.lk, %.val1.i.i.i.i
  br i1 %i.lo, label %.body.i4.i.i.i, label %.lr.ph258

.lr.ph258:                                        ; preds = %bb.ci, %bb.ch
  %.sroa.0.1.i.i.i.i.i.i257 = phi i64 [ %i.ll, %bb.ch ], [ %i.lk, %bb.ci ] ; 2 uses
  %i.lp = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.1.i.i.i.i.i.i257
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.lp) #44
          to label %bb.ch unwind label %bb.cj, !noalias !12675

bb.cj:                                            ; preds = %.lr.ph258
  %i.lq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !12675
  unreachable

.body.i4.i.i.i:                                   ; preds = %bb.ch, %bb.ci
  %.val4.i.i.i.i = load i64, ptr %i.aa, align 8, !range !26, !alias.scope !12651, !noalias !12652, !noundef !15 ; 2 uses
  %i.lr = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.lr, label %.body.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %.body.i4.i.i.i
  %i.ls = mul nuw i64 %.val4.i.i.i.i, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ls, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !12675
  br label %.body.i.i.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i: ; preds = %bb.cg, %.body.i.i.i.i
  %.val2.i.i.i.i = load i64, ptr %i.aa, align 8, !range !26, !alias.scope !12651, !noalias !12652, !noundef !15 ; 2 uses
  %i.lt = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.lt, label %common.resume.i.i, label %bb.cl

bb.cl:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i
  %i.lu = mul nuw i64 %.val2.i.i.i.i, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.lu, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !12675
  br label %common.resume.i.i

.body.i.i.i:                                      ; preds = %bb.ck, %.body.i4.i.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !12549
  unreachable

_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser35parse_comma_separated_list_into_vecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamNvMNtB5_9statementBL_16parse_type_paramEB7_.exit.i.i: ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit.thread.i.i.i.i.i, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit.thread.i.i.i.i.i, %bb.cd
  store i32 %i.aj, ptr %i.ai, align 8, !alias.scope !12543, !noalias !12544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !12676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !12540
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.lw = load i64, ptr %i.lv, align 8, !noalias !12537, !noundef !15 ; 2 uses
  %i.lx = icmp ult i64 %i.lw, 128102389400760776
  tail call void @llvm.assume(i1 %i.lx)
  %i.ly = icmp eq i64 %i.lw, 0
  br i1 %i.ly, label %bb.cn, label %bb.co

bb.cm:                                            ; preds = %bb.cn
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cn:                                            ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser35parse_comma_separated_list_into_vecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamNvMNtB5_9statementBL_16parse_type_paramEB7_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !12537
  store i8 7, ptr %i.ab, align 8, !noalias !12537
  %.val6.i.i = load i32, ptr %i.af, align 8, !alias.scope !12535, !noalias !12536, !noundef !15
  %.val7.i.i = load i32, ptr %i.al, align 4, !alias.scope !12535, !noalias !12536, !noundef !15
  invoke fastcc void @_RNvNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB6_6Parser9add_error5inner(ptr noalias noundef align 8 dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.ab, i32 noundef %.val6.i.i, i32 noundef %.val7.i.i)
          to label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB7_.exit.i.i unwind label %bb.cm, !noalias !12536

_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB7_.exit.i.i: ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !12537
  br label %bb.co

bb.co:                                            ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB7_.exit.i.i, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser35parse_comma_separated_list_into_vecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamNvMNtB5_9statementBL_16parse_type_paramEB7_.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12677)
  %i.ma = load i8, ptr %i.ad, align 4, !range !22, !alias.scope !12678, !noalias !12536, !noundef !15 ; 2 uses
  %i.mb = icmp eq i8 %i.ma, 23
  br i1 %i.mb, label %bb.cp, label %.noexc.thread.i.i

bb.cp:                                            ; preds = %bb.co
  %i.mc = load i32, ptr %i.al, align 4, !alias.scope !12679, !noalias !12536, !noundef !15
  %i.md = load <2 x i32>, ptr %i.af, align 8, !alias.scope !12679, !noalias !12536
  store i32 %i.mc, ptr %i.am, align 4, !alias.scope !12679, !noalias !12536
  %i.me = load i16, ptr %i.ao, align 8, !alias.scope !12680, !noalias !12536, !noundef !15
  %i.mf = load i64, ptr %i.ap, align 8, !alias.scope !12681, !noalias !12682, !noundef !15 ; 2 uses
  %i.mg = load i64, ptr %i.an, align 8, !range !26, !alias.scope !12681, !noalias !12682, !noundef !15
  %i.mh = icmp eq i64 %i.mf, %i.mg
  br i1 %i.mh, label %bb.cq, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.preheader

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.preheader unwind label %.loopexit.split-lp.i.i, !noalias !12536

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.preheader: ; preds = %bb.cq, %bb.cp
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.backedge, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.preheader
  %.sink9.i.i.i.i.i = phi i64 [ %i.mf, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.preheader ], [ %i.mo, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.backedge ] ; 2 uses
  %.sink2.i.i.i.i.i = phi i16 [ %i.me, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.preheader ], [ %i.mn, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.backedge ]
  %.sink.i.i.i.i.i = phi i8 [ 23, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.preheader ], [ %i.ml, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.backedge ]
  %i.mi = phi <2 x i32> [ %i.md, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.preheader ], [ %i.mm, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.backedge ]
  %i.mj = load ptr, ptr %i.aq, align 8, !alias.scope !12680, !noalias !12536, !nonnull !15, !noundef !15
  %i.mk = getelementptr inbounds nuw [12 x i8], ptr %i.mj, i64 %.sink9.i.i.i.i.i ; 3 uses
  store <2 x i32> %i.mi, ptr %i.mk, align 4, !noalias !12536
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store i16 %.sink2.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !12536
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 10
  store i8 %.sink.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 2, !noalias !12536
  %storemerge.i.i.i.i.i = add i64 %.sink9.i.i.i.i.i, 1
  store i64 %storemerge.i.i.i.i.i, ptr %i.ap, align 8, !alias.scope !12680, !noalias !12536
  %i.ml = invoke noundef i8 @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10next_token(ptr noalias noundef nonnull align 8 dereferenceable(464) %1)
          to label %.noexc11.i.i unwind label %.loopexit.i.i, !noalias !12536 ; 2 uses

.noexc11.i.i:                                     ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i
  switch i8 %i.ml, label %.noexc.i.i [
    i8 12, label %bb.cr
    i8 14, label %bb.cr
  ]

bb.cr:                                            ; preds = %.noexc11.i.i, %.noexc11.i.i
  %i.mm = load <2 x i32>, ptr %i.af, align 8, !alias.scope !12683, !noalias !12536
  %i.mn = load i16, ptr %i.ao, align 8, !alias.scope !12683, !noalias !12536, !noundef !15
  %i.mo = load i64, ptr %i.ap, align 8, !alias.scope !12684, !noalias !12685, !noundef !15 ; 2 uses
  %i.mp = load i64, ptr %i.an, align 8, !range !26, !alias.scope !12684, !noalias !12685, !noundef !15
  %i.mq = icmp eq i64 %i.mo, %i.mp
  br i1 %i.mq, label %bb.cs, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.backedge

bb.cs:                                            ; preds = %bb.cr
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.backedge unwind label %.loopexit.i.i, !noalias !12536

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.backedge: ; preds = %bb.cs, %bb.cr
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i

.noexc.i.i:                                       ; preds = %.noexc11.i.i
  %i.mr = load i32, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !12679, !noalias !12536, !noundef !15
  %i.ms = add i32 %i.mr, 1
  store i32 %i.ms, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !12679, !noalias !12536
  br label %_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statementNtB6_6Parser21try_parse_type_params0B8_.exit

.noexc.thread.i.i:                                ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12686
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 23, ptr %i.mt, align 1, !noalias !12686
  %i.mu = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.ma, ptr %i.mu, align 2, !noalias !12686
  store i8 35, ptr %i.a, align 8, !noalias !12686
  %i.mv = load i32, ptr %i.af, align 8, !alias.scope !12687, !noalias !12536, !noundef !15
  %i.mw = load i32, ptr %i.al, align 4, !alias.scope !12687, !noalias !12536, !noundef !15
  invoke fastcc void @_RNvNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB6_6Parser9add_error5inner(ptr noalias noundef align 8 dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a, i32 noundef %i.mv, i32 noundef %i.mw)
          to label %.noexc9.i.i unwind label %.loopexit.split-lp.i.i, !noalias !12536

.noexc9.i.i:                                      ; preds = %.noexc.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12686
  br label %_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statementNtB6_6Parser21try_parse_type_params0B8_.exit

bb.ct:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i, %bb.cm
  %.pn.i.i = phi { ptr, i32 } [ %i.lz, %bb.cm ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #44
          to label %common.resume.i.i unwind label %bb.cu, !noalias !12536

bb.cu:                                            ; preds = %bb.ct
  %i.mx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !12536
  unreachable

.loopexit.i.i:                                    ; preds = %bb.cs, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.loopexit.split-lp.i.i:                           ; preds = %.noexc.thread.i.i, %bb.cq
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statementNtB6_6Parser21try_parse_type_params0B8_.exit: ; preds = %.noexc.i.i, %.noexc9.i.i
  %.val8.i.i = load i32, ptr %i.am, align 4, !alias.scope !12535, !noalias !12536, !noundef !15 ; 2 uses
  %.sroa.0.0.i.i.i = tail call i32 @llvm.umin.i32(i32 %.val8.i.i, i32 %.val.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !12537
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0.0.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.val8.i.i, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -2, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.cv

bb.cv:                                            ; preds = %_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statementNtB6_6Parser21try_parse_type_params0B8_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statementNtB4_6Parser22parse_class_definition(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 dereferenceable(464) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
end_hunk_8
begin_hunk_9_@_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser5parse:bb.a
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  call void @llvm.experimental.noalias.scope.decl(metadata !15189)
  %.val.i99.i = load i64, ptr %i.ki, align 8, !alias.scope !15190, !noalias !15151 ; 2 uses
  %i.kj = icmp eq i64 %.val.i99.i, 0
  br i1 %i.kj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %.val1.i100.i = load ptr, ptr %i.kk, align 8, !alias.scope !15190, !noalias !15151, !nonnull !15, !noundef !15
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i100.i, i64 noundef %.val.i99.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !15191
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser6parser12NameInternerEBF_.exit.i: ; preds = %bb.by, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEEB1b_.exit.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  call void @llvm.experimental.noalias.scope.decl(metadata !15192)
  %.val.i101.i = load i64, ptr %i.kl, align 8, !alias.scope !15193, !noalias !15151 ; 2 uses
  %i.km = icmp eq i64 %.val.i101.i, 0
  br i1 %i.km, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit103.i, label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser6parser12NameInternerEBF_.exit.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %.val1.i102.i = load ptr, ptr %i.kn, align 8, !alias.scope !15193, !noalias !15151, !nonnull !15, !noundef !15
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i102.i, i64 noundef %.val.i101.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !15194
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit103.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.ca, %bb.bz
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ab, i64 240
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ko)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15151

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit103.i: ; preds = %bb.cb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser6parser12NameInternerEBF_.exit.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ab, i64 240 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15195)
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ab, i64 248
  %i.kr = load ptr, ptr %i.kq, align 8, !alias.scope !15196, !noalias !15151, !nonnull !15, !noundef !15 ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ab, i64 256
  %i.kt = load i64, ptr %i.ks, align 8, !alias.scope !15196, !noalias !15151, !noundef !15 ; 4 uses
  %i.ku = icmp eq i64 %i.kt, 0
  br i1 %i.ku, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i101, label %.lr.ph374

bb.cc:                                            ; preds = %.lr.ph374
  %i.kv = icmp eq i64 %i.kx, %i.kt
  br i1 %i.kv, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i101, label %.lr.ph374

.lr.ph374:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit103.i, %bb.cc
  %.sroa.0.0.i.i96373 = phi i64 [ %i.kx, %bb.cc ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit103.i ] ; 2 uses
  %i.kw = getelementptr inbounds nuw [72 x i8], ptr %i.kr, i64 %.sroa.0.0.i.i96373
  %i.kx = add i64 %.sroa.0.0.i.i96373, 1          ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.kw) #45
          to label %bb.cc unwind label %bb.ce, !noalias !15197, !inline_history !14850

bb.cd:                                            ; preds = %.lr.ph376
  %i.ky = add i64 %.sroa.0.1.i.i97375, 1          ; 2 uses
  %i.kz = icmp eq i64 %i.ky, %i.kt
  br i1 %i.kz, label %.body.i98, label %.lr.ph376

bb.ce:                                            ; preds = %.lr.ph374
  %i.la = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lb = icmp eq i64 %i.kx, %i.kt
  br i1 %i.lb, label %.body.i98, label %.lr.ph376

.lr.ph376:                                        ; preds = %bb.ce, %bb.cd
  %.sroa.0.1.i.i97375 = phi i64 [ %i.ky, %bb.cd ], [ %i.kx, %bb.ce ] ; 2 uses
  %i.lc = getelementptr inbounds nuw [72 x i8], ptr %i.kr, i64 %.sroa.0.1.i.i97375
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.lc) #46
          to label %bb.cd unwind label %bb.cf, !noalias !15197, !inline_history !14850

bb.cf:                                            ; preds = %.lr.ph376
  %i.ld = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !15197, !inline_history !14850
  unreachable

.body.i98:                                        ; preds = %bb.cd, %bb.ce
  %.val2.i99 = load i64, ptr %i.kp, align 8, !range !26, !alias.scope !15195, !noalias !15151, !noundef !15 ; 2 uses
  %i.le = icmp eq i64 %.val2.i99, 0
  br i1 %i.le, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit.i, label %bb.cg

bb.cg:                                            ; preds = %.body.i98
  %i.lf = mul nuw i64 %.val2.i99, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kr, i64 noundef %i.lf, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15197, !inline_history !15198
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i101: ; preds = %bb.cc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit103.i
  %.val.i102 = load i64, ptr %i.kp, align 8, !range !26, !alias.scope !15195, !noalias !15151, !noundef !15 ; 2 uses
  %i.lg = icmp eq i64 %.val.i102, 0
  br i1 %i.lg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit106.i, label %bb.ch

bb.ch:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i101
  %i.lh = mul nuw i64 %.val.i102, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kr, i64 noundef %i.lh, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15197, !inline_history !15198
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit106.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit.i: ; preds = %bb.cg, %.body.i98, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %.pn83.i = phi { ptr, i32 } [ %i.kh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ %i.la, %.body.i98 ], [ %i.la, %bb.cg ]
  %i.li = getelementptr inbounds nuw i8, ptr %i.ab, i64 264
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEEBI_(ptr noalias noundef readonly align 8 dereferenceable(24) %i.li) #44
          to label %.body107.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15151

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit106.i: ; preds = %bb.ch, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i101
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ab, i64 264 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15199)
  call void @llvm.experimental.noalias.scope.decl(metadata !15200)
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ab, i64 272
  %.val.i.i.i = load ptr, ptr %i.lk, align 8, !alias.scope !15201, !noalias !15151, !nonnull !15, !noundef !15 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ab, i64 280
  %.val1.i.i.i = load i64, ptr %i.ll, align 8, !alias.scope !15201, !noalias !15151, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %.val.i.i.i, i64 noundef %.val1.i.i.i)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i unwind label %bb.ci, !noalias !15202

bb.ci:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit106.i
  %i.lm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i.i.i = load i64, ptr %i.lj, align 8, !range !26, !alias.scope !15201, !noalias !15151, !noundef !15 ; 2 uses
  %i.ln = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.ln, label %.body107.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lo = mul nuw i64 %.val4.i.i.i, 120
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.lo, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15202
  br label %.body107.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit106.i
  %.val2.i.i.i = load i64, ptr %i.lj, align 8, !range !26, !alias.scope !15201, !noalias !15151, !noundef !15 ; 2 uses
  %i.lp = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.lp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEEBI_.exit.i, label %bb.ck

bb.ck:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  %i.lq = mul nuw i64 %.val2.i.i.i, 120
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.lq, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15202
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEEBI_.exit.i

.body107.i:                                       ; preds = %bb.cj, %bb.ci, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit.i
  %.pn85.i = phi { ptr, i32 } [ %.pn83.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit.i ], [ %i.lm, %bb.ci ], [ %i.lm, %bb.cj ]
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ab, i64 288
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_(ptr noalias noundef readonly align 8 dereferenceable(24) %i.lr) #44
          to label %.body113.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15151

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEEBI_.exit.i: ; preds = %bb.ck, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ab, i64 288 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15203)
  call void @llvm.experimental.noalias.scope.decl(metadata !15204)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ab, i64 296
  %.val.i.i109.i = load ptr, ptr %i.lt, align 8, !alias.scope !15205, !noalias !15151, !nonnull !15, !noundef !15 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ab, i64 304
  %.val1.i.i110.i = load i64, ptr %i.lu, align 8, !alias.scope !15205, !noalias !15151, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %.val.i.i109.i, i64 noundef %.val1.i.i110.i)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i unwind label %bb.cl, !noalias !15206

bb.cl:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEEBI_.exit.i
  %i.lv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i.i111.i = load i64, ptr %i.ls, align 8, !range !26, !alias.scope !15205, !noalias !15151, !noundef !15 ; 2 uses
  %i.lw = icmp eq i64 %.val4.i.i111.i, 0
  br i1 %i.lw, label %.body113.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lx = mul nuw i64 %.val4.i.i111.i, 80
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i109.i, i64 noundef %i.lx, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15206
  br label %.body113.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEEBI_.exit.i
  %.val2.i.i112.i = load i64, ptr %i.ls, align 8, !range !26, !alias.scope !15205, !noalias !15151, !noundef !15 ; 2 uses
  %i.ly = icmp eq i64 %.val2.i.i112.i, 0
  br i1 %i.ly, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_.exit.i, label %bb.cn

bb.cn:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  %i.lz = mul nuw i64 %.val2.i.i112.i, 80
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i109.i, i64 noundef %i.lz, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15206
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_.exit.i

.body113.i:                                       ; preds = %bb.cm, %bb.cl, %.body107.i
  %.pn87.i = phi { ptr, i32 } [ %.pn85.i, %.body107.i ], [ %i.lv, %bb.cl ], [ %i.lv, %bb.cm ]
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ab, i64 312
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ma)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15151

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_.exit.i: ; preds = %bb.cn, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ab, i64 312 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15207)
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ab, i64 320
  %.val.i84 = load ptr, ptr %i.mc, align 8, !alias.scope !15207, !noalias !15151, !nonnull !15, !noundef !15 ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.ab, i64 328
  %.val1.i85 = load i64, ptr %i.md, align 8, !alias.scope !15207, !noalias !15151, !noundef !15 ; 4 uses
  %i.me = icmp eq i64 %.val1.i85, 0
  br i1 %i.me, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i91, label %.lr.ph378

bb.co:                                            ; preds = %.lr.ph378
  %i.mf = icmp eq i64 %i.mh, %.val1.i85
  br i1 %i.mf, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i91, label %.lr.ph378

.lr.ph378:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_.exit.i, %bb.co
  %.sroa.0.0.i.i.i86377 = phi i64 [ %i.mh, %bb.co ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_.exit.i ] ; 2 uses
  %i.mg = getelementptr inbounds nuw [88 x i8], ptr %.val.i84, i64 %.sroa.0.0.i.i.i86377
  %i.mh = add nuw nsw i64 %.sroa.0.0.i.i.i86377, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(88) %i.mg)
          to label %bb.co unwind label %bb.cq, !noalias !15208

bb.cp:                                            ; preds = %.lr.ph380
  %i.mi = add i64 %.sroa.0.1.i.i.i87379, 1        ; 2 uses
  %i.mj = icmp eq i64 %i.mi, %.val1.i85
  br i1 %i.mj, label %.body.i88, label %.lr.ph380

bb.cq:                                            ; preds = %.lr.ph378
  %i.mk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ml = icmp eq i64 %i.mh, %.val1.i85
  br i1 %i.ml, label %.body.i88, label %.lr.ph380

.lr.ph380:                                        ; preds = %bb.cq, %bb.cp
  %.sroa.0.1.i.i.i87379 = phi i64 [ %i.mi, %bb.cp ], [ %i.mh, %bb.cq ] ; 2 uses
  %i.mm = getelementptr inbounds nuw [88 x i8], ptr %.val.i84, i64 %.sroa.0.1.i.i.i87379
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(88) %i.mm) #44
          to label %bb.cp unwind label %bb.cr, !noalias !15208

bb.cr:                                            ; preds = %.lr.ph380
  %i.mn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !15208
  unreachable

.body.i88:                                        ; preds = %bb.cp, %bb.cq
  %.val4.i89 = load i64, ptr %i.mb, align 8, !range !26, !alias.scope !15207, !noalias !15151, !noundef !15 ; 2 uses
  %i.mo = icmp eq i64 %.val4.i89, 0
  br i1 %i.mo, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit.i, label %bb.cs

bb.cs:                                            ; preds = %.body.i88
  %i.mp = mul nuw i64 %.val4.i89, 88
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i84, i64 noundef %i.mp, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15208
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i91: ; preds = %bb.co, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_.exit.i
  %.val2.i92 = load i64, ptr %i.mb, align 8, !range !26, !alias.scope !15207, !noalias !15151, !noundef !15 ; 2 uses
  %i.mq = icmp eq i64 %.val2.i92, 0
  br i1 %i.mq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit117.i, label %bb.ct

bb.ct:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i91
  %i.mr = mul nuw i64 %.val2.i92, 88
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i84, i64 noundef %i.mr, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15208
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit117.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit.i: ; preds = %bb.cs, %.body.i88, %.body113.i
  %.pn89.i = phi { ptr, i32 } [ %.pn87.i, %.body113.i ], [ %i.mk, %.body.i88 ], [ %i.mk, %bb.cs ]
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ab, i64 336
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEBI_(ptr noalias noundef readonly align 8 dereferenceable(24) %i.ms) #44
          to label %.body122.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15151

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit117.i: ; preds = %bb.ct, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i91
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ab, i64 336 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15209)
  call void @llvm.experimental.noalias.scope.decl(metadata !15210)
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ab, i64 344
  %.val.i.i118.i = load ptr, ptr %i.mu, align 8, !alias.scope !15211, !noalias !15151, !nonnull !15, !noundef !15 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ab, i64 352
  %.val1.i.i119.i = load i64, ptr %i.mv, align 8, !alias.scope !15211, !noalias !15151, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %.val.i.i118.i, i64 noundef %.val1.i.i119.i)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i unwind label %bb.cu, !noalias !15212

bb.cu:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit117.i
  %i.mw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i.i120.i = load i64, ptr %i.mt, align 8, !range !26, !alias.scope !15211, !noalias !15151, !noundef !15 ; 2 uses
  %i.mx = icmp eq i64 %.val4.i.i120.i, 0
  br i1 %i.mx, label %.body122.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.my = mul nuw i64 %.val4.i.i120.i, 80
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i118.i, i64 noundef %i.my, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15212
  br label %.body122.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit117.i
  %.val2.i.i121.i = load i64, ptr %i.mt, align 8, !range !26, !alias.scope !15211, !noalias !15151, !noundef !15 ; 2 uses
  %i.mz = icmp eq i64 %.val2.i.i121.i, 0
  br i1 %i.mz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEBI_.exit.i, label %bb.cw

bb.cw:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  %i.na = mul nuw i64 %.val2.i.i121.i, 80
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i118.i, i64 noundef %i.na, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15212
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEBI_.exit.i

.body122.i:                                       ; preds = %bb.cv, %bb.cu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit.i
  %.pn91.i = phi { ptr, i32 } [ %.pn89.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit.i ], [ %i.mw, %bb.cu ], [ %i.mw, %bb.cv ]
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ab, i64 360
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEEBI_(ptr noalias noundef readonly align 8 dereferenceable(24) %i.nb) #44
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15151

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEBI_.exit.i: ; preds = %bb.cw, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ab, i64 360 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15213)
  call void @llvm.experimental.noalias.scope.decl(metadata !15214)
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ab, i64 368
  %.val.i.i124.i = load ptr, ptr %i.nd, align 8, !alias.scope !15215, !noalias !15151, !nonnull !15, !noundef !15 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ab, i64 376
  %.val1.i.i125.i = load i64, ptr %i.ne, align 8, !alias.scope !15215, !noalias !15151, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %.val.i.i124.i, i64 noundef %.val1.i.i125.i)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i unwind label %bb.cx, !noalias !15216

bb.cx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEBI_.exit.i
  %i.nf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i.i126.i = load i64, ptr %i.nc, align 8, !range !26, !alias.scope !15215, !noalias !15151, !noundef !15 ; 2 uses
  %i.ng = icmp eq i64 %.val4.i.i126.i, 0
  br i1 %i.ng, label %.body, label %.body.sink.split

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEBI_.exit.i
  %.val2.i.i127.i = load i64, ptr %i.nc, align 8, !range !26, !alias.scope !15215, !noalias !15151, !noundef !15 ; 2 uses
  %i.nh = icmp eq i64 %.val2.i.i127.i, 0
  br i1 %i.nh, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6finish.exit, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEEBI_.exit.sink.split.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEEBI_.exit.sink.split.i: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i239.i, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  %.val2.i.i240.sink.i = phi i64 [ %.val2.i.i240.i, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i239.i ], [ %.val2.i.i127.i, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ]
  %.val.i.i235.sink511.i = phi ptr [ %.val.i.i235.i, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i239.i ], [ %.val.i.i124.i, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ]
  %i.ni = mul nuw i64 %.val2.i.i240.sink.i, 96
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i235.sink511.i, i64 noundef %i.ni, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15151
  br label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6finish.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gi, %bb.ga, %.body232.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit223.i, %.body219.i, %.body210.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit201.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit196.i, %.body122.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit.i, %.body113.i, %.body107.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %lpad.loopexit.split-lp390 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body23

.body23:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.hk, %bb.hl, %bb.hh, %bb.hi, %.body.i, %bb.hf, %bb.gy, %bb.gz, %bb.gv, %bb.gw, %.body.i49, %bb.gr, %bb.gc
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !15147
  unreachable

bb.cy:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, %bb.bs
  %.sroa.4306.0.ph.i = phi i64 [ 8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.bs ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4306.0.ph.i, i64 %i.ic) #41
          to label %bb.dt unwind label %bb.fv, !noalias !15151

bb.cz:                                            ; preds = %.backedge, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.nj = phi ptr [ %i.id, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ %.be, %.backedge ] ; 3 uses
  %i.nk = phi ptr [ %i.id, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ %.be401, %.backedge ] ; 2 uses
  %i.nl = phi ptr [ %i.id, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ %.be402, %.backedge ] ; 2 uses
  %i.nm = phi i64 [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ %.be403, %.backedge ] ; 14 uses
  %i.nn = phi ptr [ %.sroa.7112.0.copyload, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ %i.oa, %.backedge ] ; 5 uses
  %i.no = phi ptr [ %i.ii, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ %i.nv, %.backedge ] ; 5 uses
  %i.np = phi i8 [ -2, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ %.be406, %.backedge ] ; 2 uses
  %.sroa.0.0.i377.i = phi i8 [ -2, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ %.sroa.0.0.i377.i.be, %.backedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.not.i128.i = icmp eq i8 %.sroa.0.0.i377.i, -2
  br i1 %.not.i128.i, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.nq = icmp eq ptr %i.no, %i.ik
  br i1 %i.nq, label %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEE4peek0B1Z_.exit.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 40
  %.sroa.0.0.copyload8.i.i = load i8, ptr %i.no, align 8, !noalias !15217
  %.sroa.5.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.no, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.0..sroa_idx9.i.i, i64 39, i1 false), !noalias !15218
  br label %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEE4peek0B1Z_.exit.i.i

_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEE4peek0B1Z_.exit.i.i: ; preds = %bb.db, %bb.da
  %i.ns = phi ptr [ %i.nr, %bb.db ], [ %i.ik, %bb.da ]
  %.sroa.0.0.i.i16 = phi i8 [ %.sroa.0.0.copyload8.i.i, %bb.db ], [ -1, %bb.da ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.422.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i, i64 39, i1 false), !noalias !15219
  %i.nt = icmp ne i8 %.sroa.0.0.i.i16, -2
  call void @llvm.assume(i1 %i.nt)
  br label %bb.dc

.thread348.i:                                     ; preds = %bb.eh
  %i.nu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEEEB2a_(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.f), !noalias !15151
  br label %bb.ft

bb.dc:                                            ; preds = %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEE4peek0B1Z_.exit.i.i, %bb.cz
  %i.nv = phi ptr [ %i.ns, %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEE4peek0B1Z_.exit.i.i ], [ %i.no, %bb.cz ] ; 11 uses
  %.sroa.0.0.i376.i = phi i8 [ %.sroa.0.0.i.i16, %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEE4peek0B1Z_.exit.i.i ], [ %.sroa.0.0.i377.i, %bb.cz ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  %.not.i13 = icmp ne i8 %.sroa.0.0.i376.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i130.i)
  %.not.i131.i = icmp eq i8 %i.np, -2
  br i1 %.not.i131.i, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.nw = icmp eq ptr %i.nn, %i.im
  br i1 %i.nw, label %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEE4peek0B1Z_.exit.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nn, i64 32
  %.sroa.0.0.copyload8.i132.i = load i8, ptr %i.nn, align 8, !noalias !15220
  %.sroa.5.0..sroa_idx9.i133.i = getelementptr inbounds nuw i8, ptr %i.nn, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.i130.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.0..sroa_idx9.i133.i, i64 31, i1 false), !noalias !15221
  br label %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEE4peek0B1Z_.exit.i.i

_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEE4peek0B1Z_.exit.i.i: ; preds = %bb.de, %bb.dd
  %i.ny = phi ptr [ %i.nx, %bb.de ], [ %i.im, %bb.dd ]
  %.sroa.0.0.i134.i = phi i8 [ %.sroa.0.0.copyload8.i132.i, %bb.de ], [ -1, %bb.dd ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.428.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.i130.i, i64 31, i1 false), !noalias !15222
  %i.nz = icmp ne i8 %.sroa.0.0.i134.i, -2
  call void @llvm.assume(i1 %i.nz)
  br label %bb.df

bb.df:                                            ; preds = %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEE4peek0B1Z_.exit.i.i, %bb.dc
  %i.oa = phi ptr [ %i.ny, %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEE4peek0B1Z_.exit.i.i ], [ %i.nn, %bb.dc ] ; 11 uses
  %i.ob = phi i8 [ %.sroa.0.0.i134.i, %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEE4peek0B1Z_.exit.i.i ], [ %i.np, %bb.dc ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i130.i)
end_hunk_9
begin_hunk_10_@_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser5parse:bb.a
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  call void @llvm.experimental.noalias.scope.decl(metadata !15293)
  %.val.i194.i = load i64, ptr %i.tj, align 8, !alias.scope !15294, !noalias !15151 ; 2 uses
  %i.tk = icmp eq i64 %.val.i194.i, 0
  br i1 %i.tk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit196.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %.val1.i195.i = load ptr, ptr %i.tl, align 8, !alias.scope !15294, !noalias !15151, !nonnull !15, !noundef !15
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i195.i, i64 noundef %.val.i194.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !15295
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit196.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser6parser12NameInternerEBF_.exit193.i: ; preds = %bb.es, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i185.i, %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1U_8peekable8PeekableINtNtB6_9into_iter8IntoIterNtBH_12LexicalErrorEENvYBF_INtNtB1Y_7convert4FromB3v_E4fromEEBJ_.exit.i
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  call void @llvm.experimental.noalias.scope.decl(metadata !15296)
  %.val.i197.i = load i64, ptr %i.tm, align 8, !alias.scope !15297, !noalias !15151 ; 2 uses
  %i.tn = icmp eq i64 %.val.i197.i, 0
  br i1 %i.tn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit199.i, label %bb.ev

bb.ev:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser6parser12NameInternerEBF_.exit193.i
  %i.to = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %.val1.i198.i = load ptr, ptr %i.to, align 8, !alias.scope !15297, !noalias !15151, !nonnull !15, !noundef !15
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i198.i, i64 noundef %.val.i197.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !15298
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit199.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit196.i: ; preds = %bb.eu, %bb.et
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ab, i64 240
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.tp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit201.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15151

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit199.i: ; preds = %bb.ev, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser6parser12NameInternerEBF_.exit193.i
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ab, i64 240 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15299)
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ab, i64 248
  %i.ts = load ptr, ptr %i.tr, align 8, !alias.scope !15300, !noalias !15151, !nonnull !15, !noundef !15 ; 4 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ab, i64 256
  %i.tu = load i64, ptr %i.tt, align 8, !alias.scope !15300, !noalias !15151, !noundef !15 ; 4 uses
  %i.tv = icmp eq i64 %i.tu, 0
  br i1 %i.tv, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i79, label %.lr.ph

bb.ew:                                            ; preds = %.lr.ph
  %i.tw = icmp eq i64 %i.ty, %i.tu
  br i1 %i.tw, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i79, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit199.i, %bb.ew
  %.sroa.0.0.i.i74358 = phi i64 [ %i.ty, %bb.ew ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit199.i ] ; 2 uses
  %i.tx = getelementptr inbounds nuw [72 x i8], ptr %i.ts, i64 %.sroa.0.0.i.i74358
  %i.ty = add i64 %.sroa.0.0.i.i74358, 1          ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.tx) #45
          to label %bb.ew unwind label %bb.ey, !noalias !15301, !inline_history !14850

bb.ex:                                            ; preds = %.lr.ph360
  %i.tz = add i64 %.sroa.0.1.i.i75359, 1          ; 2 uses
  %i.ua = icmp eq i64 %i.tz, %i.tu
  br i1 %i.ua, label %.body.i76, label %.lr.ph360

bb.ey:                                            ; preds = %.lr.ph
  %i.ub = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uc = icmp eq i64 %i.ty, %i.tu
  br i1 %i.uc, label %.body.i76, label %.lr.ph360

.lr.ph360:                                        ; preds = %bb.ey, %bb.ex
  %.sroa.0.1.i.i75359 = phi i64 [ %i.tz, %bb.ex ], [ %i.ty, %bb.ey ] ; 2 uses
  %i.ud = getelementptr inbounds nuw [72 x i8], ptr %i.ts, i64 %.sroa.0.1.i.i75359
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.ud) #46
          to label %bb.ex unwind label %bb.ez, !noalias !15301, !inline_history !14850

bb.ez:                                            ; preds = %.lr.ph360
  %i.ue = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !15301, !inline_history !14850
  unreachable

.body.i76:                                        ; preds = %bb.ex, %bb.ey
  %.val2.i77 = load i64, ptr %i.tq, align 8, !range !26, !alias.scope !15299, !noalias !15151, !noundef !15 ; 2 uses
  %i.uf = icmp eq i64 %.val2.i77, 0
  br i1 %i.uf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit201.i, label %bb.fa

bb.fa:                                            ; preds = %.body.i76
  %i.ug = mul nuw i64 %.val2.i77, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ts, i64 noundef %i.ug, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15301, !inline_history !15198
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit201.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i79: ; preds = %bb.ew, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit199.i
  %.val.i80 = load i64, ptr %i.tq, align 8, !range !26, !alias.scope !15299, !noalias !15151, !noundef !15 ; 2 uses
  %i.uh = icmp eq i64 %.val.i80, 0
  br i1 %i.uh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit203.i, label %bb.fb

bb.fb:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i79
  %i.ui = mul nuw i64 %.val.i80, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ts, i64 noundef %i.ui, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15301, !inline_history !15198
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit203.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit201.i: ; preds = %bb.fa, %.body.i76, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit196.i
  %.pn56.i = phi { ptr, i32 } [ %i.ti, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit196.i ], [ %i.ub, %.body.i76 ], [ %i.ub, %bb.fa ]
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ab, i64 264
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEEBI_(ptr noalias noundef readonly align 8 dereferenceable(24) %i.uj) #44
          to label %.body210.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15151

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit203.i: ; preds = %bb.fb, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i79
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ab, i64 264 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15302)
  call void @llvm.experimental.noalias.scope.decl(metadata !15303)
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ab, i64 272
  %.val.i.i204.i = load ptr, ptr %i.ul, align 8, !alias.scope !15304, !noalias !15151, !nonnull !15, !noundef !15 ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ab, i64 280
  %.val1.i.i205.i = load i64, ptr %i.um, align 8, !alias.scope !15304, !noalias !15151, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %.val.i.i204.i, i64 noundef %.val1.i.i205.i)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i208.i unwind label %bb.fc, !noalias !15305

bb.fc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit203.i
  %i.un = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i.i206.i = load i64, ptr %i.uk, align 8, !range !26, !alias.scope !15304, !noalias !15151, !noundef !15 ; 2 uses
  %i.uo = icmp eq i64 %.val4.i.i206.i, 0
  br i1 %i.uo, label %.body210.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.up = mul nuw i64 %.val4.i.i206.i, 120
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i204.i, i64 noundef %i.up, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15305
  br label %.body210.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i208.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit203.i
  %.val2.i.i209.i = load i64, ptr %i.uk, align 8, !range !26, !alias.scope !15304, !noalias !15151, !noundef !15 ; 2 uses
  %i.uq = icmp eq i64 %.val2.i.i209.i, 0
  br i1 %i.uq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEEBI_.exit212.i, label %bb.fe

bb.fe:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i208.i
  %i.ur = mul nuw i64 %.val2.i.i209.i, 120
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i204.i, i64 noundef %i.ur, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15305
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEEBI_.exit212.i

.body210.i:                                       ; preds = %bb.fd, %bb.fc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit201.i
  %.pn58.i = phi { ptr, i32 } [ %.pn56.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit201.i ], [ %i.un, %bb.fc ], [ %i.un, %bb.fd ]
  %i.us = getelementptr inbounds nuw i8, ptr %i.ab, i64 288
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_(ptr noalias noundef readonly align 8 dereferenceable(24) %i.us) #44
          to label %.body219.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15151

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEEBI_.exit212.i: ; preds = %bb.fe, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i208.i
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ab, i64 288 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15306)
  call void @llvm.experimental.noalias.scope.decl(metadata !15307)
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ab, i64 296
  %.val.i.i213.i = load ptr, ptr %i.uu, align 8, !alias.scope !15308, !noalias !15151, !nonnull !15, !noundef !15 ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ab, i64 304
  %.val1.i.i214.i = load i64, ptr %i.uv, align 8, !alias.scope !15308, !noalias !15151, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %.val.i.i213.i, i64 noundef %.val1.i.i214.i)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i217.i unwind label %bb.ff, !noalias !15309

bb.ff:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEEBI_.exit212.i
  %i.uw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i.i215.i = load i64, ptr %i.ut, align 8, !range !26, !alias.scope !15308, !noalias !15151, !noundef !15 ; 2 uses
  %i.ux = icmp eq i64 %.val4.i.i215.i, 0
  br i1 %i.ux, label %.body219.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.uy = mul nuw i64 %.val4.i.i215.i, 80
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i213.i, i64 noundef %i.uy, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15309
  br label %.body219.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i217.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEEBI_.exit212.i
  %.val2.i.i218.i = load i64, ptr %i.ut, align 8, !range !26, !alias.scope !15308, !noalias !15151, !noundef !15 ; 2 uses
  %i.uz = icmp eq i64 %.val2.i.i218.i, 0
  br i1 %i.uz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_.exit221.i, label %bb.fh

bb.fh:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i217.i
  %i.va = mul nuw i64 %.val2.i.i218.i, 80
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i213.i, i64 noundef %i.va, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15309
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_.exit221.i

.body219.i:                                       ; preds = %bb.fg, %bb.ff, %.body210.i
  %.pn60.i = phi { ptr, i32 } [ %.pn58.i, %.body210.i ], [ %i.uw, %bb.ff ], [ %i.uw, %bb.fg ]
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ab, i64 312
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.vb)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit223.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15151

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_.exit221.i: ; preds = %bb.fh, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i217.i
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ab, i64 312 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15310)
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ab, i64 320
  %.val.i62 = load ptr, ptr %i.vd, align 8, !alias.scope !15310, !noalias !15151, !nonnull !15, !noundef !15 ; 4 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ab, i64 328
  %.val1.i63 = load i64, ptr %i.ve, align 8, !alias.scope !15310, !noalias !15151, !noundef !15 ; 4 uses
  %i.vf = icmp eq i64 %.val1.i63, 0
  br i1 %i.vf, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i69, label %.lr.ph362

bb.fi:                                            ; preds = %.lr.ph362
  %i.vg = icmp eq i64 %i.vi, %.val1.i63
  br i1 %i.vg, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i69, label %.lr.ph362

.lr.ph362:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_.exit221.i, %bb.fi
  %.sroa.0.0.i.i.i64361 = phi i64 [ %i.vi, %bb.fi ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_.exit221.i ] ; 2 uses
  %i.vh = getelementptr inbounds nuw [88 x i8], ptr %.val.i62, i64 %.sroa.0.0.i.i.i64361
  %i.vi = add nuw nsw i64 %.sroa.0.0.i.i.i64361, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(88) %i.vh)
          to label %bb.fi unwind label %bb.fk, !noalias !15311

bb.fj:                                            ; preds = %.lr.ph364
  %i.vj = add i64 %.sroa.0.1.i.i.i65363, 1        ; 2 uses
  %i.vk = icmp eq i64 %i.vj, %.val1.i63
  br i1 %i.vk, label %.body.i66, label %.lr.ph364

bb.fk:                                            ; preds = %.lr.ph362
  %i.vl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vm = icmp eq i64 %i.vi, %.val1.i63
  br i1 %i.vm, label %.body.i66, label %.lr.ph364

.lr.ph364:                                        ; preds = %bb.fk, %bb.fj
  %.sroa.0.1.i.i.i65363 = phi i64 [ %i.vj, %bb.fj ], [ %i.vi, %bb.fk ] ; 2 uses
  %i.vn = getelementptr inbounds nuw [88 x i8], ptr %.val.i62, i64 %.sroa.0.1.i.i.i65363
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(88) %i.vn) #44
          to label %bb.fj unwind label %bb.fl, !noalias !15311

bb.fl:                                            ; preds = %.lr.ph364
  %i.vo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !15311
  unreachable

.body.i66:                                        ; preds = %bb.fj, %bb.fk
  %.val4.i67 = load i64, ptr %i.vc, align 8, !range !26, !alias.scope !15310, !noalias !15151, !noundef !15 ; 2 uses
  %i.vp = icmp eq i64 %.val4.i67, 0
  br i1 %i.vp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit223.i, label %bb.fm

bb.fm:                                            ; preds = %.body.i66
  %i.vq = mul nuw i64 %.val4.i67, 88
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i62, i64 noundef %i.vq, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15311
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit223.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i69: ; preds = %bb.fi, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_.exit221.i
  %.val2.i70 = load i64, ptr %i.vc, align 8, !range !26, !alias.scope !15310, !noalias !15151, !noundef !15 ; 2 uses
  %i.vr = icmp eq i64 %.val2.i70, 0
  br i1 %i.vr, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit225.i, label %bb.fn

bb.fn:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i69
  %i.vs = mul nuw i64 %.val2.i70, 88
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i62, i64 noundef %i.vs, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15311
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit225.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit223.i: ; preds = %bb.fm, %.body.i66, %.body219.i
  %.pn62.i = phi { ptr, i32 } [ %.pn60.i, %.body219.i ], [ %i.vl, %.body.i66 ], [ %i.vl, %bb.fm ]
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ab, i64 336
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEBI_(ptr noalias noundef readonly align 8 dereferenceable(24) %i.vt) #44
          to label %.body232.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15151

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit225.i: ; preds = %bb.fn, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i69
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ab, i64 336 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15312)
  call void @llvm.experimental.noalias.scope.decl(metadata !15313)
  %i.vv = getelementptr inbounds nuw i8, ptr %i.ab, i64 344
  %.val.i.i226.i = load ptr, ptr %i.vv, align 8, !alias.scope !15314, !noalias !15151, !nonnull !15, !noundef !15 ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.ab, i64 352
  %.val1.i.i227.i = load i64, ptr %i.vw, align 8, !alias.scope !15314, !noalias !15151, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %.val.i.i226.i, i64 noundef %.val1.i.i227.i)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i230.i unwind label %bb.fo, !noalias !15315

bb.fo:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit225.i
  %i.vx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i.i228.i = load i64, ptr %i.vu, align 8, !range !26, !alias.scope !15314, !noalias !15151, !noundef !15 ; 2 uses
  %i.vy = icmp eq i64 %.val4.i.i228.i, 0
  br i1 %i.vy, label %.body232.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.vz = mul nuw i64 %.val4.i.i228.i, 80
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i226.i, i64 noundef %i.vz, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15315
  br label %.body232.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i230.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit225.i
  %.val2.i.i231.i = load i64, ptr %i.vu, align 8, !range !26, !alias.scope !15314, !noalias !15151, !noundef !15 ; 2 uses
  %i.wa = icmp eq i64 %.val2.i.i231.i, 0
  br i1 %i.wa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEBI_.exit234.i, label %bb.fq

bb.fq:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i230.i
  %i.wb = mul nuw i64 %.val2.i.i231.i, 80
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i226.i, i64 noundef %i.wb, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15315
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEBI_.exit234.i

.body232.i:                                       ; preds = %bb.fp, %bb.fo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit223.i
  %.pn64.i = phi { ptr, i32 } [ %.pn62.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit223.i ], [ %i.vx, %bb.fo ], [ %i.vx, %bb.fp ]
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ab, i64 360
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEEBI_(ptr noalias noundef readonly align 8 dereferenceable(24) %i.wc) #44
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15151

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEBI_.exit234.i: ; preds = %bb.fq, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i230.i
  %i.wd = getelementptr inbounds nuw i8, ptr %i.ab, i64 360 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15316)
  call void @llvm.experimental.noalias.scope.decl(metadata !15317)
  %i.we = getelementptr inbounds nuw i8, ptr %i.ab, i64 368
  %.val.i.i235.i = load ptr, ptr %i.we, align 8, !alias.scope !15318, !noalias !15151, !nonnull !15, !noundef !15 ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.ab, i64 376
  %.val1.i.i236.i = load i64, ptr %i.wf, align 8, !alias.scope !15318, !noalias !15151, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %.val.i.i235.i, i64 noundef %.val1.i.i236.i)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i239.i unwind label %bb.fr, !noalias !15319

bb.fr:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEBI_.exit234.i
  %i.wg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i.i237.i = load i64, ptr %i.wd, align 8, !range !26, !alias.scope !15318, !noalias !15151, !noundef !15 ; 2 uses
  %i.wh = icmp eq i64 %.val4.i.i237.i, 0
  br i1 %i.wh, label %.body, label %.body.sink.split

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i239.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEBI_.exit234.i
  %.val2.i.i240.i = load i64, ptr %i.wd, align 8, !range !26, !alias.scope !15318, !noalias !15151, !noundef !15 ; 2 uses
  %i.wi = icmp eq i64 %.val2.i.i240.i, 0
  br i1 %i.wi, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6finish.exit, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEEBI_.exit.sink.split.i

bb.fs:                                            ; preds = %bb.dh
  %i.wj = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEEEB2a_(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.g) #44, !noalias !15151
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEEEB2a_(ptr noalias noundef align 8 dereferenceable(64) %i.f) #44, !noalias !15151
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fu, %bb.fs, %.thread348.i
  %eh.lpad-body139342351.i = phi { ptr, i32 } [ %i.nu, %.thread348.i ], [ %eh.lpad-body139.ph.ph.i, %bb.fu ], [ %i.wj, %bb.fs ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.h) #44, !noalias !15151
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEEB1b_.exit

bb.fu:                                            ; preds = %bb.ef, %bb.eb, %bb.ds
  %.sink512.i = phi i8 [ -2, %bb.ds ], [ -2, %bb.eb ], [ %.sroa.0.0.i376.i, %bb.ef ]
  %.lcssa505.sink.i = phi i8 [ %i.ob, %bb.ds ], [ -2, %bb.eb ], [ -2, %bb.ef ]
  %.sink.i = phi ptr [ %i.e, %bb.ds ], [ %i.d, %bb.eb ], [ %i.c, %bb.ef ]
  %eh.lpad-body139.ph.ph.i = phi { ptr, i32 } [ %i.pp, %bb.ds ], [ %i.py, %bb.eb ], [ %i.qf, %bb.ef ]
  store ptr %i.nv, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !15150
  store ptr %i.oa, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !15150
  store i8 %.sink512.i, ptr %i.g, align 8, !noalias !15150
  store i8 %.lcssa505.sink.i, ptr %i.f, align 8, !noalias !15150
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEBF_(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %.sink.i) #44, !noalias !15151
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEEEB2a_(ptr noalias noundef align 8 dereferenceable(64) %i.f) #44, !noalias !15151
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEEEB2a_(ptr noalias noundef align 8 dereferenceable(72) %i.g) #44, !noalias !15151
  br label %bb.ft

bb.fv:                                            ; preds = %bb.cy
  %i.wk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7112.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !15320), !noalias !15151
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.fv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.wm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit.i.i.i ], [ 0, %bb.fv ] ; 2 uses
  %i.wl = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7112.0.copyload, i64 %.sroa.0.07.i.i.i ; 3 uses
  %i.wm = add nuw nsw i64 %.sroa.0.07.i.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15321), !noalias !15151
  call void @llvm.experimental.noalias.scope.decl(metadata !15322), !noalias !15151
  %i.wn = load i8, ptr %i.wl, align 8, !range !28, !alias.scope !15323, !noalias !15324, !noundef !15
  %switch.i.i.i.i.i = icmp samesign ult i8 %i.wn, 12
  br i1 %switch.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit.i.i.i, label %bb.fw

bb.fw:                                            ; preds = %.lr.ph.i.i.i
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wl, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.wo, align 8, !alias.scope !15323, !noalias !15324, !noundef !15 ; 2 uses
  %i.wp = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.wp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit.i.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.fw
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  %.val.i.i.i.i.i60 = load ptr, ptr %i.wq, align 8, !alias.scope !15323, !noalias !15324, !nonnull !15, !noundef !15
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i60, i64 noundef %.val1.i.i.i.i.i, i64 noundef 1) #42, !noalias !15325
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit.i.i.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.fw, %.lr.ph.i.i.i
  %i.wr = icmp eq i64 %i.wm, %.sroa.10.0.copyload
  br i1 %i.wr, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit.i.i.i
  %i.ws = icmp eq i64 %.sroa.0111.0.copyload, 0
  br i1 %i.ws, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEEB1b_.exit, label %bb.fx

bb.fx:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i
  %i.wt = shl nuw i64 %.sroa.0111.0.copyload, 5
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7112.0.copyload, i64 noundef %i.wt, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15324
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEEB1b_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEEB1b_.exit: ; preds = %bb.fx, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i, %bb.ft
  %.pn74330.i = phi { ptr, i32 } [ %eh.lpad-body139342351.i, %bb.ft ], [ %i.wk, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i ], [ %i.wk, %bb.fx ] ; 2 uses
  %.sroa.012.0328.i = phi i1 [ false, %bb.ft ], [ true, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i ], [ true, %bb.fx ]
  %i.wu = icmp eq i64 %.sroa.6.0.copyload42.i.i, 0
  br i1 %i.wu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.fy

bb.fy:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEEB1b_.exit
  %i.wv = mul nuw i64 %.sroa.6.0.copyload42.i.i, 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %i.wv, i64 noundef range(i64 1, -9223372036854775807) 4) #42, !noalias !15151
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEECsb6FLkjZuKG_18ruff_python_parser.exit.i

.thread.i11:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEECsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.bo, %bb.bn
  %.pn76.pn317.i = phi { ptr, i32 } [ %.pn74330.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEECsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ %i.hk, %bb.bn ], [ %i.hk, %bb.bo ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.j) #44, !noalias !15151
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEECsb6FLkjZuKG_18ruff_python_parser.exit.thread.i

.thread352.i:                                     ; preds = %bb.bp
  %i.ww = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEECsb6FLkjZuKG_18ruff_python_parser.exit.thread.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEECsb6FLkjZuKG_18ruff_python_parser.exit.thread.thread.i: ; preds = %bb.ga, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ModExpressionECsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.fz
end_hunk_10
begin_hunk_11_@_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser5parse:bb.a
  %i.yn = icmp eq i64 %i.yk, 0
  br i1 %i.yn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser6parser12NameInternerEBF_.exit, label %bb.gj

bb.gj:                                            ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i
  %i.yo = load ptr, ptr %i.xd, align 8, !alias.scope !15335, !noalias !15147, !nonnull !15, !noundef !15
  %i.yp = sub nuw nsw i64 -16, %i.yh
  %i.yq = getelementptr inbounds i8, ptr %i.yo, i64 %i.yp
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.yq, i64 noundef %i.yk, i64 noundef range(i64 1, -9223372036854775807) 16) #42, !noalias !15350
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser6parser12NameInternerEBF_.exit

bb.gk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEECsb6FLkjZuKG_18ruff_python_parser.exit.thread.thread.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser12token_source11TokenSourceEBF_(ptr noalias noundef nonnull readonly align 8 dereferenceable(464) %i.ab) #44, !noalias !15147
  br label %bb.gd

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser6parser12NameInternerEBF_.exit: ; preds = %bb.gj, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i.i.i, %bb.gd
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  call void @llvm.experimental.noalias.scope.decl(metadata !15351)
  %.val.i242.i = load i64, ptr %i.yr, align 8, !alias.scope !15352, !noalias !15151 ; 2 uses
  %i.ys = icmp eq i64 %.val.i242.i, 0
  br i1 %i.ys, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit244.i, label %bb.gl

bb.gl:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser6parser12NameInternerEBF_.exit
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %.val1.i243.i = load ptr, ptr %i.yt, align 8, !alias.scope !15352, !noalias !15151, !nonnull !15, !noundef !15
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i243.i, i64 noundef %.val.i242.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !15353
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit244.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit244.i: ; preds = %bb.gl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser6parser12NameInternerEBF_.exit
  br i1 %.not80.i, label %bb.gt, label %bb.gm

bb.gm:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit244.i
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEEB1b_(ptr noalias noundef readonly align 8 dereferenceable(24) %i.yu) #44, !noalias !15147
  br label %bb.gt

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorEEB1b_.exit.i: ; preds = %bb.gu, %bb.gt
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ab, i64 240 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15354)
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ab, i64 248
  %i.yx = load ptr, ptr %i.yw, align 8, !alias.scope !15355, !noalias !15147, !nonnull !15, !noundef !15 ; 4 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ab, i64 256
  %i.yz = load i64, ptr %i.yy, align 8, !alias.scope !15355, !noalias !15147, !noundef !15 ; 4 uses
  %i.za = icmp eq i64 %i.yz, 0
  br i1 %i.za, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i, label %.lr.ph366

bb.gn:                                            ; preds = %.lr.ph366
  %i.zb = icmp eq i64 %i.zd, %i.yz
  br i1 %i.zb, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i, label %.lr.ph366

.lr.ph366:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorEEB1b_.exit.i, %bb.gn
  %.sroa.0.0.i.i48365 = phi i64 [ %i.zd, %bb.gn ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorEEB1b_.exit.i ] ; 2 uses
  %i.zc = getelementptr inbounds nuw [72 x i8], ptr %i.yx, i64 %.sroa.0.0.i.i48365
  %i.zd = add i64 %.sroa.0.0.i.i48365, 1          ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.zc) #45
          to label %bb.gn unwind label %bb.gp, !noalias !15356, !inline_history !14850

bb.go:                                            ; preds = %.lr.ph368
  %i.ze = add i64 %.sroa.0.1.i.i367, 1            ; 2 uses
  %i.zf = icmp eq i64 %i.ze, %i.yz
  br i1 %i.zf, label %.body.i49, label %.lr.ph368

bb.gp:                                            ; preds = %.lr.ph366
  %i.zg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.zh = icmp eq i64 %i.zd, %i.yz
  br i1 %i.zh, label %.body.i49, label %.lr.ph368

.lr.ph368:                                        ; preds = %bb.gp, %bb.go
  %.sroa.0.1.i.i367 = phi i64 [ %i.ze, %bb.go ], [ %i.zd, %bb.gp ] ; 2 uses
  %i.zi = getelementptr inbounds nuw [72 x i8], ptr %i.yx, i64 %.sroa.0.1.i.i367
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.zi) #46
          to label %bb.go unwind label %bb.gq, !noalias !15356, !inline_history !14850

bb.gq:                                            ; preds = %.lr.ph368
  %i.zj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !15356, !inline_history !14850
  unreachable

.body.i49:                                        ; preds = %bb.go, %bb.gp
  %.val2.i50 = load i64, ptr %i.yv, align 8, !range !26, !alias.scope !15354, !noalias !15147, !noundef !15 ; 2 uses
  %i.zk = icmp eq i64 %.val2.i50, 0
  br i1 %i.zk, label %.body23, label %bb.gr

bb.gr:                                            ; preds = %.body.i49
  %i.zl = mul nuw i64 %.val2.i50, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.yx, i64 noundef %i.zl, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15356, !inline_history !15198
  br label %.body23

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.gn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorEEB1b_.exit.i
  %.val.i51 = load i64, ptr %i.yv, align 8, !range !26, !alias.scope !15354, !noalias !15147, !noundef !15 ; 2 uses
  %i.zm = icmp eq i64 %.val.i51, 0
  br i1 %i.zm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit246.i, label %bb.gs

bb.gs:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.zn = mul nuw i64 %.val.i51, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.yx, i64 noundef %i.zn, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15356, !inline_history !15198
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit246.i

bb.gt:                                            ; preds = %bb.gm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsb6FLkjZuKG_18ruff_python_parser.exit244.i
  %i.zo = getelementptr inbounds nuw i8, ptr %i.ab, i64 216
  %.val95.i = load i64, ptr %i.zo, align 8, !alias.scope !15148, !noalias !15151 ; 2 uses
  %i.zp = icmp eq i64 %.val95.i, 0
  br i1 %i.zp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorEEB1b_.exit.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.zq = getelementptr inbounds nuw i8, ptr %i.ab, i64 224
  %.val96.i = load ptr, ptr %i.zq, align 8, !alias.scope !15148, !noalias !15151, !nonnull !15, !noundef !15
  %i.zr = mul nuw i64 %.val95.i, 40
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val96.i, i64 noundef %i.zr, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15147
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorEEB1b_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit246.i: ; preds = %bb.gs, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.zs = getelementptr inbounds nuw i8, ptr %i.ab, i64 264 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15357)
  call void @llvm.experimental.noalias.scope.decl(metadata !15358), !noalias !15147
  %i.zt = getelementptr inbounds nuw i8, ptr %i.ab, i64 272
  %.val.i.i42 = load ptr, ptr %i.zt, align 8, !alias.scope !15359, !noalias !15147, !nonnull !15, !noundef !15 ; 3 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.ab, i64 280
  %.val1.i.i43 = load i64, ptr %i.zu, align 8, !alias.scope !15359, !noalias !15147, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %.val.i.i42, i64 noundef %.val1.i.i43)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i unwind label %bb.gv, !noalias !15360

bb.gv:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit246.i
  %i.zv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val4.i.i44 = load i64, ptr %i.zs, align 8, !range !26, !alias.scope !15359, !noalias !15147, !noundef !15 ; 2 uses
  %i.zw = icmp eq i64 %.val4.i.i44, 0
  br i1 %i.zw, label %.body23, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.zx = mul nuw i64 %.val4.i.i44, 120
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i42, i64 noundef %i.zx, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15360
  br label %.body23

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEBI_.exit246.i
  %.val2.i.i45 = load i64, ptr %i.zs, align 8, !range !26, !alias.scope !15359, !noalias !15147, !noundef !15 ; 2 uses
  %i.zy = icmp eq i64 %.val2.i.i45, 0
  br i1 %i.zy, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEEBI_.exit, label %bb.gx

bb.gx:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  %i.zz = mul nuw i64 %.val2.i.i45, 120
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i42, i64 noundef %i.zz, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15360
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEEBI_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEEBI_.exit: ; preds = %bb.gx, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.ab, i64 288 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15361)
  call void @llvm.experimental.noalias.scope.decl(metadata !15362), !noalias !15147
  %i.aab = getelementptr inbounds nuw i8, ptr %i.ab, i64 296
  %.val.i.i36 = load ptr, ptr %i.aab, align 8, !alias.scope !15363, !noalias !15147, !nonnull !15, !noundef !15 ; 3 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.ab, i64 304
  %.val1.i.i37 = load i64, ptr %i.aac, align 8, !alias.scope !15363, !noalias !15147, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %.val.i.i36, i64 noundef %.val1.i.i37)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i unwind label %bb.gy, !noalias !15364

bb.gy:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEEBI_.exit
  %i.aad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val4.i.i38 = load i64, ptr %i.aaa, align 8, !range !26, !alias.scope !15363, !noalias !15147, !noundef !15 ; 2 uses
  %i.aae = icmp eq i64 %.val4.i.i38, 0
  br i1 %i.aae, label %.body23, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.aaf = mul nuw i64 %.val4.i.i38, 80
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i36, i64 noundef %i.aaf, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15364
  br label %.body23

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEEBI_.exit
  %.val2.i.i39 = load i64, ptr %i.aaa, align 8, !range !26, !alias.scope !15363, !noalias !15147, !noundef !15 ; 2 uses
  %i.aag = icmp eq i64 %.val2.i.i39, 0
  br i1 %i.aag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_.exit, label %bb.ha

bb.ha:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  %i.aah = mul nuw i64 %.val2.i.i39, 80
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i36, i64 noundef %i.aah, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15364
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_.exit: ; preds = %bb.ha, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  %i.aai = getelementptr inbounds nuw i8, ptr %i.ab, i64 312 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15365)
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.ab, i64 320
  %.val.i31 = load ptr, ptr %i.aaj, align 8, !alias.scope !15365, !noalias !15147, !nonnull !15, !noundef !15 ; 4 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.ab, i64 328
  %.val1.i = load i64, ptr %i.aak, align 8, !alias.scope !15365, !noalias !15147, !noundef !15 ; 4 uses
  %i.aal = icmp eq i64 %.val1.i, 0
  br i1 %i.aal, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i, label %.lr.ph370

bb.hb:                                            ; preds = %.lr.ph370
  %i.aam = icmp eq i64 %i.aao, %.val1.i
  br i1 %i.aam, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i, label %.lr.ph370

.lr.ph370:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_.exit, %bb.hb
  %.sroa.0.0.i.i.i32369 = phi i64 [ %i.aao, %bb.hb ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_.exit ] ; 2 uses
  %i.aan = getelementptr inbounds nuw [88 x i8], ptr %.val.i31, i64 %.sroa.0.0.i.i.i32369
  %i.aao = add nuw nsw i64 %.sroa.0.0.i.i.i32369, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(88) %i.aan)
          to label %bb.hb unwind label %bb.hd, !noalias !15366

bb.hc:                                            ; preds = %.lr.ph372
  %i.aap = add i64 %.sroa.0.1.i.i.i371, 1         ; 2 uses
  %i.aaq = icmp eq i64 %i.aap, %.val1.i
  br i1 %i.aaq, label %.body.i, label %.lr.ph372

bb.hd:                                            ; preds = %.lr.ph370
  %i.aar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.aas = icmp eq i64 %i.aao, %.val1.i
  br i1 %i.aas, label %.body.i, label %.lr.ph372

.lr.ph372:                                        ; preds = %bb.hd, %bb.hc
  %.sroa.0.1.i.i.i371 = phi i64 [ %i.aap, %bb.hc ], [ %i.aao, %bb.hd ] ; 2 uses
  %i.aat = getelementptr inbounds nuw [88 x i8], ptr %.val.i31, i64 %.sroa.0.1.i.i.i371
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(88) %i.aat) #44
          to label %bb.hc unwind label %bb.he, !noalias !15366

bb.he:                                            ; preds = %.lr.ph372
  %i.aau = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !15366
  unreachable

.body.i:                                          ; preds = %bb.hc, %bb.hd
  %.val4.i33 = load i64, ptr %i.aai, align 8, !range !26, !alias.scope !15365, !noalias !15147, !noundef !15 ; 2 uses
  %i.aav = icmp eq i64 %.val4.i33, 0
  br i1 %i.aav, label %.body23, label %bb.hf

bb.hf:                                            ; preds = %.body.i
  %i.aaw = mul nuw i64 %.val4.i33, 88
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i31, i64 noundef %i.aaw, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15366
  br label %.body23

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.hb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEEBI_.exit
  %.val2.i = load i64, ptr %i.aai, align 8, !range !26, !alias.scope !15365, !noalias !15147, !noundef !15 ; 2 uses
  %i.aax = icmp eq i64 %.val2.i, 0
  br i1 %i.aax, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit248.i, label %bb.hg

bb.hg:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.aay = mul nuw i64 %.val2.i, 88
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i31, i64 noundef %i.aay, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15366
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit248.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit248.i: ; preds = %bb.hg, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.ab, i64 336 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15367)
  call void @llvm.experimental.noalias.scope.decl(metadata !15368), !noalias !15147
  %i.aba = getelementptr inbounds nuw i8, ptr %i.ab, i64 344
  %.val.i.i25 = load ptr, ptr %i.aba, align 8, !alias.scope !15369, !noalias !15147, !nonnull !15, !noundef !15 ; 3 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.ab, i64 352
  %.val1.i.i26 = load i64, ptr %i.abb, align 8, !alias.scope !15369, !noalias !15147, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %.val.i.i25, i64 noundef %.val1.i.i26)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i unwind label %bb.hh, !noalias !15370

bb.hh:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit248.i
  %i.abc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val4.i.i27 = load i64, ptr %i.aaz, align 8, !range !26, !alias.scope !15369, !noalias !15147, !noundef !15 ; 2 uses
  %i.abd = icmp eq i64 %.val4.i.i27, 0
  br i1 %i.abd, label %.body23, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.abe = mul nuw i64 %.val4.i.i27, 80
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i25, i64 noundef %i.abe, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15370
  br label %.body23

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEBI_.exit248.i
  %.val2.i.i28 = load i64, ptr %i.aaz, align 8, !range !26, !alias.scope !15369, !noalias !15147, !noundef !15 ; 2 uses
  %i.abf = icmp eq i64 %.val2.i.i28, 0
  br i1 %i.abf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEBI_.exit, label %bb.hj

bb.hj:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  %i.abg = mul nuw i64 %.val2.i.i28, 80
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i25, i64 noundef %i.abg, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15370
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEBI_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEBI_.exit: ; preds = %bb.hj, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i
  %i.abh = getelementptr inbounds nuw i8, ptr %i.ab, i64 360 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15371)
  call void @llvm.experimental.noalias.scope.decl(metadata !15372), !noalias !15147
  %i.abi = getelementptr inbounds nuw i8, ptr %i.ab, i64 368
  %.val.i.i21 = load ptr, ptr %i.abi, align 8, !alias.scope !15373, !noalias !15147, !nonnull !15, !noundef !15 ; 3 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.ab, i64 376
  %.val1.i.i = load i64, ptr %i.abj, align 8, !alias.scope !15373, !noalias !15147, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 %.val.i.i21, i64 noundef %.val1.i.i)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i unwind label %bb.hk, !noalias !15374

bb.hk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEBI_.exit
  %i.abk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val4.i.i = load i64, ptr %i.abh, align 8, !range !26, !alias.scope !15373, !noalias !15147, !noundef !15 ; 2 uses
  %i.abl = icmp eq i64 %.val4.i.i, 0
  br i1 %i.abl, label %.body23, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.abm = mul nuw i64 %.val4.i.i, 96
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i21, i64 noundef %i.abm, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15374
  br label %.body23

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEBI_.exit
  %.val2.i.i22 = load i64, ptr %i.abh, align 8, !range !26, !alias.scope !15373, !noalias !15147, !noundef !15 ; 2 uses
  %i.abn = icmp eq i64 %.val2.i.i22, 0
  br i1 %i.abn, label %.body, label %.body.sink.split

bb.hm:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !15098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !15098
  %i.abo = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.dv, ptr %i.abo, align 8
  br label %bb.bd

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6finish.exit: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i239.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_buffer13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEEBI_.exit.sink.split.i, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  ret void

.body.sink.split:                                 ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i, %bb.cx, %bb.fr
  %.val2.i.i22.sink = phi i64 [ %.val4.i.i126.i, %bb.cx ], [ %.val4.i.i237.i, %bb.fr ], [ %.val2.i.i22, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i ]
  %.val.i.i21.sink = phi ptr [ %.val.i.i124.i, %bb.cx ], [ %.val.i.i235.i, %bb.fr ], [ %.val.i.i21, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i ]
  %eh.lpad-body126.ph = phi { ptr, i32 } [ %i.nf, %bb.cx ], [ %i.wg, %bb.fr ], [ %.pn76.pn.pn356.i, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i ]
  %i.abp = mul nuw i64 %.val2.i.i22.sink, 96
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i21.sink, i64 noundef %i.abp, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !15147
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i, %bb.fr, %.body232.i, %bb.cx, %.body122.i, %bb.hn
  %eh.lpad-body126 = phi { ptr, i32 } [ %eh.lpad-body.ph, %bb.hn ], [ %.pn64.i, %.body232.i ], [ %i.nf, %bb.cx ], [ %i.wg, %bb.fr ], [ %.pn91.i, %.body122.i ], [ %.pn76.pn.pn356.i, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser.exit.i.i ], [ %eh.lpad-body126.ph, %.body.sink.split ]
  resume { ptr, i32 } %eh.lpad-body126

bb.hn:                                            ; preds = %.body.i.i, %bb.ak, %bb.aj, %bb.ae, %bb.ad, %bb.x, %bb.az, %.thread22.i, %bb.bb
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.ga, %bb.bb ], [ %.pn18.i, %.thread22.i ], [ %i.fy, %bb.az ], [ %i.eb, %bb.ak ], [ %i.dw, %bb.ad ], [ %i.dw, %bb.ae ], [ %eh.lpad-body.ph.i.i, %bb.x ], [ %eh.lpad-body.ph.i.i, %.body.i.i ], [ %i.eb, %bb.aj ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser6parser6ParserEBF_(ptr noalias noundef align 8 dereferenceable(464) %1) #44
          to label %.body unwind label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.abq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i8, i8 } @_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser5peek2(ptr noalias noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10checkpoint(ptr noalias noundef align 8 captures(none) dereferenceable(88) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %0)
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.b = invoke noundef i8 @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10next_token(ptr noalias noundef nonnull align 8 dereferenceable(168) %0)
          to label %.noexc.i unwind label %.loopexit.split-lp.i ; 2 uses

.noexc.i:                                         ; preds = %bb.b
  switch i8 %i.b, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource21next_non_trivia_token.exit.i [
    i8 12, label %.backedge
    i8 14, label %.backedge
  ]

.backedge:                                        ; preds = %.noexc.i, %.noexc.i
  br label %bb.b

_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource21next_non_trivia_token.exit.i: ; preds = %.noexc.i, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource21next_non_trivia_token.exit.i.backedge
  %i.c = invoke noundef i8 @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10next_token(ptr noalias noundef nonnull align 8 dereferenceable(168) %0)
          to label %.noexc2.i unwind label %.loopexit.i ; 2 uses

.noexc2.i:                                        ; preds = %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource21next_non_trivia_token.exit.i
  switch i8 %i.c, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource5peek2.exit [
    i8 12, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource21next_non_trivia_token.exit.i.backedge
    i8 14, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource21next_non_trivia_token.exit.i.backedge
  ]

_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource21next_non_trivia_token.exit.i.backedge: ; preds = %.noexc2.i, %.noexc2.i
  br label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource21next_non_trivia_token.exit.i

.loopexit.i:                                      ; preds = %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource21next_non_trivia_token.exit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer15LexerCheckpointEBF_(ptr noalias noundef align 8 dereferenceable(88) %i.a) #44
  resume { ptr, i32 } %lpad.phi.i

_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource5peek2.exit: ; preds = %.noexc2.i
  call fastcc void @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer6rewind(ptr noalias noundef nonnull align 8 dereferenceable(168) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %i.a)
  %i.d = insertvalue { i8, i8 } poison, i8 %i.b, 0
  %i.e = insertvalue { i8, i8 } %i.d, i8 %i.c, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i8, i8 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6expect(ptr noalias noundef nonnull align 8 dereferenceable(464) %0, i8 noundef range(i8 7, 88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = tail call fastcc noundef zeroext i1 @_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat(ptr noalias noundef align 8 dereferenceable(464) %0, i8 noundef %1)
  br i1 %i.b, label %bb.c, label %bb.b
end_hunk_11
begin_hunk_12_@_RNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_expr:bb.a
  %i.i = alloca [72 x i8], align 8                ; 5 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [72 x i8], align 8                ; 5 uses
  %i.l = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.4420 = alloca [140 x i8], align 4        ; 5 uses
  %i.m = alloca [72 x i8], align 8                ; 4 uses
  %i.n = alloca [72 x i8], align 8                ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 9 uses
  %i.t = alloca [72 x i8], align 8                ; 5 uses
  %i.u = alloca [72 x i8], align 8                ; 6 uses
  %i.v = alloca [72 x i8], align 8                ; 5 uses
  %i.w = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4396 = alloca [140 x i8], align 4        ; 5 uses
  %i.x = alloca [144 x i8], align 8               ; 6 uses
  %.sroa.7384 = alloca [140 x i8], align 4        ; 6 uses
  %i.y = alloca [104 x i8], align 8               ; 16 uses
  %i.z = alloca [72 x i8], align 8                ; 5 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [72 x i8], align 8               ; 5 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [40 x i8], align 8               ; 8 uses
  %i.ae = alloca [8 x i8], align 8                ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [48 x i8], align 8               ; 11 uses
  %i.ah = alloca [144 x i8], align 8              ; 6 uses
  %.sroa.7 = alloca [140 x i8], align 4           ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 10 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [144 x i8], align 8              ; 8 uses
  %i.al = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.5352 = alloca [64 x i8], align 8         ; 4 uses
  %.sroa.5635 = alloca [64 x i8], align 8         ; 4 uses
  %i.am = alloca [144 x i8], align 8              ; 10 uses
  %i.an = alloca [32 x i8], align 8               ; 9 uses
  %i.ao = alloca [4 x i8], align 4                ; 5 uses
  %i.ap = alloca [72 x i8], align 8               ; 4 uses
  %i.aq = alloca [40 x i8], align 8               ; 9 uses
  %i.ar = alloca [72 x i8], align 8               ; 12 uses
  %i.as = alloca [72 x i8], align 8               ; 9 uses
  %i.at = alloca [32 x i8], align 8               ; 8 uses
  %i.au = alloca [4 x i8], align 4                ; 7 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [48 x i8], align 8               ; 10 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [4 x i8], align 4                ; 6 uses
  %i.ba = alloca [144 x i8], align 8              ; 10 uses
  %.sroa.442.sroa.0 = alloca [20 x i8], align 4   ; 4 uses
  %i.bb = alloca [32 x i8], align 8               ; 6 uses
  %i.bc = alloca [48 x i8], align 8               ; 10 uses
  %i.bd = alloca [24 x i8], align 8               ; 16 uses
  %i.be = alloca [32 x i8], align 8               ; 8 uses
  %i.bf = alloca [4 x i8], align 4                ; 5 uses
  %i.bg = alloca [32 x i8], align 8               ; 9 uses
  %i.bh = load i64, ptr %1, align 8, !range !53, !noundef !15 ; 3 uses
  %i.bi = icmp ne i64 %i.bh, -9223372036854775804
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = xor i64 %i.bh, -9223372036854775808
  %i.bk = icmp slt i64 %i.bh, 0
  %i.bl = select i1 %i.bk, i64 %i.bj, i64 4
  switch i64 %i.bl, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.w
    i64 4, label %bb.m
    i64 5, label %bb.n
    i64 6, label %bb.o
    i64 7, label %bb.p
  ]

default.unreachable700:                           ; preds = %bb.d
  unreachable

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !15, !noundef !15 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.bn, i64 72, i1 false)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bn, i64 noundef 72, i64 noundef 8) #42
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !noundef !15 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !noundef !15 ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %i.bo, align 8 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bu = load i8, ptr %i.bt, align 4, !range !69, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  switch i8 %i.bu, label %default.unreachable700 [
    i8 0, label %bb.s
    i8 1, label %bb.t
    i8 2, label %bb.u
  ]

.body291:                                         ; preds = %bb.f, %.body258
  %.pn.i = phi { ptr, i32 } [ %i.cz, %.body258 ], [ %i.ci, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.bg)
          to label %common.resume unwind label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.by = load <2 x i32>, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.026.0.copyload = load i32, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !15, !noundef !15 ; 8 uses
  %i.cc = load i64, ptr %i.bw, align 8, !range !26, !noundef !15 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.cf = icmp ult i64 %i.ce, 128102389400760776
  tail call void @llvm.assume(i1 %i.cf)
  %.idx610 = mul nuw nsw i64 %i.ce, 72
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx610 ; 5 uses
  store ptr %i.cb, ptr %i.bg, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  store i64 %i.cc, ptr %.sroa.535.0..sroa_idx, align 8
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  store ptr %i.cg, ptr %.sroa.636.0..sroa_idx, align 8
  %.not.i290602 = icmp eq i64 %i.ce, 0
  br i1 %.not.i290602, label %._crit_edge606, label %.lr.ph605

.lr.ph605:                                        ; preds = %bb.e, %_RNvYNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEE8call_mutB8_.exit.i
  %.sroa.6402.0603 = phi ptr [ %i.ch, %_RNvYNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEE8call_mutB8_.exit.i ], [ %i.cb, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !16217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6402.0603, i64 72, i1 false), !noalias !16218
  %i.ch = getelementptr i8, ptr %.sroa.6402.0603, i64 72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !16219
  invoke fastcc void @_RNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_expr(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.m)
          to label %_RNvYNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEE8call_mutB8_.exit.i unwind label %bb.f, !noalias !16218, !inline_history !15930

_RNvYNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEE8call_mutB8_.exit.i: ; preds = %.lr.ph605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6402.0603, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false), !noalias !16220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !16219
  %.not.i290 = icmp eq ptr %i.ch, %i.cg
  br i1 %.not.i290, label %._crit_edge606, label %.lr.ph605

bb.f:                                             ; preds = %.lr.ph605
  %i.ci = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ch, ptr %.sroa.434.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser(ptr nonnull %i.cb, ptr nonnull %.sroa.6402.0603) #44
          to label %.body291 unwind label %bb.g, !noalias !16220, !inline_history !15931

bb.g:                                             ; preds = %bb.f
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !16220, !inline_history !15931
  unreachable

._crit_edge606:                                   ; preds = %_RNvYNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEE8call_mutB8_.exit.i, %bb.e
  %.lcssa579 = phi ptr [ %i.cb, %bb.e ], [ %i.cg, %_RNvYNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEE8call_mutB8_.exit.i ] ; 4 uses
  %i.ck = ptrtoint ptr %.lcssa579 to i64          ; 2 uses
  %i.cl = ptrtoint ptr %i.cb to i64
  %i.cm = sub nuw i64 %i.ck, %i.cl
  %i.cn = udiv exact i64 %i.cm, 72                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !16221
  store ptr %i.cb, ptr %i.aj, align 8, !noalias !16221
  %i.co = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.cn, ptr %i.co, align 8, !noalias !16221
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %i.cc, ptr %i.cp, align 8, !noalias !16221
  call void @llvm.experimental.noalias.scope.decl(metadata !16222)
  %i.cq = ptrtoint ptr %i.cg to i64
  %i.cr = sub nuw i64 %i.cq, %i.ck
  %i.cs = udiv exact i64 %i.cr, 72                ; 3 uses
  store i64 0, ptr %.sroa.535.0..sroa_idx, align 8, !alias.scope !16222, !noalias !16223
  store ptr inttoptr (i64 8 to ptr), ptr %i.bg, align 8, !alias.scope !16222, !noalias !16223
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.434.0..sroa_idx, align 8, !alias.scope !16222, !noalias !16223
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.636.0..sroa_idx, align 8, !alias.scope !16222, !noalias !16223
  %i.ct = icmp eq ptr %i.cg, %.lcssa579
  br i1 %i.ct, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprENtB2m_4ExprEB3i_.exit, label %.lr.ph763

bb.h:                                             ; preds = %.lr.ph763
  %i.cu = icmp eq i64 %i.cw, %i.cs
  br i1 %i.cu, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprENtB2m_4ExprEB3i_.exit, label %.lr.ph763

.lr.ph763:                                        ; preds = %._crit_edge606, %bb.h
  %.sroa.0.0.i.i257762 = phi i64 [ %i.cw, %bb.h ], [ 0, %._crit_edge606 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [72 x i8], ptr %.lcssa579, i64 %.sroa.0.0.i.i257762
  %i.cw = add nuw nsw i64 %.sroa.0.0.i.i257762, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.cv)
          to label %bb.h unwind label %bb.j, !noalias !16224, !inline_history !2

bb.i:                                             ; preds = %.lr.ph766
  %i.cx = add i64 %.sroa.0.1.i.i764, 1            ; 2 uses
  %i.cy = icmp eq i64 %i.cx, %i.cs
  br i1 %i.cy, label %.body258, label %.lr.ph766

bb.j:                                             ; preds = %.lr.ph763
  %i.cz = landingpad { ptr, i32 }
          cleanup
  %i.da = icmp eq i64 %i.cw, %i.cs
  br i1 %i.da, label %.body258, label %.lr.ph766

.lr.ph766:                                        ; preds = %bb.j, %bb.i
  %.sroa.0.1.i.i764 = phi i64 [ %i.cx, %bb.i ], [ %i.cw, %bb.j ] ; 2 uses
  %i.db = getelementptr inbounds nuw [72 x i8], ptr %.lcssa579, i64 %.sroa.0.1.i.i764
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.db) #44
          to label %bb.i unwind label %bb.k, !noalias !16224, !inline_history !2

bb.k:                                             ; preds = %.lr.ph766
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !16224, !inline_history !2
  unreachable

.body258:                                         ; preds = %bb.i, %bb.j
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternNtB1M_4ExprEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #44
          to label %.body291 unwind label %bb.l, !noalias !16223, !inline_history !15937

bb.l:                                             ; preds = %.body291, %.body258
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !16223, !inline_history !15937
  unreachable

common.resume:                                    ; preds = %bb.dr, %.body205, %bb.db, %bb.dd, %bb.dy, %.body238, %.thread527, %bb.br, %bb.bp, %bb.bq, %bb.di, %bb.do, %bb.dm, %bb.dn, %bb.eb, %bb.dz, %bb.ea, %bb.ef, %bb.ed, %bb.ee, %bb.cy, %.thread539, %.critedge.i, %.body291
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body289, %.critedge.i ], [ %.pn.i, %.body291 ], [ %eh.lpad-body254.ph, %.thread539 ], [ %.pn195.pn, %.body205 ], [ %.pn190.pn483505, %bb.dd ], [ %.pn190.pn483505, %bb.db ], [ %i.mu, %bb.di ], [ %i.nw, %bb.ee ], [ %.pn190, %bb.cy ], [ %i.nw, %.body238 ], [ %i.mx, %bb.dn ], [ %i.np, %bb.dy ], [ %i.qw, %.thread527 ], [ %.pn195.pn, %bb.br ], [ %.pn195.pn, %bb.bp ], [ %.pn195.pn, %bb.bq ], [ %i.mx, %bb.do ], [ %i.mx, %bb.dm ], [ %i.np, %bb.eb ], [ %i.np, %bb.dz ], [ %i.np, %bb.ea ], [ %i.nw, %bb.ef ], [ %i.nw, %bb.ed ], [ %i.ng, %bb.dr ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprENtB2m_4ExprEB3i_.exit: ; preds = %bb.h, %._crit_edge606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !16221
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.bg), !noalias !16223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cc, ptr %i.de, align 8
  %.sroa.028.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cb, ptr %.sroa.028.sroa.4.0..sroa_idx, align 8
  %.sroa.028.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cn, ptr %.sroa.028.sroa.5.0..sroa_idx, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i32> %i.by, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.026.0.copyload, ptr %.sroa.631.0..sroa_idx, align 8
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %.sroa.732.0..sroa_idx, align 4
  store i32 29, ptr %0, align 8
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dg = load <2 x i32>, ptr %i.df, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.di = load i32, ptr %i.dh, align 8
  store i32 %i.di, ptr %i.az, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  store ptr %i.dk, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.dl = invoke noundef i32 @_RNvXsc_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noundef nonnull align 4 %i.az)
          to label %bb.bt unwind label %.thread474

bb.n:                                             ; preds = %bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !noundef !15 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !noundef !15 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dr = load i32, ptr %i.dq, align 8
  store i32 %i.dr, ptr %i.au, align 4
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 39
  %.sroa.483.0.copyload = load i8, ptr %.sroa.483.0..sroa_idx, align 1 ; 3 uses
  %.not188 = icmp eq i8 %.sroa.483.0.copyload, -1
  br i1 %.not188, label %bb.df, label %bb.de

bb.o:                                             ; preds = %bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dt = load i32, ptr %i.ds, align 8, !noundef !15 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !noundef !15 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0117.0.copyload = load i32, ptr %i.dw, align 8 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !align !17, !noundef !15 ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %i.dz, i64 32, i1 false)
  store ptr %i.dy, ptr %i.aq, align 8
  %.not181 = icmp eq ptr %i.dy, null
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aq, i64 31 ; 3 uses
  %i.ec = load i8, ptr %i.eb, align 1, !range !39, !noundef !15
  %.not182 = icmp eq i8 %i.ec, -1                 ; 2 uses
  br i1 %.not181, label %bb.du, label %bb.dt

bb.p:                                             ; preds = %bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !nonnull !15, !noundef !15 ; 7 uses
  %i.eg = load i64, ptr %i.ed, align 8, !range !26, !noundef !15
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ei = load i64, ptr %i.eh, align 8, !noundef !15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ek = load i32, ptr %i.ej, align 8
  store i32 %i.ek, ptr %i.ao, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.el = icmp ult i64 %i.ei, 128102389400760776
  tail call void @llvm.assume(i1 %i.el)
  %.idx = mul nuw nsw i64 %i.ei, 72
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx ; 2 uses
  store ptr %i.ef, ptr %i.an, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %i.eg, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  store ptr %i.ef, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.em, ptr %i.ep, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16225)
  %i.eq = icmp eq i64 %i.ei, 0
  br i1 %i.eq, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.er = getelementptr inbounds nuw i8, ptr %i.ef, i64 72 ; 2 uses
  store ptr %i.er, ptr %i.eo, align 8, !alias.scope !16225, !noalias !16226
  %.sroa.0633.0.copyload634 = load i64, ptr %i.ef, align 8, !noalias !16225
  %.sroa.5635.0..sroa_idx636 = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5635, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5635.0..sroa_idx636, i64 64, i1 false), !noalias !16225
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit

bb.r:                                             ; preds = %bb.s, %bb.t, %bb.u, %bb.gd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsb6FLkjZuKG_18ruff_python_parser.exit248, %bb.dl, %bb.cx, %bb.bl, %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser8recovery15pattern_to_exprENtB2m_4ExprEB3i_.exit, %bb.c
  ret void

bb.s:                                             ; preds = %bb.d
  store i32 %i.bq, ptr %i.bv, align 4
  store i32 %i.bs, ptr %.sroa.424.0..sroa_idx, align 8
  store i32 %.sroa.0.0.copyload, ptr %.sroa.525.0..sroa_idx, align 4
  store i32 23, ptr %0, align 8
  br label %bb.r

bb.t:                                             ; preds = %bb.d
  store i32 %.sroa.0.0.copyload, ptr %i.bv, align 4
  store i32 %i.bq, ptr %.sroa.424.0..sroa_idx, align 8
  store i32 %i.bs, ptr %.sroa.525.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  store i32 22, ptr %0, align 8
  br label %bb.r

bb.u:                                             ; preds = %bb.d
  store i32 %.sroa.0.0.copyload, ptr %i.bv, align 4
  store i32 %i.bq, ptr %.sroa.424.0..sroa_idx, align 8
  store i32 %i.bs, ptr %.sroa.525.0..sroa_idx, align 4
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.621.0..sroa_idx, align 8
  store i32 22, ptr %0, align 8
  br label %bb.r

.body205:                                         ; preds = %bb.ax, %.body262, %bb.v, %.body207
  %.sroa.0152.0 = phi i1 [ %.not193, %.body207 ], [ true, %bb.v ], [ true, %.body262 ], [ true, %bb.ax ]
  %.pn195.pn = phi { ptr, i32 } [ %.pn195, %.body207 ], [ %i.ev, %bb.v ], [ %eh.lpad-body263, %.body262 ], [ %.pn.i203.ph, %bb.ax ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.be, i64 23
  %i.et = load i8, ptr %i.es, align 1, !range !39, !noundef !15 ; 2 uses
  %i.eu = icmp ne i8 %i.et, -1
  %or.cond = and i1 %.sroa.0152.0, %i.eu
  br i1 %or.cond, label %bb.bp, label %common.resume

bb.v:                                             ; preds = %bb.ae
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body205

bb.w:                                             ; preds = %bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ex = load <2 x i32>, ptr %i.ew, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ez = load i32, ptr %i.ey, align 8
  store i32 %i.ez, ptr %i.bf, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.037.0.copyload = load i64, ptr %i.fa, align 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.039.0.copyload = load i64, ptr %i.fb, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.fc, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %.sroa.5343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 4 uses
end_hunk_12
