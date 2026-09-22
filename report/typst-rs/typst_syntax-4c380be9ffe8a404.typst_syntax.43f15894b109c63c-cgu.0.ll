Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_6params0EB8_:bb.a
  %i.r = icmp sgt i8 %.val2.i, -1
  %i.s = zext nneg i8 %.val2.i to i128            ; 2 uses
  %i.t = lshr i128 40087900408206692449735589003264, %i.s
  %i.u = trunc i128 %i.t to i1
  %.sroa.0.0.i43 = select i1 %i.r, i1 %i.u, i1 false
  br i1 %.sroa.0.0.i43, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11trim_errors(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %.noexc34 unwind label %.loopexit.loopexit

.noexc34:                                         ; preds = %bb.e
  %i.v = load i8, ptr %i.g, align 8, !range !21, !alias.scope !382, !noalias !378, !noundef !19
  %.off.i.i = add i8 %i.v, -46
  %switch.i.i = icmp ult i8 %.off.i.i, 6
  %i.w = load i8, ptr %i.i, align 4, !range !20, !alias.scope !382, !noalias !378, !noundef !19
  %i.x = select i1 %switch.i.i, i8 0, i8 %i.w
  store i8 %i.x, ptr %i.i, align 4, !alias.scope !382, !noalias !378
  %i.y = load i64, ptr %i.j, align 8, !alias.scope !383, !noalias !384, !noundef !19 ; 4 uses
  %i.z = icmp ult i64 %i.y, 288230376151711744
  call void @llvm.assume(i1 %i.z), !noalias !378
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %.noexc35 unwind label %.loopexit.loopexit

.noexc35:                                         ; preds = %.noexc34
  %i.aa = load i64, ptr %i.j, align 8, !alias.scope !383, !noalias !384, !noundef !19 ; 2 uses
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11eat_and_get.exit.i, label %.invoke

_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11eat_and_get.exit.i: ; preds = %.noexc35
  %i.ac = load ptr, ptr %i.k, align 8, !alias.scope !383, !noalias !384, !nonnull !19, !noundef !19
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.y
  invoke fastcc void @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode10unexpected(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ad)
          to label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10unexpected.exit unwind label %.loopexit.loopexit

bb.f:                                             ; preds = %bb.d
  %.val2.i17 = load i64, ptr %i.j, align 8, !alias.scope !385, !noalias !386, !noundef !19 ; 9 uses
  %i.ae = icmp ult i64 %.val2.i17, 288230376151711744
  call void @llvm.assume(i1 %i.ae), !noalias !378
  %i.af = icmp eq i8 %.val2.i, 74
  br i1 %i.af, label %bb.g, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit.i

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %bb.n unwind label %.loopexit.loopexit.split-lp, !inline_history !350

_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit.i: ; preds = %bb.f
  %i.ag = lshr i128 40087900389317226518257008148480, %i.s
  %i.ah = trunc i128 %i.ag to i1
  %i.ai = load i32, ptr %i.l, align 8, !alias.scope !387, !noalias !388, !noundef !19 ; 2 uses
  %i.aj = icmp ult i32 %i.ai, 256
  br i1 %i.aj, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit.i: ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit.i
  invoke fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17depth_check_error(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i128 noundef 0, i128 undef)
          to label %.noexc23 unwind label %.loopexit.loopexit.split-lp, !inline_history !357

bb.h:                                             ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit.i
  %i.ak = add nuw nsw i32 %i.ai, 1
  store i32 %i.ak, ptr %i.l, align 8, !alias.scope !387, !noalias !388
  switch i8 %.val2.i, label %bb.i [
    i8 50, label %bb.j
    i8 56, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser12pattern_leaf(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @504)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit4.i unwind label %bb.l

bb.j:                                             ; preds = %bb.h
  invoke fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser30destructuring_or_parenthesized(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit4.i unwind label %bb.l, !noalias !389, !inline_history !357

bb.k:                                             ; preds = %bb.h
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit4.i unwind label %bb.l, !noalias !388, !inline_history !357

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit4.i: ; preds = %bb.i, %bb.k, %bb.j
  %i.al = load i32, ptr %i.l, align 8, !alias.scope !390, !noalias !391, !noundef !19
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr %i.l, align 8, !alias.scope !390, !noalias !391
  br label %.noexc23

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load i32, ptr %i.l, align 8, !alias.scope !392, !noalias !393, !noundef !19
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr %i.l, align 8, !alias.scope !392, !noalias !393
  br label %.loopexit

.noexc23:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit4.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit.i
  %.val.i12.i = load i8, ptr %i.g, align 8, !range !21, !noalias !378, !noundef !19 ; 2 uses
  %i.aq = icmp eq i8 %.val.i12.i, 54
  br i1 %i.aq, label %bb.m, label %bb.s

bb.m:                                             ; preds = %.noexc23
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %bb.o unwind label %.loopexit.loopexit.split-lp, !inline_history !350

bb.n:                                             ; preds = %bb.g
  %.val3.i20 = load i8, ptr %i.g, align 8, !range !21, !alias.scope !385, !noalias !386, !noundef !19 ; 2 uses
  %i.ar = icmp sgt i8 %.val3.i20, -1
  %i.as = zext nneg i8 %.val3.i20 to i128
  %i.at = lshr i128 40087900389317154460662970220544, %i.as
  %i.au = trunc i128 %i.at to i1
  %.sroa.0.0.i14.i = select i1 %i.ar, i1 %i.au, i1 false
  br i1 %.sroa.0.0.i14.i, label %bb.q, label %.noexc30

bb.o:                                             ; preds = %bb.m
  br i1 %i.ah, label %bb.p, label %.noexc29

.noexc29:                                         ; preds = %_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6ParserINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutNtB5_6MarkerE9index_mut.exit.i, %_RNvXs_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB4_6ParserINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexNtB4_6MarkerE5index.exit.i, %bb.o
  invoke fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser14code_expr_prec(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext false, i8 noundef 0)
          to label %.noexc25 unwind label %.loopexit.loopexit.split-lp, !inline_history !350

.noexc25:                                         ; preds = %.noexc29
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %.val2.i17, i8 noundef 110)
          to label %thread-pre-split unwind label %.loopexit.loopexit.split-lp, !inline_history !350

bb.p:                                             ; preds = %bb.o
  %.val11.i = load i64, ptr %i.j, align 8, !alias.scope !385, !noalias !386, !noundef !19 ; 2 uses
  %i.av = icmp ult i64 %.val2.i17, %.val11.i
  br i1 %i.av, label %_RNvXs_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB4_6ParserINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexNtB4_6MarkerE5index.exit.i, label %.invoke

.invoke:                                          ; preds = %bb.r, %bb.p, %.noexc35, %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit.i39
  %i.aw = phi i64 [ %.0.val, %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit.i39 ], [ %i.y, %.noexc35 ], [ %.val2.i17, %bb.p ], [ %.val2.i17, %bb.r ]
  %i.ax = phi i64 [ %i.n, %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit.i39 ], [ %i.aa, %.noexc35 ], [ %.val11.i, %bb.p ], [ %.val6.i22, %bb.r ]
  %i.ay = phi ptr [ @71, %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit.i39 ], [ @396, %.noexc35 ], [ @505, %bb.p ], [ @506, %bb.r ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.aw, i64 noundef %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay) #62
          to label %.cont unwind label %.loopexit.split-lp, !inline_history !350

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB4_6ParserINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexNtB4_6MarkerE5index.exit.i: ; preds = %bb.p
  %.val10.i = load ptr, ptr %i.k, align 8, !alias.scope !385, !noalias !386, !nonnull !19, !noundef !19
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %.val10.i, i64 %.val2.i17 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 1
  %.val9.i = load i8, ptr %i.ba, align 1, !range !21, !noalias !394, !noundef !19
  %i.bb = icmp eq i8 %.val9.i, 99
  br i1 %i.bb, label %.noexc29, label %_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6ParserINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutNtB5_6MarkerE9index_mut.exit.i

_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6ParserINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutNtB5_6MarkerE9index_mut.exit.i: ; preds = %_RNvXs_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB4_6ParserINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexNtB4_6MarkerE5index.exit.i
  invoke fastcc void @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode8expected(ptr noalias nofree noundef align 8 dereferenceable(32) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 10)
          to label %.noexc29 unwind label %.loopexit.loopexit.split-lp, !inline_history !350

bb.q:                                             ; preds = %bb.n
  invoke fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser12pattern_leaf(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @504)
          to label %.noexc30 unwind label %.loopexit.loopexit.split-lp

.noexc30:                                         ; preds = %bb.q, %bb.n
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %.val2.i17, i8 noundef 117)
          to label %.noexc31 unwind label %.loopexit.loopexit.split-lp, !inline_history !350

.noexc31:                                         ; preds = %.noexc30
  br i1 %.sroa.0.0.ph, label %bb.r, label %thread-pre-split

bb.r:                                             ; preds = %.noexc31
  %.val6.i22 = load i64, ptr %i.j, align 8, !alias.scope !385, !noalias !386, !noundef !19 ; 2 uses
  %i.bc = icmp ult i64 %.val2.i17, %.val6.i22
  br i1 %i.bc, label %_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6ParserINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutNtB5_6MarkerE9index_mut.exit15.i, label %.invoke

_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6ParserINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutNtB5_6MarkerE9index_mut.exit15.i: ; preds = %bb.r
  %.val5.i21 = load ptr, ptr %i.k, align 8, !alias.scope !385, !noalias !386, !nonnull !19, !noundef !19
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %.val5.i21, i64 %.val2.i17
  invoke fastcc void @_RINvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode16convert_to_errorReEB8_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @507, i64 noundef 33)
          to label %thread-pre-split unwind label %.loopexit.loopexit.split-lp, !inline_history !350

thread-pre-split:                                 ; preds = %.noexc31, %.noexc25, %_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6ParserINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutNtB5_6MarkerE9index_mut.exit15.i
  %.sroa.0.1.ph = phi i1 [ true, %_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6ParserINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutNtB5_6MarkerE9index_mut.exit15.i ], [ true, %.noexc31 ], [ %.sroa.0.0.ph, %.noexc25 ]
  %.val1.i.pr = load i8, ptr %i.g, align 8, !alias.scope !374, !noalias !378
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split, %.noexc23
  %.val1.i = phi i8 [ %.val1.i.pr, %thread-pre-split ], [ %.val.i12.i, %.noexc23 ]
  %.sroa.0.1 = phi i1 [ %.sroa.0.1.ph, %thread-pre-split ], [ %.sroa.0.0.ph, %.noexc23 ]
  switch i8 %.val1.i, label %_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind13is_terminator.exit [
    i8 0, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10unexpected.exit.outer.backedge
    i8 47, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10unexpected.exit.outer.backedge
    i8 49, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10unexpected.exit.outer.backedge
    i8 51, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10unexpected.exit.outer.backedge
    i8 53, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10unexpected.exit.outer.backedge
  ]

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10unexpected.exit.outer.backedge: ; preds = %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind13is_terminator.exit
  br label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10unexpected.exit.outer

_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind13is_terminator.exit: ; preds = %bb.s
  %i.be = invoke noundef zeroext i1 @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6expect(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i8 noundef 52)
          to label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10unexpected.exit.outer.backedge unwind label %.loopexit.loopexit.split-lp, !noalias !378, !inline_history !337 ; 0 uses

_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser6params0B5_.exit: ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit.thread.i, %bb.c
  %.val3.i = load ptr, ptr %i.b, align 8, !noalias !379 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val4.i = load i64, ptr %i.bf, align 8, !noalias !379, !noundef !19 ; 3 uses
  %i.bg = icmp eq i64 %.val4.i, 0
  br i1 %i.bg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser6params0B5_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i) ], !noalias !378
  %i.bh = shl i64 %.val4.i, 4                     ; 2 uses
  %i.bi = add i64 %i.bh, 16                       ; 2 uses
  %i.bj = add i64 %.val4.i, 17
  %i.bk = add i64 %i.bj, %i.bi                    ; 4 uses
  %i.bl = icmp uge i64 %i.bk, %i.bi
  %i.bm = icmp ult i64 %i.bk, 9223372036854775793
  call void @llvm.assume(i1 %i.bl), !noalias !378
  call void @llvm.assume(i1 %i.bm), !noalias !378
  %i.bn = icmp eq i64 %i.bk, 0
  br i1 %i.bn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit, label %bb.t

bb.t:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.bo = sub nuw nsw i64 -16, %i.bh
  %i.bp = getelementptr inbounds i8, ptr %.val3.i, i64 %i.bo
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bp, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 16) #60, !noalias !378
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser6params0B5_.exit, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !379
  store i64 %i.d, ptr %i.c, align 8
  store i64 %i.f, ptr %i.e, align 8
  %i.bq = load i64, ptr %0, align 8, !range !26, !noundef !19 ; 2 uses
  %.not = icmp eq i64 %i.bq, 2
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = icmp eq i64 %i.d, 0
  br i1 %i.bt, label %bb.v, label %bb.w

.sink.split:                                      ; preds = %bb.y, %bb.w, %bb.x, %bb.ab
  %.sink = phi i8 [ %switch.select40, %bb.x ], [ %.sroa.08.0, %bb.ab ], [ 0, %bb.w ], [ 0, %bb.y ]
  store i8 %.sink, ptr %i.g, align 8
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.u, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit
  ret void

default.unreachable:                              ; preds = %bb.w
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load i8, ptr %i.bu, align 8, !range !20, !noundef !19
  %.sroa.08.0.in = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.sroa.08.0 = load i8, ptr %.sroa.08.0.in, align 1, !range !21, !noundef !19 ; 3 uses
  switch i64 %i.d, label %default.unreachable [
    i64 4, label %bb.z
    i64 1, label %.sink.split
    i64 2, label %bb.x
    i64 3, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %switch.selectcmp = icmp eq i8 %.sroa.08.0, 88
  %switch.select = select i1 %switch.selectcmp, i8 88, i8 0
  %switch.selectcmp39 = icmp eq i8 %.sroa.08.0, 62
  %switch.select40 = select i1 %switch.selectcmp39, i8 62, i8 %switch.select
  br label %.sink.split

bb.y:                                             ; preds = %bb.aa, %bb.w
  %.sroa.016.0 = phi i8 [ %i.bv, %bb.w ], [ %i.bz, %bb.aa ]
  %i.bw = trunc nuw i8 %.sroa.016.0 to i1
  br i1 %i.bw, label %.sink.split, label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.bx = trunc nuw i64 %i.bq to i1
  br i1 %i.bx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.by = icmp ule i64 %i.bs, %i.f
  %i.bz = zext i1 %i.by to i8
  br label %bb.y

bb.ab:                                            ; preds = %bb.z, %bb.y
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_7heading0EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !range !25, !noundef !19 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  store i64 1, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.val.i = load i64, ptr %i.g, align 8, !alias.scope !409, !noundef !19 ; 2 uses
  %i.h = icmp ult i64 %.val.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 24, ptr %i.a, align 1, !noalias !411
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %.val.i18 = load i8, ptr %i.i, align 8, !range !21, !alias.scope !410, !noalias !412, !noundef !19
  %i.j = icmp eq i8 %.val.i18, 24
  br i1 %i.j, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedNtNtCs5PEMdK7bMAG_12typst_syntax4kind10SyntaxKindBM_EBQ_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #62
  unreachable

_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit: ; preds = %bb.a
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0), !noalias !412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %.val.i17 = load i64, ptr %i.g, align 8, !alias.scope !413, !noundef !19 ; 2 uses
  %i.k = icmp ult i64 %.val.i17, 288230376151711744
  tail call void @llvm.assume(i1 %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.m = load i32, ptr %i.l, align 8, !alias.scope !415, !noundef !19
  %i.n = icmp ult i32 %i.m, 256
  br i1 %i.n, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i.i, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i.i.thread

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i.i.thread: ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit
  tail call fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17depth_check_error(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i128 noundef 1, i128 range(i128 1, 72620543991349250) 562949954469889), !inline_history !406
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser6markup.exit

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i.i: ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit
  %.val6.i.i = load i64, ptr %0, align 8, !range !26, !alias.scope !416, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !416
  store i64 0, ptr %i.b, align 8, !noalias !416
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i.i
  %.sroa.0.0.in.i.i.in = phi i64 [ %.val6.i.i, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i.i ], [ %.val5.i.i, %bb.e ]
  %.sroa.0.0.in.i.i = icmp ne i64 %.sroa.0.0.in.i.i.in, 2
  %.val.i.i = load i8, ptr %i.i, align 8, !range !21, !alias.scope !416, !noundef !19 ; 3 uses
  %i.o = icmp sgt i8 %.val.i.i, -1
  %i.p = zext nneg i8 %.val.i.i to i128
  %i.q = lshr i128 562949954469889, %i.p
  %i.r = trunc i128 %i.q to i1
  %.sroa.0.0.i8.i.i = select i1 %i.o, i1 %i.r, i1 false
  br i1 %.sroa.0.0.i8.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.b, align 8, !noalias !416, !noundef !19
  %.not4.i.i = icmp ne i64 %i.s, 0
  %i.t = icmp eq i8 %.val.i.i, 49
  %or.cond = and i1 %i.t, %.not4.i.i
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  call fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser11markup_expr(ptr noalias nofree noundef align 8 dereferenceable(272) %0, i1 noundef zeroext %.sroa.0.0.in.i.i, ptr noalias nofree noundef align 8 dereferenceable(8) %i.b), !inline_history !406
  %.val5.i.i = load i64, ptr %0, align 8, !range !26, !alias.scope !416, !noundef !19
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !416
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser6markup.exit

_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser6markup.exit: ; preds = %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i.i.thread, %bb.f
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %.val.i17, i8 noundef 5), !inline_history !407
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %.val.i, i8 noundef 23), !inline_history !408
  store i64 %i.d, ptr %i.c, align 8
  store i64 %i.f, ptr %i.e, align 8
  %i.u = load i64, ptr %0, align 8, !range !26, !noundef !19 ; 2 uses
  %.not = icmp eq i64 %i.u, 2
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser6markup.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.d, 1
  br i1 %i.x, label %bb.h, label %bb.i

.sink.split:                                      ; preds = %bb.k, %bb.j, %bb.n
  %.sink = phi i8 [ %switch.select23, %bb.j ], [ %.sroa.08.0, %bb.n ], [ 0, %bb.k ]
  store i8 %.sink, ptr %i.i, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g, %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser6markup.exit
  ret void

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i8, ptr %i.y, align 8, !range !20, !noundef !19
  %.sroa.08.0.in = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.sroa.08.0 = load i8, ptr %.sroa.08.0.in, align 1, !range !21, !noundef !19 ; 3 uses
  switch i64 %i.d, label %default.unreachable [
    i64 0, label %bb.n
    i64 4, label %bb.l
    i64 2, label %bb.j
    i64 3, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %switch.selectcmp = icmp eq i8 %.sroa.08.0, 88
  %switch.select = select i1 %switch.selectcmp, i8 88, i8 0
  %switch.selectcmp22 = icmp eq i8 %.sroa.08.0, 62
  %switch.select23 = select i1 %switch.selectcmp22, i8 62, i8 %switch.select
  br label %.sink.split

bb.k:                                             ; preds = %bb.m, %bb.i
  %.sroa.016.0 = phi i8 [ %i.z, %bb.i ], [ %i.ad, %bb.m ]
  %i.aa = trunc nuw i8 %.sroa.016.0 to i1
  br i1 %i.aa, label %.sink.split, label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.ab = trunc nuw i64 %i.u to i1
  br i1 %i.ab, label %bb.m, label %bb.n
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB1e_6string9EcoStringENCINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB2i_10SyntaxNode10with_hintsINtB1c_6EcoVecB1K_EE0EEB2k_:bb.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2f_3astB2b_4castNtB33_17DestructuringItemEEINtNtCs1xwejQucwHj_5alloc3vec3VecNtB33_5IdentENCNvMs14_B33_NtB33_13Destructuring8bindings0EEB2f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %.val4.i = load ptr, ptr %0, align 8, !alias.scope !1096, !noundef !19 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5.i = load i64, ptr %i.a, align 8, !alias.scope !1096 ; 2 uses
  %i.b = icmp eq ptr %.val4.i, null
  %i.c = icmp eq i64 %.val5.i, 0
  %or.cond.i.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  %i.d = shl nuw i64 %.val5.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !1097
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !1096, !noundef !19 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i = load i64, ptr %i.f, align 8, !alias.scope !1096 ; 2 uses
  %i.g = icmp eq ptr %.val.i, null
  %i.h = icmp eq i64 %.val1.i, 0
  %or.cond.i8.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond.i8.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBG_3map3MapINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2C_3astB2y_4castNtB3q_17DestructuringItemEENCNvMs14_B3q_NtB3q_13Destructuring8bindings0EINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtB3q_5IdentEEEB2C_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.i = shl nuw i64 %.val1.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !1098
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBG_3map3MapINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2C_3astB2y_4castNtB3q_17DestructuringItemEENCNvMs14_B3q_NtB3q_13Destructuring8bindings0EINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtB3q_5IdentEEEB2C_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBG_3map3MapINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2C_3astB2y_4castNtB3q_17DestructuringItemEENCNvMs14_B3q_NtB3q_13Destructuring8bindings0EINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtB3q_5IdentEEEB2C_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableNtNtCs5PEMdK7bMAG_12typst_syntax4node14LinkedChildrenEEB1n_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1120, !nonnull !19, !noundef !19 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noalias !1120, !noundef !19
  %i.d = add i64 %i.c, -1                         ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !noalias !1120
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node14LinkedChildrenEBF_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeE9drop_slowBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.a) #57
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node14LinkedChildrenEBF_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEEB15_(ptr noalias nofree noundef align 8 dereferenceable(40) %0) #59
          to label %bb.i unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node14LinkedChildrenEBF_.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.g = load i64, ptr %0, align 8, !range !35, !alias.scope !1121, !noundef !19
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEEB15_.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node14LinkedChildrenEBF_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1123, !noundef !19
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEEB15_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1125, !noundef !19 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEEB15_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8, !noalias !1126, !noundef !19
  %i.p = add i64 %i.o, -1                         ; 2 uses
  store i64 %i.p, ptr %i.m, align 8, !noalias !1126
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEEB15_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeE9drop_slowBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.l) #57, !inline_history !2
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEEB15_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEEB15_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node14LinkedChildrenEBF_.exit, %bb.d, %bb.e, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

bb.i:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapjTINtNtNtB4_3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEB24_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1145, !noundef !19 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3map7HashMapjTINtNtNtB4_3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEB1O_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1147, !noundef !19 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEEB1Y_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1147, !nonnull !19, !noundef !19 ; 3 uses
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !1148
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE9next_implKb0_EB1J_.exit.i.i.i.i.i, %bb.c
  %.sroa.05.016.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i.i.i.i, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE9next_implKb0_EB1J_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i.i.i, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE9next_implKb0_EB1J_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.86.014.i.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE9next_implKb0_EB1J_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.107.013.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE9next_implKb0_EB1J_.exit.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i = icmp eq i16 %.sroa.86.014.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE9next_implKb0_EB1J_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.015.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.05.016.i.i.i.i.i, %bb.d ]
  %.val9.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !1149
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -2048 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE9next_implKb0_EB1J_.exit.i.i.i.i.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE9next_implKb0_EB1J_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i = phi ptr [ %.sroa.6.015.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.05.1.i.i.i.i.i = phi ptr [ %.sroa.05.016.i.i.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.sroa.86.014.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [128 x i8], ptr %.sroa.05.1.i.i.i.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i.i.i.i, -1     ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -80
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.w), !noalias !1147
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEEB1Y_.exit.i.i.i.i, label %bb.d

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEEB1Y_.exit.i.i.i.i: ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE9next_implKb0_EB1J_.exit.i.i.i.i.i, %bb.b
  %i.y = shl i64 %i.b, 7                          ; 2 uses
  %i.z = add i64 %i.y, 128                        ; 2 uses
  %i.aa = add i64 %i.b, 17
  %i.ab = add i64 %i.aa, %i.z                     ; 4 uses
  %i.ac = icmp uge i64 %i.ab, %i.z
  %i.ad = icmp ult i64 %i.ab, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ac)
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3map7HashMapjTINtNtNtB4_3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEB1O_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEEB1Y_.exit.i.i.i.i
  %i.af = load ptr, ptr %0, align 8, !alias.scope !1145, !nonnull !19, !noundef !19
  %i.ag = sub nuw nsw i64 -128, %i.y
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 16) #60, !noalias !1145
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3map7HashMapjTINtNtNtB4_3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEB1O_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3map7HashMapjTINtNtNtB4_3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEB1O_.exit: ; preds = %bb.a, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEEB1Y_.exit.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax(ptr captures(address) %.0.val, i64 %.8.val) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = shl i64 %.8.val, 4                       ; 2 uses
  %i.c = add i64 %i.b, 16                         ; 2 uses
  %i.d = add i64 %.8.val, 17
  %i.e = add i64 %i.d, %i.c                       ; 4 uses
  %i.f = icmp uge i64 %i.e, %i.c
  %i.g = icmp ult i64 %i.e, 9223372036854775793
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.i = sub nuw nsw i64 -16, %i.b
  %i.j = getelementptr inbounds i8, ptr %.0.val, i64 %i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 16) #60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_(ptr %.0.val, i8 %.8.val) unnamed_addr #5 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #57
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw sub ptr %.0.val, i32 1073741823 release, align 4
  %i.h = add i32 %i.g, -1073741823                ; 2 uses
  %or.cond.not.i = icmp ult i32 %i.h, 1073741824
  br i1 %or.cond.not.i, label %_RNvXsi_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1e_.exit, label %bb.e, !prof !39

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.0.val, i32 noundef %i.h)
  br label %_RNvXsi_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1e_.exit

_RNvXsi_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1e_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtBO_5alloc6GlobalEEB2d_(ptr nofree readonly captures(none) %.0.val) unnamed_addr #8 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !19 ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_RNvXNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB8_5DrainppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtBc_5alloc6GlobalEBV_4dropB1X_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !19 ; 4 uses
  %i.g = icmp ult i64 %i.f, 288230376151711744
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !19 ; 2 uses
  %.not3.i = icmp eq i64 %i.i, %i.f
  br i1 %.not3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = phi i64 [ %.pre.i, %bb.d ], [ %i.b, %bb.b ]
  %i.k = add i64 %i.j, %i.f
  store i64 %i.k, ptr %i.e, align 8
  br label %_RNvXNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB8_5DrainppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtBc_5alloc6GlobalEBV_4dropB1X_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.i
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.f
  %i.p = shl nuw nsw i64 %i.b, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8
  br label %bb.c

_RNvXNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB8_5DrainppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtBc_5alloc6GlobalEBV_4dropB1X_.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i8, ptr %0, align 8, !range !30, !alias.scope !1168, !noundef !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.d
    i8 1, label %bb.g
    i8 2, label %bb.i
    i8 3, label %bb.b
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1171, !nonnull !19, !noundef !19
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !1171
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node4NodeEBF_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire, !noalias !1171
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node14WarningWrapperE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #57, !inline_history !1156
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node4NodeEBF_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !1172 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val1.i = load i8, ptr %i.g, align 1, !alias.scope !1172, !noundef !19
  %.not.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node4NodeEBF_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %i.h = getelementptr inbounds i8, ptr %.val.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node4NodeEBF_.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %bb.e
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !1172
  %.not.i.i.i.i = icmp eq i64 %i.i, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node4NodeEBF_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1172
  %i.j = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !1172, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, label %bb.f, !prof !22

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58, !noalias !1172
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  %i.k = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %i.l, align 8, !noalias !1172
  store i64 8, ptr %i.a, align 8, !noalias !1172
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.k, ptr %i.m, align 8, !noalias !1172
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1172
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node4NodeEBF_.exit

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  %i.n = load ptr, ptr %i.c, align 8, !alias.scope !1175, !nonnull !19, !noundef !19
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !1175
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node4NodeEBF_.exit

bb.h:                                             ; preds = %bb.g
  fence acquire, !noalias !1175
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #57, !inline_history !1163
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node4NodeEBF_.exit

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  %i.q = load ptr, ptr %i.c, align 8, !alias.scope !1178, !nonnull !19, !noundef !19
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !1178
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node4NodeEBF_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.c) #57
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node4NodeEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node4NodeEBF_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !1181 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 47
  %.val1.i = load i8, ptr %i.c, align 1, !alias.scope !1181, !noundef !19
end_hunk_1
begin_hunk_2_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax:bb.a
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  %i.k = add nuw nsw i64 %.val.i.i.i.i.i, 16
  store ptr %i.h, ptr %i.c, align 8, !noalias !1333
  store i64 8, ptr %i.a, align 8, !noalias !1333
  store i64 %i.k, ptr %i.d, align 8, !noalias !1333
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1333
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.b, %bb.c, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, %.noexc7
  %i.l = icmp eq i64 %i.f, %1
  br i1 %i.l, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph20
  %i.m = add i64 %.sroa.0.118, 1                  ; 2 uses
  %i.n = icmp eq i64 %i.m, %1
  br i1 %i.n, label %._crit_edge21, label %.lr.ph20

.loopexit:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.o = icmp eq i64 %i.f, %1
  br i1 %i.o, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.f, %bb.e
  %.sroa.0.118 = phi i64 [ %i.m, %bb.e ], [ %i.f, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.118
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p) #59
          to label %bb.e unwind label %bb.g

._crit_edge21:                                    ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %lpad.phi

bb.g:                                             ; preds = %.lr.ph20
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_(ptr %.0.val, i8 %.15.val) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.not.i.i.i = icmp sgt i8 %.15.val, -1
  br i1 %.not.i.i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i.i.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %bb.b
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !1336
  %.not.i.i.i.i = icmp eq i64 %i.c, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1336
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !1336, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58, !noalias !1336
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  %i.e = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8, !noalias !1336
  store i64 8, ptr %i.a, align 8, !noalias !1336
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.g, align 8, !noalias !1336
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1336
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.a, %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  ret void
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4kind10SyntaxKindEBM_EB1c_(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #9 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #62
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedNtNtCs5PEMdK7bMAG_12typst_syntax4kind10SyntaxKindBM_EBQ_(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #9 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #62
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtB4_6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #10 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %0, i64 %1)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #62
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowTNtNtB4_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1Q_(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #10 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtBG_6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEEB1Z_(ptr nonnull %0, i64 %1)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #62
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5PEMdK7bMAG_12typst_syntax(ptr noundef nonnull %0) unnamed_addr #10 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %0)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #62
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB8_10SyntaxNode8traverse14recursive_stepNCNvMs_B8_BH_19errors_and_warnings0EBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %.val = load ptr, ptr %1, align 8               ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.e, align 8            ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !range !31, !alias.scope !1351 ; 4 uses
  %.sroa.58.0..sroa_idx9.i11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticE8push_mutBJ_.exit17.i, %bb.a
  %.sroa.01.0.i = phi ptr [ %0, %bb.a ], [ %i.cb, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticE8push_mutBJ_.exit17.i ] ; 4 uses
  %i.o = load i8, ptr %.sroa.01.0.i, align 8, !range !30, !noundef !19
  switch i8 %i.o, label %default.unreachable [
    i8 0, label %._crit_edge
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.n
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !19, !noundef !19 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load i8, ptr %i.r, align 8, !range !20, !noalias !1351, !noundef !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 65
  %i.u = load i8, ptr %i.t, align 1, !range !20, !noalias !1351, !noundef !19
  %i.v = or i8 %i.u, %i.s
  %.not.i = icmp eq i8 %i.v, 0
  br i1 %.not.i, label %._crit_edge, label %_RNCNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode19errors_and_warnings0B8_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1351
  %i.w = load ptr, ptr %2, align 8, !nonnull !19, !noundef !19 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1354
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 63
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !1353, !noalias !1355, !noundef !19
  %.not.i.i = icmp sgt i8 %i.aa, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load ptr, ptr %i.y, align 8, !alias.scope !1353, !noalias !1355, !nonnull !19, !noundef !19 ; 4 uses
  %.val21.i.i = load i64, ptr %i.ab, align 8, !alias.scope !1353, !noalias !1355 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !noalias !1354
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit.i.i, !prof !23

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5PEMdK7bMAG_12typst_syntax(ptr noundef nonnull %.val.i.i) #58
  unreachable

bb.h:                                             ; preds = %bb.d
  %.sroa.013.0.copyload.i.i = load ptr, ptr %i.y, align 1, !alias.scope !1353, !noalias !1355
  %.sroa.414.0.copyload.i.i = load i64, ptr %i.ab, align 1, !alias.scope !1353, !noalias !1355
  br label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit.i.i

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit.i.i: ; preds = %bb.h, %bb.f, %bb.e
  %.sroa.58.0.i.i = phi i64 [ %.sroa.414.0.copyload.i.i, %bb.h ], [ %.val21.i.i, %bb.e ], [ %.val21.i.i, %bb.f ]
  %.sroa.06.0.i.i = phi ptr [ %.sroa.013.0.copyload.i.i, %bb.h ], [ inttoptr (i64 16 to ptr), %bb.e ], [ %.val.i.i, %bb.f ]
  store ptr %.sroa.06.0.i.i, ptr %i.b, align 8, !noalias !1354
  %.sroa.58.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.58.0.i.i, ptr %.sroa.58.0..sroa_idx9.i.i, align 8, !noalias !1354
  %.val22.i.i = load ptr, ptr %i.x, align 8, !alias.scope !1353, !noalias !1355, !nonnull !19, !noundef !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.val23.i.i = load i64, ptr %i.af, align 8, !alias.scope !1353, !noalias !1355, !noundef !19
  %i.ag = invoke fastcc { ptr, i64 } @_RNvNtCs5PEMdK7bMAG_12typst_syntax4node22build_diagnostic_hints(i64 noundef range(i64 1, 0) %i.g, ptr nonnull %.val22.i.i, i64 %.val23.i.i)
          to label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_9ErrorNode10diagnostic.exit.i unwind label %bb.i, !noalias !1354 ; 2 uses

bb.i:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #59
          to label %common.resume.i unwind label %bb.j, !noalias !1354

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !1354
  unreachable

common.resume.i:                                  ; preds = %bb.u, %bb.r, %bb.l, %bb.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bn, %bb.r ], [ %i.ah, %bb.i ], [ %i.au, %bb.l ], [ %i.bv, %bb.u ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_9ErrorNode10diagnostic.exit.i: ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit.i.i
  %i.aj = extractvalue { ptr, i64 } %i.ag, 0
  %i.ak = extractvalue { ptr, i64 } %i.ag, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i8 1, ptr %i.al, align 8, !alias.scope !1352, !noalias !1356
  store i64 %i.g, ptr %i.d, align 8, !alias.scope !1352, !noalias !1356
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.am, align 8, !alias.scope !1352, !noalias !1356
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !1356
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.aj, ptr %i.ao, align 8, !alias.scope !1352, !noalias !1356
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ak, ptr %i.ap, align 8, !alias.scope !1352, !noalias !1356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !1357, !noalias !1358, !noundef !19 ; 3 uses
  %i.as = load i64, ptr %.val, align 8, !range !33, !alias.scope !1357, !noalias !1358, !noundef !19
  %i.at = icmp eq i64 %i.ar, %i.as
  br i1 %i.at, label %bb.k, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticE8push_mutBJ_.exit.i

bb.k:                                             ; preds = %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_9ErrorNode10diagnostic.exit.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticE8push_mutBJ_.exit.i unwind label %bb.l, !noalias !1358

bb.l:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.d) #59
          to label %common.resume.i unwind label %bb.m, !noalias !1359

bb.m:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !1360
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticE8push_mutBJ_.exit.i: ; preds = %bb.k, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_9ErrorNode10diagnostic.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !1357, !noalias !1358, !nonnull !19, !noundef !19
  %i.ay = getelementptr inbounds nuw [56 x i8], ptr %i.ax, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ay, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !1359
  %i.az = add i64 %i.ar, 1
  store i64 %i.az, ptr %i.aq, align 8, !alias.scope !1357, !noalias !1358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1351
  br label %._crit_edge

bb.n:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1351
  %i.ba = load ptr, ptr %3, align 8, !nonnull !19, !noundef !19 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !1362, !noalias !1363 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1364
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 79
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !1362, !noalias !1363, !noundef !19
  %.not.i5.i = icmp sgt i8 %i.bf, -1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %.val.i15.i = load ptr, ptr %i.bd, align 8, !alias.scope !1362, !noalias !1363 ; 5 uses
  %.val21.i16.i = load i64, ptr %i.bg, align 8, !alias.scope !1362, !noalias !1363
  br i1 %.not.i5.i, label %bb.o, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit.i8.i

bb.o:                                             ; preds = %bb.n
  %.not.i.i24.i.i = icmp eq ptr %.val.i15.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i24.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit.i8.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds i8, ptr %.val.i15.i, i64 -16
  %i.bi = atomicrmw add ptr %i.bh, i64 1 monotonic, align 8, !noalias !1364
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.q, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit.i8.i, !prof !23

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5PEMdK7bMAG_12typst_syntax(ptr noundef nonnull %.val.i15.i) #58
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit.i8.i: ; preds = %bb.n, %bb.p, %bb.o
  %.sroa.06.0.i10.i = phi ptr [ %.val.i15.i, %bb.p ], [ inttoptr (i64 16 to ptr), %bb.o ], [ %.val.i15.i, %bb.n ]
  store ptr %.sroa.06.0.i10.i, ptr %i.a, align 8, !noalias !1364
  store i64 %.val21.i16.i, ptr %.sroa.58.0..sroa_idx9.i11.i, align 8, !noalias !1364
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %.val22.i12.i = load ptr, ptr %i.bk, align 8, !alias.scope !1362, !noalias !1363, !nonnull !19, !noundef !19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %.val23.i13.i = load i64, ptr %i.bl, align 8, !alias.scope !1362, !noalias !1363, !noundef !19
  %i.bm = invoke fastcc { ptr, i64 } @_RNvNtCs5PEMdK7bMAG_12typst_syntax4node22build_diagnostic_hints(i64 noundef range(i64 1, 0) %i.g, ptr nonnull %.val22.i12.i, i64 %.val23.i13.i)
          to label %_RNvMs8_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_14WarningWrapper10diagnostic.exit.i unwind label %bb.r, !noalias !1364 ; 2 uses

bb.r:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit.i8.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #59
          to label %common.resume.i unwind label %bb.s, !noalias !1364

bb.s:                                             ; preds = %bb.r
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !1364
  unreachable

_RNvMs8_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_14WarningWrapper10diagnostic.exit.i: ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit.i8.i
  %i.bp = and i64 %i.bc, 4294967295
  %.not.i.i.i14.i = icmp eq i64 %i.bp, 0
  %.sroa.03.0.i.i.i.i = select i1 %.not.i.i.i14.i, i64 0, i64 %i.bc
  %i.bq = extractvalue { ptr, i64 } %i.bm, 0
  %i.br = extractvalue { ptr, i64 } %i.bm, 1
  store i8 0, ptr %i.h, align 8, !alias.scope !1361, !noalias !1365
  store i64 %i.g, ptr %i.c, align 8, !alias.scope !1361, !noalias !1365
  store i64 %.sroa.03.0.i.i.i.i, ptr %i.i, align 8, !alias.scope !1361, !noalias !1365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !1365
  store ptr %i.bq, ptr %i.k, align 8, !alias.scope !1361, !noalias !1365
  store i64 %i.br, ptr %i.l, align 8, !alias.scope !1361, !noalias !1365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1364
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  %i.bs = load i64, ptr %i.m, align 8, !alias.scope !1366, !noalias !1367, !noundef !19 ; 3 uses
  %i.bt = load i64, ptr %.val2, align 8, !range !33, !alias.scope !1366, !noalias !1367, !noundef !19
  %i.bu = icmp eq i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.t, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticE8push_mutBJ_.exit17.i

bb.t:                                             ; preds = %_RNvMs8_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_14WarningWrapper10diagnostic.exit.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val2)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticE8push_mutBJ_.exit17.i unwind label %bb.u, !noalias !1367

bb.u:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.c) #59
          to label %common.resume.i unwind label %bb.v, !noalias !1368

bb.v:                                             ; preds = %bb.u
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !1369
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticE8push_mutBJ_.exit17.i: ; preds = %bb.t, %_RNvMs8_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_14WarningWrapper10diagnostic.exit.i
  %i.bx = load ptr, ptr %i.n, align 8, !alias.scope !1366, !noalias !1367, !nonnull !19, !noundef !19
  %i.by = getelementptr inbounds nuw [56 x i8], ptr %i.bx, i64 %i.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.by, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !1368
  %i.bz = add i64 %i.bs, 1
  store i64 %i.bz, ptr %i.m, align 8, !alias.scope !1366, !noalias !1367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1351
  %i.ca = load ptr, ptr %3, align 8, !nonnull !19, !noundef !19
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  br label %bb.b

_RNCNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode19errors_and_warnings0B8_.exit: ; preds = %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !1351, !nonnull !19, !noundef !19 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !1351, !noundef !19 ; 2 uses
  %.idx = shl nuw nsw i64 %i.cf, 5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx
  %i.ch = icmp eq i64 %i.cf, 0
  br i1 %i.ch, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode19errors_and_warnings0B8_.exit, %.lr.ph
  %.sroa.0.09 = phi ptr [ %i.ci, %.lr.ph ], [ %i.cd, %_RNCNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode19errors_and_warnings0B8_.exit ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.09, i64 32 ; 2 uses
  tail call fastcc void @_RINvNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB8_10SyntaxNode8traverse14recursive_stepNCNvMs_B8_BH_19errors_and_warnings0EBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.09, ptr noalias nofree noundef align 8 dereferenceable(16) %1)
  %i.cj = icmp eq ptr %i.ci, %i.cg
  br i1 %i.cj, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.c, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticE8push_mutBJ_.exit.i, %_RNCNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode19errors_and_warnings0B8_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB8_10SyntaxNode8traverse14recursive_stepNCNvMs_B8_BH_9full_text0EBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.02.0.i = phi ptr [ %0, %bb.a ], [ %i.t, %bb.e ] ; 6 uses
  %i.a = load i8, ptr %.sroa.02.0.i, align 8, !range !30, !noundef !19
  switch i8 %i.a, label %.unreachabledefault [
    i8 0, label %bb.c
    i8 1, label %.loopexit.i.preheader
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

.unreachabledefault:                              ; preds = %bb.b
  unreachable

default.unreachable:                              ; preds = %.loopexit.i
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 23
  %i.c = load i8, ptr %i.b, align 1, !alias.scope !1378, !noundef !19 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.c, -1                ; 2 uses
  %i.d = and i8 %i.c, 127
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load ptr, ptr %2, align 8, !alias.scope !1378, !nonnull !19
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1378
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.h, i64 %i.e
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.f, ptr %2
  tail call void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.3.0.i.i)
  br label %.loopexit.i.preheader

.loopexit.i.preheader:                            ; preds = %bb.b, %bb.d, %bb.c
  br label %.loopexit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8
  %i.i = load ptr, ptr %3, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 47
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !1379, !noalias !1380, !noundef !19 ; 2 uses
  %.not.i6.i = icmp sgt i8 %i.l, -1               ; 2 uses
  %i.m = and i8 %i.l, 127
  %i.n = zext nneg i8 %i.m to i64
  %i.o = load ptr, ptr %i.j, align 8, !alias.scope !1379, !noalias !1380, !nonnull !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1379, !noalias !1380
  %.sroa.3.0.i7.i = select i1 %.not.i6.i, i64 %i.q, i64 %i.n
  %.sroa.0.0.i8.i = select i1 %.not.i6.i, ptr %i.o, ptr %i.j
  tail call void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i8.i, i64 noundef %.sroa.3.0.i7.i), !noalias !1380
  br label %.loopexit.i.preheader

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !19, !noundef !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.b

.loopexit.i:                                      ; preds = %.loopexit.i.preheader, %bb.f
  %.sroa.03.0.i.i = phi ptr [ %i.x, %bb.f ], [ %0, %.loopexit.i.preheader ] ; 3 uses
  %i.u = load i8, ptr %.sroa.03.0.i.i, align 8, !range !30, !noundef !19
  switch i8 %i.u, label %default.unreachable [
    i8 0, label %._crit_edge
    i8 1, label %_RNCNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9full_text0B8_.exit
    i8 2, label %._crit_edge
    i8 3, label %bb.f
  ]

bb.f:                                             ; preds = %.loopexit.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !19, !noundef !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  br label %.loopexit.i

_RNCNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9full_text0B8_.exit: ; preds = %.loopexit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !1381, !nonnull !19, !noundef !19 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !1381, !noundef !19 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ad, 5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9full_text0B8_.exit, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.ag, %.lr.ph ], [ %i.ab, %_RNCNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9full_text0B8_.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 32 ; 2 uses
  tail call fastcc void @_RINvNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB8_10SyntaxNode8traverse14recursive_stepNCNvMs_B8_BH_9full_text0EBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.07, ptr noalias nofree noundef align 8 dereferenceable(8) %1)
  %i.ah = icmp eq ptr %i.ag, %i.ae
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit.i, %.loopexit.i, %.lr.ph, %_RNCNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9full_text0B8_.exit
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 33) %4) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !33, !alias.scope !1384, !noundef !19 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1384
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !1384
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 57) %4), !noalias !1384
  %i.h = load i64, ptr %i.a, align 8, !range !35, !noalias !1384, !noundef !19
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !42, !noalias !1384, !noundef !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !1384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1384
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #58
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !1384, !nonnull !19, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1384
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !1384
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !1384
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherEBJ_(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  %i.a = load i64, ptr %.0.val, align 8, !range !35, !alias.scope !1427, !noalias !1428, !noundef !19 ; 2 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !1429, !noalias !1427, !noundef !19
  %i.c = add i64 %i.b, %i.a
  %i.d = mul i64 %i.c, -1065810590584100411       ; 2 uses
  %i.e = trunc nuw i64 %i.a to i1
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 23
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !1430, !noalias !1431, !noundef !19 ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.h, -1              ; 2 uses
  %i.i = and i8 %i.h, 127
  %i.j = zext nneg i8 %i.i to i64
  %i.k = load ptr, ptr %i.f, align 8, !alias.scope !1430, !noalias !1431, !nonnull !19
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1430, !noalias !1431
  %.sroa.3.0.i.i.i = select i1 %.not.i.i.i, i64 %i.m, i64 %i.j ; 11 uses
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, ptr %i.k, ptr %i.f ; 11 uses
  %i.n = icmp samesign ult i64 %.sroa.3.0.i.i.i, 17
  br i1 %i.n, label %bb.c, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i: ; preds = %bb.b
  %i.o = add i64 %.sroa.3.0.i.i.i, -17            ; 2 uses
  %i.p = lshr i64 %i.o, 4                         ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i.epil.preheader, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.new

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.new: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i
  %unroll_iter = and i64 %i.q, 2305843009213693950
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = icmp samesign ugt i64 %.sroa.3.0.i.i.i, 7
  br i1 %i.s, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i, label %bb.d

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.new
  %.sroa.0.098.i.i.i.i.i = phi i64 [ 2611923443488327891, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.new ], [ %i.ac, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i ]
  %.sroa.06.097.i.i.i.i.i = phi i64 [ 1376283091369227076, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.new ], [ %i.ao, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i ]
  %.sroa.018.096.i.i.i.i.i = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.new ], [ %i.ad, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.new ], [ %niter.next.1, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %.sroa.018.096.i.i.i.i.i ; 2 uses
  %.sroa.034.0.copyload.i.i.i.i.i = load i64, ptr %i.t, align 1, !alias.scope !1432, !noalias !1433
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.036.0.copyload.i.i.i.i.i = load i64, ptr %i.u, align 1, !alias.scope !1432, !noalias !1433
  %i.v = xor i64 %.sroa.034.0.copyload.i.i.i.i.i, %.sroa.0.098.i.i.i.i.i
  %i.w = xor i64 %.sroa.036.0.copyload.i.i.i.i.i, -6626703657320631856
  %i.x = zext i64 %i.v to i128
  %i.y = zext i64 %i.w to i128
  %i.z = mul nuw i128 %i.y, %i.x                  ; 2 uses
  %i.aa = lshr i128 %i.z, 64
  %i.ab = xor i128 %i.aa, %i.z
  %i.ac = trunc i128 %i.ab to i64                 ; 3 uses
  %i.ad = add nuw nsw i64 %.sroa.018.096.i.i.i.i.i, 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %.sroa.018.096.i.i.i.i.i ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.034.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.af, align 1, !alias.scope !1432, !noalias !1433
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.036.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.ag, align 1, !alias.scope !1432, !noalias !1433
  %i.ah = xor i64 %.sroa.034.0.copyload.i.i.i.i.i.1, %.sroa.06.097.i.i.i.i.i
  %i.ai = xor i64 %.sroa.036.0.copyload.i.i.i.i.i.1, -6626703657320631856
  %i.aj = zext i64 %i.ah to i128
  %i.ak = zext i64 %i.ai to i128
  %i.al = mul nuw i128 %i.ak, %i.aj               ; 2 uses
  %i.am = lshr i128 %i.al, 64
  %i.an = xor i128 %i.am, %i.al
  %i.ao = trunc i128 %i.an to i64                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.unr-lcssa, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.unr-lcssa: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i
  %i.ap = and i64 %i.o, 16
  %lcmp.mod.not.not = icmp eq i64 %i.ap, 0
  br i1 %lcmp.mod.not.not, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i.epil.preheader, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i.epil.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.unr-lcssa, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i
  %.sroa.0.098.i.i.i.i.i.epil.init = phi i64 [ 2611923443488327891, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i ], [ %i.ac, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.unr-lcssa ]
  %.sroa.06.097.i.i.i.i.i.epil.init = phi i64 [ 1376283091369227076, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i ], [ %i.ao, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.unr-lcssa ]
  %.sroa.018.096.i.i.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i ], [ %i.ad, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod15 = trunc i64 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %.sroa.018.096.i.i.i.i.i.epil.init ; 2 uses
  %.sroa.034.0.copyload.i.i.i.i.i.epil = load i64, ptr %i.aq, align 1, !alias.scope !1432, !noalias !1433
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
end_hunk_2
begin_hunk_3_@_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCsakL8LGkl72C_4ecow6string9EcoStringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0E0Cs5PEMdK7bMAG_12typst_syntax:bb.a
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtBV_6FileIdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0E0BX_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  %.val = load ptr, ptr %i.e, align 8, !alias.scope !1481, !noalias !1482, !nonnull !19, !align !29, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1483
  store i64 0, ptr %i.a, align 8, !noalias !1483
  call fastcc void @_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherEBJ_(ptr nonnull readonly %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #63, !noalias !1483
  %.val.i.i = load i64, ptr %i.a, align 8, !noalias !1483, !noundef !19 ; 2 uses
  %i.f = tail call noundef i64 @llvm.fshl.i64(i64 %.val.i.i, i64 %.val.i.i, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1483
  ret i64 %i.f
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0E0Cs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16
  %.val = load ptr, ptr %i.d, align 8, !alias.scope !1505, !noalias !1506, !nonnull !19, !noundef !19 ; 11 uses
  %i.e = getelementptr i8, ptr %i.c, i64 -8
  %.val2 = load i64, ptr %i.e, align 8, !alias.scope !1505, !noalias !1506, !noundef !19 ; 11 uses
  %i.f = icmp samesign ult i64 %.val2, 17
  br i1 %i.f, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.g = add i64 %.val2, -17                      ; 2 uses
  %i.h = lshr i64 %i.g, 4                         ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.i.i.i.new

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.i.i.i.new: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.i.i.i
  %unroll_iter = and i64 %i.i, 2305843009213693950
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = icmp samesign ugt i64 %.val2, 7
  br i1 %i.k, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i.i, label %bb.c

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.i.i.i.new
  %.sroa.0.098.i.i.i.i.i.i.i.i = phi i64 [ 2611923443488327891, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.i.i.i.new ], [ %i.u, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i.i.i.i ]
  %.sroa.06.097.i.i.i.i.i.i.i.i = phi i64 [ 1376283091369227076, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.i.i.i.new ], [ %i.ag, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i.i.i.i ]
  %.sroa.018.096.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.i.i.i.new ], [ %i.v, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.i.i.i.new ], [ %niter.next.1, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i.i.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.018.096.i.i.i.i.i.i.i.i ; 2 uses
  %.sroa.034.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.l, align 1, !alias.scope !1507, !noalias !1508
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.036.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.m, align 1, !alias.scope !1507, !noalias !1508
  %i.n = xor i64 %.sroa.034.0.copyload.i.i.i.i.i.i.i.i, %.sroa.0.098.i.i.i.i.i.i.i.i
  %i.o = xor i64 %.sroa.036.0.copyload.i.i.i.i.i.i.i.i, -6626703657320631856
  %i.p = zext i64 %i.n to i128
  %i.q = zext i64 %i.o to i128
  %i.r = mul nuw i128 %i.q, %i.p                  ; 2 uses
  %i.s = lshr i128 %i.r, 64
  %i.t = xor i128 %i.s, %i.r
  %i.u = trunc i128 %i.t to i64                   ; 3 uses
  %i.v = add nuw nsw i64 %.sroa.018.096.i.i.i.i.i.i.i.i, 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.018.096.i.i.i.i.i.i.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.x, align 1, !alias.scope !1507, !noalias !1508
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.y, align 1, !alias.scope !1507, !noalias !1508
  %i.z = xor i64 %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.1, %.sroa.06.097.i.i.i.i.i.i.i.i
  %i.aa = xor i64 %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.1, -6626703657320631856
  %i.ab = zext i64 %i.z to i128
  %i.ac = zext i64 %i.aa to i128
  %i.ad = mul nuw i128 %i.ac, %i.ab               ; 2 uses
  %i.ae = lshr i128 %i.ad, 64
  %i.af = xor i128 %i.ae, %i.ad
  %i.ag = trunc i128 %i.af to i64                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.i.i.i.unr-lcssa, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i.i.i.i
  %i.ah = and i64 %i.g, 16
  %lcmp.mod.not.not = icmp eq i64 %i.ah, 0
  br i1 %lcmp.mod.not.not, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.i.i.i
  %.sroa.0.098.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 2611923443488327891, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.i.i.i ], [ %i.u, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.06.097.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1376283091369227076, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.i.i.i ], [ %i.ag, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.018.096.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.preheader.i.i.i.i.i.i.i.i ], [ %i.v, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod5 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.018.096.i.i.i.i.i.i.i.i.epil.init ; 2 uses
  %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.ai, align 1, !alias.scope !1507, !noalias !1508
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.aj, align 1, !alias.scope !1507, !noalias !1508
  %i.ak = xor i64 %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.epil, %.sroa.0.098.i.i.i.i.i.i.i.i.epil.init
  %i.al = xor i64 %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.epil, -6626703657320631856
  %i.am = zext i64 %i.ak to i128
  %i.an = zext i64 %i.al to i128
  %i.ao = mul nuw i128 %i.an, %i.am               ; 2 uses
  %i.ap = lshr i128 %i.ao, 64
  %i.aq = xor i128 %i.ap, %i.ao
  %i.ar = trunc i128 %i.aq to i64
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.i.i.i.unr-lcssa, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i.i.i.i.epil.preheader
  %.sroa.06.097.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %i.u, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.i.i.i.unr-lcssa ], [ %.sroa.06.097.i.i.i.i.i.i.i.i.epil.init, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i.i.i.i.epil.preheader ]
  %.lcssa = phi i64 [ %i.ag, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.ar, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit70.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.as = getelementptr i8, ptr %.val, i64 %.val2 ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -16
  %.sroa.038.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.at, align 1, !alias.scope !1507, !noalias !1508
  %i.au = xor i64 %.sroa.038.0.copyload.i.i.i.i.i.i.i.i, %.sroa.06.097.i.i.i.i.i.i.i.i.lcssa
  %i.av = getelementptr i8, ptr %i.as, i64 -8
  %.sroa.040.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.av, align 1, !alias.scope !1507, !noalias !1508
  %i.aw = xor i64 %.sroa.040.0.copyload.i.i.i.i.i.i.i.i, %.lcssa
  br label %_RNCINvNtCskt5MLIAl8nl_9hashbrown3map11make_hasherReuNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Cs5PEMdK7bMAG_12typst_syntax.exit

bb.c:                                             ; preds = %bb.b
  %i.ax = icmp samesign ugt i64 %.val2, 3
  br i1 %i.ax, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i.i, label %bb.d

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.028.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.val, align 1, !alias.scope !1507, !noalias !1508
  %i.ay = xor i64 %.sroa.028.0.copyload.i.i.i.i.i.i.i.i, 2611923443488327891
  %i.az = getelementptr i8, ptr %.val, i64 %.val2
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  %.sroa.030.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ba, align 1, !alias.scope !1507, !noalias !1508
  %i.bb = xor i64 %.sroa.030.0.copyload.i.i.i.i.i.i.i.i, 1376283091369227076
  br label %_RNCINvNtCskt5MLIAl8nl_9hashbrown3map11make_hasherReuNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Cs5PEMdK7bMAG_12typst_syntax.exit

bb.d:                                             ; preds = %bb.c
  %.not63.i.i.i.i.i.i.i.i = icmp eq i64 %.val2, 0
  br i1 %.not63.i.i.i.i.i.i.i.i, label %_RNCINvNtCskt5MLIAl8nl_9hashbrown3map11make_hasherReuNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Cs5PEMdK7bMAG_12typst_syntax.exit, label %bb.e

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.bc = getelementptr i8, ptr %.val, i64 %.val2
  %i.bd = getelementptr i8, ptr %i.bc, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.bd, align 1, !alias.scope !1507, !noalias !1508
  %.sroa.032.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.val, align 1, !alias.scope !1507, !noalias !1508
  %i.be = zext i32 %.sroa.032.0.copyload.i.i.i.i.i.i.i.i to i64
  %i.bf = xor i64 %i.be, 2611923443488327891
  %i.bg = zext i32 %.sroa.033.0.copyload.i.i.i.i.i.i.i.i to i64
  %i.bh = xor i64 %i.bg, 1376283091369227076
  br label %_RNCINvNtCskt5MLIAl8nl_9hashbrown3map11make_hasherReuNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Cs5PEMdK7bMAG_12typst_syntax.exit

bb.e:                                             ; preds = %bb.d
  %i.bi = load i8, ptr %.val, align 1, !alias.scope !1507, !noalias !1508, !noundef !19
  %i.bj = lshr i64 %.val2, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !1507, !noalias !1508, !noundef !19
  %i.bm = getelementptr i8, ptr %.val, i64 %.val2
  %i.bn = getelementptr i8, ptr %i.bm, i64 -1
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !1507, !noalias !1508, !noundef !19
  %i.bp = zext i8 %i.bi to i64
  %i.bq = xor i64 %i.bp, 2611923443488327891
  %i.br = zext i8 %i.bo to i64
  %i.bs = shl nuw nsw i64 %i.br, 8
  %i.bt = zext i8 %i.bl to i64
  %i.bu = or disjoint i64 %i.bs, %i.bt
  %i.bv = xor i64 %i.bu, 1376283091369227076
  br label %_RNCINvNtCskt5MLIAl8nl_9hashbrown3map11make_hasherReuNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Cs5PEMdK7bMAG_12typst_syntax.exit

_RNCINvNtCskt5MLIAl8nl_9hashbrown3map11make_hasherReuNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Cs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i.i, %bb.d, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i.i, %bb.e
  %.sroa.06.1.i.i.i.i.i.i.i.i = phi i64 [ %i.bb, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i.i ], [ %i.bh, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i.i ], [ %i.bv, %bb.e ], [ 1376283091369227076, %bb.d ], [ %i.aw, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i.i = phi i64 [ %i.ay, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i.i ], [ %i.bf, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i.i ], [ %i.bq, %bb.e ], [ 2611923443488327891, %bb.d ], [ %i.au, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit72.i.i.i.i.i.i.i.i ]
  %i.bw = zext i64 %.sroa.0.1.i.i.i.i.i.i.i.i to i128
  %i.bx = zext i64 %.sroa.06.1.i.i.i.i.i.i.i.i to i128
  %i.by = mul nuw i128 %i.bw, %i.bx               ; 2 uses
  %i.bz = lshr i128 %i.by, 64
  %i.ca = xor i128 %i.bz, %i.by
  %i.cb = trunc i128 %i.ca to i64
  %i.cc = xor i64 %.val2, %i.cb
  %i.cd = mul i64 %i.cc, 1452335207727870361
  %i.ce = add i64 %i.cd, 4919460506697669435      ; 2 uses
  %i.cf = tail call noundef i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 26)
  ret i64 %i.cf
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0E0B1G_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [128 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -128
  %.val = load i64, ptr %i.d, align 8, !alias.scope !1513, !noalias !1514, !noundef !19
  %i.e = mul i64 %.val, -1065810590584100411      ; 2 uses
  %i.f = tail call noundef i64 @llvm.fshl.i64(i64 %i.e, i64 %i.e, i64 26)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB7_5Lexer10blocky_raws1_0B9_(ptr nofree captures(none) %.0.val, ptr nofree captures(none) %.8.val, i8 noundef range(i8 6, 19) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [15 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load i64, ptr %.8.val, align 8, !noundef !19
  %.val = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load i64, ptr %i.e, align 8, !noundef !19 ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val1, i64 %i.d) ; 2 uses
  %i.f = icmp eq i64 %..i.i, 0
  br i1 %i.f, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.sroa.0.01.i = phi i64 [ %i.j, %bb.c ], [ %..i.i, %bb.a ] ; 5 uses
  %.not.i = icmp ult i64 %.sroa.0.01.i, %.val1
  br i1 %.not.i, label %bb.b, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.01.i
  %i.h = load i8, ptr %i.g, align 1, !noundef !19
  %i.i = icmp sgt i8 %i.h, -65
  br i1 %i.i, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.sroa.0.01.i, -1                ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit, label %.lr.ph.i

_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.sroa.0.01.i, %.lr.ph.i ], [ 0, %bb.c ], [ %.sroa.0.01.i, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !19 ; 4 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %.sroa.0.0.lcssa.i) ; 2 uses
  %i.n = sub nuw i64 %i.m, %..i                   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 %..i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = icmp samesign ugt i64 %i.n, 15
  br i1 %i.p, label %.lr.ph.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !1526
  %.not.i.i.not = icmp ugt i64 %i.m, %.sroa.0.0.lcssa.i
  br i1 %.not.i.i.not, label %.lr.ph.preheader.i.i, label %bb.g

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %i.o, i64 range(i64 0, -9223372036854775808) %i.n, i1 false), !noalias !1527
  %.0..0..0..sroa.0.0.copyload1.pre = load ptr, ptr %i.b, align 8, !noalias !1528
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.8..8..8..sroa.52.0.copyload4.pre = load i56, ptr %.8..8..8..sroa_idx, align 8, !noalias !1528
  %i.q = zext i56 %.8..8..8..sroa.52.0.copyload4.pre to i64
  br label %bb.g

.lr.ph.i.i.i:                                     ; preds = %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1529
  store ptr inttoptr (i64 16 to ptr), ptr %i.a, align 8, !noalias !1529
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 0, ptr %i.r, align 8, !noalias !1529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.n)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i unwind label %bb.e, !noalias !1529

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.val.i.i = load ptr, ptr %i.a, align 8, !noalias !1529, !nonnull !19, !noundef !19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %.val.i.i) #59
          to label %common.resume unwind label %bb.f, !noalias !1529

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !1529
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.ab, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %.lr.ph.i.i.i
  %i.u = load ptr, ptr %i.a, align 8, !alias.scope !1530, !noalias !1531, !nonnull !19, !noundef !19 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !1530, !noalias !1531 ; 2 uses
  %scevgep.i.i.i = getelementptr nuw i8, ptr %i.u, i64 %.promoted.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i, ptr nonnull readonly align 1 %i.o, i64 range(i64 0, -9223372036854775808) %i.n, i1 false), !noalias !1532
  %i.v = add i64 %.promoted.i.i.i, %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1529
  br label %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit

bb.g:                                             ; preds = %.lr.ph.preheader.i.i, %bb.d
  %.8..8..sroa.52.0.copyload4 = phi i64 [ %i.q, %.lr.ph.preheader.i.i ], [ 0, %bb.d ]
  %.0..0..sroa.0.0.copyload1 = phi ptr [ %.0..0..0..sroa.0.0.copyload1.pre, %.lr.ph.preheader.i.i ], [ null, %bb.d ]
  %.sroa.52.15.insert.ext = shl nuw nsw i64 %i.n, 56
  %.sroa.52.15.insert.shift = or disjoint i64 %.sroa.52.15.insert.ext, %.8..8..sroa.52.0.copyload4
  %.sroa.52.15.insert.insert = or disjoint i64 %.sroa.52.15.insert.shift, -9223372036854775808
  br label %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit

_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit: ; preds = %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i, %bb.g
  %.sroa.52.0 = phi i64 [ %i.v, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i ], [ %.sroa.52.15.insert.insert, %bb.g ]
  %.sroa.0.0 = phi ptr [ %i.u, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i ], [ %.0..0..sroa.0.0.copyload1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.0.0, ptr %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.52.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %i.w, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !1533, !noalias !1534, !noundef !19 ; 3 uses
  %i.z = load i64, ptr %.0.val, align 8, !range !33, !alias.scope !1533, !noalias !1534, !noundef !19
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.h, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8push_mutBJ_.exit

bb.h:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8push_mutBJ_.exit unwind label %bb.i, !noalias !1534

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.c) #59
          to label %common.resume unwind label %bb.j, !noalias !1533

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !1535
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE8push_mutBJ_.exit: ; preds = %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !1533, !noalias !1534, !nonnull !19, !noundef !19
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !1533
  %i.ag = add i64 %i.y, 1
  store i64 %i.ag, ptr %i.x, align 8, !alias.scope !1533, !noalias !1534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.m, ptr %.8.val, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i64 492581209243648, 0) i64 @_RNCNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode17synthesize_mapped0B8_(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  %i.a = load i16, ptr %.0.val, align 2, !range !43, !noundef !19
  %i.b = add i64 %1, %0                           ; 7 uses
  %i.c = getelementptr i8, ptr %.8.val, i64 8
  %.val = load ptr, ptr %i.c, align 8             ; 12 uses
  %i.d = getelementptr i8, ptr %.8.val, i64 16
  %.val1 = load i64, ptr %i.d, align 8            ; 19 uses
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %.val1, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !19 ; 2 uses
  br label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper3map.exit

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @408) #62
  unreachable

bb.f:                                             ; preds = %bb.c
  switch i64 %.val1, label %.lr.ph.i.i.i.i [
    i64 0, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.thread.i.i
    i64 1, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i
  ]

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i.i ], [ %.val1, %bb.f ] ; 2 uses
  %.sroa.05.018.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.h = lshr i64 %.sroa.01.019.i.i.i.i, 1        ; 2 uses
  %i.i = add nuw nsw i64 %i.h, %.sroa.05.018.i.i.i.i ; 3 uses
  %i.j = icmp ult i64 %i.i, %.val1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.i
  %.val12.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !1554, !noalias !1555, !noundef !19
  %.not.i16.i.i.i.i = icmp ugt i64 %.val12.i.i.i.i, %0
  %i.l = select i1 %.not.i16.i.i.i.i, i64 %.sroa.05.018.i.i.i.i, i64 %i.i, !unpredictable !19 ; 2 uses
  %i.m = sub nuw nsw i64 %.sroa.01.019.i.i.i.i, %i.h ; 2 uses
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.l, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.05.0.lcssa.i.i.i.i
  %.val14.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !1554, !noalias !1555, !noundef !19
  %.not.i.i.i.i.i = icmp ule i64 %.val14.i.i.i.i, %0
  %i.p = zext i1 %.not.i.i.i.i.i to i64
  %i.q = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ule i64 %i.q, %.val1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nsw i64 %i.q, -1                     ; 3 uses
  %i.t = icmp ult i64 %i.s, %.val1
  br i1 %i.t, label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.thread.i.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.thread.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i, %bb.f
  %.sroa.4.0.i.i2.i.i = phi i64 [ %i.s, %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i ], [ -1, %bb.f ]
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.0.i.i2.i.i, i64 noundef %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @410) #62
  unreachable

_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.s ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !19
  %i.w = sub i64 %0, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !19
  %i.z = add i64 %i.w, %i.y
  %cond.i = icmp eq i64 %.val1, 1
  br i1 %cond.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i, label %.lr.ph.i.i.i11.i

.lr.ph.i.i.i11.i:                                 ; preds = %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i, %.lr.ph.i.i.i11.i
  %.sroa.01.018.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i11.i ], [ %.val1, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i ] ; 2 uses
  %.sroa.05.017.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i11.i ], [ 0, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i ] ; 2 uses
  %i.aa = lshr i64 %.sroa.01.018.i.i.i.i, 1       ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, %.sroa.05.017.i.i.i.i ; 3 uses
  %i.ac = icmp ult i64 %i.ab, %.val1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.ab
  %.val12.i.i.i12.i = load i64, ptr %i.ad, align 8, !alias.scope !1556, !noalias !1557, !noundef !19
  %.not.i.i.i.i = icmp ult i64 %.val12.i.i.i12.i, %i.b
  %i.ae = select i1 %.not.i.i.i.i, i64 %i.ab, i64 %.sroa.05.017.i.i.i.i, !unpredictable !19 ; 2 uses
  %i.af = sub nuw nsw i64 %.sroa.01.018.i.i.i.i, %i.aa ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 1
  br i1 %i.ag, label %.lr.ph.i.i.i11.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i: ; preds = %.lr.ph.i.i.i11.i, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i
  %.sroa.05.0.lcssa.i.i.i8.i = phi i64 [ 0, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i ], [ %i.ae, %.lr.ph.i.i.i11.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.05.0.lcssa.i.i.i8.i
  %.val14.i.i.i9.i = load i64, ptr %i.ah, align 8, !alias.scope !1556, !noalias !1557, !noundef !19
  %i.ai = icmp ult i64 %.val14.i.i.i9.i, %i.b
  %i.aj = zext i1 %i.ai to i64
  %i.ak = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i8.i, %i.aj ; 2 uses
  %i.al = icmp ule i64 %i.ak, %.val1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nsw i64 %i.ak, -1                   ; 3 uses
  %i.an = icmp ult i64 %i.am, %.val1
  br i1 %i.an, label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.thread.i.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.thread.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @409) #62
  unreachable

_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.am ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !19
  %i.aq = sub i64 %i.b, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noundef !19
  %i.at = add i64 %i.aq, %i.as
  br label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper3map.exit

bb.g:                                             ; preds = %bb.c
  switch i64 %.val1, label %.lr.ph.i.i.i18.i [
    i64 0, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.thread.i16.i
    i64 1, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i13.i
  ]

.lr.ph.i.i.i18.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i18.i
  %.sroa.01.018.i.i.i19.i = phi i64 [ %i.az, %.lr.ph.i.i.i18.i ], [ %.val1, %bb.g ] ; 2 uses
  %.sroa.05.017.i.i.i20.i = phi i64 [ %i.ay, %.lr.ph.i.i.i18.i ], [ 0, %bb.g ] ; 2 uses
  %i.au = lshr i64 %.sroa.01.018.i.i.i19.i, 1     ; 2 uses
  %i.av = add nuw nsw i64 %i.au, %.sroa.05.017.i.i.i20.i ; 3 uses
  %i.aw = icmp ult i64 %i.av, %.val1
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.av
  %.val12.i.i.i21.i = load i64, ptr %i.ax, align 8, !alias.scope !1558, !noalias !1559, !noundef !19
  %.not.i.i.i22.i = icmp ult i64 %.val12.i.i.i21.i, %i.b
  %i.ay = select i1 %.not.i.i.i22.i, i64 %i.av, i64 %.sroa.05.017.i.i.i20.i, !unpredictable !19 ; 2 uses
  %i.az = sub nuw nsw i64 %.sroa.01.018.i.i.i19.i, %i.au ; 2 uses
  %i.ba = icmp ugt i64 %i.az, 1
  br i1 %i.ba, label %.lr.ph.i.i.i18.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i13.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i13.i: ; preds = %.lr.ph.i.i.i18.i, %bb.g
  %.sroa.05.0.lcssa.i.i.i14.i = phi i64 [ 0, %bb.g ], [ %i.ay, %.lr.ph.i.i.i18.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.05.0.lcssa.i.i.i14.i
  %.val14.i.i.i15.i = load i64, ptr %i.bb, align 8, !alias.scope !1558, !noalias !1559, !noundef !19
  %i.bc = icmp ult i64 %.val14.i.i.i15.i, %i.b
  %i.bd = zext i1 %i.bc to i64
  %i.be = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i14.i, %i.bd ; 2 uses
  %i.bf = icmp ule i64 %i.be, %.val1
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = add nsw i64 %i.be, -1                   ; 3 uses
  %i.bh = icmp ult i64 %i.bg, %.val1
  br i1 %i.bh, label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit23.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.thread.i16.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.thread.i16.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i13.i, %bb.g
  %.sroa.4.0.i.i2.i17.i = phi i64 [ %i.bg, %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i13.i ], [ -1, %bb.g ]
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.0.i.i2.i17.i, i64 noundef %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @409) #62
  unreachable

_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit23.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i13.i
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.bg ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !19
  %i.bk = sub i64 %i.b, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !19
  %i.bn = add i64 %i.bk, %i.bm                    ; 2 uses
  br label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper3map.exit

_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper3map.exit: ; preds = %bb.d, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit.i, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit23.i
  %.sroa.4.0.i = phi i64 [ %i.g, %bb.d ], [ %i.bn, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit23.i ], [ %i.at, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit.i ]
  %.sroa.0.0.i = phi i64 [ %i.g, %bb.d ], [ %i.bn, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit23.i ], [ %i.z, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit.i ]
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 8388607)
  %spec.store.select1.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i, i64 8388607)
  %i.bo = shl nuw nsw i64 %spec.store.select.i, 23
  %i.bp = or disjoint i64 %i.bo, %spec.store.select1.i
  %i.bq = zext i16 %i.a to i64
  %i.br = shl nuw i64 %i.bq, 48
  %i.bs = or disjoint i64 %i.bp, %i.br
  %i.bt = or disjoint i64 %i.bs, 211106232532992
  ret i64 %i.bt
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode17synthesize_mappeds_0B8_(ptr nofree readonly captures(none) %.0.val, i64 noundef %0, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %1, align 4, !noundef !19  ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %2, align 4, !noundef !19
  %i.c = getelementptr i8, ptr %.0.val, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !19, !noundef !19 ; 9 uses
  %i.d = getelementptr i8, ptr %.0.val, i64 16
  %.val1 = load i64, ptr %i.d, align 8, !noundef !19 ; 17 uses
  %i.e = zext i32 %i.b to i64
  %i.f = add i64 %0, %i.e                         ; 3 uses
  %i.g = zext i32 %i.a to i64
  %i.h = add i64 %0, %i.g                         ; 3 uses
  switch i64 %.val1, label %.lr.ph.i.i.i.i [
    i64 0, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.thread.i.i
    i64 1, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i
  ]

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i ], [ %.val1, %bb.b ] ; 2 uses
  %.sroa.05.018.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = lshr i64 %.sroa.01.019.i.i.i.i, 1        ; 2 uses
  %i.j = add nuw nsw i64 %i.i, %.sroa.05.018.i.i.i.i ; 3 uses
  %i.k = icmp ult i64 %i.j, %.val1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.j
  %.val12.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !1578, !noalias !1579, !noundef !19
  %.not.i16.i.i.i.i = icmp ugt i64 %.val12.i.i.i.i, %0
  %i.m = select i1 %.not.i16.i.i.i.i, i64 %.sroa.05.018.i.i.i.i, i64 %i.j, !unpredictable !19 ; 2 uses
  %i.n = sub nuw nsw i64 %.sroa.01.019.i.i.i.i, %i.i ; 2 uses
  %i.o = icmp ugt i64 %i.n, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.b
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.m, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.05.0.lcssa.i.i.i.i
  %.val14.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !1578, !noalias !1579, !noundef !19
  %.not.i.i.i.i.i = icmp ule i64 %.val14.i.i.i.i, %0
  %i.q = zext i1 %.not.i.i.i.i.i to i64
  %i.r = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ule i64 %i.r, %.val1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add nsw i64 %i.r, -1                     ; 3 uses
  %i.u = icmp ult i64 %i.t, %.val1
  br i1 %i.u, label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.thread.i.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.thread.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i, %bb.b
  %.sroa.4.0.i.i2.i.i = phi i64 [ %i.t, %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i ], [ -1, %bb.b ]
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.0.i.i2.i.i, i64 noundef %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @410) #62
  unreachable

_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i.i
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.t ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !19
  %i.z = add i64 %0, %i.y
  %.neg10.i = sub i64 %i.w, %i.z                  ; 2 uses
  %cond.i = icmp eq i64 %.val1, 1                 ; 2 uses
  br i1 %cond.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i8.i, label %.lr.ph.i.i.i14.i

.lr.ph.i.i.i14.i:                                 ; preds = %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i, %.lr.ph.i.i.i14.i
  %.sroa.01.019.i.i.i15.i = phi i64 [ %i.af, %.lr.ph.i.i.i14.i ], [ %.val1, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i ] ; 2 uses
  %.sroa.05.018.i.i.i16.i = phi i64 [ %i.ae, %.lr.ph.i.i.i14.i ], [ 0, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i ] ; 2 uses
  %i.aa = lshr i64 %.sroa.01.019.i.i.i15.i, 1     ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, %.sroa.05.018.i.i.i16.i ; 3 uses
  %i.ac = icmp ult i64 %i.ab, %.val1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.ab
  %.val12.i.i.i17.i = load i64, ptr %i.ad, align 8, !alias.scope !1580, !noalias !1581, !noundef !19
  %.not.i16.i.i.i18.i = icmp ugt i64 %.val12.i.i.i17.i, %i.f
  %i.ae = select i1 %.not.i16.i.i.i18.i, i64 %.sroa.05.018.i.i.i16.i, i64 %i.ab, !unpredictable !19 ; 2 uses
  %i.af = sub nuw nsw i64 %.sroa.01.019.i.i.i15.i, %i.aa ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 1
  br i1 %i.ag, label %.lr.ph.i.i.i14.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i8.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i8.i: ; preds = %.lr.ph.i.i.i14.i, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i
  %.sroa.05.0.lcssa.i.i.i9.i = phi i64 [ 0, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit.i ], [ %i.ae, %.lr.ph.i.i.i14.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.05.0.lcssa.i.i.i9.i
  %.val14.i.i.i10.i = load i64, ptr %i.ah, align 8, !alias.scope !1580, !noalias !1581, !noundef !19
  %.not.i.i.i.i11.i = icmp ule i64 %.val14.i.i.i10.i, %i.f
  %i.ai = zext i1 %.not.i.i.i.i11.i to i64
  %i.aj = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i9.i, %i.ai ; 2 uses
  %i.ak = icmp ule i64 %i.aj, %.val1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nsw i64 %i.aj, -1                   ; 3 uses
  %i.am = icmp ult i64 %i.al, %.val1
  br i1 %i.am, label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit19.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.thread.i12.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.thread.i12.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i8.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @410) #62
  unreachable

_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit19.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper9map_start0EBz_.exit.i8.i
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.al ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noundef !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !19
  br i1 %cond.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i, label %.lr.ph.i.i.i23.i

.lr.ph.i.i.i23.i:                                 ; preds = %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit19.i, %.lr.ph.i.i.i23.i
  %.sroa.01.018.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i23.i ], [ %.val1, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit19.i ] ; 2 uses
  %.sroa.05.017.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i23.i ], [ 0, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit19.i ] ; 2 uses
  %i.ar = lshr i64 %.sroa.01.018.i.i.i.i, 1       ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, %.sroa.05.017.i.i.i.i ; 3 uses
  %i.at = icmp ult i64 %i.as, %.val1
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.as
  %.val12.i.i.i24.i = load i64, ptr %i.au, align 8, !alias.scope !1582, !noalias !1583, !noundef !19
  %.not.i.i.i.i = icmp ult i64 %.val12.i.i.i24.i, %i.h
  %i.av = select i1 %.not.i.i.i.i, i64 %i.as, i64 %.sroa.05.017.i.i.i.i, !unpredictable !19 ; 2 uses
  %i.aw = sub nuw nsw i64 %.sroa.01.018.i.i.i.i, %i.ar ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, 1
  br i1 %i.ax, label %.lr.ph.i.i.i23.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i: ; preds = %.lr.ph.i.i.i23.i, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit19.i
  %.sroa.05.0.lcssa.i.i.i20.i = phi i64 [ 0, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper9map_start.exit19.i ], [ %i.av, %.lr.ph.i.i.i23.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.05.0.lcssa.i.i.i20.i
  %.val14.i.i.i21.i = load i64, ptr %i.ay, align 8, !alias.scope !1582, !noalias !1583, !noundef !19
  %i.az = icmp ult i64 %.val14.i.i.i21.i, %i.h
  %i.ba = zext i1 %i.az to i64
  %i.bb = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i20.i, %i.ba ; 2 uses
  %i.bc = icmp ule i64 %i.bb, %.val1
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add nsw i64 %i.bb, -1                   ; 3 uses
  %i.be = icmp ult i64 %i.bd, %.val1
  br i1 %i.be, label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.thread.i.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.thread.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.bd, i64 noundef %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @409) #62
  unreachable

_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax4span7Mapping15partition_pointNCNvMs6_Bx_NtBx_11RangeMapper7map_end0EBz_.exit.i.i
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.bd ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !19
  %.neg4.i = add i64 %.neg10.i, %i.f
  %i.bj = sub i64 %.neg4.i, %i.ao
  %i.bk = add i64 %i.bj, %i.aq                    ; 2 uses
  %.neg6.i = add i64 %.neg10.i, %i.h
  %i.bl = sub i64 %.neg6.i, %i.bg
  %i.bm = add i64 %i.bl, %i.bi                    ; 2 uses
  %.not.i = icmp ult i64 %i.bk, %i.bm
  br i1 %.not.i, label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper13map_sub_range.exit, label %bb.c, !prof !22

bb.c:                                             ; preds = %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #62
  unreachable

_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper13map_sub_range.exit: ; preds = %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper7map_end.exit.i
  %.sroa.04.07.i.i = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 4294967295)
  %.sroa.04.0.i.i = trunc nuw i64 %.sroa.04.07.i.i to i32
  %.sroa.03.06.i.i = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 4294967295)
  %.sroa.03.0.i.i = trunc nuw i64 %.sroa.03.06.i.i to i32
  store i32 %.sroa.04.0.i.i, ptr %1, align 4
  store i32 %.sroa.03.0.i.i, ptr %2, align 4
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_11RangeMapper13map_sub_range.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvXsa_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB7_14PackageVersionNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str0B9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store ptr %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 5, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 65 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !range !20, !alias.scope !1602, !noundef !19
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5PEMdK7bMAG_12typst_syntax.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val.i = load ptr, ptr %i.l, align 8, !alias.scope !1602, !nonnull !19, !noundef !19 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %.val1.i = load i64, ptr %i.m, align 8, !alias.scope !1602, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !1604, !noalias !1605, !noundef !19 ; 6 uses
  %.not.i.i = icmp ugt i64 %i.p, %.val1.i
  %.promoted.i.i = load i64, ptr %i.n, align 8, !alias.scope !1604, !noalias !1605 ; 2 uses
  %i.q = icmp ult i64 %i.p, %.promoted.i.i
  %or.cond27.i.i = or i1 %.not.i.i, %i.q
  br i1 %or.cond27.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %i.t = load i8, ptr %i.s, align 8, !alias.scope !1604, !noalias !1605, !noundef !19 ; 2 uses
  %i.u = zext nneg i8 %i.t to i64                 ; 4 uses
  %i.v = icmp ult i8 %i.t, 5
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr i8, ptr %i.r, i64 %i.u
  %i.x = getelementptr i8, ptr %i.w, i64 -1
  %.pre.i.i = load i8, ptr %i.x, align 1, !alias.scope !1604, !noalias !1605 ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.e, %.lr.ph.split.preheader.i.i
  %i.y = phi i64 [ %i.am, %bb.e ], [ %.promoted.i.i, %.lr.ph.split.preheader.i.i ] ; 4 uses
  %i.z = sub nuw i64 %i.p, %i.y                   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.y ; 2 uses
  %i.ab = icmp samesign ult i64 %i.z, 16
  br i1 %i.ab, label %.preheader.i.i.i, label %bb.c

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.p, %i.y
  br i1 %.not.i.i.i, label %.loopexit15.i.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.ac = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef range(i64 0, -9223372036854775808) %i.z), !noalias !1606 ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %i.ae = extractvalue { i64, i64 } %i.ac, 1
  %i.af = trunc nuw i64 %i.ad to i1
  br i1 %i.af, label %.loopexit.i.i, label %.loopexit15.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.d
  %.sroa.04.011.i.i.i = phi i64 [ %i.aj, %bb.d ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.04.011.i.i.i
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !1607, !noalias !1606, !noundef !19
  %i.ai = icmp eq i8 %i.ah, %.pre.i.i
  br i1 %i.ai, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = add nuw nsw i64 %.sroa.04.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.aj, %i.z
  br i1 %exitcond.not.i.i.i, label %.loopexit15.i.i, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.5.0.i.i.i = phi i64 [ %i.ae, %bb.c ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ak = icmp ult i64 %.sroa.5.0.i.i.i, %i.z
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add i64 %i.y, 1
  %i.am = add i64 %i.al, %.sroa.5.0.i.i.i         ; 7 uses
  store i64 %i.am, ptr %i.n, align 8, !alias.scope !1604, !noalias !1605
  %.not11.i.i = icmp ult i64 %i.am, %i.u
  %.not12.i.i = icmp ugt i64 %i.am, %.val1.i
  %or.cond.i.i = or i1 %.not11.i.i, %.not12.i.i
  br i1 %or.cond.i.i, label %bb.e, label %bb.f

.loopexit15.i.i:                                  ; preds = %bb.c, %.preheader.i.i.i, %bb.d
  store i64 %i.p, ptr %i.n, align 8, !alias.scope !1604, !noalias !1605
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i
  %i.an = icmp ult i64 %i.p, %i.am
  br i1 %i.an, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i, label %.lr.ph.split.i.i

bb.f:                                             ; preds = %.loopexit.i.i
  %i.ao = sub nuw i64 %i.am, %i.u                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ao
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.ap, ptr nonnull %i.r, i64 %i.u), !noalias !1605
  %i.aq = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.aq, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %bb.e

_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i: ; preds = %bb.f
  %i.ar = load i64, ptr %.0.val, align 8, !alias.scope !1602, !noundef !19 ; 2 uses
  %i.as = sub nuw i64 %i.ao, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ar
  store i64 %i.am, ptr %.0.val, align 8, !alias.scope !1602
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5PEMdK7bMAG_12typst_syntax.exit

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %bb.e, %.loopexit15.i.i, %bb.b
  store i8 1, ptr %i.i, align 1, !alias.scope !1608
  %i.au = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.av = load i8, ptr %i.au, align 8, !range !20, !alias.scope !1608, !noundef !19
  %i.aw = trunc nuw i8 %i.av to i1
  %.pre.i2.i = load i64, ptr %.0.val, align 8, !alias.scope !1608 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.pre2.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !1608 ; 2 uses
  %.not.i3.i = icmp ne i64 %.pre2.i.i, %.pre.i2.i
  %or.cond.not.i.i = select i1 %i.aw, i1 true, i1 %.not.i3.i ; 2 uses
  %i.ax = sub nuw i64 %.pre2.i.i, %.pre.i2.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.pre.i2.i
  %.sroa.3.0.i.i = select i1 %or.cond.not.i.i, i64 %i.ax, i64 undef
  %.sroa.0.0.i.i = select i1 %or.cond.not.i.i, ptr %i.ay, ptr null
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5PEMdK7bMAG_12typst_syntax.exit

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i
  %.sroa.4.1.i = phi i64 [ %.sroa.3.0.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i ], [ %i.as, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ] ; 4 uses
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i ], [ %i.at, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ] ; 4 uses
  %.not.i = icmp eq ptr %.sroa.0.1.i, null
  %.not5.i = icmp eq i64 %.sroa.4.1.i, 0
  %i.az = select i1 %.not.i, i1 true, i1 %.not5.i
  br i1 %i.az, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5PEMdK7bMAG_12typst_syntax.exit.thread, label %bb.g

bb.g:                                             ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5PEMdK7bMAG_12typst_syntax.exit
  store ptr %.sroa.0.1.i, ptr %i.f, align 8, !captures !34
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.4.1.i, ptr %i.ba, align 8
  %cond = icmp eq i64 %.sroa.4.1.i, 1
  %i.bb = load i8, ptr %.sroa.0.1.i, align 1, !alias.scope !1609 ; 2 uses
  br i1 %cond, label %bb.h, label %thread-pre-split.i

bb.h:                                             ; preds = %bb.g
  switch i8 %i.bb, label %thread-pre-split.i [
    i8 43, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.g, %bb.h
  %cond.i = icmp eq i8 %i.bb, 43                  ; 2 uses
  %i.bc = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.4.1.i, %i.bc ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 %.sroa.0.0.idx.i ; 9 uses
  %i.bd = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.bd, label %.preheader.i, label %.preheader64.split.us.i.preheader

.preheader64.split.us.i:                          ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i14, i64 1
  %i.bf = add nsw i64 %.sroa.15.1.us.i13, -1      ; 2 uses
  %.not55.us.i = icmp eq i64 %i.bf, 0
  br i1 %.not55.us.i, label %.loopexit.i, label %.preheader64.split.us.i.preheader

.preheader64.split.us.i.preheader:                ; preds = %thread-pre-split.i, %.preheader64.split.us.i
  %.sroa.0.1.us.i14 = phi ptr [ %i.be, %.preheader64.split.us.i ], [ %.sroa.0.0.i, %thread-pre-split.i ] ; 3 uses
  %.sroa.15.1.us.i13 = phi i64 [ %i.bf, %.preheader64.split.us.i ], [ %.sroa.15.0.i, %thread-pre-split.i ]
  %.sroa.045.0.us.i12 = phi i32 [ %i.bn, %.preheader64.split.us.i ], [ 0, %thread-pre-split.i ]
  %i.bg = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.us.i12, i32 10) ; 2 uses
  %i.bh = extractvalue { i32, i1 } %i.bg, 1
  br i1 %i.bh, label %.split.us.i, label %bb.i, !prof !23

bb.i:                                             ; preds = %.preheader64.split.us.i.preheader
  %i.bi = extractvalue { i32, i1 } %i.bg, 0       ; 2 uses
  %i.bj = load i8, ptr %.sroa.0.1.us.i14, align 1, !alias.scope !1609, !noundef !19
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nsw i32 %i.bk, -48                  ; 2 uses
  %i.bm = icmp ugt i32 %i.bl, 9
  %i.bn = add i32 %i.bl, %i.bi                    ; 3 uses
  %i.bo = icmp ult i32 %i.bn, %i.bi
  %or.cond = select i1 %i.bm, i1 true, i1 %i.bo, !prof !32
  br i1 %or.cond, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %.preheader64.split.us.i, !prof !32

.preheader.i:                                     ; preds = %thread-pre-split.i
  %.not5674.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5674.i, label %.loopexit.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.preheader.i
  %i.bp = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !1609, !noundef !19
  %i.bq = zext i8 %i.bp to i32
  %i.br = add nsw i32 %i.bq, -48                  ; 3 uses
  %i.bs = icmp ult i32 %i.br, 10
  br i1 %i.bs, label %bb.j, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %.not56.us.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not56.us.i, label %.loopexit.i, label %.lr.ph.split.us.i.1

.lr.ph.split.us.i.1:                              ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !1609, !noundef !19
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add nsw i32 %i.bv, -48                  ; 2 uses
  %i.bx = icmp ult i32 %i.bw, 10
  br i1 %i.bx, label %bb.k, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.k:                                             ; preds = %.lr.ph.split.us.i.1
  %i.by = mul nuw nsw i32 %i.br, 10
  %i.bz = add nuw nsw i32 %i.bw, %i.by            ; 2 uses
  %.not56.us.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not56.us.i.1, label %.loopexit.i, label %.lr.ph.split.us.i.2

.lr.ph.split.us.i.2:                              ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
end_hunk_3
begin_hunk_4_@_RNCNvXsa_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB7_14PackageVersionNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str0B9_:bb.a
  %i.ck = add nsw i32 %i.cj, -48                  ; 2 uses
  %i.cl = icmp ult i32 %i.ck, 10
  br i1 %i.cl, label %bb.m, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.m:                                             ; preds = %.lr.ph.split.us.i.3
  %i.cm = mul nuw nsw i32 %i.cg, 10
  %i.cn = add nuw nsw i32 %i.ck, %i.cm            ; 2 uses
  %.not56.us.i.3 = icmp eq i64 %.sroa.15.0.i, 4
  br i1 %.not56.us.i.3, label %.loopexit.i, label %.lr.ph.split.us.i.4

.lr.ph.split.us.i.4:                              ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !1609, !noundef !19
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nsw i32 %i.cq, -48                  ; 2 uses
  %i.cs = icmp ult i32 %i.cr, 10
  br i1 %i.cs, label %bb.n, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.n:                                             ; preds = %.lr.ph.split.us.i.4
  %i.ct = mul i32 %i.cn, 10
  %i.cu = add i32 %i.cr, %i.ct                    ; 2 uses
  %.not56.us.i.4 = icmp eq i64 %.sroa.15.0.i, 5
  br i1 %.not56.us.i.4, label %.loopexit.i, label %.lr.ph.split.us.i.5

.lr.ph.split.us.i.5:                              ; preds = %bb.n
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 5
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !1609, !noundef !19
  %i.cx = zext i8 %i.cw to i32
  %i.cy = add nsw i32 %i.cx, -48                  ; 2 uses
  %i.cz = icmp ult i32 %i.cy, 10
  br i1 %i.cz, label %bb.o, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.o:                                             ; preds = %.lr.ph.split.us.i.5
  %i.da = mul i32 %i.cu, 10
  %i.db = add i32 %i.cy, %i.da                    ; 2 uses
  %.not56.us.i.5 = icmp eq i64 %.sroa.15.0.i, 6
  br i1 %.not56.us.i.5, label %.loopexit.i, label %.lr.ph.split.us.i.6

.lr.ph.split.us.i.6:                              ; preds = %bb.o
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 6
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !1609, !noundef !19
  %i.de = zext i8 %i.dd to i32
  %i.df = add nsw i32 %i.de, -48                  ; 2 uses
  %i.dg = icmp ult i32 %i.df, 10
  br i1 %i.dg, label %bb.p, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.p:                                             ; preds = %.lr.ph.split.us.i.6
  %i.dh = mul i32 %i.db, 10
  %i.di = add i32 %i.df, %i.dh                    ; 2 uses
  %.not56.us.i.6 = icmp eq i64 %.sroa.15.0.i, 7
  br i1 %.not56.us.i.6, label %.loopexit.i, label %.lr.ph.split.us.i.7

.lr.ph.split.us.i.7:                              ; preds = %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 7
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !1609, !noundef !19
  %i.dl = zext i8 %i.dk to i32
  %i.dm = add nsw i32 %i.dl, -48                  ; 2 uses
  %i.dn = icmp ult i32 %i.dm, 10
  br i1 %i.dn, label %bb.q, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.q:                                             ; preds = %.lr.ph.split.us.i.7
  %i.do = mul i32 %i.di, 10
  %i.dp = add i32 %i.dm, %i.do
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader64.split.us.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.dp, %bb.q ], [ 0, %.preheader.i ], [ %i.br, %bb.j ], [ %i.bz, %bb.k ], [ %i.cg, %bb.l ], [ %i.cn, %bb.m ], [ %i.cu, %bb.n ], [ %i.db, %bb.o ], [ %i.di, %bb.p ], [ %i.bn, %.preheader64.split.us.i ]
  %i.dq = zext i32 %.sroa.045.1.i to i64
  %i.dr = shl nuw i64 %i.dq, 32
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit

.split.us.i:                                      ; preds = %.preheader64.split.us.i.preheader
  %i.ds = load i8, ptr %.sroa.0.1.us.i14, align 1, !alias.scope !1609, !noundef !19
  %i.dt = add i8 %i.ds, -48
  %i.du = icmp ult i8 %i.dt, 10
  %spec.select.i = select i1 %i.du, i64 513, i64 257
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit

_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit: ; preds = %.loopexit.i, %.split.us.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i, %.split.us.i ], [ %i.dr, %.loopexit.i ] ; 2 uses
  %i.dv = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.dv, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %bb.aa

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5PEMdK7bMAG_12typst_syntax.exit.thread: ; preds = %bb.a, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5PEMdK7bMAG_12typst_syntax.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1610
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.e, i8 0, i64 15, i1 false), !noalias !1610
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  store i8 -128, ptr %.sroa.45.0..sroa_idx.i, align 1, !noalias !1610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1610
  store ptr %i.g, ptr %i.d, align 8, !noalias !1610
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5PEMdK7bMAG_12typst_syntax, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !1610
  %i.dw = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @31, ptr noundef nonnull @34, ptr noundef nonnull %i.d)
          to label %bb.s unwind label %bb.r, !noalias !1611

bb.r:                                             ; preds = %bb.t, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5PEMdK7bMAG_12typst_syntax.exit.thread
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #59
          to label %common.resume unwind label %bb.u, !noalias !1611

bb.s:                                             ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5PEMdK7bMAG_12typst_syntax.exit.thread
  br i1 %i.dw, label %bb.t, label %_RNCNCNvXsa_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB9_14PackageVersionNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str0s_0Bb_.exit, !prof !23

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #62
          to label %.noexc.i unwind label %bb.r, !noalias !1611

.noexc.i:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !1611
  unreachable

common.resume:                                    ; preds = %bb.w, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.dx, %bb.r ], [ %i.ec, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNCNCNvXsa_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB9_14PackageVersionNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str0s_0Bb_.exit: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1610
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8, !noalias !1612
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1610
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.dz, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload, ptr %.sroa.423.0..sroa_idx, align 8
  br label %bb.v

bb.v:                                             ; preds = %_RNCNCNvXsa_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB9_14PackageVersionNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str0s0_0Bb_.exit, %bb.aa, %_RNCNCNvXsa_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB9_14PackageVersionNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str0s_0Bb_.exit
  %.sink = phi i32 [ 1, %_RNCNCNvXsa_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB9_14PackageVersionNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str0s0_0Bb_.exit ], [ 0, %bb.aa ], [ 1, %_RNCNCNvXsa_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB9_14PackageVersionNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str0s_0Bb_.exit ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.i, %.lr.ph.split.us.i, %.lr.ph.split.us.i.1, %.lr.ph.split.us.i.2, %.lr.ph.split.us.i.3, %.lr.ph.split.us.i.4, %.lr.ph.split.us.i.5, %.lr.ph.split.us.i.6, %.lr.ph.split.us.i.7, %bb.h, %bb.h, %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1613
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.c, i8 0, i64 15, i1 false), !noalias !1613
  %.sroa.45.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  store i8 -128, ptr %.sroa.45.0..sroa_idx.i28, align 1, !noalias !1613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1613
  store ptr %i.f, ptr %i.b, align 8, !noalias !1613
  %.sroa.49.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5PEMdK7bMAG_12typst_syntax, ptr %.sroa.49.0..sroa_idx.i29, align 8, !noalias !1613
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.ea, align 8, !noalias !1613
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5PEMdK7bMAG_12typst_syntax, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !1613
  %i.eb = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @31, ptr noundef nonnull @30, ptr noundef nonnull %i.b)
          to label %bb.x unwind label %bb.w, !noalias !1614

bb.w:                                             ; preds = %bb.y, %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #59
          to label %common.resume unwind label %bb.z, !noalias !1614

bb.x:                                             ; preds = %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  br i1 %i.eb, label %bb.y, label %_RNCNCNvXsa_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB9_14PackageVersionNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str0s0_0Bb_.exit, !prof !23

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #62
          to label %.noexc.i30 unwind label %bb.w, !noalias !1614

.noexc.i30:                                       ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !1614
  unreachable

_RNCNCNvXsa_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB9_14PackageVersionNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str0s0_0Bb_.exit: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1613
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1613
  br label %bb.v

bb.aa:                                            ; preds = %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.627.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.627.0.extract.trunc = trunc nuw i64 %.sroa.627.0.extract.shift to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.627.0.extract.trunc, ptr %i.ef, align 4
  br label %bb.v
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvXsf_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB7_12VersionBoundNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str0B9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 5, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1630)
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 65 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !range !20, !alias.scope !1630, !noundef !19
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !1630, !nonnull !19, !noundef !19 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %.val1.i = load i64, ptr %i.k, align 8, !alias.scope !1630, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1632, !noalias !1633, !noundef !19 ; 6 uses
  %.not.i.i = icmp ugt i64 %i.n, %.val1.i
  %.promoted.i.i = load i64, ptr %i.l, align 8, !alias.scope !1632, !noalias !1633 ; 2 uses
  %i.o = icmp ult i64 %i.n, %.promoted.i.i
  %or.cond27.i.i = or i1 %.not.i.i, %i.o
  br i1 %or.cond27.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %i.r = load i8, ptr %i.q, align 8, !alias.scope !1632, !noalias !1633, !noundef !19 ; 2 uses
  %i.s = zext nneg i8 %i.r to i64                 ; 4 uses
  %i.t = icmp ult i8 %i.r, 5
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr i8, ptr %i.p, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %.pre.i.i = load i8, ptr %i.v, align 1, !alias.scope !1632, !noalias !1633 ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.e, %.lr.ph.split.preheader.i.i
  %i.w = phi i64 [ %i.ak, %bb.e ], [ %.promoted.i.i, %.lr.ph.split.preheader.i.i ] ; 4 uses
  %i.x = sub nuw i64 %i.n, %i.w                   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.w ; 2 uses
  %i.z = icmp samesign ult i64 %i.x, 16
  br i1 %i.z, label %.preheader.i.i.i, label %bb.c

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.n, %i.w
  br i1 %.not.i.i.i, label %.loopexit15.i.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.aa = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef range(i64 0, -9223372036854775808) %i.x), !noalias !1634 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1
  %i.ad = trunc nuw i64 %i.ab to i1
  br i1 %i.ad, label %.loopexit.i.i, label %.loopexit15.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.d
  %.sroa.04.011.i.i.i = phi i64 [ %i.ah, %bb.d ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.04.011.i.i.i
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !1635, !noalias !1634, !noundef !19
  %i.ag = icmp eq i8 %i.af, %.pre.i.i
  br i1 %i.ag, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = add nuw nsw i64 %.sroa.04.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ah, %i.x
  br i1 %exitcond.not.i.i.i, label %.loopexit15.i.i, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.5.0.i.i.i = phi i64 [ %i.ac, %bb.c ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ai = icmp ult i64 %.sroa.5.0.i.i.i, %i.x
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add i64 %i.w, 1
  %i.ak = add i64 %i.aj, %.sroa.5.0.i.i.i         ; 7 uses
  store i64 %i.ak, ptr %i.l, align 8, !alias.scope !1632, !noalias !1633
  %.not11.i.i = icmp ult i64 %i.ak, %i.s
  %.not12.i.i = icmp ugt i64 %i.ak, %.val1.i
  %or.cond.i.i = or i1 %.not11.i.i, %.not12.i.i
  br i1 %or.cond.i.i, label %bb.e, label %bb.f

.loopexit15.i.i:                                  ; preds = %bb.c, %.preheader.i.i.i, %bb.d
  store i64 %i.n, ptr %i.l, align 8, !alias.scope !1632, !noalias !1633
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i
  %i.al = icmp ult i64 %i.n, %i.ak
  br i1 %i.al, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i, label %.lr.ph.split.i.i

bb.f:                                             ; preds = %.loopexit.i.i
  %i.am = sub nuw i64 %i.ak, %i.s                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.am
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.an, ptr nonnull %i.p, i64 %i.s), !noalias !1633
  %i.ao = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ao, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %bb.e

_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i: ; preds = %bb.f
  %i.ap = load i64, ptr %.0.val, align 8, !alias.scope !1630, !noundef !19 ; 2 uses
  %i.aq = sub nuw i64 %i.am, %i.ap
  store i64 %i.ak, ptr %.0.val, align 8, !alias.scope !1630
  br label %select.unfold

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %bb.e, %.loopexit15.i.i, %bb.b
  store i8 1, ptr %i.g, align 1, !alias.scope !1636
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.as = load i8, ptr %i.ar, align 8, !range !20, !alias.scope !1636, !noundef !19
  %i.at = trunc nuw i8 %i.as to i1
  %.pre.i2.i = load i64, ptr %.0.val, align 8, !alias.scope !1636 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.pre2.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !1636 ; 2 uses
  %.not.i3.i = icmp ne i64 %.pre2.i.i, %.pre.i2.i
  %or.cond.not.i.i = select i1 %i.at, i1 true, i1 %.not.i3.i
  %i.au = sub nuw i64 %.pre2.i.i, %.pre.i2.i
  br i1 %or.cond.not.i.i, label %select.unfold, label %bb.r

select.unfold:                                    ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %.sroa.4.1.i = phi i64 [ %i.aq, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ], [ %i.au, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i ] ; 3 uses
  %.pn = phi i64 [ %i.ap, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ], [ %.pre.i2.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i ]
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.pn ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.0.1.i, ptr %i.d, align 8, !captures !34
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.4.1.i, ptr %i.av, align 8
  switch i64 %.sroa.4.1.i, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %select.unfold
  %i.aw = load i8, ptr %.sroa.0.1.i, align 1, !alias.scope !1637, !noundef !19 ; 2 uses
  switch i8 %i.aw, label %bb.h [
    i8 43, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %select.unfold
  %.pr.i = load i8, ptr %.sroa.0.1.i, align 1, !alias.scope !1637
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.ax = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.aw, %bb.g ]
  %cond.i = icmp eq i8 %i.ax, 43                  ; 2 uses
  %i.ay = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.4.1.i, %i.ay ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 %.sroa.0.0.idx.i ; 9 uses
  %i.az = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.az, label %.preheader.i, label %.preheader64.split.us.i.preheader

.preheader64.split.us.i:                          ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i14, i64 1
  %i.bb = add nsw i64 %.sroa.15.1.us.i13, -1      ; 2 uses
  %.not55.us.i = icmp eq i64 %i.bb, 0
  br i1 %.not55.us.i, label %.loopexit.i, label %.preheader64.split.us.i.preheader

.preheader64.split.us.i.preheader:                ; preds = %bb.h, %.preheader64.split.us.i
  %.sroa.0.1.us.i14 = phi ptr [ %i.ba, %.preheader64.split.us.i ], [ %.sroa.0.0.i, %bb.h ] ; 3 uses
  %.sroa.15.1.us.i13 = phi i64 [ %i.bb, %.preheader64.split.us.i ], [ %.sroa.15.0.i, %bb.h ]
  %.sroa.045.0.us.i12 = phi i32 [ %i.bj, %.preheader64.split.us.i ], [ 0, %bb.h ]
  %i.bc = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.us.i12, i32 10) ; 2 uses
  %i.bd = extractvalue { i32, i1 } %i.bc, 1
  br i1 %i.bd, label %.split.us.i, label %bb.i, !prof !23

bb.i:                                             ; preds = %.preheader64.split.us.i.preheader
  %i.be = extractvalue { i32, i1 } %i.bc, 0       ; 2 uses
  %i.bf = load i8, ptr %.sroa.0.1.us.i14, align 1, !alias.scope !1637, !noundef !19
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -48                  ; 2 uses
  %i.bi = icmp ugt i32 %i.bh, 9
  %i.bj = add i32 %i.bh, %i.be                    ; 3 uses
  %i.bk = icmp ult i32 %i.bj, %i.be
  %or.cond = select i1 %i.bi, i1 true, i1 %i.bk, !prof !32
  br i1 %or.cond, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %.preheader64.split.us.i, !prof !32

.preheader.i:                                     ; preds = %bb.h
  %.not5674.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5674.i, label %.loopexit.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.preheader.i
  %i.bl = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !1637, !noundef !19
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add nsw i32 %i.bm, -48                  ; 3 uses
  %i.bo = icmp ult i32 %i.bn, 10
  br i1 %i.bo, label %bb.j, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %.not56.us.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not56.us.i, label %.loopexit.i, label %.lr.ph.split.us.i.1

.lr.ph.split.us.i.1:                              ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !1637, !noundef !19
  %i.br = zext i8 %i.bq to i32
  %i.bs = add nsw i32 %i.br, -48                  ; 2 uses
  %i.bt = icmp ult i32 %i.bs, 10
  br i1 %i.bt, label %bb.k, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.k:                                             ; preds = %.lr.ph.split.us.i.1
  %i.bu = mul nuw nsw i32 %i.bn, 10
  %i.bv = add nuw nsw i32 %i.bs, %i.bu            ; 2 uses
  %.not56.us.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not56.us.i.1, label %.loopexit.i, label %.lr.ph.split.us.i.2

.lr.ph.split.us.i.2:                              ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.bx = load i8, ptr %i.bw, align 1, !alias.scope !1637, !noundef !19
end_hunk_4
begin_hunk_5_@_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode15convert_to_kind:bb.a

bb.c:                                             ; preds = %.preheader
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #62
  unreachable

bb.d:                                             ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 1
  store i8 %1, ptr %i.d, align 1
  %i.e = tail call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node14WarningWrapperE8make_mutBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.c) #63
  br label %.preheader

bb.e:                                             ; preds = %.preheader, %.preheader
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 1
  store i8 %1, ptr %.sroa.01.0, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode16replace_children(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i50.i.i.i = alloca [31 x i8], align 1  ; 4 uses
  %.sroa.4.i36.i.i.i = alloca [31 x i8], align 1  ; 4 uses
  %.sroa.4.i.i.i.i = alloca [31 x i8], align 1    ; 4 uses
  %.sroa.49.i.i.i.i.i.i.i.i.i = alloca [31 x i8], align 1 ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  br label %.noexc7

.noexc7:                                          ; preds = %bb.c, %bb.a
  %.sroa.01.0.i = phi ptr [ %0, %bb.a ], [ %i.h, %bb.c ] ; 3 uses
  %i.d = load i8, ptr %.sroa.01.0.i, align 8, !range !30, !noundef !19
  switch i8 %i.d, label %.noexc7.unreachabledefault [
    i8 0, label %bb.ds
    i8 1, label %bb.b
    i8 2, label %bb.ds
    i8 3, label %bb.c
  ]

.noexc7.unreachabledefault:                       ; preds = %.noexc7
  unreachable

default.unreachable:                              ; preds = %bb.q, %bb.ab, %bb.ak, %bb.ap, %bb.as, %bb.aw, %bb.az, %bb.dh
  unreachable

bb.b:                                             ; preds = %.noexc7
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8
  %i.f = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeE8make_mutBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.e) #63
          to label %bb.d unwind label %.loopexit.split-lp ; 14 uses

bb.c:                                             ; preds = %.noexc7
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8
  %i.h = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node14WarningWrapperE8make_mutBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.g) #63
          to label %.noexc7 unwind label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  %i.j = load i64, ptr %i.i, align 8, !range !31, !alias.scope !2029, !noalias !2031, !noundef !19
  %i.k = lshr i64 %i.j, 48                        ; 2 uses
  %i.l = trunc nuw i64 %i.k to i16
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2030, !noalias !2032, !noundef !19 ; 15 uses
  %i.o = icmp ult i64 %i.n, 288230376151711744
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ult i64 %1, %2
  %i.q = icmp ne i64 %i.n, 0
  %or.cond278.i = and i1 %i.p, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 14 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !2028, !noalias !2033 ; 18 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !2030, !noalias !2032 ; 25 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 8 uses
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !2028, !noalias !2033 ; 15 uses
  br i1 %or.cond278.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.x = tail call i64 @llvm.usub.sat.i64(i64 %i.s, i64 %1)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2034)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !2035, !noalias !2032, !nonnull !19, !noundef !19 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !2035, !noalias !2032, !noundef !19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.z, i64 noundef %i.ab)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i unwind label %bb.g, !noalias !2036, !inline_history !6

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %3, align 8, !range !33, !alias.scope !2037, !noalias !2032, !noundef !19 ; 2 uses
  %i.ad = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ad, label %common.resume, label %common.resume.sink.split

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i: ; preds = %bb.f
  %.val.i.i = load i64, ptr %3, align 8, !range !33, !alias.scope !2037, !noalias !2032, !noundef !19 ; 2 uses
  %i.ae = icmp eq i64 %.val.i.i, 0
  br i1 %i.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit.sink.split

._crit_edge.i:                                    ; preds = %bb.j, %bb.i, %bb.e
  %.sroa.0163.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.al, %bb.j ], [ %.sroa.0163.0279.i, %bb.i ] ; 27 uses
  %.promoted.i = phi i64 [ %1, %bb.e ], [ %i.ak, %bb.j ], [ %.sroa.0.0280.i, %bb.i ] ; 26 uses
  %i.af = icmp ult i64 %.promoted.i, %2           ; 2 uses
  %i.ag = icmp samesign ult i64 %.sroa.0163.0.lcssa.i, %i.n
  %or.cond66.i337 = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond66.i337, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %.sroa.0.0280.i = phi i64 [ %1, %.lr.ph.i ], [ %i.ak, %bb.j ] ; 4 uses
  %.sroa.0163.0279.i = phi i64 [ 0, %.lr.ph.i ], [ %i.al, %bb.j ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.sroa.0163.0279.i, %i.x
  br i1 %exitcond.not.i, label %.invoke481.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.sroa.0.0280.i
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.0163.0279.i
  %i.aj = tail call noundef zeroext i1 @_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode11spanless_eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai), !noalias !2038
  br i1 %i.aj, label %bb.j, label %._crit_edge.i

bb.j:                                             ; preds = %bb.i
  %i.ak = add nuw i64 %.sroa.0.0280.i, 1          ; 3 uses
  %i.al = add nuw nsw i64 %.sroa.0163.0279.i, 1   ; 3 uses
  %i.am = icmp ult i64 %i.ak, %2
  %i.an = icmp samesign ult i64 %i.al, %i.n
  %or.cond.i = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond.i, label %bb.h, label %._crit_edge.i

bb.k:                                             ; preds = %bb.l
  %i.ao = icmp ult i64 %.promoted.i, %i.aq        ; 2 uses
  %i.ap = icmp samesign ult i64 %.sroa.0163.0.lcssa.i, %i.as
  %or.cond66.i = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond66.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.k
  %.sroa.4.0.i339 = phi i64 [ %i.aq, %bb.k ], [ %2, %._crit_edge.i ] ; 2 uses
  %.sroa.6.0.i338 = phi i64 [ %i.as, %bb.k ], [ %i.n, %._crit_edge.i ] ; 2 uses
  %i.aq = add i64 %.sroa.4.0.i339, -1             ; 6 uses
  %i.ar = icmp ult i64 %i.aq, %i.s
  br i1 %i.ar, label %bb.l, label %.invoke481.i

bb.l:                                             ; preds = %.lr.ph
  %i.as = add nsw i64 %.sroa.6.0.i338, -1         ; 4 uses
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.aq
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.as
  %i.av = tail call noundef zeroext i1 @_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode11spanless_eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au), !noalias !2038
  br i1 %i.av, label %bb.k, label %._crit_edge

.invoke481.i:                                     ; preds = %bb.h, %.lr.ph
  %i.aw = phi i64 [ %i.aq, %.lr.ph ], [ %.sroa.0.0280.i, %bb.h ]
  %i.ax = phi ptr [ @358, %.lr.ph ], [ @357, %bb.h ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.aw, i64 noundef %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax) #58
          to label %.cont482.i unwind label %bb.dr, !noalias !2038

.cont482.i:                                       ; preds = %.invoke481.i
  unreachable

.loopexit.i:                                      ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens0_0EBN_.exit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.cz, %bb.cx, %bb.ct, %bb.cr, %bb.cl, %bb.cj, %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.14.0 = phi i64 [ %i.n, %.loopexit.split-lp.i ], [ %.sroa.14.1, %.loopexit.i ], [ %.sroa.0163.0.lcssa.i, %bb.cx ], [ %i.nl, %bb.cz ], [ %.sroa.0163.0.lcssa.i, %bb.cj ], [ %i.ml, %bb.cl ], [ %.sroa.0163.0.lcssa.i, %bb.cr ], [ %i.nc, %bb.ct ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %i.nj, %bb.cx ], [ %i.nj, %bb.cz ], [ %eh.lpad-body.i209.i, %bb.cj ], [ %eh.lpad-body.i209.i, %bb.cl ], [ %eh.lpad-body.i209.i, %bb.cr ], [ %eh.lpad-body.i209.i, %bb.ct ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.u, i64 noundef %.sroa.14.0)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i10 unwind label %bb.m, !noalias !2039, !inline_history !6

bb.m:                                             ; preds = %.body.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.az = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.az, label %.body12, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = shl nuw i64 %.sroa.0.0.copyload, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !2039, !inline_history !41
  br label %.body12

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i10: ; preds = %.body.i
  %i.bb = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.bb, label %common.resume, label %common.resume.sink.split

._crit_edge:                                      ; preds = %bb.k, %bb.l, %._crit_edge.i
  %.sroa.6.0.i.lcssa = phi i64 [ %i.n, %._crit_edge.i ], [ %i.as, %bb.k ], [ %.sroa.6.0.i338, %bb.l ] ; 17 uses
  %.sroa.4.0.i.lcssa = phi i64 [ %2, %._crit_edge.i ], [ %i.aq, %bb.k ], [ %.sroa.4.0.i339, %bb.l ] ; 31 uses
  %.lcssa155 = phi i1 [ %i.af, %._crit_edge.i ], [ %i.ao, %bb.k ], [ true, %bb.l ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %.sroa.0.0.copyload = load i64, ptr %3, align 8, !noalias !2032 ; 8 uses
  %i.bc = icmp samesign ult i64 %.sroa.6.0.i.lcssa, %.sroa.0163.0.lcssa.i
  br i1 %i.bc, label %.invoke.i, label %bb.o, !prof !23

.invoke.i:                                        ; preds = %bb.o, %._crit_edge
  %i.bd = phi i64 [ %.promoted.i, %bb.o ], [ %.sroa.0163.0.lcssa.i, %._crit_edge ]
  %i.be = phi i64 [ %.sroa.4.0.i.lcssa, %bb.o ], [ %.sroa.6.0.i.lcssa, %._crit_edge ]
  %i.bf = phi i64 [ %i.s, %bb.o ], [ %i.n, %._crit_edge ]
  %i.bg = phi ptr [ @359, %bb.o ], [ @360, %._crit_edge ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.bd, i64 noundef %i.be, i64 noundef %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg) #58
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !2038

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.bh = sub nuw nsw i64 %.sroa.6.0.i.lcssa, %.sroa.0163.0.lcssa.i ; 6 uses
  %.idx216.i = shl nuw nsw i64 %.sroa.0163.0.lcssa.i, 5
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx216.i ; 11 uses
  %i.bj = icmp ult i64 %.sroa.4.0.i.lcssa, %.promoted.i
  %.not61.i = icmp ugt i64 %.sroa.4.0.i.lcssa, %i.s
  %or.cond67.i = or i1 %i.bj, %.not61.i
  br i1 %or.cond67.i, label %.invoke.i, label %bb.p, !prof !49

bb.p:                                             ; preds = %bb.o
  %.idx218.i = shl nuw nsw i64 %.promoted.i, 5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx218.i ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !2028, !noalias !2033, !noundef !19
  %.idx.i = shl nuw nsw i64 %.sroa.6.0.i.lcssa, 5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i ; 17 uses
  %i.bo = icmp eq i64 %.sroa.0163.0.lcssa.i, %.sroa.6.0.i.lcssa ; 10 uses
  br i1 %i.bo, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i, label %.preheader45

.preheader45:                                     ; preds = %bb.p, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i
  %.sroa.04.0.i.i = phi i64 [ %i.cn, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i ], [ 0, %bb.p ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.cm, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i ], [ 0, %bb.p ]
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %.sroa.04.0.i.i
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.preheader45
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %i.bp, %.preheader45 ], [ %i.cd, %bb.u ] ; 6 uses
  %i.bq = load i8, ptr %.sroa.04.0.i.i.i.i.i, align 8, !range !30, !noalias !2038, !noundef !19
  switch i8 %i.bq, label %default.unreachable [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 23
  %i.bs = load i8, ptr %i.br, align 1, !noalias !2038, !noundef !19 ; 2 uses
  %.not14.i.i.i.i.i = icmp sgt i8 %i.bs, -1
  br i1 %.not14.i.i.i.i.i, label %bb.v, label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !2038, !nonnull !19, !noundef !19
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !2040, !noundef !19
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i

bb.t:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !2038, !nonnull !19, !noundef !19 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 47
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !2040, !noundef !19 ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i8 %i.ca, -1
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.y

bb.u:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !2038, !nonnull !19, !noundef !19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  br label %bb.q

bb.v:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !2038, !noundef !19
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i

bb.w:                                             ; preds = %bb.r
  %i.cg = and i8 %i.bs, 127
  %i.ch = zext nneg i8 %i.cg to i64
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i

bb.x:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !2040, !noundef !19
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i

bb.y:                                             ; preds = %bb.t
  %i.ck = and i8 %i.ca, 127
  %i.cl = zext nneg i8 %i.ck to i64
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i: ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.s
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %i.cf, %bb.v ], [ %i.bw, %bb.s ], [ %i.ch, %bb.w ], [ %i.cl, %bb.y ], [ %i.cj, %bb.x ]
  %i.cm = add i64 %.sroa.0.1.i.i.i.i.i, %.sroa.02.0.i.i ; 2 uses
  %i.cn = add nuw i64 %.sroa.04.0.i.i, 1          ; 2 uses
  %i.co = icmp eq i64 %i.cn, %i.bh
  br i1 %i.co, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i, label %.preheader45

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i, %bb.p
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.p ], [ %i.cm, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i ]
  %.idx217.i = shl nuw nsw i64 %.sroa.4.0.i.lcssa, 5
  %i.cp = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx217.i ; 3 uses
  %i.cq = icmp samesign eq i64 %.promoted.i, %.sroa.4.0.i.lcssa ; 3 uses
  br i1 %i.cq, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i, label %bb.z

bb.z:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i
  %i.cr = sub nuw nsw i64 %.sroa.4.0.i.lcssa, %.promoted.i
  br label %bb.aa

bb.aa:                                            ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i, %bb.z
  %.sroa.04.0.i76.i = phi i64 [ 0, %bb.z ], [ %i.dq, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i ] ; 2 uses
  %.sroa.02.0.i77.i = phi i64 [ 0, %bb.z ], [ %i.dp, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i ]
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %.sroa.04.0.i76.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.af, %bb.aa
  %.sroa.04.0.i.i.i.i78.i = phi ptr [ %i.cs, %bb.aa ], [ %i.dg, %bb.af ] ; 6 uses
  %i.ct = load i8, ptr %.sroa.04.0.i.i.i.i78.i, align 8, !range !30, !noalias !2038, !noundef !19
  switch i8 %i.ct, label %default.unreachable [
    i8 0, label %bb.ac
    i8 1, label %bb.ad
    i8 2, label %bb.ae
    i8 3, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i78.i, i64 23
  %i.cv = load i8, ptr %i.cu, align 1, !noalias !2038, !noundef !19 ; 2 uses
  %.not14.i.i.i.i83.i = icmp sgt i8 %i.cv, -1
  br i1 %.not14.i.i.i.i83.i, label %bb.ag, label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i78.i, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !2038, !nonnull !19, !noundef !19
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !2041, !noundef !19
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i

bb.ae:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i78.i, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !noalias !2038, !nonnull !19, !noundef !19 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 47
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !2041, !noundef !19 ; 2 uses
  %.not.i.i.i.i79.i = icmp sgt i8 %i.dd, -1
  br i1 %.not.i.i.i.i79.i, label %bb.ai, label %bb.aj

bb.af:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i78.i, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !noalias !2038, !nonnull !19, !noundef !19
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  br label %bb.ab

bb.ag:                                            ; preds = %bb.ac
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i78.i, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !noalias !2038, !noundef !19
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i

bb.ah:                                            ; preds = %bb.ac
  %i.dj = and i8 %i.cv, 127
  %i.dk = zext nneg i8 %i.dj to i64
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i

bb.ai:                                            ; preds = %bb.ae
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !2041, !noundef !19
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i

bb.aj:                                            ; preds = %bb.ae
  %i.dn = and i8 %i.dd, 127
  %i.do = zext nneg i8 %i.dn to i64
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.ad
  %.sroa.0.1.i.i.i.i81.i = phi i64 [ %i.di, %bb.ag ], [ %i.cz, %bb.ad ], [ %i.dk, %bb.ah ], [ %i.do, %bb.aj ], [ %i.dm, %bb.ai ]
  %i.dp = add i64 %.sroa.0.1.i.i.i.i81.i, %.sroa.02.0.i77.i ; 2 uses
  %i.dq = add nuw i64 %.sroa.04.0.i76.i, 1        ; 2 uses
  %i.dr = icmp eq i64 %i.dq, %i.cr
  br i1 %i.dr, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i, label %bb.aa

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i
  %.sroa.0.0.i82.i = phi i64 [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i ], [ %i.dp, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i ]
  %i.ds = add i64 %.sroa.0.0.i.i, %i.bm
  %i.dt = sub i64 %i.ds, %.sroa.0.0.i82.i
  store i64 %i.dt, ptr %i.bl, align 8, !alias.scope !2028, !noalias !2033
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !2028, !noalias !2033, !noundef !19
  br i1 %i.bo, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs0_BS_BQ_11descendantsNCINvXsK_NtB1I_5accumjNtB3C_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i, label %.preheader

.preheader:                                       ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i
  %.sroa.04.0.i86.i = phi i64 [ %i.eg, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i ] ; 2 uses
  %.sroa.02.0.i87.i = phi i64 [ %i.ef, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i ]
  %i.dw = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %.sroa.04.0.i86.i
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.preheader
end_hunk_5
begin_hunk_6_@_RNvMs1f_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_12ModuleImport9bare_name:bb.a

bb.at:                                            ; preds = %_RNvMsV_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_11FieldAccess5field.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.060.0, i64 8
  br label %.loopexit195

bb.au:                                            ; preds = %_RNvMsV_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_11FieldAccess5field.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.060.0, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !19, !noundef !19
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  br label %.loopexit195

bb.av:                                            ; preds = %_RNvMsV_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_11FieldAccess5field.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.060.0, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !19, !noundef !19
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  br label %_RNvMsV_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_11FieldAccess5field.exit

.loopexit195:                                     ; preds = %_RNvMsV_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_11FieldAccess5field.exit, %bb.au, %bb.at
  %.sroa.07.0 = phi ptr [ %i.eb, %bb.at ], [ %i.ee, %bb.au ], [ @_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY, %_RNvMsV_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_11FieldAccess5field.exit ] ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 15
  %i.ej = load i8, ptr %i.ei, align 1, !noundef !19
  %.not = icmp sgt i8 %i.ej, -1
  %i.ek = getelementptr i8, ptr %.sroa.07.0, i64 8 ; 2 uses
  br i1 %.not, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %.loopexit195
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0, align 8, !nonnull !19, !noundef !19 ; 4 uses
  %.sroa.07.0.val92 = load i64, ptr %i.ek, align 8 ; 2 uses
  %.not.i.i160 = icmp eq ptr %.sroa.07.0.val, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i160, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit161, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.el = getelementptr inbounds i8, ptr %.sroa.07.0.val, i64 -16
  %i.em = atomicrmw add ptr %i.el, i64 1 monotonic, align 8
  %i.en = icmp slt i64 %i.em, 0
  br i1 %i.en, label %bb.ay, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit161, !prof !23

bb.ay:                                            ; preds = %bb.ax
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5PEMdK7bMAG_12typst_syntax(ptr noundef nonnull %.sroa.07.0.val) #58
  unreachable

bb.az:                                            ; preds = %.loopexit195
  %.sroa.081.0.copyload = load ptr, ptr %.sroa.07.0, align 1
  %.sroa.482.0.copyload = load i64, ptr %i.ek, align 1
  br label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit161

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit161: ; preds = %bb.ax, %bb.aw, %bb.az
  %.sroa.072.0 = phi ptr [ %.sroa.081.0.copyload, %bb.az ], [ inttoptr (i64 16 to ptr), %bb.aw ], [ %.sroa.07.0.val, %bb.ax ]
  %.sroa.574.0 = phi i64 [ %.sroa.482.0.copyload, %bb.az ], [ %.sroa.07.0.val92, %bb.aw ], [ %.sroa.07.0.val92, %bb.ax ]
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.072.0, ptr %i.eo, align 8
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.574.0, ptr %.sroa.478.0..sroa_idx, align 8
  store i8 0, ptr %0, align 8
  br label %bb.ar
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, ptr } @_RNvMs1g_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_11ImportItems4iter(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #19 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.03.0.i = phi ptr [ %0, %bb.a ], [ %i.k, %bb.d ] ; 3 uses
  %i.a = load i8, ptr %.sroa.03.0.i, align 8, !range !30, !noundef !19
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit
    i8 1, label %bb.c
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit
    i8 3, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !3754, !nonnull !19, !noundef !19 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noalias !3754, !noundef !19
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.g
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !19, !noundef !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.b

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit: ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.3.0.i = phi ptr [ %i.h, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.e, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  %i.l = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, ptr } @_RNvMs1h_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_14ImportItemPath4iter(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #19 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.03.0.i = phi ptr [ %0, %bb.a ], [ %i.k, %bb.d ] ; 3 uses
  %i.a = load i8, ptr %.sroa.03.0.i, align 8, !range !30, !noundef !19
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit
    i8 1, label %bb.c
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit
    i8 3, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !3757, !nonnull !19, !noundef !19 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noalias !3757, !noundef !19
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.g
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !19, !noundef !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.b

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit: ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.3.0.i = phi ptr [ %i.h, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.e, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  %i.l = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 ptr @_RNvMs1h_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_14ImportItemPath4name(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.03.0.i.i.i = phi ptr [ %0, %bb.a ], [ %i.k, %bb.d ] ; 3 uses
  %i.a = load i8, ptr %.sroa.03.0.i.i.i, align 8, !range !30, !noundef !19
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i
    i8 1, label %bb.c
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i
    i8 3, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !3774, !nonnull !19, !noundef !19 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noalias !3774, !noundef !19
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.g
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !19, !noundef !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.b

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i: ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.3.0.i.i.i = phi ptr [ %i.h, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.e, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i
  %i.l = phi ptr [ %i.n, %bb.f ], [ %.sroa.3.0.i.i.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i ] ; 3 uses
  %i.m = icmp eq ptr %.sroa.0.0.i.i.i, %i.l
  br i1 %i.m, label %_RINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB5_4node10SyntaxNode9cast_lastNtB3_5IdentEB5_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -32 ; 2 uses
  %.sroa.01.0.in.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.l, i64 -31
  %.sroa.01.0.i.i.i.i.i.i.i = load i8, ptr %.sroa.01.0.in.i.i.i.i.i.i.i, align 1, !range !21, !alias.scope !3775, !noalias !3776, !noundef !19
  %.not.i.i.i = icmp eq i8 %.sroa.01.0.i.i.i.i.i.i.i, 99
  br i1 %.not.i.i.i, label %_RINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB5_4node10SyntaxNode9cast_lastNtB3_5IdentEB5_.exit, label %bb.e

_RINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB5_4node10SyntaxNode9cast_lastNtB3_5IdentEB5_.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i = phi ptr [ %i.n, %bb.f ], [ @_RNvNvXs6X_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_5IdentNtB8_7AstNode11placeholder11PLACEHOLDER, %bb.e ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef nonnull align 8 ptr @_RNvMs1i_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_10ImportItem10bound_name(i64 noundef range(i64 0, 2) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %2 = trunc nuw i64 %0 to i1
  br i1 %2, label %.preheader, label %.preheader35

.preheader:                                       ; preds = %bb.a, %bb.c
  %.sroa.03.0.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.a = load i8, ptr %.sroa.03.0.i.i.i.i, align 8, !range !30, !noundef !19
  switch i8 %i.a, label %.unreachabledefault [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i
    i8 1, label %bb.b
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i
    i8 3, label %bb.c
  ]

.unreachabledefault:                              ; preds = %.preheader
  unreachable

default.unreachable:                              ; preds = %.preheader35
  unreachable

bb.b:                                             ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !3813, !nonnull !19, !noundef !19 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noalias !3813, !noundef !19
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.g
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i

bb.c:                                             ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !19, !noundef !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %.preheader

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i: ; preds = %.preheader, %.preheader, %bb.b
  %.sroa.3.0.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ inttoptr (i64 8 to ptr), %.preheader ], [ inttoptr (i64 8 to ptr), %.preheader ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ inttoptr (i64 8 to ptr), %.preheader ], [ inttoptr (i64 8 to ptr), %.preheader ]
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i
  %i.l = phi ptr [ %i.n, %bb.e ], [ %.sroa.3.0.i.i.i.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i ] ; 3 uses
  %i.m = icmp eq ptr %.sroa.0.0.i.i.i.i, %i.l
  br i1 %i.m, label %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem8new_name.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -32 ; 2 uses
  %.sroa.01.0.in.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.l, i64 -31
  %.sroa.01.0.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.01.0.in.i.i.i.i.i.i.i.i, align 1, !range !21, !alias.scope !3814, !noalias !3815, !noundef !19
  %.not.i.i.i.i = icmp eq i8 %.sroa.01.0.i.i.i.i.i.i.i.i, 99
  br i1 %.not.i.i.i.i, label %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem8new_name.exit, label %bb.d

.preheader35:                                     ; preds = %bb.a, %bb.g
  %.sroa.03.0.i.i.i.i4 = phi ptr [ %i.y, %bb.g ], [ %1, %bb.a ] ; 3 uses
  %i.o = load i8, ptr %.sroa.03.0.i.i.i.i4, align 8, !range !30, !noundef !19
  switch i8 %i.o, label %default.unreachable [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i5
    i8 1, label %bb.f
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i5
    i8 3, label %bb.g
  ]

bb.f:                                             ; preds = %.preheader35
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i4, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !noalias !3816, !nonnull !19, !noundef !19 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = load i64, ptr %i.t, align 8, !noalias !3816, !noundef !19
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.u
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i5

bb.g:                                             ; preds = %.preheader35
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i4, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !19, !noundef !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  br label %.preheader35

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i5: ; preds = %.preheader35, %.preheader35, %bb.f
  %.sroa.3.0.i.i.i.i6 = phi ptr [ %i.v, %bb.f ], [ inttoptr (i64 8 to ptr), %.preheader35 ], [ inttoptr (i64 8 to ptr), %.preheader35 ]
  %.sroa.0.0.i.i.i.i7 = phi ptr [ %i.s, %bb.f ], [ inttoptr (i64 8 to ptr), %.preheader35 ], [ inttoptr (i64 8 to ptr), %.preheader35 ]
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i5
  %i.z = phi ptr [ %i.ab, %bb.i ], [ %.sroa.3.0.i.i.i.i6, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i5 ] ; 3 uses
  %i.aa = icmp eq ptr %.sroa.0.0.i.i.i.i7, %i.z
  br i1 %i.aa, label %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem8new_name.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -32 ; 2 uses
  %.sroa.01.0.in.i.i.i.i.i.i.i.i8 = getelementptr inbounds i8, ptr %i.z, i64 -31
  %.sroa.01.0.i.i.i.i.i.i.i.i9 = load i8, ptr %.sroa.01.0.in.i.i.i.i.i.i.i.i8, align 1, !range !21, !alias.scope !3817, !noalias !3818, !noundef !19
  %.not.i.i.i.i10 = icmp eq i8 %.sroa.01.0.i.i.i.i.i.i.i.i9, 99
  br i1 %.not.i.i.i.i10, label %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem8new_name.exit, label %bb.h

_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem8new_name.exit: ; preds = %bb.i, %bb.h, %bb.e, %bb.d
  %.sroa.03.0 = phi ptr [ @_RNvNvXs6X_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_5IdentNtB8_7AstNode11placeholder11PLACEHOLDER, %bb.d ], [ %i.n, %bb.e ], [ @_RNvNvXs6X_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_5IdentNtB8_7AstNode11placeholder11PLACEHOLDER, %bb.h ], [ %i.ab, %bb.i ]
  ret ptr %.sroa.03.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef nonnull align 8 ptr @_RNvMs1i_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_10ImportItem13original_name(i64 noundef range(i64 0, 2) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %2 = trunc nuw i64 %0 to i1
  br i1 %2, label %.preheader, label %.preheader40

.preheader:                                       ; preds = %bb.a, %bb.c
  %.sroa.03.0.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.a = load i8, ptr %.sroa.03.0.i.i.i.i, align 8, !range !30, !noundef !19
  switch i8 %i.a, label %.unreachabledefault [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i
    i8 1, label %bb.b
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i
    i8 3, label %bb.c
  ]

.unreachabledefault:                              ; preds = %.preheader
  unreachable

default.unreachable:                              ; preds = %.preheader40, %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.i
  unreachable

bb.b:                                             ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !3871, !nonnull !19, !noundef !19 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noalias !3871, !noundef !19
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.g
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i

bb.c:                                             ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !19, !noundef !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %.preheader

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i: ; preds = %.preheader, %.preheader, %bb.b
  %.sroa.3.0.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ inttoptr (i64 8 to ptr), %.preheader ], [ inttoptr (i64 8 to ptr), %.preheader ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ inttoptr (i64 8 to ptr), %.preheader ], [ inttoptr (i64 8 to ptr), %.preheader ]
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i
  %i.l = phi ptr [ %i.n, %bb.e ], [ %.sroa.0.0.i.i.i.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i ] ; 4 uses
  %i.m = icmp eq ptr %i.l, %.sroa.3.0.i.i.i.i
  br i1 %i.m, label %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.i.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.01.0.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.01.0.i.i.i.i.i.i.i = load i8, ptr %.sroa.01.0.in.i.i.i.i.i.i.i, align 1, !range !21, !alias.scope !3872, !noalias !3873, !noundef !19
  %.not.i.i.i.i = icmp eq i8 %.sroa.01.0.i.i.i.i.i.i.i, -127
  br i1 %.not.i.i.i.i, label %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.i.preheader, label %bb.d

_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.i.preheader: ; preds = %bb.e, %bb.d
  %.sroa.03.0.i.i.i.i.i.ph = phi ptr [ @_RNvNvXsdp_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_14ImportItemPathNtB8_7AstNode11placeholder11PLACEHOLDER, %bb.d ], [ %i.l, %bb.e ]
  br label %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.i

_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.i: ; preds = %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.i.preheader, %bb.g
  %.sroa.03.0.i.i.i.i.i = phi ptr [ %i.y, %bb.g ], [ %.sroa.03.0.i.i.i.i.i.ph, %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.i.preheader ] ; 3 uses
  %i.o = load i8, ptr %.sroa.03.0.i.i.i.i.i, align 8, !range !30, !noalias !3874, !noundef !19
  switch i8 %i.o, label %default.unreachable [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i.i
    i8 1, label %bb.f
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i.i
    i8 3, label %bb.g
  ]

bb.f:                                             ; preds = %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !3874, !nonnull !19, !noundef !19 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !noalias !3875, !nonnull !19, !noundef !19 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = load i64, ptr %i.t, align 8, !noalias !3875, !noundef !19
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.u
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i.i

bb.g:                                             ; preds = %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !3874, !nonnull !19, !noundef !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  br label %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.i

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i.i: ; preds = %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.i, %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.i, %bb.f
  %.sroa.3.0.i.i.i.i.i = phi ptr [ %i.v, %bb.f ], [ inttoptr (i64 8 to ptr), %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.i ], [ inttoptr (i64 8 to ptr), %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.i ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.s, %bb.f ], [ inttoptr (i64 8 to ptr), %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.i ], [ inttoptr (i64 8 to ptr), %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.i ]
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i.i
  %i.z = phi ptr [ %i.ab, %bb.i ], [ %.sroa.3.0.i.i.i.i.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i.i ] ; 3 uses
  %i.aa = icmp eq ptr %.sroa.0.0.i.i.i.i.i, %i.z
  br i1 %i.aa, label %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem13original_name.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -32 ; 2 uses
  %.sroa.01.0.in.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.z, i64 -31
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.01.0.in.i.i.i.i.i.i.i.i.i, align 1, !range !21, !alias.scope !3876, !noalias !3877, !noundef !19
  %.not.i.i.i.i.i = icmp eq i8 %.sroa.01.0.i.i.i.i.i.i.i.i.i, 99
  br i1 %.not.i.i.i.i.i, label %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem13original_name.exit, label %bb.h

.preheader40:                                     ; preds = %bb.a, %bb.k
  %.sroa.03.0.i.i.i.i4 = phi ptr [ %i.am, %bb.k ], [ %1, %bb.a ] ; 3 uses
  %i.ac = load i8, ptr %.sroa.03.0.i.i.i.i4, align 8, !range !30, !noundef !19
  switch i8 %i.ac, label %default.unreachable [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i5
    i8 1, label %bb.j
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i5
    i8 3, label %bb.k
  ]

bb.j:                                             ; preds = %.preheader40
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i4, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !3878, !nonnull !19, !noundef !19 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !3878, !noundef !19
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.ai
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i5

bb.k:                                             ; preds = %.preheader40
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i4, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !19, !noundef !19
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  br label %.preheader40

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i5: ; preds = %.preheader40, %.preheader40, %bb.j
  %.sroa.3.0.i.i.i.i6 = phi ptr [ %i.aj, %bb.j ], [ inttoptr (i64 8 to ptr), %.preheader40 ], [ inttoptr (i64 8 to ptr), %.preheader40 ]
  %.sroa.0.0.i.i.i.i7 = phi ptr [ %i.ag, %bb.j ], [ inttoptr (i64 8 to ptr), %.preheader40 ], [ inttoptr (i64 8 to ptr), %.preheader40 ]
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i5
  %i.an = phi ptr [ %i.ap, %bb.m ], [ %.sroa.3.0.i.i.i.i6, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i5 ] ; 3 uses
  %i.ao = icmp eq ptr %.sroa.0.0.i.i.i.i7, %i.an
  br i1 %i.ao, label %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem13original_name.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -32 ; 2 uses
  %.sroa.01.0.in.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.an, i64 -31
  %.sroa.01.0.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.01.0.in.i.i.i.i.i.i.i.i, align 1, !range !21, !alias.scope !3879, !noalias !3880, !noundef !19
  %.not.i.i.i.i8 = icmp eq i8 %.sroa.01.0.i.i.i.i.i.i.i.i, 99
  br i1 %.not.i.i.i.i8, label %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem13original_name.exit, label %bb.l

_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem13original_name.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h
  %.sroa.03.0 = phi ptr [ @_RNvNvXs6X_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_5IdentNtB8_7AstNode11placeholder11PLACEHOLDER, %bb.h ], [ %i.ab, %bb.i ], [ @_RNvNvXs6X_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_5IdentNtB8_7AstNode11placeholder11PLACEHOLDER, %bb.l ], [ %i.ap, %bb.m ]
  ret ptr %.sroa.03.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef nonnull align 8 ptr @_RNvMs1i_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_10ImportItem4path(i64 noundef range(i64 0, 2) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %2 = trunc nuw i64 %0 to i1
  br i1 %2, label %.preheader, label %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit

.preheader:                                       ; preds = %bb.a, %bb.c
  %.sroa.03.0.i.i.i = phi ptr [ %i.k, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.a = load i8, ptr %.sroa.03.0.i.i.i, align 8, !range !30, !noundef !19
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i
    i8 1, label %bb.b
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i
    i8 3, label %bb.c
  ]

default.unreachable:                              ; preds = %.preheader
  unreachable

bb.b:                                             ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !3895, !nonnull !19, !noundef !19 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noalias !3895, !noundef !19
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.g
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i

bb.c:                                             ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !19, !noundef !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %.preheader

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i: ; preds = %.preheader, %.preheader, %bb.b
  %.sroa.3.0.i.i.i = phi ptr [ %i.h, %bb.b ], [ inttoptr (i64 8 to ptr), %.preheader ], [ inttoptr (i64 8 to ptr), %.preheader ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.e, %bb.b ], [ inttoptr (i64 8 to ptr), %.preheader ], [ inttoptr (i64 8 to ptr), %.preheader ]
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i
  %i.l = phi ptr [ %i.n, %bb.e ], [ %.sroa.0.0.i.i.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i ] ; 4 uses
  %i.m = icmp eq ptr %i.l, %.sroa.3.0.i.i.i
  br i1 %i.m, label %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.01.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.01.0.i.i.i.i.i.i = load i8, ptr %.sroa.01.0.in.i.i.i.i.i.i, align 1, !range !21, !alias.scope !3896, !noalias !3897, !noundef !19
  %.not.i.i.i = icmp eq i8 %.sroa.01.0.i.i.i.i.i.i, -127
  br i1 %.not.i.i.i, label %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit, label %bb.d

_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit: ; preds = %bb.e, %bb.d, %bb.a
  %.sroa.03.0 = phi ptr [ %1, %bb.a ], [ @_RNvNvXsdp_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_14ImportItemPathNtB8_7AstNode11placeholder11PLACEHOLDER, %bb.d ], [ %i.l, %bb.e ]
  ret ptr %.sroa.03.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 ptr @_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem13original_name(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.03.0.i.i.i = phi ptr [ %0, %bb.a ], [ %i.k, %bb.d ] ; 3 uses
  %i.a = load i8, ptr %.sroa.03.0.i.i.i, align 8, !range !30, !noundef !19
  switch i8 %i.a, label %.unreachabledefault [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i
    i8 1, label %bb.c
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i
    i8 3, label %bb.d
  ]

.unreachabledefault:                              ; preds = %bb.b
  unreachable

default.unreachable:                              ; preds = %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !3930, !nonnull !19, !noundef !19 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noalias !3930, !noundef !19
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.g
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !19, !noundef !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.b

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i: ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.3.0.i.i.i = phi ptr [ %i.h, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.e, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i
  %i.l = phi ptr [ %i.n, %bb.f ], [ %.sroa.0.0.i.i.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i ] ; 4 uses
  %i.m = icmp eq ptr %i.l, %.sroa.3.0.i.i.i
  br i1 %i.m, label %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.01.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.01.0.i.i.i.i.i.i = load i8, ptr %.sroa.01.0.in.i.i.i.i.i.i, align 1, !range !21, !alias.scope !3931, !noalias !3932, !noundef !19
  %.not.i.i.i = icmp eq i8 %.sroa.01.0.i.i.i.i.i.i, -127
  br i1 %.not.i.i.i, label %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.preheader, label %bb.e

_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.preheader: ; preds = %bb.e, %bb.f
  %.sroa.03.0.i.i.i.i.ph = phi ptr [ @_RNvNvXsdp_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_14ImportItemPathNtB8_7AstNode11placeholder11PLACEHOLDER, %bb.e ], [ %i.l, %bb.f ]
  br label %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit

_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit: ; preds = %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.preheader, %bb.h
  %.sroa.03.0.i.i.i.i = phi ptr [ %i.y, %bb.h ], [ %.sroa.03.0.i.i.i.i.ph, %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit.preheader ] ; 3 uses
  %i.o = load i8, ptr %.sroa.03.0.i.i.i.i, align 8, !range !30, !noundef !19
  switch i8 %i.o, label %default.unreachable [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i
    i8 1, label %bb.g
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i
    i8 3, label %bb.h
  ]

bb.g:                                             ; preds = %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !noalias !3933, !nonnull !19, !noundef !19 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = load i64, ptr %i.t, align 8, !noalias !3933, !noundef !19
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.u
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i

bb.h:                                             ; preds = %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !19, !noundef !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  br label %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i: ; preds = %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit, %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit, %bb.g
  %.sroa.3.0.i.i.i.i = phi ptr [ %i.v, %bb.g ], [ inttoptr (i64 8 to ptr), %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit ], [ inttoptr (i64 8 to ptr), %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.s, %bb.g ], [ inttoptr (i64 8 to ptr), %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit ], [ inttoptr (i64 8 to ptr), %_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path.exit ]
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i
  %i.z = phi ptr [ %i.ab, %bb.j ], [ %.sroa.3.0.i.i.i.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i ] ; 3 uses
  %i.aa = icmp eq ptr %.sroa.0.0.i.i.i.i, %i.z
  br i1 %i.aa, label %_RNvMs1h_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_14ImportItemPath4name.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -32 ; 2 uses
  %.sroa.01.0.in.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.z, i64 -31
  %.sroa.01.0.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.01.0.in.i.i.i.i.i.i.i.i, align 1, !range !21, !alias.scope !3934, !noalias !3935, !noundef !19
  %.not.i.i.i.i = icmp eq i8 %.sroa.01.0.i.i.i.i.i.i.i.i, 99
  br i1 %.not.i.i.i.i, label %_RNvMs1h_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_14ImportItemPath4name.exit, label %bb.i

_RNvMs1h_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_14ImportItemPath4name.exit: ; preds = %bb.i, %bb.j
  %.sroa.0.0.i.i1 = phi ptr [ %i.ab, %bb.j ], [ @_RNvNvXs6X_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_5IdentNtB8_7AstNode11placeholder11PLACEHOLDER, %bb.i ]
  ret ptr %.sroa.0.0.i.i1
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 ptr @_RNvMs1j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_17RenamedImportItem4path(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.03.0.i.i = phi ptr [ %0, %bb.a ], [ %i.k, %bb.d ] ; 3 uses
  %i.a = load i8, ptr %.sroa.03.0.i.i, align 8, !range !30, !noundef !19
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i
    i8 1, label %bb.c
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i
    i8 3, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !3948, !nonnull !19, !noundef !19 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noalias !3948, !noundef !19
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.g
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !19, !noundef !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.b

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i: ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.3.0.i.i = phi ptr [ %i.h, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i
  %i.l = phi ptr [ %i.n, %bb.f ], [ %.sroa.0.0.i.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i ] ; 4 uses
end_hunk_6
begin_hunk_7_@_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer9math_text:bb.a
_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i: ; preds = %bb.g
  %i.aa = and i8 %i.y, 31
  %i.ab = zext nneg i8 %i.aa to i32               ; 3 uses
  %i.ac = icmp samesign ne i64 %.sroa.0.0.lcssa.i8.i, 1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 2 ; 2 uses
  %i.ae = load i8, ptr %i.x, align 1, !alias.scope !4769, !noalias !4770, !noundef !19
  %i.af = shl nuw nsw i32 %i.ab, 6
  %i.ag = and i8 %i.ae, 63
  %i.ah = zext nneg i8 %i.ag to i32               ; 2 uses
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = icmp samesign ugt i8 %i.y, -33
  br i1 %i.aj, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = zext nneg i8 %i.y to i32
  br label %bb.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i
  %i.al = icmp samesign ne i64 %.sroa.0.0.lcssa.i8.i, 2
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 3 ; 2 uses
  %i.an = load i8, ptr %i.ad, align 1, !alias.scope !4769, !noalias !4770, !noundef !19
  %i.ao = shl nuw nsw i32 %i.ah, 6
  %i.ap = and i8 %i.an, 63
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.ao, %i.aq            ; 2 uses
  %i.as = shl nuw nsw i32 %i.ab, 12
  %i.at = or disjoint i32 %i.ar, %i.as
  %i.au = icmp samesign ugt i8 %i.y, -17
  br i1 %i.au, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i, label %bb.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i
  %i.av = icmp samesign ne i64 %.sroa.0.0.lcssa.i8.i, 3
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ax = load i8, ptr %i.am, align 1, !alias.scope !4769, !noalias !4770, !noundef !19
  %i.ay = shl nuw nsw i32 %i.ab, 18
  %i.az = and i32 %i.ay, 1835008
  %i.ba = shl nuw nsw i32 %i.ar, 6
  %i.bb = and i8 %i.ax, 63
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  %i.be = or disjoint i32 %i.bd, %i.az
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i, %bb.h, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i
  %.sroa.0.2.ph.i.i = phi ptr [ %i.ad, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i ], [ %i.aw, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i ], [ %i.x, %bb.h ]
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.ai, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i ], [ %i.at, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i ], [ %i.be, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i ], [ %i.ak, %bb.h ] ; 2 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.bj
  %i.bj = phi i64 [ 0, %bb.i ], [ %.pre, %bb.bj ]
  %.sroa.0.0.i5.i = phi ptr [ %.sroa.0.2.ph.i.i, %bb.i ], [ %.sroa.0.3.ph.i.i, %bb.bj ] ; 7 uses
  %.sroa.08.0.i.i = phi i32 [ %.sroa.4.0.i.ph.i.i, %bb.i ], [ %.sroa.4.0.i33.ph.i.i, %bb.bj ] ; 24 uses
  %i.bk = icmp samesign ult i32 %.sroa.08.0.i.i, 128
  br i1 %i.bk, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = icmp samesign ult i32 %.sroa.08.0.i.i, 2048
  br i1 %i.bl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = icmp samesign ult i32 %.sroa.08.0.i.i, 65536
  %..i.i = select i1 %i.bm, i64 3, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.01.0.i.i = phi i64 [ 2, %bb.k ], [ %..i.i, %bb.l ], [ 1, %bb.j ]
  %i.bn = call i64 @llvm.uadd.sat.i64(i64 %i.bj, i64 %.sroa.01.0.i.i)
  store i64 %i.bn, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !4771, !noalias !4772
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 2, !alias.scope !4771, !noalias !4772
  %i.bo = load i8, ptr %.sroa.16.0..sroa_idx, align 8, !range !4773, !alias.scope !4771, !noalias !4772, !noundef !19 ; 3 uses
  store i8 -1, ptr %.sroa.16.0..sroa_idx, align 8, !alias.scope !4771, !noalias !4772
  store i8 %i.bo, ptr %.sroa.15.0..sroa_idx, align 1, !alias.scope !4771, !noalias !4772
  %.not26.i.i = icmp eq i8 %i.bo, -1
  br i1 %.not26.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.bp = phi i8 [ %i.bs, %bb.o ], [ %i.bo, %bb.m ]
  %i.bq = add nsw i32 %.sroa.08.0.i.i, -2381      ; 2 uses
  %i.br = call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 25)
  switch i32 %i.br, label %bb.p [
    i32 0, label %bb.q
    i32 1, label %bb.q
    i32 3, label %bb.q
    i32 4, label %bb.q
    i32 6, label %bb.q
    i32 8, label %bb.q
  ]

bb.o:                                             ; preds = %bb.m
  %i.bs = call noundef i8 @_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.c, i32 noundef %.sroa.08.0.i.i), !noalias !4772 ; 2 uses
  store i8 %i.bs, ptr %.sroa.15.0..sroa_idx, align 1, !alias.scope !4771, !noalias !4772
  br label %bb.n

bb.p:                                             ; preds = %bb.n
  %i.bt = icmp samesign ult i32 %.sroa.08.0.i.i, 43263
  %i.bu = select i1 %i.bt, i64 0, i64 185, !unpredictable !19 ; 2 uses
  %i.bv = add nuw nsw i64 %i.bu, 93               ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @352, i64 %i.bv ; 2 uses
  %.val12.1.i.i.i = load i32, ptr %i.bw, align 4, !range !52, !noalias !4774, !noundef !19
  %i.bx = getelementptr i8, ptr %i.bw, i64 4
  %.val13.1.i.i.i = load i32, ptr %i.bx, align 4, !range !52, !noalias !4774, !noundef !19
  %.not.i17.1.i.i.i = icmp samesign ugt i32 %.val12.1.i.i.i, %.sroa.08.0.i.i
  %.not1.i18.1.i.i.i = icmp samesign ule i32 %.sroa.08.0.i.i, %.val13.1.i.i.i
  %i.by = select i1 %.not1.i18.1.i.i.i, i1 %.not.i17.1.i.i.i, i1 false
  %i.bz = select i1 %i.by, i64 %i.bu, i64 %i.bv, !unpredictable !19 ; 2 uses
  %i.ca = add nuw nsw i64 %i.bz, 46               ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr @352, i64 %i.ca ; 2 uses
  %.val12.2.i.i.i = load i32, ptr %i.cb, align 4, !range !52, !noalias !4774, !noundef !19
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  %.val13.2.i.i.i = load i32, ptr %i.cc, align 4, !range !52, !noalias !4774, !noundef !19
  %.not.i17.2.i.i.i = icmp samesign ugt i32 %.val12.2.i.i.i, %.sroa.08.0.i.i
  %.not1.i18.2.i.i.i = icmp samesign ule i32 %.sroa.08.0.i.i, %.val13.2.i.i.i
  %i.cd = select i1 %.not1.i18.2.i.i.i, i1 %.not.i17.2.i.i.i, i1 false
  %i.ce = select i1 %i.cd, i64 %i.bz, i64 %i.ca, !unpredictable !19 ; 2 uses
  %i.cf = add nuw nsw i64 %i.ce, 23               ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr @352, i64 %i.cf ; 2 uses
  %.val12.3.i.i.i = load i32, ptr %i.cg, align 4, !range !52, !noalias !4774, !noundef !19
  %i.ch = getelementptr i8, ptr %i.cg, i64 4
  %.val13.3.i.i.i = load i32, ptr %i.ch, align 4, !range !52, !noalias !4774, !noundef !19
  %.not.i17.3.i.i.i = icmp samesign ugt i32 %.val12.3.i.i.i, %.sroa.08.0.i.i
  %.not1.i18.3.i.i.i = icmp samesign ule i32 %.sroa.08.0.i.i, %.val13.3.i.i.i
  %i.ci = select i1 %.not1.i18.3.i.i.i, i1 %.not.i17.3.i.i.i, i1 false
  %i.cj = select i1 %i.ci, i64 %i.ce, i64 %i.cf, !unpredictable !19 ; 2 uses
  %i.ck = add nuw nsw i64 %i.cj, 12               ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @352, i64 %i.ck ; 2 uses
  %.val12.4.i.i.i = load i32, ptr %i.cl, align 4, !range !52, !noalias !4774, !noundef !19
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %.val13.4.i.i.i = load i32, ptr %i.cm, align 4, !range !52, !noalias !4774, !noundef !19
  %.not.i17.4.i.i.i = icmp samesign ugt i32 %.val12.4.i.i.i, %.sroa.08.0.i.i
  %.not1.i18.4.i.i.i = icmp samesign ule i32 %.sroa.08.0.i.i, %.val13.4.i.i.i
  %i.cn = select i1 %.not1.i18.4.i.i.i, i1 %.not.i17.4.i.i.i, i1 false
  %i.co = select i1 %i.cn, i64 %i.cj, i64 %i.ck, !unpredictable !19 ; 2 uses
  %i.cp = add nuw nsw i64 %i.co, 6                ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr @352, i64 %i.cp ; 2 uses
  %.val12.5.i.i.i = load i32, ptr %i.cq, align 4, !range !52, !noalias !4774, !noundef !19
  %i.cr = getelementptr i8, ptr %i.cq, i64 4
  %.val13.5.i.i.i = load i32, ptr %i.cr, align 4, !range !52, !noalias !4774, !noundef !19
  %.not.i17.5.i.i.i = icmp samesign ugt i32 %.val12.5.i.i.i, %.sroa.08.0.i.i
  %.not1.i18.5.i.i.i = icmp samesign ule i32 %.sroa.08.0.i.i, %.val13.5.i.i.i
  %i.cs = select i1 %.not1.i18.5.i.i.i, i1 %.not.i17.5.i.i.i, i1 false
  %i.ct = select i1 %i.cs, i64 %i.co, i64 %i.cp, !unpredictable !19 ; 2 uses
  %i.cu = add nuw nsw i64 %i.ct, 3                ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @352, i64 %i.cu ; 2 uses
  %.val12.6.i.i.i = load i32, ptr %i.cv, align 4, !range !52, !noalias !4774, !noundef !19
  %i.cw = getelementptr i8, ptr %i.cv, i64 4
  %.val13.6.i.i.i = load i32, ptr %i.cw, align 4, !range !52, !noalias !4774, !noundef !19
  %.not.i17.6.i.i.i = icmp samesign ugt i32 %.val12.6.i.i.i, %.sroa.08.0.i.i
  %.not1.i18.6.i.i.i = icmp samesign ule i32 %.sroa.08.0.i.i, %.val13.6.i.i.i
  %i.cx = select i1 %.not1.i18.6.i.i.i, i1 %.not.i17.6.i.i.i, i1 false
  %i.cy = select i1 %i.cx, i64 %i.ct, i64 %i.cu, !unpredictable !19 ; 2 uses
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr @352, i64 %i.cz ; 2 uses
  %.val12.7.i.i.i = load i32, ptr %i.da, align 4, !range !52, !noalias !4774, !noundef !19
  %i.db = getelementptr i8, ptr %i.da, i64 4
  %.val13.7.i.i.i = load i32, ptr %i.db, align 4, !range !52, !noalias !4774, !noundef !19
  %.not.i17.7.i.i.i = icmp samesign ugt i32 %.val12.7.i.i.i, %.sroa.08.0.i.i
  %.not1.i18.7.i.i.i = icmp samesign ule i32 %.sroa.08.0.i.i, %.val13.7.i.i.i
  %i.dc = select i1 %.not1.i18.7.i.i.i, i1 %.not.i17.7.i.i.i, i1 false
  %i.dd = select i1 %i.dc, i64 %i.cy, i64 %i.cz, !unpredictable !19 ; 2 uses
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr @352, i64 %i.de ; 2 uses
  %.val12.8.i.i.i = load i32, ptr %i.df, align 4, !range !52, !noalias !4774, !noundef !19
  %i.dg = getelementptr i8, ptr %i.df, i64 4
  %.val13.8.i.i.i = load i32, ptr %i.dg, align 4, !range !52, !noalias !4774, !noundef !19
  %.not.i17.8.i.i.i = icmp samesign ugt i32 %.val12.8.i.i.i, %.sroa.08.0.i.i
  %.not1.i18.8.i.i.i = icmp samesign ule i32 %.sroa.08.0.i.i, %.val13.8.i.i.i
  %i.dh = select i1 %.not1.i18.8.i.i.i, i1 %.not.i17.8.i.i.i, i1 false
  %i.di = select i1 %i.dh, i64 %i.dd, i64 %i.de, !unpredictable !19
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr @352, i64 %i.di ; 2 uses
  %.val15.i.i.i = load i32, ptr %i.dj, align 4, !range !52, !noalias !4774, !noundef !19
  %i.dk = getelementptr i8, ptr %i.dj, i64 4
  %.val16.i.i.i = load i32, ptr %i.dk, align 4, !range !52, !noalias !4774, !noundef !19
  %.not.i.i.i.i = icmp samesign ule i32 %.val15.i.i.i, %.sroa.08.0.i.i
  %.not1.i.i.i.i = icmp samesign ule i32 %.sroa.08.0.i.i, %.val16.i.i.i
  %.not.i31.not.i.i = select i1 %.not1.i.i.i.i, i1 %.not.i.i.i.i, i1 false
  br i1 %.not.i31.not.i.i, label %bb.r, label %.sink.split.i.i

bb.q:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %i.dl = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !range !35, !alias.scope !4771, !noalias !4772, !noundef !19
  %i.dm = load i64, ptr %i.bg, align 8, !alias.scope !4771, !noalias !4772
  %i.dn = trunc nuw i64 %i.dl to i1
  %i.do = add i64 %i.dm, 1
  %spec.select.i.i.i = select i1 %i.dn, i64 %i.do, i64 1
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.q, %bb.p
  %.sink.i.i = phi i64 [ %spec.select.i.i.i, %bb.q ], [ 0, %bb.p ]
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !4771, !noalias !4772
  store i64 %.sink.i.i, ptr %i.bg, align 8, !alias.scope !4771, !noalias !4772
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i.i, %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i5.i) ]
  %cond.i.i = icmp eq i8 %i.bp, 11                ; 2 uses
  %i.dp = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !range !35, !alias.scope !4771, !noalias !4772 ; 2 uses
  %i.dq = trunc nuw i64 %i.dp to i1
  %i.dr = load i64, ptr %i.bh, align 8, !alias.scope !4771, !noalias !4772
  %i.ds = add i64 %i.dr, 1
  %.sroa.5.0.i.i = select i1 %i.dq, i64 %i.ds, i64 undef
  %storemerge155.i.i = select i1 %cond.i.i, i64 %i.dp, i64 1, !prof !4775
  %storemerge.i.i = select i1 %cond.i.i, i64 %.sroa.5.0.i.i, i64 0, !prof !4775
  store i64 %storemerge155.i.i, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !4771, !noalias !4772
  store i64 %storemerge.i.i, ptr %i.bh, align 8, !alias.scope !4771, !noalias !4772
  %i.dt = icmp eq ptr %.sroa.0.0.i5.i, %i.w
  br i1 %i.dt, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i5.i, i64 1 ; 3 uses
  %i.dv = load i8, ptr %.sroa.0.0.i5.i, align 1, !alias.scope !4769, !noalias !4776, !noundef !19 ; 5 uses
  %i.dw = icmp sgt i8 %i.dv, -1
  br i1 %i.dw, label %bb.t, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i32.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i32.i.i: ; preds = %bb.s
  %i.dx = and i8 %i.dv, 31
  %i.dy = zext nneg i8 %i.dx to i32               ; 3 uses
  %i.dz = icmp ne ptr %i.du, %i.w
  call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i5.i, i64 2 ; 3 uses
  %i.eb = load i8, ptr %i.du, align 1, !alias.scope !4769, !noalias !4776, !noundef !19
  %i.ec = shl nuw nsw i32 %i.dy, 6
  %i.ed = and i8 %i.eb, 63
  %i.ee = zext nneg i8 %i.ed to i32               ; 2 uses
  %i.ef = or disjoint i32 %i.ec, %i.ee
  %i.eg = icmp samesign ugt i8 %i.dv, -33
  br i1 %i.eg, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i35.i.i, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.eh = zext nneg i8 %i.dv to i32
  br label %bb.w

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i35.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i32.i.i
  %i.ei = icmp ne ptr %i.ea, %i.w
  call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i5.i, i64 3 ; 3 uses
  %i.ek = load i8, ptr %i.ea, align 1, !alias.scope !4769, !noalias !4776, !noundef !19
  %i.el = shl nuw nsw i32 %i.ee, 6
  %i.em = and i8 %i.ek, 63
  %i.en = zext nneg i8 %i.em to i32
  %i.eo = or disjoint i32 %i.el, %i.en            ; 2 uses
  %i.ep = shl nuw nsw i32 %i.dy, 12
  %i.eq = or disjoint i32 %i.eo, %i.ep
  %i.er = icmp samesign ugt i8 %i.dv, -17
  br i1 %i.er, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i36.i.i, label %bb.w

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i36.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i35.i.i
  %i.es = icmp ne ptr %i.ej, %i.w
  call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i5.i, i64 4
  %i.eu = load i8, ptr %i.ej, align 1, !alias.scope !4769, !noalias !4776, !noundef !19
  %i.ev = shl nuw nsw i32 %i.dy, 18
  %i.ew = and i32 %i.ev, 1835008
  %i.ex = shl nuw nsw i32 %i.eo, 6
  %i.ey = and i8 %i.eu, 63
  %i.ez = zext nneg i8 %i.ey to i32
  %i.fa = or disjoint i32 %i.ex, %i.ez
  %i.fb = or disjoint i32 %i.fa, %i.ew
  br label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.fc = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !4771, !noalias !4772, !noundef !19
  %i.fd = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !4771, !noalias !4772, !noundef !19
  %i.fe = icmp eq i64 %i.fc, %i.fd
  br i1 %i.fe, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %.sroa.13.0..sroa_idx, align 1, !alias.scope !4771, !noalias !4772
  br label %bb.bk

.thread:                                          ; preds = %bb.u
  store i8 2, ptr %.sroa.14.0..sroa_idx, align 2, !alias.scope !4771, !noalias !4772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4777
  br label %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread.i.i

bb.w:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i32.i.i, %bb.t, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i35.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i36.i.i
  %.sroa.0.3.ph.i.i = phi ptr [ %i.ea, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i32.i.i ], [ %i.ej, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i35.i.i ], [ %i.et, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i36.i.i ], [ %i.du, %bb.t ]
  %.sroa.4.0.i33.ph.i.i = phi i32 [ %i.ef, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i32.i.i ], [ %i.eq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i35.i.i ], [ %i.fb, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i36.i.i ], [ %i.eh, %bb.t ] ; 3 uses
  %i.ff = icmp samesign ult i32 %.sroa.4.0.i33.ph.i.i, 1114112
  call void @llvm.assume(i1 %i.ff)
  %i.fg = call noundef i8 @_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.c, i32 noundef %.sroa.4.0.i33.ph.i.i), !noalias !4772 ; 4 uses
  store i8 %i.fg, ptr %.sroa.16.0..sroa_idx, align 8, !alias.scope !4771, !noalias !4772
  %.pr = load i8, ptr %.sroa.14.0..sroa_idx, align 2, !alias.scope !4778, !noalias !4779
  store i8 1, ptr %.sroa.13.0..sroa_idx, align 1, !alias.scope !4771, !noalias !4772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4777
  call void @llvm.experimental.noalias.scope.decl(metadata !4780)
  call void @llvm.experimental.noalias.scope.decl(metadata !4781)
  switch i8 %.pr, label %bb.x [
    i8 2, label %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread.i.i
    i8 1, label %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread157.i.i
  ]

bb.x:                                             ; preds = %bb.w
  %i.fh = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !4778, !noalias !4779, !noundef !19 ; 22 uses
  %.not.i38.i.i.not = icmp ult i64 %i.fh, %.sroa.0.0.lcssa.i8.i ; 4 uses
  %i.fi = icmp ugt i64 %i.fh, %.sroa.0.0.lcssa.i8.i
  br i1 %i.fi, label %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.loopexit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fj = load i64, ptr %i.c, align 8, !range !35, !alias.scope !4778, !noalias !4779, !noundef !19
  %i.fk = trunc nuw i64 %i.fj to i1
  br i1 %i.fk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !4778, !noalias !4779, !noundef !19
  br label %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.i

bb.aa:                                            ; preds = %bb.y
  %i.fn = icmp eq i64 %i.fh, 0                    ; 4 uses
  br i1 %i.fn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  switch i8 %i.fg, label %bb.ad [
    i8 11, label %.sink.split.i.i.i.loopexit
    i8 4, label %.sink.split.i.i.i.loopexit14
    i8 5, label %.sink.split.i.i.i
  ], !prof !4782

bb.ac:                                            ; preds = %bb.aa
  %.pre102.i.i.i = load i8, ptr %.sroa.15.0..sroa_idx, align 1, !range !4773, !alias.scope !4778, !noalias !4779 ; 2 uses
  %.not43.i.i.i = icmp eq i8 %.pre102.i.i.i, -1
  br i1 %.not43.i.i.i, label %bb.ae, label %.thread.thread.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fo = load i8, ptr %.sroa.15.0..sroa_idx, align 1, !range !4773, !alias.scope !4778, !noalias !4779, !noundef !19 ; 2 uses
  %.not42.i.i.i = icmp eq i8 %i.fo, -1
  br i1 %.not42.i.i.i, label %.loopexit.i.i, label %.thread.thread.i.i.i

.sink.split.i.i.i.loopexit:                       ; preds = %bb.ab
  br label %.sink.split.i.i.i

.sink.split.i.i.i.loopexit14:                     ; preds = %bb.ab
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.ab, %.sink.split.i.i.i.loopexit14, %.sink.split.i.i.i.loopexit
  %.sink.i.i.i = phi i8 [ 5, %.sink.split.i.i.i.loopexit14 ], [ 4, %.sink.split.i.i.i.loopexit ], [ 3, %bb.ab ]
  store i8 %.sink.i.i.i, ptr %.sroa.14.0..sroa_idx, align 2, !alias.scope !4778, !noalias !4779
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.ad, %.sink.split.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.c, align 8, !alias.scope !4778, !noalias !4779
  store i64 0, ptr %i.fp, align 8, !alias.scope !4778, !noalias !4779
  br label %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.i

bb.ae:                                            ; preds = %bb.ac
  br i1 %.not.i38.i.i.not, label %bb.af, label %.split.i54.i.i.i

.split.i54.i.i.i:                                 ; preds = %bb.ae
  %i.fq = icmp eq i64 %i.fh, %.sroa.0.0.lcssa.i8.i
  br i1 %i.fq, label %bb.ag, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.fr = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.fh
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !4783, !noalias !4784, !noundef !19
  %i.ft = icmp sgt i8 %i.fs, -65
  br i1 %i.ft, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af, %.split.i54.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.fh ; 4 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -1
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !4785, !noalias !4786, !noundef !19 ; 3 uses
  %i.fx = icmp sgt i8 %i.fw, -1
  br i1 %i.fx, label %bb.ah, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i.i.i: ; preds = %bb.ag
  %i.fy = icmp ne i64 %i.fh, 1
  call void @llvm.assume(i1 %i.fy)
  %i.fz = getelementptr inbounds i8, ptr %i.fu, i64 -2
  %i.ga = load i8, ptr %i.fz, align 1, !alias.scope !4785, !noalias !4786, !noundef !19 ; 3 uses
  %i.gb = and i8 %i.ga, 31
  %i.gc = zext nneg i8 %i.gb to i32
  %i.gd = icmp slt i8 %i.ga, -64
  br i1 %i.gd, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i.i.i, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ge = zext nneg i8 %i.fw to i32
  br label %.thread.i.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i.i.i
  %i.gf = icmp ne i64 %i.fh, 2
  call void @llvm.assume(i1 %i.gf)
  %i.gg = getelementptr inbounds i8, ptr %i.fu, i64 -3
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !4785, !noalias !4786, !noundef !19 ; 3 uses
  %i.gi = and i8 %i.gh, 15
  %i.gj = zext nneg i8 %i.gi to i32
  %i.gk = icmp slt i8 %i.gh, -64
  br i1 %i.gk, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i.i.i, label %bb.aj

bb.ai:                                            ; preds = %bb.aj, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i.i.i
  %.sroa.010.0.i.i.i.i = phi i32 [ %i.hb, %bb.aj ], [ %i.gc, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i.i.i ]
  %i.gl = shl nuw nsw i32 %.sroa.010.0.i.i.i.i, 6
  %i.gm = and i8 %i.fw, 63
  %i.gn = zext nneg i8 %i.gm to i32
  %i.go = or disjoint i32 %i.gl, %i.gn
  br label %.thread.i.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i.i.i
  %i.gp = icmp ne i64 %i.fh, 3
  call void @llvm.assume(i1 %i.gp)
  %i.gq = getelementptr inbounds i8, ptr %i.fu, i64 -4
  %i.gr = load i8, ptr %i.gq, align 1, !alias.scope !4785, !noalias !4786, !noundef !19
  %i.gs = and i8 %i.gr, 7
  %i.gt = zext nneg i8 %i.gs to i32
end_hunk_7
begin_hunk_8_@_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17depth_check_error:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4hint(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 32, 72) %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i64, ptr %i.a, align 8, !noundef !19 ; 3 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !noundef !19
  %i.f = xor i64 %i.e, -1
  %i.g = add i64 %i.b, %i.f                       ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.b
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !19, !noundef !19
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.g
  tail call fastcc void @_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode4hintReEB7_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @404)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6expect(ptr noalias nofree noundef align 8 dereferenceable(272) %0, i8 noundef range(i8 0, -119) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val2 = load i8, ptr %i.a, align 8, !range !21, !noundef !19 ; 3 uses
  %i.b = icmp eq i8 %.val2, %1                    ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %1, 99
  %.off.i = add i8 %.val2, -78
  %switch.i = icmp ult i8 %.off.i, 20
  %or.cond = and i1 %i.c, %switch.i
  br i1 %or.cond, label %bb.i, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef align 8 dereferenceable(272) %0)
  br label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser8expected.exit

bb.d:                                             ; preds = %bb.b
  %.off.i3 = add i8 %1, -46
  %switch.i4 = icmp ult i8 %.off.i3, 6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !range !20, !noundef !19
  %i.f = select i1 %switch.i4, i8 0, i8 %i.e
  store i8 %i.f, ptr %i.d, align 4
  %i.g = tail call { ptr, i64 } @_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind4name(i8 noundef %1) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5261)
  %i.j = icmp eq i8 %.val2, 1
  br i1 %i.j, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5262)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !5263, !noalias !5264, !noundef !19 ; 6 uses
  %i.m = icmp ult i64 %i.l, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !5263, !noalias !5264, !noundef !19 ; 3 uses
  %.not.i.i = icmp eq i64 %i.l, %i.o
  br i1 %.not.i.i, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = xor i64 %i.o, -1
  %i.q = add i64 %i.l, %i.p                       ; 3 uses
  %i.r = icmp ult i64 %i.q, %i.l
  br i1 %i.r, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #62, !noalias !5265
  unreachable

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i: ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !5263, !noalias !5264, !nonnull !19, !noundef !19
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.q
  %.sroa.01.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.sroa.01.0.i.i = load i8, ptr %.sroa.01.0.in.i.i, align 1, !range !21, !noalias !5265, !noundef !19
  %i.v = icmp eq i8 %.sroa.01.0.i.i, 1
  br i1 %i.v, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser8expected.exit, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i

bb.h:                                             ; preds = %bb.d
  tail call fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11trim_errors(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0), !noalias !5264
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0), !noalias !5264
  br label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser8expected.exit

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i: ; preds = %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i, %bb.e
  %i.w = sub i64 %i.l, %i.o
  tail call fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11expected_at(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.i)
  br label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser8expected.exit

bb.i:                                             ; preds = %bb.b
  tail call fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11trim_errors(ptr noalias nofree noundef align 8 dereferenceable(272) %0)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !5266, !noalias !5267, !noundef !19 ; 4 uses
  %i.z = icmp ult i64 %i.y, 288230376151711744
  tail call void @llvm.assume(i1 %i.z)
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0), !noalias !5267
  %i.aa = load i64, ptr %i.x, align 8, !alias.scope !5266, !noalias !5267, !noundef !19 ; 2 uses
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11eat_and_get.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @405) #62
  unreachable

_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11eat_and_get.exit: ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !5266, !noalias !5267, !nonnull !19, !noundef !19
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %i.y
  %i.af = tail call { ptr, i64 } @_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind4name(i8 noundef 99) ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0
  %i.ah = extractvalue { ptr, i64 } %i.af, 1
  tail call fastcc void @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode8expected(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.ah)
  br label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser8expected.exit

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser8expected.exit: ; preds = %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i, %bb.h, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i, %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11eat_and_get.exit, %bb.c
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser8expected(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !range !21, !noundef !19
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5270)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5270, !noundef !19 ; 6 uses
  %i.f = icmp ult i64 %i.e, 288230376151711744
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !5270, !noundef !19 ; 3 uses
  %.not.i = icmp eq i64 %i.e, %i.h
  br i1 %.not.i, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = xor i64 %i.h, -1
  %i.j = add i64 %i.e, %i.i                       ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.e
  br i1 %i.k, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #62, !noalias !5270
  unreachable

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !5270, !nonnull !19, !noundef !19
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.j
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %.sroa.01.0.i = load i8, ptr %.sroa.01.0.in.i, align 1, !range !21, !noalias !5270, !noundef !19
  %i.o = icmp eq i8 %.sroa.01.0.i, 1
  br i1 %i.o, label %bb.f, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11trim_errors(ptr noalias nofree noundef align 8 dereferenceable(272) %0)
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef align 8 dereferenceable(272) %0)
  br label %bb.f

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread: ; preds = %bb.b, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit
  %i.p = sub i64 %i.e, %i.h
  tail call fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11expected_at(ptr noalias nofree noundef align 8 dereferenceable(272) %0, i64 noundef %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread, %bb.e
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5PEMdK7bMAG_12typst_syntax(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 57) %3) unnamed_addr #25 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !32
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #60
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #60
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeE9drop_slowBH_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !5280, !noundef !19 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !noalias !5281, !noundef !19
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.c, align 8, !noalias !5281
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #57
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit unwind label %bb.d, !inline_history !5279

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeRNtNtBG_5alloc6GlobalEEB1c_(ptr nonnull %i.a) #59
  resume { ptr, i32 } %i.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.i = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeRNtNtBG_5alloc6GlobalEEB1c_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !19
  %i.l = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.l, ptr %i.j, align 8
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeRNtNtBG_5alloc6GlobalEEB1c_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeRNtNtBG_5alloc6GlobalEEB1c_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeRNtNtBG_5alloc6GlobalEEB1c_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, 1114112) i32 @_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_6Escape3get(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.012.0 = phi ptr [ %0, %bb.a ], [ %i.i, %bb.e ] ; 4 uses
  %i.b = load i8, ptr %.sroa.012.0, align 8, !range !30, !noundef !19
  switch i8 %i.b, label %default.unreachable73 [
    i8 0, label %bb.c
    i8 1, label %.loopexit
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable73:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 8
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !19, !noundef !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !19, !noundef !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.d, %bb.c
  %.sroa.01.0 = phi ptr [ %i.c, %bb.c ], [ %i.f, %bb.d ], [ @_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 15
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !5298, !noundef !19 ; 2 uses
  %.not.i = icmp sgt i8 %i.k, -1                  ; 2 uses
  %i.l = and i8 %i.k, 127
  %i.m = zext nneg i8 %i.l to i64
  %i.n = load ptr, ptr %.sroa.01.0, align 8, !alias.scope !5298, !nonnull !19
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !5298
  %.sroa.3.0.i = select i1 %.not.i, i64 %i.p, i64 %i.m ; 14 uses
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.n, ptr %.sroa.01.0 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 92, ptr %i.a, align 4, !noalias !5299
  %.not.i.i.i = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %.not.i.i.i, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.thread.i, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i

_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i: ; preds = %.loopexit
  %rhsc.i = load i8, ptr %.sroa.0.0.i, align 1, !noalias !5299
  %rhsc.fr.i = freeze i8 %rhsc.i
  %i.q = icmp eq i8 %rhsc.fr.i, 92
  br i1 %i.q, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6expectucECs5PEMdK7bMAG_12typst_syntax.exit, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.thread.i

_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.thread.i: ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i, %.loopexit
  call void @_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE8expected(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a), !noalias !5299
  br label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6expectucECs5PEMdK7bMAG_12typst_syntax.exit

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6expectucECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.thread.i
  %i.r = phi i1 [ true, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.thread.i ], [ false, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i ]
  %.sroa.12.0 = phi i64 [ 0, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.thread.i ], [ 1, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = sub nuw i64 %.sroa.3.0.i, %.sroa.12.0
  %.not.i.i.i20 = icmp samesign ult i64 %i.s, 2
  br i1 %.not.i.i.i20, label %bb.f, label %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i

_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i: ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6expectucECs5PEMdK7bMAG_12typst_syntax.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.12.0
  %i.u = load i16, ptr %i.t, align 1
  %i.v = icmp ne i16 31605, %i.u
  %i.w = zext i1 %i.v to i32
  %bcmp.i.i.fr.i.i = freeze i32 %i.w
  %i.x = icmp eq i32 %bcmp.i.i.fr.i.i, 0
  br i1 %i.x, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6expectucECs5PEMdK7bMAG_12typst_syntax.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.12.0 ; 4 uses
  %.not.i21 = icmp samesign eq i64 %.sroa.12.0, %.sroa.3.0.i
  br i1 %.not.i21, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %i.y, align 1, !noalias !5300, !noundef !19 ; 5 uses
  %i.aa = icmp sgt i8 %i.z, -1
  br i1 %i.aa, label %.thread, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i: ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ac = and i8 %i.z, 31
  %i.ad = zext nneg i8 %i.ac to i32               ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.12.0, 1
  %i.af = icmp samesign ne i64 %i.ae, %.sroa.3.0.i
  call void @llvm.assume(i1 %i.af)
  %i.ag = load i8, ptr %i.ab, align 1, !noalias !5300, !noundef !19
  %i.ah = shl nuw nsw i32 %i.ad, 6
  %i.ai = and i8 %i.ag, 63
  %i.aj = zext nneg i8 %i.ai to i32               ; 2 uses
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = icmp samesign ugt i8 %i.z, -33
  br i1 %i.al, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i, label %bb.aa

.thread:                                          ; preds = %bb.g
  %i.am = zext nneg i8 %i.z to i32
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 2
end_hunk_8
begin_hunk_9_@_RNvMsa_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10LinkedNode5range:bb.a
  %i.ab = insertvalue { i64, i64 } %i.aa, i64 %i.z, 1
  ret { i64, i64 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsa_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10LinkedNode8children(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6763)
  %i.b = load ptr, ptr %1, align 8, !alias.scope !6763, !noalias !6764, !nonnull !19, !align !29, !noundef !19 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !6763, !noalias !6764, !noundef !19 ; 6 uses
  %.not.i = icmp eq ptr %i.d, null                ; 2 uses
  br i1 %.not.i, label %_RNvXsY_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10LinkedNodeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8, !noalias !6765, !noundef !19 ; 2 uses
  %i.f = icmp ne i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add i64 %i.e, 1                          ; 2 uses
  store i64 %i.g, ptr %i.d, align 8, !noalias !6765
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %_RNvXsY_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10LinkedNodeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, !prof !23

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNvXsY_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10LinkedNodeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx6, align 8
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = load i64, ptr %i.j, align 8, !alias.scope !6763, !noalias !6764, !noundef !19 ; 2 uses
  %i.n = load <2 x i64>, ptr %i.i, align 8, !alias.scope !6763, !noalias !6764
  store <2 x i64> %i.n, ptr %.sroa.5.0..sroa_idx7, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !6766
  %i.o = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !6766 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEE3newB11_.exit, !prof !23

bb.d:                                             ; preds = %_RNvXsY_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10LinkedNodeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #58
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc7RcInnerNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEB1f_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.d, align 8, !noalias !6767, !noundef !19
  %i.s = add i64 %i.r, -1                         ; 2 uses
  store i64 %i.s, ptr %i.d, align 8, !noalias !6767
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc7RcInnerNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEB1f_.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeE9drop_slowBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %.sroa.4.0..sroa_idx6) #57
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc7RcInnerNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEB1f_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc7RcInnerNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEB1f_.exit: ; preds = %bb.f, %bb.e, %bb.g
  resume { ptr, i32 } %i.q

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEE3newB11_.exit: ; preds = %_RNvXsY_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10LinkedNodeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEE3newB11_.exit
  %.sroa.03.0.i = phi ptr [ %i.b, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEE3newB11_.exit ], [ %i.af, %bb.k ] ; 3 uses
  %i.v = load i8, ptr %.sroa.03.0.i, align 8, !range !30, !noundef !19
  switch i8 %i.v, label %.unreachabledefault [
    i8 0, label %.loopexit
    i8 1, label %bb.j
    i8 2, label %.loopexit
    i8 3, label %bb.k
  ]

.unreachabledefault:                              ; preds = %bb.i
  unreachable

default.unreachable:                              ; preds = %bb.l
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !noalias !6768, !nonnull !19, !noundef !19 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !6768, !noundef !19
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ab
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !19, !noundef !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  br label %bb.i

.loopexit:                                        ; preds = %bb.i, %bb.i, %bb.j
  %.sroa.3.0.i = phi ptr [ %i.ac, %bb.j ], [ inttoptr (i64 8 to ptr), %bb.i ], [ inttoptr (i64 8 to ptr), %bb.i ]
  %.sroa.0.0.i = phi ptr [ %i.z, %bb.j ], [ inttoptr (i64 8 to ptr), %bb.i ], [ inttoptr (i64 8 to ptr), %bb.i ]
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.loopexit
  %.sroa.04.0.i = phi ptr [ %i.b, %.loopexit ], [ %i.at, %bb.p ] ; 6 uses
  %i.ag = load i8, ptr %.sroa.04.0.i, align 8, !range !30, !noundef !19
  switch i8 %i.ag, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 23
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !19 ; 2 uses
  %.not14.i = icmp sgt i8 %i.ai, -1
  br i1 %.not14.i, label %bb.q, label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !19, !noundef !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load i64, ptr %i.al, align 8, !noalias !6769, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit

bb.o:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 47
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !6769, !noundef !19 ; 2 uses
  %.not.i5 = icmp sgt i8 %i.aq, -1
  br i1 %.not.i5, label %bb.s, label %bb.t

bb.p:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !19, !noundef !19
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  br label %bb.l

bb.q:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit

bb.r:                                             ; preds = %bb.m
  %i.aw = and i8 %i.ai, 127
  %i.ax = zext nneg i8 %i.aw to i64
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit

bb.s:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !noalias !6769, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit

bb.t:                                             ; preds = %bb.o
  %i.ba = and i8 %i.aq, 127
  %i.bb = zext nneg i8 %i.ba to i64
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.n
  %.sroa.0.1.i = phi i64 [ %i.av, %bb.q ], [ %i.am, %bb.n ], [ %i.ax, %bb.r ], [ %i.bb, %bb.t ], [ %i.az, %bb.s ]
  %i.bc = add i64 %.sroa.0.1.i, %i.m
  store ptr %i.o, ptr %0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i, ptr %i.bd, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.m, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bc, ptr %i.bf, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 16, 129) %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val15 = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val16 = load i64, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %i.c = add i64 %.val16, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val15, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val15, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val15, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val15, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !19
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg11 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg11 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #59
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 7 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !19 ; 6 uses
  %.sroa.0.07.i = and i64 %.val14, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !6772
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !27

._crit_edge.i17:                                  ; preds = %.lr.ph.i18, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i18 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i18 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val14                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !19
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !23

bb.g:                                             ; preds = %._crit_edge.i17
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i18:                                       ; preds = %bb.f, %.lr.ph.i18
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i18 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i18 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val14           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !6772
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !28

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i17
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i17 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val14
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !22

bb.h:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg12 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg13 = mul i64 %2, %.neg12
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg13 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !19
  %i.bm = lshr i64 %i.aj, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val14
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bu = lshr i64 %i.aj, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val14, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !19
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
end_hunk_9
begin_hunk_10_@_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser11conditional:bb.a
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser5block.exit

bb.h:                                             ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit
  tail call fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser10code_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0), !inline_history !11
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser5block.exit

bb.i:                                             ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit
  %.val.i6 = load i64, ptr %i.b, align 8, !alias.scope !8196, !noundef !19 ; 3 uses
  %i.s = icmp ult i64 %.val.i6, 288230376151711744
  tail call void @llvm.assume(i1 %i.s)
  tail call fastcc void @_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser11enter_modesNCNvB6_13content_block0EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 %.val.i6)
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %.val.i6, i8 noundef 106), !inline_history !12
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser5block.exit

_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser5block.exit: ; preds = %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i, %bb.g, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i, %bb.h, %bb.i
  %.val.i3 = load i8, ptr %i.d, align 8, !range !21, !alias.scope !8197, !noundef !19
  %i.t = icmp eq i8 %.val.i3, 88
  br i1 %i.t, label %bb.j, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit

_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit: ; preds = %bb.q, %bb.p, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i9, %bb.o, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i12, %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser5block.exit, %bb.r
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef align 8 dereferenceable(272) %0, i64 noundef %.val, i8 noundef 124)
  ret void

bb.j:                                             ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser5block.exit
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef align 8 dereferenceable(272) %0)
  %.val1 = load i8, ptr %i.d, align 8, !range !21, !noundef !19 ; 2 uses
  switch i8 %.val1, label %bb.k [
    i8 87, label %bb.r
    i8 46, label %bb.p
    i8 48, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8198)
  %i.u = icmp eq i8 %.val1, 1
  br i1 %i.u, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8199)
  %i.v = load i64, ptr %i.b, align 8, !alias.scope !8200, !noalias !8201, !noundef !19 ; 6 uses
  %i.w = icmp ult i64 %i.v, 288230376151711744
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !8200, !noalias !8201, !noundef !19 ; 3 uses
  %.not.i.i8 = icmp eq i64 %i.v, %i.y
  br i1 %.not.i.i8, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i12, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = xor i64 %i.y, -1
  %i.aa = add i64 %i.v, %i.z                      ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %i.v
  br i1 %i.ab, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i9, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #62, !noalias !8202
  unreachable

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i9: ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !8200, !noalias !8201, !nonnull !19, !noundef !19
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %i.aa
  %.sroa.01.0.in.i.i10 = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %.sroa.01.0.i.i11 = load i8, ptr %.sroa.01.0.in.i.i10, align 1, !range !21, !noalias !8202, !noundef !19
  %i.af = icmp eq i8 %.sroa.01.0.i.i11, 1
  br i1 %i.af, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i12

bb.o:                                             ; preds = %bb.k
  tail call fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11trim_errors(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0), !noalias !8201
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0), !noalias !8201
  br label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i12: ; preds = %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i9, %bb.l
  %i.ag = sub i64 %i.v, %i.y
  tail call fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11expected_at(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @503, i64 noundef 5)
  br label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit

bb.p:                                             ; preds = %bb.j
  tail call fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser10code_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0), !inline_history !11
  br label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit

bb.q:                                             ; preds = %bb.j
  %.val.i7 = load i64, ptr %i.b, align 8, !alias.scope !8203, !noundef !19 ; 3 uses
  %i.ah = icmp ult i64 %.val.i7, 288230376151711744
  tail call void @llvm.assume(i1 %i.ah)
  tail call fastcc void @_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser11enter_modesNCNvB6_13content_block0EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 %.val.i7)
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %.val.i7, i8 noundef 106), !inline_history !12
  br label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit

bb.r:                                             ; preds = %bb.j
  tail call fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser11conditional(ptr noalias nofree noundef align 8 dereferenceable(272) %0)
  br label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser11let_binding(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %.val8 = load i64, ptr %i.c, align 8, !noundef !19 ; 2 uses
  %i.d = icmp ult i64 %.val8, 288230376151711744
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8233)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 83, ptr %i.a, align 1, !noalias !8234
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %.val.i = load i8, ptr %i.e, align 8, !range !21, !alias.scope !8233, !noalias !8235, !noundef !19
  %i.f = icmp eq i8 %.val.i, 83
  br i1 %i.f, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedNtNtCs5PEMdK7bMAG_12typst_syntax4kind10SyntaxKindBM_EBQ_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @468) #62
  unreachable

_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit: ; preds = %bb.a
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0), !noalias !8235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load i64, ptr %i.c, align 8, !noundef !19 ; 2 uses
  %i.g = icmp ult i64 %.val, 288230376151711744
  tail call void @llvm.assume(i1 %i.g)
  %.val.i15 = load i8, ptr %i.e, align 8, !range !21, !alias.scope !8236, !noundef !19 ; 2 uses
  %i.h = icmp eq i8 %.val.i15, 99
  br i1 %i.h, label %bb.h, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit

_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit: ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @15, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 6 uses
  %i.j = load i32, ptr %i.i, align 8, !alias.scope !8237, !noalias !8238, !noundef !19 ; 2 uses
  %i.k = icmp ult i32 %i.j, 256
  br i1 %i.k, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit.i: ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit
  invoke fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17depth_check_error(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i128 noundef 0, i128 undef)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit unwind label %bb.i, !inline_history !13

bb.c:                                             ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit
  %i.l = add nuw nsw i32 %i.j, 1
  store i32 %i.l, ptr %i.i, align 8, !alias.scope !8237, !noalias !8238
  switch i8 %.val.i15, label %bb.d [
    i8 50, label %bb.e
    i8 56, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser12pattern_leaf(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef readonly captures(address, read_provenance) null)
          to label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser7pattern.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  invoke fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser30destructuring_or_parenthesized(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser7pattern.exit unwind label %bb.g, !noalias !8239, !inline_history !13

bb.f:                                             ; preds = %bb.c
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser7pattern.exit unwind label %bb.g, !noalias !8238, !inline_history !13

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load i32, ptr %i.i, align 8, !alias.scope !8240, !noalias !8241, !noundef !19
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.i, align 8, !alias.scope !8240, !noalias !8241
  %.val13.pre = load ptr, ptr %i.b, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val14.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %.body

bb.h:                                             ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef align 8 dereferenceable(272) %0)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val9 = load i64, ptr %i.p, align 8
  %.val10 = load i8, ptr %i.e, align 8, !range !21, !noundef !19
  %i.q = icmp eq i8 %.val10, 50
  %.not.i = icmp eq i64 %.val9, 0
  %.sroa.0.0.i = select i1 %i.q, i1 %.not.i, i1 false
  br i1 %.sroa.0.0.i, label %bb.k, label %bb.l

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.i
  %.val14 = phi i64 [ 0, %bb.i ], [ %.val14.pre, %bb.g ]
  %.val13 = phi ptr [ @14, %bb.i ], [ %.val13.pre, %bb.g ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.m, %bb.g ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax(ptr %.val13, i64 %.val14) #59
  resume { ptr, i32 } %eh.lpad-body

_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser7pattern.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.s = load i32, ptr %i.i, align 8, !alias.scope !8242, !noalias !8243, !noundef !19
  %i.t = add i32 %i.s, -1
  store i32 %i.t, ptr %i.i, align 8, !alias.scope !8242, !noalias !8243
  %.val11.pre = load ptr, ptr %i.b, align 8       ; 2 uses
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val12.pre = load i64, ptr %.phi.trans.insert22, align 8 ; 3 uses
  %i.u = icmp eq i64 %.val12.pre, 0
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser7pattern.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.pre) ]
  %i.v = shl i64 %.val12.pre, 4                   ; 2 uses
  %i.w = add i64 %i.v, 16                         ; 2 uses
  %i.x = add i64 %.val12.pre, 17
  %i.y = add i64 %i.x, %i.w                       ; 4 uses
  %i.z = icmp uge i64 %i.y, %i.w
  %i.aa = icmp ult i64 %i.y, 9223372036854775793
  call void @llvm.assume(i1 %i.z)
  call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit, label %bb.j

bb.j:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.ac = sub nuw nsw i64 -16, %i.v
  %i.ad = getelementptr inbounds i8, ptr %.val11.pre, i64 %i.ac
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 16) #60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser7pattern.exit, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %.val.i16 = load i64, ptr %i.c, align 8, !alias.scope !8244, !noundef !19 ; 3 uses
  %i.ae = icmp ult i64 %.val.i16, 288230376151711744
  tail call void @llvm.assume(i1 %i.ae)
  tail call fastcc void @_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_6params0EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 %.val.i16)
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %.val.i16, i8 noundef 119), !inline_history !14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit
  %.sroa.04.0 = phi ptr [ @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6expect, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit ], [ @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if, %bb.h ], [ @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6expect, %bb.k ]
  %.sroa.0.2 = phi i1 [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit ], [ false, %bb.h ], [ true, %bb.k ]
  %i.af = call noundef zeroext i1 %.sroa.04.0(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i8 noundef 63), !callees !8245
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser14code_expr_prec(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext false, i8 noundef 0), !inline_history !10
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  br i1 %.sroa.0.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef align 8 dereferenceable(272) %0, i64 noundef %.val8, i8 noundef 120)
  ret void

bb.p:                                             ; preds = %bb.n
  call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef align 8 dereferenceable(272) %0, i64 noundef %.val, i8 noundef 118)
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser11markup_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 8 uses
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !8324, !noundef !19 ; 2 uses
  %i.e = icmp ult i32 %i.d, 256
  br i1 %i.e, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit: ; preds = %bb.a
  tail call fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17depth_check_error(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i128 noundef 0, i128 undef)
  br label %bb.ax

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw nsw i32 %i.d, 1
  store i32 %i.f, ptr %i.c, align 8, !alias.scope !8324
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %.val = load i8, ptr %i.g, align 8, !range !21, !noundef !19
  switch i8 %.val, label %bb.c [
    i8 2, label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode15convert_to_kind.exit.i21.invoke
    i8 6, label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode15convert_to_kind.exit.i21.invoke
    i8 8, label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode15convert_to_kind.exit.i21.invoke
    i8 10, label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode15convert_to_kind.exit.i21.invoke
    i8 11, label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode15convert_to_kind.exit.i21.invoke
    i8 12, label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode15convert_to_kind.exit.i21.invoke
    i8 15, label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode15convert_to_kind.exit.i21.invoke
    i8 19, label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode15convert_to_kind.exit.i21.invoke
    i8 20, label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode15convert_to_kind.exit.i21.invoke
    i8 22, label %bb.d
    i8 24, label %bb.f
    i8 26, label %bb.g
    i8 28, label %bb.h
    i8 30, label %bb.i
    i8 45, label %bb.j
    i8 48, label %bb.k
    i8 49, label %bb.m
    i8 54, label %bb.n
    i8 55, label %bb.p
    i8 56, label %bb.ac
    i8 57, label %bb.ap
  ]

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11trim_errors(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4:                                          ; preds = %bb.c
  %i.h = load i8, ptr %i.g, align 8, !range !21, !alias.scope !8325, !noundef !19
  %.off.i.i = add i8 %i.h, -46
  %switch.i.i = icmp ult i8 %.off.i.i, 6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !range !20, !alias.scope !8325, !noundef !19
  %i.k = select i1 %switch.i.i, i8 0, i8 %i.j
  store i8 %i.k, ptr %i.i, align 4, !alias.scope !8325
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !8326, !noalias !8327, !noundef !19 ; 4 uses
  %i.n = icmp ult i64 %i.m, 288230376151711744
  tail call void @llvm.assume(i1 %i.n)
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %.noexc4
  %i.o = load i64, ptr %i.l, align 8, !alias.scope !8326, !noalias !8327, !noundef !19 ; 2 uses
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11eat_and_get.exit.i, label %.invoke

_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11eat_and_get.exit.i: ; preds = %.noexc5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !8326, !noalias !8327, !nonnull !19, !noundef !19
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.m
  invoke fastcc void @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode10unexpected(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i = load i64, ptr %i.t, align 8, !alias.scope !8328, !noundef !19 ; 3 uses
  %i.u = icmp ult i64 %.val.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.u)
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i = load i64, ptr %i.v, align 8, !alias.scope !8328
  %.val2.i = load i8, ptr %i.g, align 8, !range !21, !alias.scope !8328, !noundef !19
  %i.w = icmp eq i8 %.val2.i, 48
  %.not.i = icmp eq i64 %.val1.i, 0
  %.sroa.0.0.i = select i1 %i.w, i1 %.not.i, i1 false
  br i1 %.sroa.0.0.i, label %bb.e, label %.noexc32.invoke

bb.e:                                             ; preds = %.noexc8
  invoke fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser13content_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %.noexc32.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !8255

bb.f:                                             ; preds = %bb.b
  br i1 %1, label %bb.aq, label %bb.n

bb.g:                                             ; preds = %bb.b
  br i1 %1, label %bb.ar, label %bb.n

bb.h:                                             ; preds = %bb.b
  br i1 %1, label %bb.as, label %bb.n

bb.i:                                             ; preds = %bb.b
  br i1 %1, label %bb.at, label %bb.n

bb.j:                                             ; preds = %bb.b
  invoke fastcc void @_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser11enter_modesNCNvB6_18embedded_code_expr0EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.b
  %i.x = load i64, ptr %2, align 8, !noundef !19
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %2, align 8
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.sroa.0.0.i.i = load i8, ptr %.sroa.0.0.in.i.i, align 1, !range !21, !alias.scope !8329, !noalias !8330, !noundef !19
  %i.z = icmp eq i8 %.sroa.0.0.i.i, 1
  br i1 %i.z, label %.invoke207, label %.preheader.i.preheader.i, !prof !23

.preheader.i.preheader.i:                         ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.preheader.i.i

default.unreachable:                              ; preds = %.preheader.i.i, %.preheader.i.i19
  unreachable

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.preheader.i
  %.sroa.02.0.i.i = phi ptr [ %i.aa, %.preheader.i.preheader.i ], [ %i.ae, %bb.l ] ; 5 uses
  %i.ab = load i8, ptr %.sroa.02.0.i.i, align 8, !range !30, !noalias !8330, !noundef !19
  switch i8 %i.ab, label %default.unreachable [
    i8 0, label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode15convert_to_kind.exit.i21.invoke.sink.split
    i8 1, label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode15convert_to_kind.exit.i21.invoke.sink.split
    i8 2, label %.invoke205
    i8 3, label %bb.l
  ], !prof !48

bb.l:                                             ; preds = %.preheader.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 1
  store i8 6, ptr %i.ad, align 1, !noalias !8330
  %i.ae = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node14WarningWrapperE8make_mutBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ac) #63
          to label %.preheader.i.i unwind label %.loopexit.split-lp.loopexit

bb.m:                                             ; preds = %bb.b
  %i.af = load i64, ptr %2, align 8, !noundef !19 ; 2 uses
  %.not1 = icmp eq i64 %i.af, 0
  br i1 %.not1, label %bb.au, label %bb.av

bb.n:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.b
  %.sroa.0.0.in.i.i16 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.sroa.0.0.i.i17 = load i8, ptr %.sroa.0.0.in.i.i16, align 1, !range !21, !alias.scope !8331, !noalias !8332, !noundef !19
  %i.ag = icmp eq i8 %.sroa.0.0.i.i17, 1
  br i1 %i.ag, label %.invoke207, label %.preheader.i.preheader.i18, !prof !23

.preheader.i.preheader.i18:                       ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_10
begin_hunk_11_@_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser15expr_with_paren:bb.a

bb.q:                                             ; preds = %_RNvXsp_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_4NodeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.ae, i64 -96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.45.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !8925
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RNvXsp_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_4NodeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i
  %i.bs = getelementptr inbounds i8, ptr %i.ae, i64 -40
  store i64 %i.br, ptr %i.d, align 8, !noalias !8925
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.16..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.i.i.i, i64 16, i1 false), !noalias !8925
  %.sroa.8.sroa.4.0..sroa.8.16..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i8 %i.ay, ptr %.sroa.8.sroa.4.0..sroa.8.16..sroa_idx.sroa_idx.i, align 8, !noalias !8925
  %.sroa.8.sroa.5.0..sroa.8.16..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 25
  store i8 %.sink23.i.i.i.i, ptr %.sroa.8.sroa.5.0..sroa.8.16..sroa_idx.sroa_idx.i, align 1, !noalias !8925
  %.sroa.8.sroa.7.0..sroa.8.16..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.56.0.i.i.i, ptr %.sroa.8.sroa.7.0..sroa.8.16..sroa_idx.sroa_idx.i, align 8, !noalias !8925
  %.sroa.8.sroa.8.0..sroa.8.16..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.9.0.i.i.i, ptr %.sroa.8.sroa.8.0..sroa.8.16..sroa_idx.sroa_idx.i, align 8, !noalias !8925
  %.sroa.8.sroa.9.0..sroa.8.16..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store <2 x i64> %i.bq, ptr %.sroa.8.sroa.9.0..sroa.8.16..sroa_idx.sroa_idx.i, align 8, !noalias !8925
  %.sroa.8.sroa.11.0..sroa.8.16..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bt = load <2 x i64>, ptr %i.bs, align 8, !alias.scope !8919, !noalias !8920
  store <2 x i64> %i.bt, ptr %.sroa.8.sroa.11.0..sroa.8.16..sroa_idx.sroa_idx.i, align 8, !noalias !8925
  %.sroa.8.sroa.13.0..sroa.8.16..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i8 %i.aw, ptr %.sroa.8.sroa.13.0..sroa.8.16..sroa_idx.sroa_idx.i, align 8, !noalias !8925
  %.sroa.8.sroa.15.0..sroa.8.16..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i64 %i.as, ptr %.sroa.8.sroa.15.0..sroa.8.16..sroa_idx.sroa_idx.i, align 8, !noalias !8925
  %.sroa.8.sroa.16.0..sroa.8.16..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i8 %i.au, ptr %.sroa.8.sroa.16.0..sroa.8.16..sroa_idx.sroa_idx.i, align 8, !noalias !8925
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !8904, !noalias !8905, !noundef !19 ; 2 uses
  %i.bw = icmp ult i64 %.val1.i.i, %.val.i.i
  %.not9.i = icmp ugt i64 %.val1.i.i, %i.bv
  %or.cond.i = or i1 %i.bw, %.not9.i
  br i1 %or.cond.i, label %bb.s, label %bb.t, !prof !49

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.val.i.i, i64 noundef %.val1.i.i, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #58
          to label %bb.x unwind label %bb.y, !noalias !8925

bb.t:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !8904, !noalias !8905, !nonnull !19, !noundef !19 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %.val.i.i
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %.val1.i.i
  invoke fastcc void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtB1T_5slice4iter4IterBG_EEEBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bz, ptr noundef nonnull %i.ca, ptr noundef %i.cb)
          to label %bb.u unwind label %bb.y, !noalias !8905

.body.i:                                          ; preds = %.loopexit.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !noalias !8905
  br label %common.resume

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8927)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !8928, !noalias !8929, !nonnull !19, !noundef !19
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.val1.i.i.i = load i64, ptr %i.ce, align 8, !alias.scope !8928, !noalias !8929, !noundef !19 ; 2 uses
  %..i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %i.as) ; 2 uses
  %i.cf = icmp eq i64 %..i.i.i.i.i, 0
  br i1 %i.cf, label %.loopexit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.u, %bb.w
  %.sroa.0.01.i.i.i.i = phi i64 [ %i.cj, %bb.w ], [ %..i.i.i.i.i, %bb.u ] ; 5 uses
  %.not.i.i.i10.i = icmp ult i64 %.sroa.0.01.i.i.i.i, %.val1.i.i.i
  br i1 %.not.i.i.i10.i, label %bb.v, label %.loopexit.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.0.01.i.i.i.i
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !8930, !noundef !19
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %.loopexit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = add i64 %.sroa.0.01.i.i.i.i, -1         ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %.loopexit.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i:                                    ; preds = %bb.w, %bb.v, %.lr.ph.i.i.i.i, %bb.u
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.u ], [ %.sroa.0.01.i.i.i.i, %bb.v ], [ 0, %bb.w ], [ %.sroa.0.01.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %.sroa.0.0.lcssa.i.i.i.i, ptr %i.cl, align 8, !alias.scope !8928, !noalias !8929
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %i.au, ptr %i.cm, align 8, !alias.scope !8931, !noalias !8929
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.cn)
          to label %_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser26restore_memo_or_checkpoint.exit.thread unwind label %.body.i, !noalias !8929

_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser26restore_memo_or_checkpoint.exit.thread: ; preds = %.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !noalias !8905
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ac

bb.x:                                             ; preds = %bb.s
  unreachable

common.resume:                                    ; preds = %bb.au, %bb.ay, %bb.bd, %bb.ah, %.body.i, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.co, %bb.y ], [ %i.cc, %.body.i ], [ %i.de, %bb.ah ], [ %i.gq, %bb.au ], [ %lpad.thr_comm.split-lp, %bb.bd ], [ %lpad.thr_comm.i, %bb.ay ]
  resume { ptr, i32 } %common.resume.op

bb.y:                                             ; preds = %bb.t, %bb.s
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %.sroa.8.sroa.4.0..sroa.8.16..sroa_idx.sroa_idx.i)
          to label %common.resume unwind label %bb.z, !noalias !8925

bb.z:                                             ; preds = %bb.y
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !8925
  unreachable

_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser26restore_memo_or_checkpoint.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call fastcc void @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10checkpoint(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %.sroa.44.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %0)
  %.pre = load i64, ptr %.sroa.44.0..sroa_idx.i, align 8, !range !8932
  %i.cq = icmp eq i64 %.pre, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.cq, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.a
  %i.cr = tail call fastcc noundef i8 @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser30parenthesized_or_array_or_dict(ptr noalias nofree noundef align 8 dereferenceable(272) %0) ; 0 uses
  br label %bb.bb

bb.ab:                                            ; preds = %_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser26restore_memo_or_checkpoint.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %i.cs, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !19 ; 3 uses
  %i.cv = invoke fastcc noundef i8 @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser30parenthesized_or_array_or_dict(ptr noalias nofree noundef align 8 dereferenceable(272) %0)
          to label %bb.ad unwind label %bb.bd

bb.ac:                                            ; preds = %_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser26restore_memo_or_checkpoint.exit.thread, %_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser26restore_memo_or_checkpoint.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bb

bb.ad:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val7 = load i8, ptr %i.cw, align 8, !range !21, !noundef !19
  switch i8 %.val7, label %bb.ae [
    i8 75, label %.noexc18
    i8 63, label %bb.af
  ]

.noexc18:                                         ; preds = %bb.ad
  call fastcc void @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser7restore(ptr noalias nofree noundef align 8 dereferenceable(272) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(112) %i.f)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val4 = load i64, ptr %i.cx, align 8, !noundef !19 ; 4 uses
  %i.cy = icmp ult i64 %.val4, 288230376151711744
  tail call void @llvm.assume(i1 %i.cy)
  tail call fastcc void @_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_6params0EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 %.val4)
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %.val4, i8 noundef 119), !inline_history !14
  %i.cz = tail call noundef zeroext i1 @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6expect(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i8 noundef 75)
  br i1 %i.cz, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser9code_expr.exit21, label %bb.bb

bb.ae:                                            ; preds = %bb.ad, %bb.af
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.da)
  br label %bb.bb

bb.af:                                            ; preds = %bb.ad
  %i.db = icmp eq i8 %i.cv, 107
  br i1 %i.db, label %bb.ae, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call fastcc void @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser7restore(ptr noalias nofree noundef align 8 dereferenceable(272) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(112) %i.f)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val5 = load i64, ptr %i.dc, align 8, !noundef !19 ; 2 uses
  %i.dd = icmp ult i64 %.val5, 288230376151711744
  tail call void @llvm.assume(i1 %i.dd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @15, i64 32, i1 false)
  invoke fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser30destructuring_or_parenthesized(ptr noalias nofree noundef align 8 dereferenceable(272) %0, i1 noundef zeroext true, ptr noalias nofree noundef align 8 dereferenceable(32) %i.e)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.de = landingpad { ptr, i32 }
          cleanup
  %.val10 = load ptr, ptr %i.e, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val11 = load i64, ptr %i.df, align 8, !noundef !19
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax(ptr %.val10, i64 %.val11) #59
  br label %common.resume

bb.ai:                                            ; preds = %bb.ag
  %.val8 = load ptr, ptr %i.e, align 8            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val9 = load i64, ptr %i.dg, align 8, !noundef !19 ; 3 uses
  %i.dh = icmp eq i64 %.val9, 0
  br i1 %i.dh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  %i.di = shl i64 %.val9, 4                       ; 2 uses
  %i.dj = add i64 %i.di, 16                       ; 2 uses
  %i.dk = add i64 %.val9, 17
  %i.dl = add i64 %i.dk, %i.dj                    ; 4 uses
  %i.dm = icmp uge i64 %i.dl, %i.dj
  %i.dn = icmp ult i64 %i.dl, 9223372036854775793
  call void @llvm.assume(i1 %i.dm)
  call void @llvm.assume(i1 %i.dn)
  %i.do = icmp eq i64 %i.dl, 0
  br i1 %i.do, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit, label %bb.aj

bb.aj:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.dp = sub nuw nsw i64 -16, %i.di
  %i.dq = getelementptr inbounds i8, ptr %.val8, i64 %i.dp
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dq, i64 noundef %i.dl, i64 noundef range(i64 1, -9223372036854775807) 16) #60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.aj, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dr = call noundef zeroext i1 @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6expect(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i8 noundef 63)
  br i1 %i.dr, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser9code_expr.exit, label %bb.bb

_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser9code_expr.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit
  call fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser14code_expr_prec(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext false, i8 noundef 0), !inline_history !10
  call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef align 8 dereferenceable(272) %0, i64 noundef %.val5, i8 noundef -120)
  br label %.noexc

.noexc:                                           ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser9code_expr.exit, %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser9code_expr.exit21
  call void @llvm.experimental.noalias.scope.decl(metadata !8933)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10checkpoint(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %0)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !8933, !noundef !19 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !8933, !noundef !19 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 288230376151711744
  call void @llvm.assume(i1 %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !8933, !noundef !19 ; 2 uses
  %i.dz = icmp ult i64 %i.dt, %i.cu
  %.not.i = icmp ugt i64 %i.dt, %i.dy
  %or.cond.i12 = or i1 %i.dz, %.not.i
  br i1 %or.cond.i12, label %bb.ak, label %bb.al, !prof !49

bb.ak:                                            ; preds = %.noexc
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.cu, i64 noundef %i.dt, i64 noundef %i.dy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344) #58
          to label %bb.ax unwind label %bb.ay, !noalias !8933

bb.al:                                            ; preds = %.noexc
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !8933, !nonnull !19, !noundef !19 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.eb, i64 %i.cu
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.eb, i64 %i.dt
  invoke fastcc void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtB1T_5slice4iter4IterBG_EEEBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ec, ptr noundef nonnull %i.ed, ptr noundef %i.ee)
          to label %bb.am unwind label %bb.ay

bb.am:                                            ; preds = %bb.al
  %i.ef = load i64, ptr %i.du, align 8, !alias.scope !8933, !noundef !19 ; 2 uses
  %i.eg = icmp ult i64 %i.ef, 288230376151711744
  call void @llvm.assume(i1 %i.eg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8933
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.eh, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 104, i1 false), !noalias !8933
  store i64 %i.dv, ptr %i.a, align 8, !noalias !8933
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ef, ptr %i.ei, align 8, !noalias !8933
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ek = mul i64 %i.i, -1065810590584100411      ; 2 uses
  %i.el = call noundef i64 @llvm.fshl.i64(i64 %i.ek, i64 %i.ek, i64 26) ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !8934, !noalias !8935, !noundef !19
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %bb.an, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EB1E_.exit.i.i.i, !prof !23

bb.an:                                            ; preds = %bb.am
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.eq = invoke { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE14reserve_rehashNCINvNtB8_3map11make_hasherjBR_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ej, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ep, i1 noundef zeroext true) #57
          to label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EB1E_.exit.i.i.i unwind label %bb.au, !noalias !8936 ; 0 uses

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EB1E_.exit.i.i.i: ; preds = %bb.an, %bb.am
  %.val.i.i.i13 = load ptr, ptr %i.ej, align 8, !alias.scope !8937, !noalias !8938, !nonnull !19, !noundef !19 ; 8 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val5.i.i.i = load i64, ptr %i.er, align 8, !alias.scope !8937, !noalias !8938, !noundef !19 ; 4 uses
  %i.es = lshr i64 %i.el, 57
  %i.et = trunc nuw nsw i64 %i.es to i8           ; 3 uses
  %i.eu = insertelement <16 x i8> poison, i8 %i.et, i64 0
  %i.ev = shufflevector <16 x i8> %i.eu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EB1E_.exit.i.i.i
  %.pn.i.i.i.i = phi i64 [ %i.el, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EB1E_.exit.i.i.i ], [ %i.fu, %bb.ar ]
  %.sroa.4.0.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EB1E_.exit.i.i.i ], [ %.sroa.4.120.i.i.i.i, %bb.ar ]
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EB1E_.exit.i.i.i ], [ %.sroa.04.122.i.i.i.i, %bb.ar ]
  %i.ew = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE7reserveNCINvNtB8_3map11make_hasherjBR_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EB1E_.exit.i.i.i ], [ %i.ft, %bb.ar ]
  %.sroa.0.017.i.i.i.i = and i64 %.pn.i.i.i.i, %.val5.i.i.i ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.val.i.i.i13, i64 %.sroa.0.017.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i = load <16 x i8>, ptr %i.ex, align 1, !noalias !8939 ; 3 uses
  %i.ey = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, %i.ev
  %i.ez = bitcast <16 x i1> %i.ey to i16          ; 2 uses
  %.not28.i.i.i.i = icmp eq i16 %i.ez, 0
  br i1 %.not28.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %bb.ao, %bb.ap
  %.sroa.01.029.i.i.i.i = phi i16 [ %i.fj, %bb.ap ], [ %i.ez, %bb.ao ] ; 3 uses
  %i.fa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i.i.i, i1 true)
  %i.fb = zext nneg i16 %i.fa to i64
  %i.fc = add i64 %.sroa.0.017.i.i.i.i, %i.fb
  %i.fd = and i64 %i.fc, %.val5.i.i.i
  %i.fe = sub nsw i64 0, %i.fd
  %i.ff = getelementptr inbounds [128 x i8], ptr %.val.i.i.i13, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 -128
  %.val2.i.i.i.i15 = load i64, ptr %i.fg, align 8, !noalias !8940, !noundef !19
  %i.fh = icmp eq i64 %i.i, %.val2.i.i.i.i15
  br i1 %i.fh, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertB1B_.exit.i, label %bb.ap, !prof !22

._crit_edge.i.i.i.i:                              ; preds = %bb.ap, %bb.ao
  %.not12.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i, 1
  br i1 %.not12.i.i.i.i, label %.thread.i.i.i.i, label %bb.aq, !prof !23

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i14
  %i.fi = add i16 %.sroa.01.029.i.i.i.i, -1
  %i.fj = and i16 %i.fi, %.sroa.01.029.i.i.i.i    ; 2 uses
  %.not.i.i.i.i16 = icmp eq i16 %i.fj, 0
  br i1 %.not.i.i.i.i16, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i14

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fk = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, zeroinitializer
  %i.fl = bitcast <16 x i1> %i.fk to i16          ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.fl, 0
  br i1 %.not.i.i.i.i.i, label %bb.ar, label %.thread24.i.i.i.i, !prof !23

.thread24.i.i.i.i:                                ; preds = %bb.aq
  %i.fm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fl, i1 true)
  %i.fn = zext nneg i16 %i.fm to i64
  %i.fo = add i64 %.sroa.0.017.i.i.i.i, %i.fn
  %i.fp = and i64 %i.fo, %.val5.i.i.i
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.thread24.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.4.121.i.i.i.i = phi i64 [ %i.fp, %.thread24.i.i.i.i ], [ %.sroa.4.0.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.fq = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, splat (i8 -1)
  %i.fr = bitcast <16 x i1> %i.fq to i16
  %i.fs = icmp eq i16 %i.fr, 0
  br i1 %i.fs, label %bb.ar, label %bb.as, !prof !23

bb.ar:                                            ; preds = %.thread.i.i.i.i, %bb.aq
  %.sroa.04.122.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i ], [ 0, %bb.aq ]
  %.sroa.4.120.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i, %.thread.i.i.i.i ], [ undef, %bb.aq ]
  %i.ft = add i64 %i.ew, 16                       ; 2 uses
  %i.fu = add i64 %i.ft, %.sroa.0.017.i.i.i.i
  br label %bb.ao

bb.as:                                            ; preds = %.thread.i.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.val.i.i.i13, i64 %.sroa.4.121.i.i.i.i
  %i.fw = load i8, ptr %i.fv, align 1, !noalias !8941, !noundef !19 ; 2 uses
  %i.fx = icmp sgt i8 %i.fw, -1
  br i1 %i.fx, label %bb.at, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertB1B_.exit.thread.i, !prof !23

bb.at:                                            ; preds = %bb.as
  %.val2.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i13, align 16, !noalias !8941
  %i.fy = icmp slt <16 x i8> %.val2.i.i.i.i.i, zeroinitializer
  %i.fz = bitcast <16 x i1> %i.fy to i16          ; 2 uses
  %.not.i23.i.i.i.i = icmp ne i16 %i.fz, 0
  %i.ga = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fz, i1 true)
  %i.gb = zext nneg i16 %i.ga to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i23.i.i.i.i)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i13, i64 %i.gb
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !8942
  br label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertB1B_.exit.thread.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertB1B_.exit.thread.i: ; preds = %bb.at, %bb.as
  %i.gc = phi i8 [ %.pre.i.i, %bb.at ], [ %i.fw, %bb.as ]
  %.sroa.3.0.i.ph.i.i.i = phi i64 [ %i.gb, %bb.at ], [ %.sroa.4.121.i.i.i.i, %bb.as ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8943)
  %i.gd = getelementptr inbounds nuw i8, ptr %.val.i.i.i13, i64 %.sroa.3.0.i.ph.i.i.i
  %i.ge = and i8 %i.gc, 1
  %i.gf = zext nneg i8 %i.ge to i64
  %i.gg = add i64 %.sroa.3.0.i.ph.i.i.i, -16
  %i.gh = and i64 %i.gg, %.val5.i.i.i
  store i8 %i.et, ptr %i.gd, align 1, !noalias !8942
  %i.gi = getelementptr i8, ptr %.val.i.i.i13, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  store i8 %i.et, ptr %i.gj, align 1, !noalias !8942
  %i.gk = load <2 x i64>, ptr %i.em, align 8, !alias.scope !8944, !noalias !8945
  %i.gl = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.gf, i64 0
  %i.gm = sub <2 x i64> %i.gk, %i.gl
  store <2 x i64> %i.gm, ptr %i.em, align 8, !alias.scope !8944, !noalias !8945
  %i.gn = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i
  %i.go = getelementptr inbounds [128 x i8], ptr %.val.i.i.i13, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -128
  store i64 %i.i, ptr %i.gp, align 8, !noalias !8946
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.go, i64 -120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(120) %i.a, i64 120, i1 false), !noalias !8947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8933
  br label %bb.bc

bb.au:                                            ; preds = %bb.an
  %i.gq = landingpad { ptr, i32 }
          cleanup
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.gr)
          to label %common.resume unwind label %bb.av, !noalias !8948

bb.av:                                            ; preds = %bb.au
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_11
begin_hunk_12_@_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser4args:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !9241)
  %.val24.i.i = load i64, ptr %i.an, align 8, !alias.scope !9242, !noalias !9243, !noundef !19 ; 9 uses
  %i.bw = icmp ult i64 %.val24.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.bw)
  %i.bx = icmp eq i8 %.val2.i, 74
  br i1 %i.bx, label %bb.m, label %.noexc15.i

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %bb.s unwind label %.loopexit

.noexc15.i:                                       ; preds = %bb.l
  %i.by = lshr i128 40087900691549546113042756960256, %i.bb
  %i.bz = trunc i128 %i.by to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9244
  call void @llvm.experimental.noalias.scope.decl(metadata !9245)
  %i.ca = load ptr, ptr %i.au, align 8, !alias.scope !9245, !noalias !9235, !nonnull !19, !noundef !19 ; 4 uses
  %i.cb = load i64, ptr %i.av, align 8, !alias.scope !9245, !noalias !9235, !noundef !19 ; 4 uses
  %i.cc = load i64, ptr %i.aw, align 8, !alias.scope !9245, !noalias !9235, !noundef !19 ; 7 uses
  %i.cd = load i64, ptr %i.ax, align 8, !alias.scope !9245, !noalias !9235, !noundef !19 ; 6 uses
  %i.ce = icmp ugt i64 %i.cc, %i.cd
  %i.cf = icmp ugt i64 %i.cd, %i.cb
  %or.cond.i.i = or i1 %i.ce, %i.cf
  br i1 %or.cond.i.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i, label %bb.n, !prof !44

bb.n:                                             ; preds = %.noexc15.i
  %i.cg = icmp eq i64 %i.cc, %i.cb
  br i1 %i.cg, label %.noexc16.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = icmp eq i64 %i.cc, 0
  br i1 %i.ch, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.ci = icmp eq i64 %i.cd, %i.cb
  br i1 %i.ci, label %.noexc16.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i

bb.q:                                             ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cc
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !9246, !noalias !9247, !noundef !19
  %i.cl = icmp sgt i8 %i.ck, -65
  br i1 %i.cl, label %bb.p, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i, !prof !45

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i: ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cd
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !9246, !noalias !9247, !noundef !19
  %i.co = icmp sgt i8 %i.cn, -65
  br i1 %i.co, label %.noexc16.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i, !prof !46

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i, %bb.q, %.noexc15.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef %i.cb, i64 noundef %i.cc, i64 noundef %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @317) #62
          to label %.noexc27 unwind label %.loopexit.split-lp

.noexc27:                                         ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i
  unreachable

.noexc16.i:                                       ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i, %bb.p, %bb.n
  %i.cp = sub nuw i64 %i.cd, %i.cc
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cc
  store ptr %i.cq, ptr %i.e, align 8, !noalias !9244
  store i64 %i.cp, ptr %i.ay, align 8, !noalias !9244
  invoke fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser14code_expr_prec(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext false, i8 noundef 0)
          to label %.noexc17.i unwind label %.loopexit, !inline_history !9217

.noexc17.i:                                       ; preds = %.noexc16.i
  %.val.i23 = load i8, ptr %i.h, align 8, !range !21, !alias.scope !9248, !noalias !9235, !noundef !19
  %i.cr = icmp eq i8 %.val.i23, 54
  br i1 %i.cr, label %bb.r, label %.noexc18.i

bb.r:                                             ; preds = %.noexc17.i
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %bb.t unwind label %.loopexit

bb.s:                                             ; preds = %bb.m
  invoke fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser14code_expr_prec(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext false, i8 noundef 0)
          to label %.noexc19.i unwind label %.loopexit, !inline_history !9217

.noexc19.i:                                       ; preds = %bb.s
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %.val24.i.i, i8 noundef 117)
          to label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser3arg.exit.i unwind label %.loopexit, !noalias !9235, !inline_history !9220

.noexc18.i:                                       ; preds = %.noexc21.i, %.noexc17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9244
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser3arg.exit.i

bb.t:                                             ; preds = %bb.r
  br i1 %i.bz, label %bb.u, label %.noexc26.i

.noexc26.i:                                       ; preds = %.noexc25.i, %.noexc28.i, %.noexc24.i, %bb.t
  invoke fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser14code_expr_prec(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext false, i8 noundef 0)
          to label %.noexc21.i unwind label %.loopexit, !inline_history !9217

.noexc21.i:                                       ; preds = %.noexc26.i
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %.val24.i.i, i8 noundef 110)
          to label %.noexc18.i unwind label %.loopexit, !noalias !9235, !inline_history !9220

bb.u:                                             ; preds = %bb.t
  %.val32.i.i = load i64, ptr %i.an, align 8, !alias.scope !9242, !noalias !9243, !noundef !19 ; 2 uses
  %i.cs = icmp ult i64 %.val24.i.i, %.val32.i.i
  br i1 %i.cs, label %.noexc23.i, label %.invoke

.noexc23.i:                                       ; preds = %bb.u
  %.val31.i.i = load ptr, ptr %i.at, align 8, !alias.scope !9242, !noalias !9243, !nonnull !19, !noundef !19
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %.val31.i.i, i64 %.val24.i.i ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 1
  %.val30.i.i = load i8, ptr %i.cu, align 1, !range !21, !noundef !19
  %i.cv = icmp eq i8 %.val30.i.i, 99
  br i1 %i.cv, label %bb.v, label %.noexc25.i

bb.v:                                             ; preds = %.noexc23.i
  %i.cw = load ptr, ptr %i.e, align 8, !noalias !9244, !nonnull !19, !noundef !19
  %i.cx = load i64, ptr %i.ay, align 8, !noalias !9244, !noundef !19
  %i.cy = invoke fastcc noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapReuNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cw, i64 noundef %i.cx)
          to label %.noexc24.i unwind label %.loopexit, !noalias !9235, !inline_history !9220

.noexc24.i:                                       ; preds = %bb.v
  br i1 %i.cy, label %bb.w, label %.noexc26.i

.noexc25.i:                                       ; preds = %.noexc23.i
  invoke fastcc void @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode8expected(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ct, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 10)
          to label %.noexc26.i unwind label %.loopexit, !inline_history !9220

bb.w:                                             ; preds = %.noexc24.i
  %.val27.i.i = load i64, ptr %i.an, align 8, !alias.scope !9242, !noalias !9243, !noundef !19 ; 2 uses
  %i.cz = icmp ult i64 %.val24.i.i, %.val27.i.i
  br i1 %i.cz, label %.noexc27.i, label %.invoke

.noexc27.i:                                       ; preds = %bb.w
  %.val26.i.i = load ptr, ptr %i.at, align 8, !alias.scope !9242, !noalias !9243, !nonnull !19, !noundef !19
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %.val26.i.i, i64 %.val24.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9244
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.c, i8 0, i64 15, i1 false), !noalias !9244
  store i8 -128, ptr %.sroa.45.0..sroa_idx.i.i, align 1, !noalias !9244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9244
  store ptr %i.e, ptr %i.b, align 8, !noalias !9244
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5PEMdK7bMAG_12typst_syntax, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !9244
  %i.db = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @31, ptr noundef nonnull @499, ptr noundef nonnull %i.b)
          to label %bb.y unwind label %.loopexit41, !noalias !9235, !inline_history !9220

.loopexit41:                                      ; preds = %.noexc27.i
  %lpad.loopexit43 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp42:                             ; preds = %bb.z
  %lpad.loopexit.split-lp44 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp42, %.loopexit41
  %lpad.phi45 = phi { ptr, i32 } [ %lpad.loopexit43, %.loopexit41 ], [ %lpad.loopexit.split-lp44, %.loopexit.split-lp42 ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #59
          to label %.body.i unwind label %bb.aa, !noalias !9235, !inline_history !9220

bb.y:                                             ; preds = %.noexc27.i
  br i1 %i.db, label %bb.z, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit.i.i, !prof !23

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @500) #62
          to label %.noexc.i.i unwind label %.loopexit.split-lp42, !noalias !9235, !inline_history !9220

.noexc.i.i:                                       ; preds = %bb.z
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit.i.i: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !9244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9244
  invoke fastcc void @_RINvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode16convert_to_errorNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB8_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.da, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.d)
          to label %.noexc28.i unwind label %.loopexit, !inline_history !9220

.noexc28.i:                                       ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9244
  br label %.noexc26.i

bb.aa:                                            ; preds = %bb.x
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !9235, !inline_history !9220
  unreachable

_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser3arg.exit.i: ; preds = %.noexc19.i, %.noexc18.i
  %.val1.i = load i8, ptr %i.h, align 8, !range !21, !alias.scope !9232, !noalias !9235, !noundef !19
  switch i8 %.val1.i, label %_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind13is_terminator.exit30.i [
    i8 0, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10unexpected.exit.i.backedge
    i8 47, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10unexpected.exit.i.backedge
    i8 49, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10unexpected.exit.i.backedge
    i8 51, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10unexpected.exit.i.backedge
    i8 53, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10unexpected.exit.i.backedge
  ]

_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind13is_terminator.exit30.i: ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser3arg.exit.i
  %i.dd = invoke noundef zeroext i1 @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6expect(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i8 noundef 52)
          to label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10unexpected.exit.i.backedge unwind label %.loopexit, !noalias !9235, !inline_history !9201 ; 0 uses

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10unexpected.exit.i.backedge: ; preds = %_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind13is_terminator.exit30.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser3arg.exit.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser3arg.exit.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser3arg.exit.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser3arg.exit.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser3arg.exit.i, %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11eat_and_get.exit.i.i
  br label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser10unexpected.exit.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser24expect_closing_delimiter.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i) ]
  %i.de = shl i64 %.val4.i, 4                     ; 2 uses
  %i.df = add i64 %i.de, 16                       ; 2 uses
  %i.dg = add i64 %.val4.i, 17
  %i.dh = add i64 %i.dg, %i.df                    ; 4 uses
  %i.di = icmp uge i64 %i.dh, %i.df
  %i.dj = icmp ult i64 %i.dh, 9223372036854775793
  call void @llvm.assume(i1 %i.di)
  call void @llvm.assume(i1 %i.dj)
  %i.dk = icmp eq i64 %i.dh, 0
  br i1 %i.dk, label %_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser4args0B5_.exit, label %bb.ab

bb.ab:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.dl = sub nuw nsw i64 -16, %i.de
  %i.dm = getelementptr inbounds i8, ptr %.val3.i, i64 %i.dl
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dm, i64 noundef %i.dh, i64 noundef range(i64 1, -9223372036854775807) 16) #60, !noalias !9235, !inline_history !9201
  br label %_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser4args0B5_.exit

_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser4args0B5_.exit: ; preds = %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser24expect_closing_delimiter.exit.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9234
  store i64 %i.ap, ptr %i.ao, align 8, !alias.scope !9230, !noalias !9231
  store i64 %i.ar, ptr %i.aq, align 8, !alias.scope !9230, !noalias !9231
  %i.dn = load i64, ptr %0, align 8, !range !26, !alias.scope !9230, !noalias !9231, !noundef !19 ; 2 uses
  %.not.i13 = icmp eq i64 %i.dn, 2
  br i1 %.not.i13, label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_4args0EB8_.exit, label %bb.ac

bb.ac:                                            ; preds = %_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser4args0B5_.exit
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !9230, !noalias !9231
  %i.dq = icmp eq i64 %i.ap, 0
  br i1 %i.dq, label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_4args0EB8_.exit, label %bb.ad

default.unreachable:                              ; preds = %bb.ad
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ds = load i8, ptr %i.dr, align 8, !range !20, !alias.scope !9230, !noalias !9231, !noundef !19
  %.sroa.08.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.sroa.08.0.i = load i8, ptr %.sroa.08.0.in.i, align 1, !range !21, !alias.scope !9230, !noalias !9231, !noundef !19 ; 2 uses
  switch i64 %i.ap, label %default.unreachable [
    i64 4, label %bb.ag
    i64 1, label %bb.ah
    i64 2, label %bb.ae
    i64 3, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  switch i8 %.sroa.08.0.i, label %bb.ah [
    i8 62, label %bb.aj
    i8 88, label %bb.aj
  ]

bb.af:                                            ; preds = %bb.ai, %bb.ad
  %.sroa.016.0.i = phi i8 [ %i.ds, %bb.ad ], [ %i.dw, %bb.ai ]
  %i.dt = trunc nuw i8 %.sroa.016.0.i to i1
  br i1 %i.dt, label %bb.ah, label %bb.aj

bb.ag:                                            ; preds = %bb.ad
  %i.du = trunc nuw i64 %i.dn to i1
  br i1 %i.du, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  store i8 0, ptr %i.h, align 8, !alias.scope !9230, !noalias !9231
  br label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_4args0EB8_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.dv = icmp ule i64 %i.dp, %i.ar
  %i.dw = zext i1 %i.dv to i8
  br label %bb.af

bb.aj:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ae
  store i8 %.sroa.08.0.i, ptr %i.h, align 8, !alias.scope !9230, !noalias !9231
  br label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_4args0EB8_.exit

_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_4args0EB8_.exit: ; preds = %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4hint.exit.thread124, %bb.aj, %bb.ah, %bb.ac, %_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser4args0B5_.exit, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4hint.exit
  %.val137 = phi i64 [ %.val1, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4hint.exit ], [ %.val138, %_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser4args0B5_.exit ], [ %.val138, %bb.ac ], [ %.val138, %bb.ah ], [ %.val138, %bb.aj ], [ %.val1126, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4hint.exit.thread124 ]
  %i.dx = phi ptr [ %i.ak, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4hint.exit ], [ %i.an, %_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser4args0B5_.exit ], [ %i.an, %bb.ac ], [ %i.an, %bb.ah ], [ %i.an, %bb.aj ], [ %i.m, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4hint.exit.thread124 ]
  %.val276 = load i64, ptr %i.g, align 8
  %.val377 = load i8, ptr %i.h, align 8, !range !21, !noundef !19
  %i.dy = icmp eq i8 %.val377, 48
  %.not.i1478 = icmp eq i64 %.val276, 0
  %.sroa.0.0.i1579 = select i1 %i.dy, i1 %.not.i1478, i1 false
  br i1 %.sroa.0.0.i1579, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_4args0EB8_.exit
  call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef align 8 dereferenceable(272) %0, i64 noundef %.val137, i8 noundef 116)
  ret void

.lr.ph:                                           ; preds = %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_4args0EB8_.exit, %.lr.ph
  %.val.i = load i64, ptr %i.dx, align 8, !alias.scope !9249, !noundef !19 ; 3 uses
  %i.dz = icmp ult i64 %.val.i, 288230376151711744
  call void @llvm.assume(i1 %i.dz)
  call fastcc void @_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser11enter_modesNCNvB6_13content_block0EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 %.val.i)
  call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %.val.i, i8 noundef 106), !inline_history !9250
  %.val2 = load i64, ptr %i.g, align 8
  %.val3 = load i8, ptr %i.h, align 8, !range !21, !noundef !19
  %i.ea = icmp eq i8 %.val3, 48
  %.not.i14 = icmp eq i64 %.val2, 0
  %.sroa.0.0.i15 = select i1 %i.ea, i1 %.not.i14, i1 false
  br i1 %.sroa.0.0.i15, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [272 x i8], align 8               ; 4 uses
  %i.c = alloca [272 x i8], align 8               ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @508, i64 noundef 5, i64 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @_RNvMs1_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(272) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i8 noundef 0)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.i, %bb.l, %bb.g
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.l ], [ %lpad.thr_comm.split-lp, %bb.i ], [ %i.h, %bb.g ]
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !9260, !noundef !19
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs5PEMdK7bMAG_12typst_syntax.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs5PEMdK7bMAG_12typst_syntax.exit unwind label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9261)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.j = load i32, ptr %i.i, align 8, !alias.scope !9262, !noundef !19
  %i.k = icmp ult i32 %i.j, 256
  br i1 %i.k, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.thread.i

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.thread.i: ; preds = %bb.h
  invoke fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17depth_check_error(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.c, i128 noundef 1, i128 range(i128 1, 159877786771652610) 1)
          to label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser12markup_exprs.exit unwind label %.loopexit.split-lp, !inline_history !9257

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9261
  store i64 0, ptr %i.a, align 8, !noalias !9261
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %.val.i9 = load i8, ptr %i.l, align 8, !range !21, !alias.scope !9261, !noundef !19
  %i.m = icmp eq i8 %.val.i9, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i, %.noexc4
  %.sroa.0.0.in.i10 = phi i1 [ %i.n, %.noexc4 ], [ true, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i ]
  invoke fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser11markup_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.c, i1 noundef zeroext %.sroa.0.0.in.i10, ptr noalias nofree noundef align 8 dereferenceable(8) %i.a)
          to label %.noexc4 unwind label %.loopexit, !inline_history !9257

.noexc4:                                          ; preds = %.lr.ph
  %.val5.i = load i64, ptr %i.c, align 8, !range !26, !alias.scope !9261, !noundef !19
  %i.n = icmp ne i64 %.val5.i, 2
  %.val.i = load i8, ptr %i.l, align 8, !range !21, !alias.scope !9261, !noundef !19
  %i.o = icmp eq i8 %.val.i, 0
  br i1 %i.o, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.noexc4, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9261
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser12markup_exprs.exit

bb.i:                                             ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser12markup_exprs.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser12markup_exprs.exit: ; preds = %._crit_edge, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.b, ptr noundef nonnull align 8 dereferenceable(272) %i.c, i64 272, i1 false)
  invoke fastcc void @_RNvMs1_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11finish_into(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(272) %i.b, i8 noundef 5)
          to label %bb.j unwind label %bb.i

bb.j:                                             ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser12markup_exprs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = load ptr, ptr %i.d, align 8, !alias.scope !9263, !noundef !19
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs5PEMdK7bMAG_12typst_syntax.exit5, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs5PEMdK7bMAG_12typst_syntax.exit5

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs5PEMdK7bMAG_12typst_syntax.exit5: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

end_hunk_12
begin_hunk_13_@_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser8for_loop:bb.a
  %i.l = add i32 %i.k, -1
  store i32 %i.l, ptr %i.g, align 8, !alias.scope !9330, !noalias !9331
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser7pattern.exit

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load i32, ptr %i.g, align 8, !alias.scope !9332, !noalias !9333, !noundef !19
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.g, align 8, !alias.scope !9332, !noalias !9333
  br label %.body

bb.h:                                             ; preds = %bb.y, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit.i29, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit.i, %.invoke, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i, %.noexc17, %bb.w, %.noexc14, %bb.x, %bb.s, %bb.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser5block.exit, %bb.k, %bb.j, %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser7pattern.exit35
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.r, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.p, %bb.h ], [ %i.aj, %bb.r ]
  %.val5 = load ptr, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val6 = load i64, ptr %i.q, align 8, !noundef !19
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax(ptr %.val5, i64 %.val6) #59
  resume { ptr, i32 } %eh.lpad-body

_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser7pattern.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit4.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit.i
  %.val2 = load i8, ptr %i.e, align 8, !range !21, !noundef !19
  %i.r = icmp eq i8 %.val2, 52
  br i1 %i.r, label %bb.i, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser7pattern.exit35

bb.i:                                             ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser7pattern.exit
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !9334, !noalias !9335, !noundef !19 ; 4 uses
  %i.t = icmp ult i64 %i.s, 288230376151711744
  call void @llvm.assume(i1 %i.t)
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.i
  %i.u = load i64, ptr %i.c, align 8, !alias.scope !9334, !noalias !9335, !noundef !19 ; 2 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.j, label %.invoke

_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser7pattern.exit35: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit4.i31, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit.i29, %bb.l, %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser7pattern.exit
  %i.w = invoke noundef zeroext i1 @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6expect(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i8 noundef 90)
          to label %bb.s unwind label %bb.h       ; 0 uses

bb.j:                                             ; preds = %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !9334, !noalias !9335, !nonnull !19, !noundef !19
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.s ; 2 uses
  invoke fastcc void @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode10unexpected(ptr noalias nofree noundef align 8 dereferenceable(32) %i.z)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode4hintReEB7_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @511, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @512)
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %bb.k
  %.val1 = load i8, ptr %i.e, align 8, !range !21, !noundef !19 ; 3 uses
  %i.aa = icmp sgt i8 %.val1, -1
  %i.ab = zext nneg i8 %.val1 to i128
  %i.ac = lshr i128 40087900389317226518257008148480, %i.ab
  %i.ad = trunc i128 %i.ac to i1
  %.sroa.0.0.i = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %.sroa.0.0.i, label %bb.m, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser7pattern.exit35

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.g, align 8, !alias.scope !9336, !noalias !9337, !noundef !19 ; 2 uses
  %i.af = icmp ult i32 %i.ae, 256
  br i1 %i.af, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit.i29

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit.i29: ; preds = %bb.m
  invoke fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17depth_check_error(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i128 noundef 0, i128 undef)
          to label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser7pattern.exit35 unwind label %bb.h, !inline_history !13

bb.n:                                             ; preds = %bb.m
  %i.ag = add nuw nsw i32 %i.ae, 1
  store i32 %i.ag, ptr %i.g, align 8, !alias.scope !9336, !noalias !9337
  switch i8 %.val1, label %bb.o [
    i8 50, label %bb.p
    i8 56, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser12pattern_leaf(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef readonly captures(address, read_provenance) null)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit4.i31 unwind label %bb.r

bb.p:                                             ; preds = %bb.n
  invoke fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser30destructuring_or_parenthesized(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit4.i31 unwind label %bb.r, !noalias !9338, !inline_history !13

bb.q:                                             ; preds = %bb.n
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit4.i31 unwind label %bb.r, !noalias !9337, !inline_history !13

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserNCNvMs4_B1O_B1M_14increase_depth0EEEB1Q_.exit4.i31: ; preds = %bb.o, %bb.q, %bb.p
  %i.ah = load i32, ptr %i.g, align 8, !alias.scope !9339, !noalias !9340, !noundef !19
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr %i.g, align 8, !alias.scope !9339, !noalias !9340
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser7pattern.exit35

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.p
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load i32, ptr %i.g, align 8, !alias.scope !9341, !noalias !9342, !noundef !19
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr %i.g, align 8, !alias.scope !9341, !noalias !9342
  br label %.body

bb.s:                                             ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser7pattern.exit35
  invoke fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser14code_expr_prec(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext false, i8 noundef 0)
          to label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser9code_expr.exit unwind label %bb.h, !inline_history !10

_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser9code_expr.exit: ; preds = %bb.s
  %.val.i9 = load i8, ptr %i.e, align 8, !range !21, !alias.scope !9343, !noundef !19 ; 2 uses
  switch i8 %.val.i9, label %bb.t [
    i8 46, label %bb.x
    i8 48, label %bb.y
  ]

bb.t:                                             ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser9code_expr.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !9344)
  %i.am = icmp eq i8 %.val.i9, 1
  br i1 %i.am, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !9345)
  %i.an = load i64, ptr %i.c, align 8, !alias.scope !9346, !noalias !9347, !noundef !19 ; 6 uses
  %i.ao = icmp ult i64 %i.an, 288230376151711744
  call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !9346, !noalias !9347, !noundef !19 ; 3 uses
  %.not.i.i = icmp eq i64 %i.an, %i.aq
  br i1 %.not.i.i, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = xor i64 %i.aq, -1
  %i.as = add i64 %i.an, %i.ar                    ; 3 uses
  %i.at = icmp ult i64 %i.as, %i.an
  br i1 %i.at, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i, label %.invoke

.invoke:                                          ; preds = %bb.v, %.noexc
  %i.au = phi i64 [ %i.s, %.noexc ], [ %i.as, %bb.v ]
  %i.av = phi i64 [ %i.u, %.noexc ], [ %i.an, %bb.v ]
  %i.aw = phi ptr [ @510, %.noexc ], [ @397, %bb.v ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw) #62
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i: ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !9346, !noalias !9347, !nonnull !19, !noundef !19
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %i.as
  %.sroa.01.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %.sroa.01.0.i.i = load i8, ptr %.sroa.01.0.in.i.i, align 1, !range !21, !noalias !9348, !noundef !19
  %i.ba = icmp eq i8 %.sroa.01.0.i.i, 1
  br i1 %i.ba, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser5block.exit, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i

bb.w:                                             ; preds = %bb.t
  invoke fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11trim_errors(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %.noexc17 unwind label %bb.h

.noexc17:                                         ; preds = %bb.w
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser5block.exit unwind label %bb.h

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i: ; preds = %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i, %bb.u
  %i.bb = sub i64 %i.an, %i.aq
  invoke fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11expected_at(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @503, i64 noundef 5)
          to label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser5block.exit unwind label %bb.h

bb.x:                                             ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser9code_expr.exit
  invoke fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser10code_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser5block.exit unwind label %bb.h, !inline_history !11

bb.y:                                             ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser9code_expr.exit
  %.val.i13 = load i64, ptr %i.c, align 8, !alias.scope !9349, !noundef !19 ; 3 uses
  %i.bc = icmp ult i64 %.val.i13, 288230376151711744
  call void @llvm.assume(i1 %i.bc)
  invoke fastcc void @_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser11enter_modesNCNvB6_13content_block0EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 %.val.i13)
          to label %.noexc14 unwind label %bb.h

.noexc14:                                         ; preds = %bb.y
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %.val.i13, i8 noundef 106)
          to label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser5block.exit unwind label %bb.h, !inline_history !12

_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser5block.exit: ; preds = %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i, %.noexc17, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i, %bb.x, %.noexc14
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef align 8 dereferenceable(272) %0, i64 noundef %.val, i8 noundef 126)
          to label %bb.z unwind label %bb.h

bb.z:                                             ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser5block.exit
  %.val3 = load ptr, ptr %i.b, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val4 = load i64, ptr %i.bd, align 8, !noundef !19 ; 3 uses
  %i.be = icmp eq i64 %.val4, 0
  br i1 %i.be, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.bf = shl i64 %.val4, 4                       ; 2 uses
  %i.bg = add i64 %i.bf, 16                       ; 2 uses
  %i.bh = add i64 %.val4, 17
  %i.bi = add i64 %i.bh, %i.bg                    ; 4 uses
  %i.bj = icmp uge i64 %i.bi, %i.bg
  %i.bk = icmp ult i64 %i.bi, 9223372036854775793
  call void @llvm.assume(i1 %i.bj)
  call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp eq i64 %i.bi, 0
  br i1 %i.bl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit, label %bb.aa

bb.aa:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.bm = sub nuw nsw i64 -16, %i.bf
  %i.bn = getelementptr inbounds i8, ptr %.val3, i64 %i.bm
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bn, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 16) #60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.z, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser8set_rule(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.val1 = load i64, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %i.c = icmp ult i64 %.val1, 288230376151711744
  tail call void @llvm.assume(i1 %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9357)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 84, ptr %i.a, align 1, !noalias !9358
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %.val.i = load i8, ptr %i.d, align 8, !range !21, !alias.scope !9357, !noalias !9359, !noundef !19
  %i.e = icmp eq i8 %.val.i, 84
  br i1 %i.e, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedNtNtCs5PEMdK7bMAG_12typst_syntax4kind10SyntaxKindBM_EBQ_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @517) #62
  unreachable

_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit: ; preds = %bb.a
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0), !noalias !9359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load i64, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %i.f = icmp ult i64 %.val, 288230376151711744
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef zeroext i1 @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6expect(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i8 noundef 99) ; 0 uses
  %.val.i25 = load i8, ptr %i.d, align 8, !range !21, !alias.scope !9360, !noundef !19
  %i.h = icmp eq i8 %.val.i25, 62
  br i1 %i.h, label %.lr.ph, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit

_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit: ; preds = %.lr.ph, %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit
  tail call fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser4args(ptr noalias nofree noundef align 8 dereferenceable(272) %0)
  %.val.i3 = load i8, ptr %i.d, align 8, !range !21, !alias.scope !9361, !noundef !19
  %i.i = icmp eq i8 %.val.i3, 87
  br i1 %i.i, label %bb.c, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit4

.lr.ph:                                           ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit, %.lr.ph
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef align 8 dereferenceable(272) %0)
  %i.j = tail call noundef zeroext i1 @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6expect(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i8 noundef 99) ; 0 uses
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef align 8 dereferenceable(272) %0, i64 noundef %.val, i8 noundef 114)
  %.val.i2 = load i8, ptr %i.d, align 8, !range !21, !alias.scope !9360, !noundef !19
  %i.k = icmp eq i8 %.val.i2, 62
  br i1 %i.k, label %.lr.ph, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit

_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit4: ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit, %bb.c
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef align 8 dereferenceable(272) %0, i64 noundef %.val1, i8 noundef 121)
  ret void

bb.c:                                             ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef align 8 dereferenceable(272) %0)
  tail call fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser14code_expr_prec(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext false, i8 noundef 0), !inline_history !10
  br label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser9enum_item(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %.sroa.01.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !9380
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9380
  switch i64 %.sroa.01.0.copyload.i, label %_RNvMs1_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser14current_column.exit [
    i64 2, label %bb.b
    i64 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !9380, !noundef !19
  %i.f = tail call fastcc noundef i64 @_RNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2_5Lexer6column(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c, i64 noundef %i.e)
  br label %_RNvMs1_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser14current_column.exit

_RNvMs1_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser14current_column.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.f, %bb.b ], [ %.sroa.6.0.copyload.i, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !range !25, !alias.scope !9381, !noundef !19 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !9381 ; 3 uses
  store i64 4, ptr %i.g, align 8, !alias.scope !9381
  store i64 %.sroa.0.0.i, ptr %i.i, align 8, !alias.scope !9381
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9382)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.val.i = load i64, ptr %i.k, align 8, !alias.scope !9382, !noundef !19 ; 2 uses
  %i.l = icmp ult i64 %.val.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9383)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9382
  store i8 28, ptr %i.b, align 1, !noalias !9384
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %.val.i.i = load i8, ptr %i.m, align 8, !range !21, !alias.scope !9385, !noalias !9386, !noundef !19
  %i.n = icmp eq i8 %.val.i.i, 28
  br i1 %i.n, label %_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser9enum_item0B5_.exit, label %bb.c, !prof !22

bb.c:                                             ; preds = %_RNvMs1_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser14current_column.exit
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedNtNtCs5PEMdK7bMAG_12typst_syntax4kind10SyntaxKindBM_EBQ_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noundef null, ptr undef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #62, !inline_history !9371
  unreachable

_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser9enum_item0B5_.exit: ; preds = %_RNvMs1_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser14current_column.exit
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0), !noalias !9386, !inline_history !9371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9382
  %.val.i1.i = load i64, ptr %i.k, align 8, !alias.scope !9387, !noundef !19 ; 2 uses
  %i.o = icmp ult i64 %.val.i1.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9388)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.q = load i32, ptr %i.p, align 8, !alias.scope !9389, !noundef !19
  %i.r = icmp ult i32 %i.q, 256
  br i1 %i.r, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i.thread

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i.thread: ; preds = %_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser9enum_item0B5_.exit
  tail call fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17depth_check_error(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i128 noundef 1, i128 range(i128 1, 159877786771652610) 562949953421313), !inline_history !9378
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser12markup_exprs.exit

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i: ; preds = %_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser9enum_item0B5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9388
  store i64 0, ptr %i.a, align 8, !noalias !9388
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i
  %.sroa.0.0.in.i = phi i1 [ true, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i ], [ %i.y, %bb.f ]
  %.val.i2 = load i8, ptr %i.m, align 8, !range !21, !alias.scope !9388, !noundef !19 ; 3 uses
  %i.s = icmp sgt i8 %.val.i2, -1
  %i.t = zext nneg i8 %.val.i2 to i128
  %i.u = lshr i128 562949953421313, %i.t
  %i.v = trunc i128 %i.u to i1
  %.sroa.0.0.i8.i = select i1 %i.s, i1 %i.v, i1 false
  br i1 %.sroa.0.0.i8.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.a, align 8, !noalias !9388, !noundef !19
  %.not4.i = icmp ne i64 %i.w, 0
  %i.x = icmp eq i8 %.val.i2, 49
  %or.cond = and i1 %i.x, %.not4.i
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  call fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser11markup_expr(ptr noalias nofree noundef align 8 dereferenceable(272) %0, i1 noundef zeroext %.sroa.0.0.in.i, ptr noalias nofree noundef align 8 dereferenceable(8) %i.a), !inline_history !9378
  %.val5.i = load i64, ptr %0, align 8, !range !26, !alias.scope !9388, !noundef !19
  %i.y = icmp ne i64 %.val5.i, 2
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9388
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser12markup_exprs.exit

_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser12markup_exprs.exit: ; preds = %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i.thread, %bb.g
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %.val.i1.i, i8 noundef 5), !inline_history !9379
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %.val.i, i8 noundef 27), !inline_history !9371
  store i64 %i.h, ptr %i.g, align 8, !alias.scope !9381
  store i64 %i.j, ptr %i.i, align 8, !alias.scope !9381
  %i.z = load i64, ptr %0, align 8, !range !26, !alias.scope !9381, !noundef !19 ; 2 uses
  %.not.i = icmp eq i64 %i.z, 2
  br i1 %.not.i, label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_9enum_item0EB8_.exit, label %bb.h

bb.h:                                             ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser12markup_exprs.exit
  %i.aa = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9381
  %i.ab = icmp eq i64 %i.h, 4
  %.not17.i = icmp eq i64 %.sroa.0.0.i, %i.j
  %or.cond.i = select i1 %i.ab, i1 %.not17.i, i1 false
  br i1 %or.cond.i, label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_9enum_item0EB8_.exit, label %bb.i

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !range !20, !alias.scope !9381, !noundef !19
  %.sroa.08.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.sroa.08.0.i = load i8, ptr %.sroa.08.0.in.i, align 1, !range !21, !alias.scope !9381, !noundef !19 ; 3 uses
  switch i64 %i.h, label %default.unreachable [
    i64 0, label %bb.n
    i64 1, label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_9enum_item0EB8_.exit.sink.split
    i64 2, label %bb.j
    i64 3, label %bb.k
    i64 4, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %switch.selectcmp = icmp eq i8 %.sroa.08.0.i, 88
  %switch.select = select i1 %switch.selectcmp, i8 88, i8 0
  %switch.selectcmp5 = icmp eq i8 %.sroa.08.0.i, 62
  %switch.select6 = select i1 %switch.selectcmp5, i8 62, i8 %switch.select
  br label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_9enum_item0EB8_.exit.sink.split
end_hunk_13
begin_hunk_14_@_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser9math_args:bb.a
.loopexit108:                                     ; preds = %.noexc15
  %lpad.loopexit110 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp109:                            ; preds = %bb.be
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit.split-lp109, %.loopexit108
  %lpad.phi111 = phi { ptr, i32 } [ %lpad.loopexit110, %.loopexit108 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp109 ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #59
          to label %.body unwind label %bb.bf, !inline_history !9448

bb.bd:                                            ; preds = %.noexc15
  br i1 %i.ji, label %bb.be, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit.i, !prof !23

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @514) #62
          to label %.noexc.i unwind label %.loopexit.split-lp109, !inline_history !9448

.noexc.i:                                         ; preds = %bb.be
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !9495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9495
  invoke fastcc void @_RINvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode16convert_to_errorNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB8_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.jh, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.i)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.loopexit, !inline_history !9448

.noexc16:                                         ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9495
  br label %.noexc9.jt110

bb.bf:                                            ; preds = %bb.bc
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !inline_history !9448
  unreachable

bb.bg:                                            ; preds = %.noexc10.jt117
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4kind10SyntaxKindEBM_EB1c_(i8 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.k, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @515, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @516) #62
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !9448

.noexc17:                                         ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc10.jt110
  call void @llvm.experimental.noalias.scope.decl(metadata !9533)
  %i.jk = load i8, ptr %i.p, align 8, !range !21, !alias.scope !9533, !noalias !9534, !noundef !19
  %i.jl = icmp eq i8 %i.jk, 1
  br i1 %i.jl, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !9535)
  %i.jm = load i64, ptr %i.n, align 8, !alias.scope !9536, !noalias !9534, !noundef !19 ; 6 uses
  %i.jn = icmp ult i64 %i.jm, 288230376151711744
  call void @llvm.assume(i1 %i.jn)
  %i.jo = load i64, ptr %i.ai, align 8, !alias.scope !9536, !noalias !9534, !noundef !19 ; 3 uses
  %.not.i.i28 = icmp eq i64 %i.jm, %i.jo
  br i1 %.not.i.i28, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i32, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jp = xor i64 %i.jo, -1
  %i.jq = add i64 %i.jm, %i.jp                    ; 3 uses
  %i.jr = icmp ult i64 %i.jq, %i.jm
  br i1 %i.jr, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i29, label %.invoke394

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i29: ; preds = %bb.bj
  %i.js = load ptr, ptr %i.ah, align 8, !alias.scope !9536, !noalias !9534, !nonnull !19, !noundef !19
  %i.jt = getelementptr inbounds nuw [32 x i8], ptr %i.js, i64 %i.jq
  %.sroa.01.0.in.i.i30 = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  %.sroa.01.0.i.i31 = load i8, ptr %.sroa.01.0.in.i.i30, align 1, !range !21, !noalias !9537, !noundef !19
  %i.ju = icmp eq i8 %.sroa.01.0.i.i31, 1
  br i1 %i.ju, label %.critedge.i, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i32

bb.bk:                                            ; preds = %bb.bh
  invoke fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11trim_errors(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.loopexit

.noexc34:                                         ; preds = %bb.bk
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %.critedge.i unwind label %.loopexit.split-lp.loopexit.loopexit

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i32: ; preds = %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i29, %bb.bi
  %i.jv = sub i64 %i.jm, %i.jo
  invoke fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11expected_at(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %i.jv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 10)
          to label %.critedge.i unwind label %.loopexit.split-lp.loopexit.loopexit

.noexc19:                                         ; preds = %.critedge.i
  br i1 %not..i307, label %.noexc19.thread317, label %.noexc19.thread315

.critedge.i:                                      ; preds = %.noexc10.jt255, %.noexc10.jt117, %.noexc10.jt110, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i32, %.noexc34, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i29
  %.val29.i309 = phi i64 [ %.val29.i.jt110, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i29 ], [ %.val29.i.jt110, %.noexc34 ], [ %.val29.i.jt117, %.noexc10.jt117 ], [ %.val29.i.jt110, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i32 ], [ %.val29.i.jt110, %.noexc10.jt110 ], [ %.val29.i.jt255, %.noexc10.jt255 ]
  %i.jw = phi i8 [ 110, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i29 ], [ 110, %.noexc34 ], [ 117, %.noexc10.jt117 ], [ 110, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i32 ], [ 110, %.noexc10.jt110 ], [ -1, %.noexc10.jt255 ]
  %not..i307 = phi i1 [ true, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i29 ], [ true, %.noexc34 ], [ true, %.noexc10.jt117 ], [ true, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i32 ], [ true, %.noexc10.jt110 ], [ false, %.noexc10.jt255 ]
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %.val29.i309, i8 noundef 32)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.loopexit, !inline_history !9448

.noexc19.thread317:                               ; preds = %.noexc10.jt110, %.noexc10.jt117, %.noexc19
  %i.jx = phi i8 [ 117, %.noexc10.jt117 ], [ %i.jw, %.noexc19 ], [ 110, %.noexc10.jt110 ]
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %.val30.i, i8 noundef %i.jx)
          to label %.noexc19.thread315 unwind label %.loopexit.split-lp.loopexit.loopexit, !inline_history !9448

._crit_edge:                                      ; preds = %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser8expected.exit, %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit
  %.val1.lcssa = phi i8 [ %.val1202, %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit ], [ %.val1, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser8expected.exit ]
  %i.jy = icmp eq i8 %.val1.lcssa, 51
  br i1 %i.jy, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit.thread.i, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit.i

_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit.thread.i: ; preds = %._crit_edge
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser24expect_closing_delimiter.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit.i: ; preds = %._crit_edge
  %i.jz = load i64, ptr %i.n, align 8, !alias.scope !9538, !noalias !9539, !noundef !19 ; 2 uses
  %i.ka = icmp ult i64 %.val, %i.jz
  br i1 %i.ka, label %bb.bl, label %.invoke394

bb.bl:                                            ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit.i
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.kc = load ptr, ptr %i.kb, align 8, !alias.scope !9538, !noalias !9539, !nonnull !19, !noundef !19
  %i.kd = getelementptr inbounds nuw [32 x i8], ptr %i.kc, i64 %.val
  invoke fastcc void @_RINvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode16convert_to_errorReEB8_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.kd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @403, i64 noundef 18)
          to label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser24expect_closing_delimiter.exit unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc19.thread315:                               ; preds = %.noexc10.jt255, %.noexc19.thread317, %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9495
  %.val2 = load i8, ptr %i.p, align 8, !range !21, !noundef !19 ; 2 uses
  switch i8 %.val2, label %bb.bm [
    i8 0, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser8expected.exit
    i8 51, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser8expected.exit
    i8 52, label %.invoke
    i8 53, label %.invoke
    i8 57, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser8expected.exit
  ]

bb.bm:                                            ; preds = %.noexc19.thread315
  call void @llvm.experimental.noalias.scope.decl(metadata !9540)
  %i.ke = icmp eq i8 %.val2, 1
  br i1 %i.ke, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !9541)
  %i.kf = load i64, ptr %i.n, align 8, !alias.scope !9542, !noalias !9543, !noundef !19 ; 6 uses
  %i.kg = icmp ult i64 %i.kf, 288230376151711744
  call void @llvm.assume(i1 %i.kg)
  %i.kh = load i64, ptr %i.ai, align 8, !alias.scope !9542, !noalias !9543, !noundef !19 ; 3 uses
  %.not.i.i = icmp eq i64 %i.kf, %i.kh
  br i1 %.not.i.i, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ki = xor i64 %i.kh, -1
  %i.kj = add i64 %i.kf, %i.ki                    ; 3 uses
  %i.kk = icmp ult i64 %i.kj, %i.kf
  br i1 %i.kk, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i, label %.invoke394

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i: ; preds = %bb.bo
  %i.kl = load ptr, ptr %i.ah, align 8, !alias.scope !9542, !noalias !9543, !nonnull !19, !noundef !19
  %i.km = getelementptr inbounds nuw [32 x i8], ptr %i.kl, i64 %i.kj
  %.sroa.01.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.km, i64 1
  %.sroa.01.0.i.i = load i8, ptr %.sroa.01.0.in.i.i, align 1, !range !21, !noalias !9544, !noundef !19
  %i.kn = icmp eq i8 %.sroa.01.0.i.i, 1
  br i1 %i.kn, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser8expected.exit, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i

bb.bp:                                            ; preds = %bb.bm
  invoke fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11trim_errors(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %.invoke unwind label %.loopexit.split-lp.loopexit.loopexit

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i: ; preds = %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i, %bb.bn
  %i.ko = sub i64 %i.kf, %i.kh
  invoke fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11expected_at(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %i.ko, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @519, i64 noundef 18)
          to label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser8expected.exit unwind label %.loopexit.split-lp.loopexit.loopexit

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser8expected.exit: ; preds = %.invoke, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.i, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i, %.noexc19.thread315, %.noexc19.thread315, %.noexc19.thread315
  %.val1 = load i8, ptr %i.p, align 8, !range !21, !noundef !19 ; 3 uses
  %i.kp = icmp sgt i8 %.val1, -1
  %i.kq = zext nneg i8 %.val1 to i128
  %i.kr = lshr i128 146366987889541121, %i.kq
  %i.ks = trunc i128 %i.kr to i1
  %.sroa.0.0.i = select i1 %i.kp, i1 %i.ks, i1 false
  br i1 %.sroa.0.0.i, label %._crit_edge, label %bb.c

.invoke:                                          ; preds = %.noexc19.thread315, %.noexc19.thread315, %bb.bp
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef align 8 dereferenceable(272) %0)
          to label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser8expected.exit unwind label %.loopexit.split-lp.loopexit.loopexit

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser24expect_closing_delimiter.exit: ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit.thread.i, %bb.bl
  invoke fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef align 8 dereferenceable(272) %0, i64 noundef %.val, i8 noundef 39)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser24expect_closing_delimiter.exit
  %.val3 = load ptr, ptr %i.m, align 8            ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val4 = load i64, ptr %i.kt, align 8, !noundef !19 ; 3 uses
  %i.ku = icmp eq i64 %.val4, 0
  br i1 %i.ku, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.bq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.kv = shl i64 %.val4, 4                       ; 2 uses
  %i.kw = add i64 %i.kv, 16                       ; 2 uses
  %i.kx = add i64 %.val4, 17
  %i.ky = add i64 %i.kx, %i.kw                    ; 4 uses
  %i.kz = icmp uge i64 %i.ky, %i.kw
  %i.la = icmp ult i64 %i.ky, 9223372036854775793
  call void @llvm.assume(i1 %i.kz)
  call void @llvm.assume(i1 %i.la)
  %i.lb = icmp eq i64 %i.ky, 0
  br i1 %i.lb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit, label %bb.br

bb.br:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.lc = sub nuw nsw i64 -16, %i.kv
  %i.ld = getelementptr inbounds i8, ptr %.val3, i64 %i.lc
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ld, i64 noundef %i.ky, i64 noundef range(i64 1, -9223372036854775807) 16) #60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.bq, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser9show_rule(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.val = load i64, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %i.c = icmp ult i64 %.val, 288230376151711744
  tail call void @llvm.assume(i1 %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9550)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 85, ptr %i.a, align 1, !noalias !9551
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %.val.i = load i8, ptr %i.d, align 8, !range !21, !alias.scope !9550, !noalias !9552, !noundef !19
  %i.e = icmp eq i8 %.val.i, 85
  br i1 %i.e, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedNtNtCs5PEMdK7bMAG_12typst_syntax4kind10SyntaxKindBM_EBQ_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @521) #62
  unreachable

_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit: ; preds = %bb.a
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0), !noalias !9552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1 = load i64, ptr %i.f, align 8, !noundef !19
  %.val2 = load i64, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %i.g = icmp ult i64 %.val2, 288230376151711744
  tail call void @llvm.assume(i1 %i.g)
  %i.h = sub i64 %.val2, %.val1
  %.val3 = load i8, ptr %i.d, align 8, !range !21, !noundef !19
  %i.i = icmp eq i8 %.val3, 54
  br i1 %i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit
  tail call fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser14code_expr_prec(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext false, i8 noundef 0), !inline_history !10
  %.val.i4.pr = load i8, ptr %i.d, align 8, !alias.scope !9553
  %i.j = icmp eq i8 %.val.i4.pr, 54
  br i1 %i.j, label %.thread, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit

_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit: ; preds = %bb.c
  tail call fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11expected_at(ptr noalias nofree noundef align 8 dereferenceable(272) %0, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 5)
  br label %bb.d

.thread:                                          ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit, %bb.c
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef align 8 dereferenceable(272) %0)
  tail call fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser14code_expr_prec(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext false, i8 noundef 0), !inline_history !10
  br label %bb.d

bb.d:                                             ; preds = %.thread, %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef align 8 dereferenceable(272) %0, i64 noundef %.val, i8 noundef 122)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser9term_item(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.01.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !9585
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9585
  switch i64 %.sroa.01.0.copyload.i, label %_RNvMs1_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser14current_column.exit [
    i64 2, label %bb.b
    i64 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !9585, !noundef !19
  %i.g = tail call fastcc noundef i64 @_RNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2_5Lexer6column(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.d, i64 noundef %i.f)
  br label %_RNvMs1_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser14current_column.exit

_RNvMs1_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser14current_column.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.g, %bb.b ], [ %.sroa.6.0.copyload.i, %bb.a ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !range !25, !alias.scope !9586, !noundef !19 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !9586 ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.j, align 8, !alias.scope !9586
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %.val.i = load i64, ptr %i.l, align 8, !alias.scope !9587, !noundef !19 ; 2 uses
  %i.m = icmp ult i64 %.val.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  store i64 1, ptr %i.h, align 8, !alias.scope !9588
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9590)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9589
  store i8 30, ptr %i.b, align 1, !noalias !9591
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %.val.i.i3 = load i8, ptr %i.n, align 8, !range !21, !alias.scope !9592, !noalias !9593, !noundef !19
  %i.o = icmp eq i8 %.val.i.i3, 30
  br i1 %i.o, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %_RNvMs1_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser14current_column.exit
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedNtNtCs5PEMdK7bMAG_12typst_syntax4kind10SyntaxKindBM_EBQ_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noundef null, ptr undef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #62, !inline_history !9567
  unreachable

_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit.i: ; preds = %_RNvMs1_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser14current_column.exit
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0), !noalias !9593, !inline_history !9567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9589
  %.val.i1.i = load i64, ptr %i.l, align 8, !alias.scope !9594, !noundef !19 ; 2 uses
  %i.p = icmp ult i64 %.val.i1.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.p)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9595)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !alias.scope !9596, !noundef !19
  %i.s = icmp ult i32 %i.r, 256
  br i1 %i.s, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i.i, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i.i.thread

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i.i.thread: ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit.i
  tail call fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17depth_check_error(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i128 noundef 1, i128 range(i128 1, 159877786771652610) 18577348462903297), !inline_history !9574
  br label %_RNCNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser9term_item00B7_.exit

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i.i: ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit.i
  %.val6.i.i = load i64, ptr %0, align 8, !range !26, !alias.scope !9597, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9597
  store i64 0, ptr %i.a, align 8, !noalias !9597
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i.i
  %.sroa.0.0.in.i.i.in = phi i64 [ %.val6.i.i, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i.i ], [ %.val5.i.i, %bb.f ]
  %.sroa.0.0.in.i.i = icmp ne i64 %.sroa.0.0.in.i.i.in, 2
  %.val.i2.i = load i8, ptr %i.n, align 8, !range !21, !alias.scope !9597, !noundef !19 ; 3 uses
  %i.t = icmp sgt i8 %.val.i2.i, -1
  %i.u = zext nneg i8 %.val.i2.i to i128
  %i.v = lshr i128 18577348462903297, %i.u
  %i.w = trunc i128 %i.v to i1
  %.sroa.0.0.i8.i.i = select i1 %i.t, i1 %i.w, i1 false
  br i1 %.sroa.0.0.i8.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load i64, ptr %i.a, align 8, !noalias !9597, !noundef !19
  %.not4.i.i = icmp ne i64 %i.x, 0
  %i.y = icmp eq i8 %.val.i2.i, 49
  %or.cond = and i1 %i.y, %.not4.i.i
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  call fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser11markup_expr(ptr noalias nofree noundef align 8 dereferenceable(272) %0, i1 noundef zeroext %.sroa.0.0.in.i.i, ptr noalias nofree noundef align 8 dereferenceable(8) %i.a), !inline_history !9574
  %.val5.i.i = load i64, ptr %0, align 8, !range !26, !alias.scope !9597, !noundef !19
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9597
  br label %_RNCNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser9term_item00B7_.exit

_RNCNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser9term_item00B7_.exit: ; preds = %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i.i.thread, %bb.g
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser4wrap(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %.val.i1.i, i8 noundef 5), !inline_history !9575
  store i64 4, ptr %i.h, align 8, !alias.scope !9588
  store i64 %.sroa.0.0.i, ptr %i.j, align 8, !alias.scope !9588
  %i.z = load i64, ptr %0, align 8, !range !26, !alias.scope !9588, !noundef !19 ; 2 uses
  %.not.i.i = icmp eq i64 %i.z, 2
  br i1 %.not.i.i, label %_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser9term_item0B5_.exit, label %_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser9term_item0B5_.exit.sink.split

_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser9term_item0B5_.exit.sink.split: ; preds = %_RNCNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser9term_item00B7_.exit
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.not = icmp ule i64 %i.ab, %.sroa.0.0.i
  %or.cond11.not = select i1 %i.aa, i1 %.not, i1 false
  %.sroa.08.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.sroa.08.0.i.i = load i8, ptr %.sroa.08.0.in.i.i, align 1, !range !21
  %.sink = select i1 %or.cond11.not, i8 0, i8 %.sroa.08.0.i.i
  store i8 %.sink, ptr %i.n, align 8, !alias.scope !9588
  br label %_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser9term_item0B5_.exit

_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser9term_item0B5_.exit: ; preds = %_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser9term_item0B5_.exit.sink.split, %_RNCNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser9term_item00B7_.exit
  %i.ac = tail call noundef zeroext i1 @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6expect(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i8 noundef 54), !inline_history !9576 ; 0 uses
  %.val.i.i = load i64, ptr %i.l, align 8, !alias.scope !9598, !noundef !19 ; 2 uses
  %i.ad = icmp ult i64 %.val.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.ad)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9599)
  %i.ae = load i32, ptr %i.q, align 8, !alias.scope !9600, !noundef !19
  %i.af = icmp ult i32 %i.ae, 256
  br i1 %i.af, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i.thread

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i.thread: ; preds = %_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser9term_item0B5_.exit
  tail call fastcc void @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17depth_check_error(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, i128 noundef 1, i128 range(i128 1, 159877786771652610) 562949953421313), !inline_history !9583
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser12markup_exprs.exit

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser17check_depth_until.exit.i: ; preds = %_RNCNvNtCs5PEMdK7bMAG_12typst_syntax6parser9term_item0B5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9599
  store i64 0, ptr %i.c, align 8, !noalias !9599
  br label %bb.h

end_hunk_14
begin_hunk_15_@_RNvNtCs5PEMdK7bMAG_12typst_syntax7package15parse_namespace:bb.a
  %i.cb = load ptr, ptr %i.b, align 8, !alias.scope !9656, !noalias !9657, !nonnull !19, !noundef !19 ; 2 uses
  %.promoted.i.i.i27 = load i64, ptr %i.by, align 8, !alias.scope !9656, !noalias !9657 ; 2 uses
  %scevgep.i.i.i28 = getelementptr nuw i8, ptr %i.cb, i64 %.promoted.i.i.i27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %scevgep.i.i.i28, ptr noundef nonnull readonly align 1 dereferenceable(42) @529, i64 range(i64 0, -9223372036854775808) 42, i1 false), !noalias !9658
  %i.cc = add i64 %.promoted.i.i.i27, 42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9655
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.cd, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cc, ptr %.sroa.436.0..sroa_idx, align 8
  br label %bb.u

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.e, i8 0, i64 15, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  store i8 -128, ptr %.sroa.45.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5PEMdK7bMAG_12typst_syntax, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ce = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @31, ptr noundef nonnull @527, ptr noundef nonnull %i.d)
          to label %bb.s unwind label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bt, ptr %i.cg, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.r:                                             ; preds = %bb.t, %bb.p
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #59
          to label %common.resume unwind label %bb.v

bb.s:                                             ; preds = %bb.p
  br i1 %i.ce, label %bb.t, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit, !prof !23

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @528) #62
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.t
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

bb.u:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit, %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit30
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.v:                                             ; preds = %bb.r
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser11try_reparse(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i8 noundef range(i8 -1, -119) %6, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %7, i64 noundef %8) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [272 x i8], align 8               ; 6 uses
  %i.b = alloca [272 x i8], align 8               ; 7 uses
  %i.c = alloca [272 x i8], align 8               ; 19 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 13 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.015.0.i = phi ptr [ %7, %bb.a ], [ %i.n, %bb.d ] ; 2 uses
  %i.j = load i8, ptr %.sroa.015.0.i, align 8, !range !30, !noalias !9760, !noundef !19
  switch i8 %i.j, label %.unreachabledefault [
    i8 0, label %.loopexit
    i8 1, label %bb.c
    i8 2, label %.loopexit
    i8 3, label %bb.d
  ]

.unreachabledefault:                              ; preds = %bb.b
  unreachable

default.unreachable:                              ; preds = %.preheader28.i, %.preheader.i, %bb.q, %bb.z, %.preheader98, %.preheader97, %.preheader, %bb.av, %bb.az, %bb.bl, %bb.bo, %bb.br, %bb.cf, %.preheader.i.i, %bb.co, %.preheader.i57.i, %bb.cx, %bb.dg, %.preheader.i76.i, %.preheader.i84.i, %bb.ee, %.preheader.i102.i, %.preheader.i120.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %8, %3
  br i1 %i.k, label %.loopexit, label %.preheader28.i

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !9760, !nonnull !19, !noundef !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %bb.b

.preheader28.i:                                   ; preds = %bb.c, %bb.h
  %.sroa.04.0.i.i = phi ptr [ %i.ab, %bb.h ], [ %7, %bb.c ] ; 6 uses
  %i.o = load i8, ptr %.sroa.04.0.i.i, align 8, !range !30, !noalias !9760, !noundef !19
  switch i8 %i.o, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

bb.e:                                             ; preds = %.preheader28.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 23
  %i.q = load i8, ptr %i.p, align 1, !noalias !9760, !noundef !19 ; 2 uses
  %.not14.i.i = icmp sgt i8 %i.q, -1
  br i1 %.not14.i.i, label %bb.i, label %bb.j

bb.f:                                             ; preds = %.preheader28.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !9760, !nonnull !19, !noundef !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load i64, ptr %i.t, align 8, !noalias !9761, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i

bb.g:                                             ; preds = %.preheader28.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !9760, !nonnull !19, !noundef !19 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 47
  %i.y = load i8, ptr %i.x, align 1, !noalias !9761, !noundef !19 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.y, -1
  br i1 %.not.i.i, label %bb.k, label %bb.l

bb.h:                                             ; preds = %.preheader28.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !9760, !nonnull !19, !noundef !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  br label %.preheader28.i

bb.i:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !9760, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i

bb.j:                                             ; preds = %bb.e
  %i.ae = and i8 %i.q, 127
  %i.af = zext nneg i8 %i.ae to i64
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i

bb.k:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !9761, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i

bb.l:                                             ; preds = %bb.g
  %i.ai = and i8 %i.y, 127
  %i.aj = zext nneg i8 %i.ai to i64
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.f
  %.sroa.0.1.i.i = phi i64 [ %i.ad, %bb.i ], [ %i.u, %bb.f ], [ %i.af, %bb.j ], [ %i.aj, %bb.l ], [ %i.ah, %bb.k ]
  %i.ak = add i64 %.sroa.0.1.i.i, %8
  %i.al = icmp ugt i64 %4, %i.ak
  br i1 %i.al, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i, %bb.n
  %.sroa.03.0.i.i = phi ptr [ %i.aw, %bb.n ], [ %7, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i ] ; 3 uses
  %i.am = load i8, ptr %.sroa.03.0.i.i, align 8, !range !30, !noalias !9760, !noundef !19
  switch i8 %i.am, label %default.unreachable [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i
    i8 1, label %bb.m
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i
    i8 3, label %bb.n
  ]

bb.m:                                             ; preds = %.preheader.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !9760, !nonnull !19, !noundef !19 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !9762, !nonnull !19, !noundef !19 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !noalias !9762, !noundef !19
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.as
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i

bb.n:                                             ; preds = %.preheader.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !9760, !nonnull !19, !noundef !19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  br label %.preheader.i

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i: ; preds = %.preheader.i, %.preheader.i, %bb.m
  %.sroa.3.0.i.i = phi ptr [ %i.at, %bb.m ], [ inttoptr (i64 8 to ptr), %.preheader.i ], [ inttoptr (i64 8 to ptr), %.preheader.i ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.aq, %bb.m ], [ inttoptr (i64 8 to ptr), %.preheader.i ], [ inttoptr (i64 8 to ptr), %.preheader.i ]
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit27.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i
  %.sroa.013.0.i = phi i64 [ %8, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i ], [ %spec.select.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit27.i ] ; 2 uses
  %.sroa.012.0.i = phi i64 [ 0, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i ], [ %spec.select21.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit27.i ] ; 2 uses
  %.sroa.010.0.i = phi ptr [ %.sroa.0.0.i.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i ], [ %i.ay, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit27.i ] ; 4 uses
  %.sroa.07.0.i = phi i64 [ 0, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i ], [ %i.bx, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit27.i ] ; 3 uses
  %.sroa.0.0.i = phi i64 [ %8, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i ], [ %i.bw, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit27.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.0.i), "nonnull"(ptr %.sroa.3.0.i.i) ]
  %i.ax = icmp eq ptr %.sroa.010.0.i, %.sroa.3.0.i.i
  br i1 %i.ax, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser20overlapping_children.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 32
  %i.az = icmp ult i64 %.sroa.0.0.i, %3           ; 2 uses
  %spec.select.i = select i1 %i.az, i64 %.sroa.0.0.i, i64 %.sroa.013.0.i ; 2 uses
  %spec.select21.i = select i1 %i.az, i64 %.sroa.07.0.i, i64 %.sroa.012.0.i ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.sroa.04.0.i22.i = phi ptr [ %.sroa.010.0.i, %bb.p ], [ %i.bn, %bb.u ] ; 6 uses
  %i.ba = load i8, ptr %.sroa.04.0.i22.i, align 8, !range !30, !noalias !9763, !noundef !19
  switch i8 %i.ba, label %default.unreachable [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i22.i, i64 23
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !9763, !noundef !19 ; 2 uses
  %.not14.i25.i = icmp sgt i8 %i.bc, -1
  br i1 %.not14.i25.i, label %bb.v, label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i22.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !9763, !nonnull !19, !noundef !19
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !9764, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit27.i

bb.t:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i22.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !9763, !nonnull !19, !noundef !19 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 47
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !9764, !noundef !19 ; 2 uses
  %.not.i23.i = icmp sgt i8 %i.bk, -1
  br i1 %.not.i23.i, label %bb.x, label %bb.y

bb.u:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i22.i, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !9763, !nonnull !19, !noundef !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  br label %bb.q

bb.v:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i22.i, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !9763, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit27.i

bb.w:                                             ; preds = %bb.r
  %i.bq = and i8 %i.bc, 127
  %i.br = zext nneg i8 %i.bq to i64
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit27.i

bb.x:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !9764, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit27.i

bb.y:                                             ; preds = %bb.t
  %i.bu = and i8 %i.bk, 127
  %i.bv = zext nneg i8 %i.bu to i64
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit27.i

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit27.i: ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.s
  %.sroa.0.1.i24.i = phi i64 [ %i.bp, %bb.v ], [ %i.bg, %bb.s ], [ %i.br, %bb.w ], [ %i.bv, %bb.y ], [ %i.bt, %bb.x ]
  %i.bw = add i64 %.sroa.0.1.i24.i, %.sroa.0.0.i  ; 2 uses
  %i.bx = add i64 %.sroa.07.0.i, 1                ; 2 uses
  %i.by = icmp ult i64 %4, %i.bw
  br i1 %i.by, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser20overlapping_children.exit, label %bb.o

_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser20overlapping_children.exit: ; preds = %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit27.i, %bb.o
  %.sroa.9.0 = phi i64 [ %.sroa.013.0.i, %bb.o ], [ %spec.select.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit27.i ] ; 6 uses
  %.sroa.7.0 = phi i64 [ %.sroa.07.0.i, %bb.o ], [ %i.bx, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit27.i ] ; 6 uses
  %.sroa.576.0 = phi i64 [ %.sroa.012.0.i, %bb.o ], [ %spec.select21.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit27.i ] ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 1
  %.val33 = load i8, ptr %i.bz, align 1, !range !21, !noundef !19 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser20overlapping_children.exit
  %.sroa.01.0.i.i = phi ptr [ %7, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser20overlapping_children.exit ], [ %i.cc, %bb.aa ] ; 3 uses
  %i.ca = load i8, ptr %.sroa.01.0.i.i, align 8, !range !30, !noundef !19
  switch i8 %i.ca, label %default.unreachable [
    i8 0, label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode12children_mut.exit
    i8 1, label %bb.ab
    i8 2, label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode12children_mut.exit
    i8 3, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %i.cc = tail call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node14WarningWrapperE8make_mutBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.cb) #63
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %i.ce = tail call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeE8make_mutBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.cd) #63 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !9765, !nonnull !19, !noundef !19
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !9765, !noundef !19
  br label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode12children_mut.exit

_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode12children_mut.exit: ; preds = %bb.z, %bb.z, %bb.ab
  %.sroa.3.0.i = phi i64 [ %i.ci, %bb.ab ], [ 0, %bb.z ], [ 0, %bb.z ] ; 2 uses
  %.sroa.0.0.i34 = phi ptr [ %i.cg, %bb.ab ], [ inttoptr (i64 8 to ptr), %bb.z ], [ inttoptr (i64 8 to ptr), %bb.z ]
  %i.cj = icmp ult i64 %.sroa.7.0, %.sroa.576.0
  %.not19 = icmp ugt i64 %.sroa.7.0, %.sroa.3.0.i
  %or.cond = or i1 %i.cj, %.not19
  br i1 %or.cond, label %bb.ad, label %bb.ac, !prof !49

.loopexit:                                        ; preds = %bb.b, %bb.b, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i, %bb.c
  store i64 0, ptr %0, align 8
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser25expand_and_reparse_markup.exit

_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser25expand_and_reparse_markup.exit: ; preds = %bb.cd, %bb.fw, %bb.fx, %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode13update_parent.exit, %.loopexit
  ret void

bb.ac:                                            ; preds = %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode12children_mut.exit
  %i.ck = sub nuw i64 %.sroa.7.0, %.sroa.576.0
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i34, i64 %.sroa.576.0 ; 8 uses
  %i.cm = icmp eq i64 %i.ck, 1
  %i.cn = icmp ult i64 %.sroa.9.0, %3
  %or.cond22 = select i1 %i.cm, i1 %i.cn, i1 false
  br i1 %or.cond22, label %.preheader98, label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode8is_inner.exit

bb.ad:                                            ; preds = %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode12children_mut.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.576.0, i64 noundef %.sroa.7.0, i64 noundef %.sroa.3.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @531) #62
  unreachable

_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode8is_inner.exit: ; preds = %.preheader97, %.preheader97, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit, %bb.bv, %bb.ac
  %i.co = icmp eq i8 %.val33, 5
  br i1 %i.co, label %bb.cc, label %bb.cd

.preheader98:                                     ; preds = %bb.ac, %bb.ah
  %.sroa.04.0.i = phi ptr [ %i.dc, %bb.ah ], [ %i.cl, %bb.ac ] ; 6 uses
  %i.cp = load i8, ptr %.sroa.04.0.i, align 8, !range !30, !noundef !19
  switch i8 %i.cp, label %default.unreachable [
    i8 0, label %bb.ae
    i8 1, label %bb.af
    i8 2, label %bb.ag
    i8 3, label %bb.ah
  ]

bb.ae:                                            ; preds = %.preheader98
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 23
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !19 ; 2 uses
  %.not14.i = icmp sgt i8 %i.cr, -1
  br i1 %.not14.i, label %bb.ai, label %bb.aj

bb.af:                                            ; preds = %.preheader98
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !19, !noundef !19
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !9766, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit

bb.ag:                                            ; preds = %.preheader98
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 47
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !9766, !noundef !19 ; 2 uses
  %.not.i = icmp sgt i8 %i.cz, -1
  br i1 %.not.i, label %bb.ak, label %bb.al

bb.ah:                                            ; preds = %.preheader98
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !19, !noundef !19
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  br label %.preheader98

bb.ai:                                            ; preds = %bb.ae
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit

bb.aj:                                            ; preds = %bb.ae
  %i.df = and i8 %i.cr, 127
  %i.dg = zext nneg i8 %i.df to i64
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit

bb.ak:                                            ; preds = %bb.ag
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.di = load i64, ptr %i.dh, align 8, !noalias !9766, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit

bb.al:                                            ; preds = %bb.ag
  %i.dj = and i8 %i.cz, 127
  %i.dk = zext nneg i8 %i.dj to i64
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit: ; preds = %bb.af, %bb.ai, %bb.aj, %bb.ak, %bb.al
  %.sroa.0.1.i = phi i64 [ %i.de, %bb.ai ], [ %i.cv, %bb.af ], [ %i.dg, %bb.aj ], [ %i.dk, %bb.al ], [ %i.di, %bb.ak ]
  %i.dl = add i64 %.sroa.0.1.i, %.sroa.9.0
  %i.dm = icmp ult i64 %4, %i.dl
  br i1 %i.dm, label %.preheader97, label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode8is_inner.exit

end_hunk_15
begin_hunk_16_@_RNvXNtNtNtCs3oUPovFnLWP_4core4iter7sources7from_fnINtB2_6FromFnNCNvNtCs5PEMdK7bMAG_12typst_syntax5lines10lines_from0ENtNtNtB6_6traits8iterator8Iterator4nextB15_:bb.a
  %i.bg = icmp samesign ne i64 %i.bf, %i.e
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = load i8, ptr %i.be, align 1, !noalias !10208, !noundef !19
  %i.bi = shl nuw nsw i32 %i.bb, 6
  %i.bj = and i8 %i.bh, 63
  %i.bk = zext nneg i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bi, %i.bk            ; 2 uses
  %i.bm = shl nuw nsw i32 %i.av, 12
  %i.bn = or disjoint i32 %i.bl, %i.bm
  %i.bo = icmp samesign ugt i8 %i.k, -17
  br i1 %i.bo, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i13.i.i, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i13.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i12.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.bq = add nuw nsw i64 %i.g, 3
  %i.br = icmp samesign ne i64 %i.bq, %i.e
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = load i8, ptr %i.bp, align 1, !noalias !10208, !noundef !19
  %i.bt = shl nuw nsw i32 %i.av, 18
  %i.bu = and i32 %i.bt, 1835008
  %i.bv = shl nuw nsw i32 %i.bl, 6
  %i.bw = and i8 %i.bs, 63
  %i.bx = zext nneg i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bv, %i.bx
  %i.bz = or disjoint i32 %i.by, %i.bu
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.i.i

_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i13.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i12.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i9.i.i
  %spec.select.i11.i.i = phi i32 [ %i.bn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i12.i.i ], [ %i.bc, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i9.i.i ], [ %i.bz, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i13.i.i ] ; 4 uses
  %i.ca = icmp samesign ult i32 %spec.select.i11.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp samesign ult i32 %spec.select.i11.i.i, 128
  br i1 %i.cb, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.thread.i.i, label %bb.e

_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.thread.i.i: ; preds = %bb.f, %bb.e, %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.i.i, %bb.d
  %.sroa.02.0.i.i = phi i64 [ 2, %bb.e ], [ %..i.i, %bb.f ], [ 1, %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.i.i ], [ 1, %bb.d ]
  %i.cc = add i64 %.sroa.02.0.i.i, %i.g           ; 3 uses
  store i64 %i.cc, ptr %i.b, align 8, !alias.scope !10201, !noalias !10202
  %i.cd = icmp eq i64 %i.cc, %i.e
  br i1 %i.cd, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNCNvNtCs5PEMdK7bMAG_12typst_syntax5lines10lines_from00EBW_.exit.i.thread, label %bb.b

bb.e:                                             ; preds = %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.i.i
  %i.ce = icmp samesign ult i32 %spec.select.i11.i.i, 2048
  br i1 %i.ce, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cf = icmp samesign ult i32 %spec.select.i11.i.i, 65536
  %..i.i = select i1 %i.cf, i64 3, i64 4
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.thread.i.i

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNCNvNtCs5PEMdK7bMAG_12typst_syntax5lines10lines_from00EBW_.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterNCNvXsc_CsjRrCJiNqTDc_8unscannyNCNCNvNtCs5PEMdK7bMAG_12typst_syntax5lines10lines_from00INtNtBZ_6sealed6SealedcE7matches0EB1u_.exit.i.i.i, %bb.a
  %i.cg = phi i64 [ %i.c, %bb.a ], [ %i.g, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterNCNvXsc_CsjRrCJiNqTDc_8unscannyNCNCNvNtCs5PEMdK7bMAG_12typst_syntax5lines10lines_from00INtNtBZ_6sealed6SealedcE7matches0EB1u_.exit.i.i.i ] ; 8 uses
  %i.ch = icmp eq i64 %i.cg, %i.e
  br i1 %i.ch, label %_RNCNvNtCs5PEMdK7bMAG_12typst_syntax5lines10lines_from0B5_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNCNvNtCs5PEMdK7bMAG_12typst_syntax5lines10lines_from00EBW_.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.pre.i.i, i64 %i.cg ; 4 uses
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !10209, !noundef !19 ; 5 uses
  %i.ck = icmp sgt i8 %i.cj, -1
  br i1 %i.ck, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.thread.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i: ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.cm = and i8 %i.cj, 31
  %i.cn = zext nneg i8 %i.cm to i32               ; 3 uses
  %i.co = add i64 %i.cg, 1                        ; 2 uses
  %i.cp = icmp samesign ne i64 %i.co, %i.e
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = load i8, ptr %i.cl, align 1, !noalias !10209, !noundef !19
  %i.cr = shl nuw nsw i32 %i.cn, 6
  %i.cs = and i8 %i.cq, 63
  %i.ct = zext nneg i8 %i.cs to i32               ; 2 uses
  %i.cu = or disjoint i32 %i.cr, %i.ct
  %i.cv = icmp samesign ugt i8 %i.cj, -33
  br i1 %i.cv, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.i

_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.thread.i: ; preds = %bb.g
  %i.cw = zext nneg i8 %i.cj to i32
  %.pre.i = add i64 %i.cg, 1
  br label %bb.h

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %i.cy = add nuw nsw i64 %i.cg, 2
  %i.cz = icmp samesign ne i64 %i.cy, %i.e
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = load i8, ptr %i.cx, align 1, !noalias !10209, !noundef !19
  %i.db = shl nuw nsw i32 %i.ct, 6
  %i.dc = and i8 %i.da, 63
  %i.dd = zext nneg i8 %i.dc to i32
  %i.de = or disjoint i32 %i.db, %i.dd            ; 2 uses
  %i.df = shl nuw nsw i32 %i.cn, 12
  %i.dg = or disjoint i32 %i.de, %i.df
  %i.dh = icmp samesign ugt i8 %i.cj, -17
  br i1 %i.dh, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 3
  %i.dj = add nuw nsw i64 %i.cg, 3
  %i.dk = icmp samesign ne i64 %i.dj, %i.e
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = load i8, ptr %i.di, align 1, !noalias !10209, !noundef !19
  %i.dm = shl nuw nsw i32 %i.cn, 18
  %i.dn = and i32 %i.dm, 1835008
  %i.do = shl nuw nsw i32 %i.de, 6
  %i.dp = and i8 %i.dl, 63
  %i.dq = zext nneg i8 %i.dp to i32
  %i.dr = or disjoint i32 %i.do, %i.dq
  %i.ds = or disjoint i32 %i.dr, %i.dn
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.i

_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i
  %spec.select.i.i = phi i32 [ %i.dg, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i ], [ %i.cu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i ], [ %i.ds, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i ] ; 5 uses
  %i.dt = icmp samesign ult i32 %spec.select.i.i, 1114112
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = icmp samesign ult i32 %spec.select.i.i, 128
  br i1 %i.du, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.i
  %i.dv = icmp samesign ult i32 %spec.select.i.i, 2048
  %i.dw = icmp samesign ult i32 %spec.select.i.i, 65536
  %..i = select i1 %i.dw, i64 3, i64 4
  %.sroa.03.0.ph.i = select i1 %i.dv, i64 2, i64 %..i
  %i.dx = add i64 %.sroa.03.0.ph.i, %i.cg         ; 2 uses
  store i64 %i.dx, ptr %i.b, align 8, !alias.scope !10198, !noalias !10197
  br label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.thread.i

bb.h:                                             ; preds = %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.i, %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.thread.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.thread.i ], [ %i.co, %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.i ] ; 5 uses
  %spec.select.i5.i = phi i32 [ %i.cw, %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.thread.i ], [ %spec.select.i.i, %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.i ]
  store i64 %.pre-phi.i, ptr %i.b, align 8, !alias.scope !10198, !noalias !10197
  %i.dy = icmp eq i32 %spec.select.i5.i, 13
  br i1 %i.dy, label %bb.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.thread.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10210)
  %.not.i.i.i.i = icmp eq i64 %i.e, %.pre-phi.i
  br i1 %.not.i.i.i.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.thread.i, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i.i

_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i.i: ; preds = %bb.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.pre.i.i, i64 %.pre-phi.i
  %rhsc.i.i = load i8, ptr %i.dz, align 1, !noalias !10211
  %rhsc.fr.i.i = freeze i8 %rhsc.i.i
  %i.ea = icmp eq i8 %rhsc.fr.i.i, 10
  br i1 %i.ea, label %bb.j, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.thread.i

bb.j:                                             ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i.i
  %i.eb = add i64 %i.cg, 2                        ; 2 uses
  store i64 %i.eb, ptr %i.b, align 8, !alias.scope !10212, !noalias !10197
  %i.ec = load i64, ptr %i.a, align 8, !alias.scope !10198, !noalias !10197, !noundef !19
  %i.ed = add i64 %i.ec, 1
  store i64 %i.ed, ptr %i.a, align 8, !alias.scope !10198, !noalias !10197
  br label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.thread.i

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.thread.i: ; preds = %bb.j, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i.i, %bb.i, %bb.h, %.thread.i
  %i.ee = phi i64 [ %i.e, %bb.i ], [ %.pre-phi.i, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i.i ], [ %i.dx, %.thread.i ], [ %.pre-phi.i, %bb.h ], [ %i.eb, %bb.j ]
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !10198, !noalias !10197, !noundef !19
  %i.eh = add i64 %i.eg, %i.ee
  %i.ei = load i64, ptr %i.a, align 8, !alias.scope !10198, !noalias !10197, !noundef !19
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.eh, ptr %i.ej, align 8, !alias.scope !10197, !noalias !10198
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ei, ptr %i.ek, align 8, !alias.scope !10197, !noalias !10198
  br label %_RNCNvNtCs5PEMdK7bMAG_12typst_syntax5lines10lines_from0B5_.exit

_RNCNvNtCs5PEMdK7bMAG_12typst_syntax5lines10lines_from0B5_.exit: ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNCNvNtCs5PEMdK7bMAG_12typst_syntax5lines10lines_from00EBW_.exit.i.thread, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNCNvNtCs5PEMdK7bMAG_12typst_syntax5lines10lines_from00EBW_.exit.i, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.thread.i
  %storemerge.i = phi i64 [ 1, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.thread.i ], [ 0, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNCNvNtCs5PEMdK7bMAG_12typst_syntax5lines10lines_from00EBW_.exit.i ], [ 0, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNCNvNtCs5PEMdK7bMAG_12typst_syntax5lines10lines_from00EBW_.exit.i.thread ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !10197, !noalias !10198
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvCs6xpQEr8gLsQ_11typst_utils5debugINtB2_7WrapperNCNCNvXs9_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtBZ_14WarningWrapperNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmts_00EB1T_3fmtB11_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %1, align 8               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.d, align 8            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10219)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !alias.scope !10219, !noundef !19 ; 3 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !10219, !noundef !19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10219
  %i.i = load ptr, ptr %0, align 8, !alias.scope !10219, !nonnull !19, !align !29, !noundef !19 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !range !26, !noalias !10219, !noundef !19
  switch i64 %i.j, label %default.unreachable [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ], !prof !10220

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val1) ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10219
  store ptr %i.k, ptr %i.a, align 8, !noalias !10219
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5PEMdK7bMAG_12typst_syntax, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !10219
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.m, align 8, !noalias !10219
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB6_5Debug3fmtCs5PEMdK7bMAG_12typst_syntax, ptr %.sroa.433.0..sroa_idx.i, align 8, !noalias !10219
  %i.n = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @29, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10219
  br label %_RNCNCNvXs9_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB9_14WarningWrapperNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmts_00Bb_.exit

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = tail call fastcc noundef nonnull align 8 ptr @_RNvMNtNtCs3oUPovFnLWP_4core4cell4lazyINtB2_8LazyCellNtNtCsakL8LGkl72C_4ecow6string9EcoStringNCNvXs9_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB1A_14WarningWrapperNtNtB6_3fmt5Debug3fmt0E11really_initB1C_(ptr noundef nonnull align 8 %i.i), !noalias !10219
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4cell4lazy14panic_poisoned() #62, !noalias !10219
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.01.0.i = phi ptr [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 15
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !10221, !noundef !19 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.r, -1                ; 2 uses
  %i.s = and i8 %i.r, 127
  %i.t = zext nneg i8 %i.s to i64
  %i.u = load ptr, ptr %.sroa.01.0.i, align 8, !alias.scope !10221, !nonnull !19
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !10221
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.w, i64 %i.t ; 4 uses
  %.sroa.0.0.i46.i = select i1 %.not.i.i, ptr %i.u, ptr %.sroa.01.0.i ; 4 uses
  %i.x = zext i32 %i.h to i64                     ; 5 uses
  %i.y = zext i32 %i.f to i64                     ; 5 uses
  %i.z = icmp ugt i32 %i.h, %i.f
  %i.aa = icmp ult i64 %.sroa.3.0.i.i, %i.y
  %or.cond.i.i = or i1 %i.z, %i.aa
  br i1 %or.cond.i.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i, label %bb.h, !prof !44

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %.sroa.3.0.i.i, %i.x
  br i1 %i.ab, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = icmp eq i32 %i.h, 0
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ad = icmp eq i64 %.sroa.3.0.i.i, %i.y
  br i1 %i.ad, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i46.i, i64 %i.x
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !10222, !noundef !19
  %i.ag = icmp sgt i8 %i.af, -65
  br i1 %i.ag, label %bb.j, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i, !prof !45

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i: ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i46.i, i64 %i.y
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !10222, !noundef !19
  %i.aj = icmp sgt i8 %i.ai, -65
  br i1 %i.aj, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i, !prof !46

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i, %bb.k, %bb.g
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i46.i, i64 noundef %.sroa.3.0.i.i, i64 noundef %i.x, i64 noundef %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #62
  unreachable

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i, %bb.j, %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val1) ]
  %i.ak = sub nuw nsw i64 %i.y, %i.x
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i46.i, i64 %i.x
  store ptr %i.al, ptr %i.c, align 8, !noalias !10219, !captures !34
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ak, ptr %i.am, align 8, !noalias !10219
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10219
  store ptr %i.an, ptr %i.b, align 8, !noalias !10219
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5PEMdK7bMAG_12typst_syntax, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !10219
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.ap, align 8, !noalias !10219
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCs5PEMdK7bMAG_12typst_syntax, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !10219
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.ao, ptr %i.aq, align 8, !noalias !10219
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB6_5Debug3fmtCs5PEMdK7bMAG_12typst_syntax, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !10219
  %i.ar = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @28, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10219
  br label %_RNCNCNvXs9_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB9_14WarningWrapperNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmts_00Bb_.exit

_RNCNCNvXs9_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB9_14WarningWrapperNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmts_00Bb_.exit: ; preds = %bb.c, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i
  %.sroa.0.1.in.i = phi i1 [ %i.ar, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i ], [ %i.n, %bb.c ]
  ret i1 %.sroa.0.1.in.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCs5PEMdK7bMAG_12typst_syntax7packages1_1__NtB7_8ToolInfoNtNtCs7PiwjADO7TO_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB15_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @550, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCs5PEMdK7bMAG_12typst_syntax7packages3_1__NtB7_12TemplateInfoNtNtCs7PiwjADO7TO_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1a_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @550, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCs5PEMdK7bMAG_12typst_syntax7packages5_1__NtB7_11PackageInfoNtNtCs7PiwjADO7TO_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB19_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @550, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCs5PEMdK7bMAG_12typst_syntax7packages_1__NtB7_15PackageManifestNtNtCs7PiwjADO7TO_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1c_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @550, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4kindNtB5_10SyntaxKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !21, !noundef !19
  %i.b = zext i8 %i.a to i64
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @546, i64 noundef 965, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4kindNtB7_10SyntaxKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt8___OFFSET, i64 noundef 138, i64 noundef %i.b)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.b = insertvalue { i64, i64 } %i.a, i64 0, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCs5PEMdK7bMAG_12typst_syntax7packages1_1__NtBa_8ToolInfoNtNtCs7PiwjADO7TO_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB18_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef 15)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCs5PEMdK7bMAG_12typst_syntax7packages3_1__NtBa_12TemplateInfoNtNtCs7PiwjADO7TO_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1d_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 19)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCs5PEMdK7bMAG_12typst_syntax7packages5_1__NtBa_11PackageInfoNtNtCs7PiwjADO7TO_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1c_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @553, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCs5PEMdK7bMAG_12typst_syntax7packages_1__NtBa_15PackageManifestNtNtCs7PiwjADO7TO_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1f_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @554, i64 noundef 22)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 ptr @_RNvXs11_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_5ParamNtB6_7AstNode10to_untyped(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #23 {
bb.a:
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !19, !noundef !19
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs11_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_5ParamNtB6_7AstNode12from_untyped(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #38 {
bb.a:
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.0.0 = load i8, ptr %.sroa.0.0.in, align 1, !range !21, !noundef !19
  switch i8 %.sroa.0.0, label %bb.b [
    i8 110, label %bb.f
    i8 117, label %bb.g
    i8 56, label %bb.i
    i8 107, label %bb.c
    i8 -121, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, ptr } @_RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4ExprNtB5_7AstNode12from_untyped(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !alias.scope !10226, !noalias !10227 ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.b, -1
  br i1 %.not.i, label %_RNvXs12_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_7PatternNtB6_7AstNode12from_untyped.exit, label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.c = extractvalue { i64, ptr } %i.a, 1
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  store i64 64, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  store i64 65, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.43.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %_RNvXs12_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_7PatternNtB6_7AstNode12from_untyped.exit, %bb.g, %bb.f
  ret void

bb.i:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c
  %.sroa.9.0.ph = phi ptr [ %1, %bb.c ], [ %1, %bb.d ], [ %i.c, %bb.e ], [ %1, %bb.a ]
  %.sroa.0.08.ph = phi i64 [ 62, %bb.c ], [ 63, %bb.d ], [ %i.b, %bb.e ], [ 61, %bb.a ]
  store i64 %.sroa.0.08.ph, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0.ph, ptr %.sroa.47.0..sroa_idx, align 8
  br label %bb.h

_RNvXs12_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_7PatternNtB6_7AstNode12from_untyped.exit: ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  br label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs11_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_12UnnumberableNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @555, i64 noundef 12)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 ptr @_RNvXs12_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_7PatternNtB6_7AstNode10to_untyped(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #23 {
bb.a:
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !19, !noundef !19
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs12_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_7PatternNtB6_7AstNode12from_untyped(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #38 {
bb.a:
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.0.0 = load i8, ptr %.sroa.0.0.in, align 1, !range !21, !noundef !19
  switch i8 %.sroa.0.0, label %bb.b [
    i8 56, label %bb.c
    i8 107, label %bb.d
    i8 -121, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, ptr } @_RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4ExprNtB5_7AstNode12from_untyped(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 2 uses
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.h, label %bb.g

bb.c:                                             ; preds = %bb.a
  store i64 61, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  store i64 62, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.43.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i64 63, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.45.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.d, %bb.c
  ret void
end_hunk_16
