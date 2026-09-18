Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_RNvNtCs7tN9tvpkfrg_12typst_layout6inline18layout_inline_impl:bb.a
  store i64 %i.bfm, ptr %i.azt, align 8, !alias.scope !39090, !noalias !39091
  store i64 %i.bfn, ptr %i.azu, align 8, !alias.scope !39090, !noalias !39091
  %i.bfo = icmp ne i64 %i.bfm, 2
  call void @llvm.assume(i1 %i.bfo)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_jEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtCselBS6QMlFOX_13icu_segmenter4line17LineBreakIteratorNtNtB28_14rule_segmenter4Utf8EE4peek0ECs7tN9tvpkfrg_12typst_layout.exit.peel.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_jEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtCselBS6QMlFOX_13icu_segmenter4line17LineBreakIteratorNtNtB28_14rule_segmenter4Utf8EE4peek0ECs7tN9tvpkfrg_12typst_layout.exit.peel.i.i.i.i: ; preds = %.noexc86.peel.i.i.i.i, %_RINvNtNtCs7tN9tvpkfrg_12typst_layout6inline9linebreak14linebreak_linkNCINvB2_11breakpointsNCNvB2_31linebreak_optimized_approximate0E0EB6_.exit.i.i.i.i
  %i.bfp = phi i64 [ %i.bfm, %.noexc86.peel.i.i.i.i ], [ %.pr177.i.i.i.i, %_RINvNtNtCs7tN9tvpkfrg_12typst_layout6inline9linebreak14linebreak_linkNCINvB2_11breakpointsNCNvB2_31linebreak_optimized_approximate0E0EB6_.exit.i.i.i.i ]
  %i.bfq = trunc nuw i64 %i.bfp to i1
  br i1 %i.bfq, label %bb.mh, label %.thread148.i.i.i.i

bb.mh:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_jEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtCselBS6QMlFOX_13icu_segmenter4line17LineBreakIteratorNtNtB28_14rule_segmenter4Utf8EE4peek0ECs7tN9tvpkfrg_12typst_layout.exit.peel.i.i.i.i
  %i.bfr = load i64, ptr %i.azu, align 8, !noalias !39081, !noundef !41
  %i.bfs = icmp ult i64 %i.bfr, %i.bfj
  br i1 %i.bfs, label %.peel.next.i.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i

.peel.next.i.i.i.i:                               ; preds = %bb.mh, %bb.mi
  store i64 2, ptr %i.azt, align 8, !noalias !39081
  %i.bft = invoke fastcc { i64, i64 } @_RNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB5_17LineBreakIteratorNtNtB7_14rule_segmenter4Utf8ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.cc)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_jEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtCselBS6QMlFOX_13icu_segmenter4line17LineBreakIteratorNtNtB28_14rule_segmenter4Utf8EE4peek0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i unwind label %.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i.i.i.i, !noalias !39080 ; 2 uses

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_jEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtCselBS6QMlFOX_13icu_segmenter4line17LineBreakIteratorNtNtB28_14rule_segmenter4Utf8EE4peek0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %.peel.next.i.i.i.i
  %i.bfu = extractvalue { i64, i64 } %i.bft, 0    ; 3 uses
  %i.bfv = extractvalue { i64, i64 } %i.bft, 1    ; 2 uses
  store i64 %i.bfu, ptr %i.azt, align 8, !alias.scope !39090, !noalias !39091
  store i64 %i.bfv, ptr %i.azu, align 8, !alias.scope !39090, !noalias !39091
  %i.bfw = icmp ne i64 %i.bfu, 2
  call void @llvm.assume(i1 %i.bfw)
  %i.bfx = trunc nuw i64 %i.bfu to i1
  br i1 %i.bfx, label %bb.mi, label %.thread148.i.i.i.i

.thread148.i.i.i.i:                               ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_jEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtCselBS6QMlFOX_13icu_segmenter4line17LineBreakIteratorNtNtB28_14rule_segmenter4Utf8EE4peek0ECs7tN9tvpkfrg_12typst_layout.exit.peel.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_jEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtCselBS6QMlFOX_13icu_segmenter4line17LineBreakIteratorNtNtB28_14rule_segmenter4Utf8EE4peek0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  store i64 2, ptr %i.azt, align 8, !noalias !39081
  br label %.loopexit199.i.i.i.i

bb.mi:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_jEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtCselBS6QMlFOX_13icu_segmenter4line17LineBreakIteratorNtNtB28_14rule_segmenter4Utf8EE4peek0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %i.bfy = icmp ult i64 %i.bfv, %i.bfj
  br i1 %i.bfy, label %.peel.next.i.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i, !llvm.loop !38457

bb.mj:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i
  %i.bfz = invoke fastcc { i64, i64 } @_RNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB5_17LineBreakIteratorNtNtB7_14rule_segmenter4Utf8ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(168) %i.cc)
          to label %bb.mk unwind label %.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, !noalias !39080 ; 2 uses

bb.mk:                                            ; preds = %bb.mj
  %i.bga = extractvalue { i64, i64 } %i.bfz, 0
  %i.bgb = extractvalue { i64, i64 } %i.bfz, 1
  br label %bb.ml

bb.ml:                                            ; preds = %bb.mk, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i
  %.sroa.68.0.i.i.i.i = phi i64 [ %i.bgb, %bb.mk ], [ %i.bbb, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ] ; 24 uses
  %.sroa.07.0.i.i.i.i = phi i64 [ %i.bga, %bb.mk ], [ %.pr.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ]
  %i.bgc = trunc nuw i64 %.sroa.07.0.i.i.i.i to i1
  br i1 %i.bgc, label %bb.mm, label %.loopexit199.i.i.i.i

bb.mm:                                            ; preds = %bb.ml
  %i.bgd = icmp eq i64 %.sroa.68.0.i.i.i.i, 0
  br i1 %i.bgd, label %.backedge.i.i.i.i.backedge, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %.not.i87.i.i.i.i = icmp ult i64 %.sroa.68.0.i.i.i.i, %i.ani ; 2 uses
  br i1 %.not.i87.i.i.i.i, label %bb.mo, label %.split.i88.i.i.i.i

.split.i88.i.i.i.i:                               ; preds = %bb.mn
  %i.bge = icmp eq i64 %.sroa.68.0.i.i.i.i, %i.ani
  br i1 %i.bge, label %bb.mq, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread171.invoke.i.i.i.i

bb.mo:                                            ; preds = %bb.mn
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.ayj, i64 %.sroa.68.0.i.i.i.i
  %i.bgg = load i8, ptr %i.bgf, align 1, !alias.scope !39092, !noalias !39080, !noundef !41
  %i.bgh = icmp sgt i8 %i.bgg, -65
  br i1 %i.bgh, label %bb.mq, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread171.invoke.i.i.i.i

.loopexit199.i.i.i.i:                             ; preds = %bb.ml, %.thread148.i.i.i.i
  %.val70.i.i.i.i = load i64, ptr %.sroa.04.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !39081 ; 2 uses
  %i.bgi = icmp eq i64 %.val70.i.i.i.i, 0
  br i1 %i.bgi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCselBS6QMlFOX_13icu_segmenter4line17LineBreakIteratorNtNtB1o_14rule_segmenter4Utf8EEECs7tN9tvpkfrg_12typst_layout.exit90.i.i.i.i, label %bb.mp

bb.mp:                                            ; preds = %.loopexit199.i.i.i.i
  %.val71.i.i.i.i = load ptr, ptr %.sroa.04.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !39081, !nonnull !41, !noundef !41
  %i.bgj = shl nuw i64 %.val70.i.i.i.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val71.i.i.i.i, i64 noundef %i.bgj, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !39080
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCselBS6QMlFOX_13icu_segmenter4line17LineBreakIteratorNtNtB1o_14rule_segmenter4Utf8EEECs7tN9tvpkfrg_12typst_layout.exit90.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCselBS6QMlFOX_13icu_segmenter4line17LineBreakIteratorNtNtB1o_14rule_segmenter4Utf8EEECs7tN9tvpkfrg_12typst_layout.exit90.i.i.i.i: ; preds = %bb.mp, %.loopexit199.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !39081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !39081
  br label %_RINvNtNtCs7tN9tvpkfrg_12typst_layout6inline9linebreak11breakpointsNCNvB2_31linebreak_optimized_approximate0EB6_.exit.i.i.i

bb.mq:                                            ; preds = %bb.mo, %.split.i88.i.i.i.i
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 %.sroa.68.0.i.i.i.i ; 8 uses
  %i.bgl = getelementptr inbounds i8, ptr %i.bgk, i64 -1
  %i.bgm = load i8, ptr %i.bgl, align 1, !noalias !39093, !noundef !41 ; 3 uses
  %i.bgn = icmp sgt i8 %i.bgm, -1
  br i1 %i.bgn, label %bb.mr, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7tN9tvpkfrg_12typst_layout.exit17.i.i.i.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7tN9tvpkfrg_12typst_layout.exit17.i.i.i.i.i: ; preds = %bb.mq
  %i.bgo = icmp ne i64 %.sroa.68.0.i.i.i.i, 1
  call void @llvm.assume(i1 %i.bgo)
  %i.bgp = getelementptr inbounds i8, ptr %i.bgk, i64 -2
  %i.bgq = load i8, ptr %i.bgp, align 1, !noalias !39093, !noundef !41 ; 3 uses
  %i.bgr = and i8 %i.bgq, 31
  %i.bgs = zext nneg i8 %i.bgr to i32
  %i.bgt = icmp slt i8 %i.bgq, -64
  br i1 %i.bgt, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7tN9tvpkfrg_12typst_layout.exit19.i.i.i.i.i, label %bb.ms

bb.mr:                                            ; preds = %bb.mq
  %i.bgu = zext nneg i8 %i.bgm to i32
  br label %bb.mu

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7tN9tvpkfrg_12typst_layout.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7tN9tvpkfrg_12typst_layout.exit17.i.i.i.i.i
  %i.bgv = icmp ne i64 %.sroa.68.0.i.i.i.i, 2
  call void @llvm.assume(i1 %i.bgv)
  %i.bgw = getelementptr inbounds i8, ptr %i.bgk, i64 -3
  %i.bgx = load i8, ptr %i.bgw, align 1, !noalias !39093, !noundef !41 ; 3 uses
  %i.bgy = and i8 %i.bgx, 15
  %i.bgz = zext nneg i8 %i.bgy to i32
  %i.bha = icmp slt i8 %i.bgx, -64
  br i1 %i.bha, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7tN9tvpkfrg_12typst_layout.exit21.i.i.i.i.i, label %bb.mt

bb.ms:                                            ; preds = %bb.mt, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7tN9tvpkfrg_12typst_layout.exit17.i.i.i.i.i
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.bhr, %bb.mt ], [ %i.bgs, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7tN9tvpkfrg_12typst_layout.exit17.i.i.i.i.i ]
  %i.bhb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.bhc = and i8 %i.bgm, 63
  %i.bhd = zext nneg i8 %i.bhc to i32
  %i.bhe = or disjoint i32 %i.bhb, %i.bhd
  br label %bb.mu

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7tN9tvpkfrg_12typst_layout.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7tN9tvpkfrg_12typst_layout.exit19.i.i.i.i.i
  %i.bhf = icmp ne i64 %.sroa.68.0.i.i.i.i, 3
  call void @llvm.assume(i1 %i.bhf)
  %i.bhg = getelementptr inbounds i8, ptr %i.bgk, i64 -4
  %i.bhh = load i8, ptr %i.bhg, align 1, !noalias !39093, !noundef !41
  %i.bhi = and i8 %i.bhh, 7
  %i.bhj = zext nneg i8 %i.bhi to i32
  %i.bhk = shl nuw nsw i32 %i.bhj, 6
  %i.bhl = and i8 %i.bgx, 63
  %i.bhm = zext nneg i8 %i.bhl to i32
  %i.bhn = or disjoint i32 %i.bhk, %i.bhm
  br label %bb.mt

bb.mt:                                            ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7tN9tvpkfrg_12typst_layout.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7tN9tvpkfrg_12typst_layout.exit19.i.i.i.i.i
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.bhn, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7tN9tvpkfrg_12typst_layout.exit21.i.i.i.i.i ], [ %i.bgz, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7tN9tvpkfrg_12typst_layout.exit19.i.i.i.i.i ]
  %i.bho = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.bhp = and i8 %i.bgq, 63
  %i.bhq = zext nneg i8 %i.bhp to i32
  %i.bhr = or disjoint i32 %i.bho, %i.bhq
  br label %bb.ms

bb.mu:                                            ; preds = %bb.ms, %bb.mr
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bgu, %bb.mr ], [ %i.bhe, %bb.ms ] ; 8 uses
  %i.bhs = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.bhs)
  %i.bht = icmp eq i64 %.sroa.68.0.i.i.i.i, %i.ani ; 2 uses
  br i1 %i.bht, label %bb.ng, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.bhu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 4096
  br i1 %i.bhu, label %bb.mw, label %bb.mx

bb.mw:                                            ; preds = %bb.mv
  %i.bhv = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 6
  %i.bhw = zext nneg i32 %i.bhv to i64
  %i.bhx = getelementptr inbounds nuw [2 x i8], ptr @160, i64 %i.bhw
  %.sroa.02.0.copyload.i.i.i.i.i = load i16, ptr %i.bhx, align 1, !noalias !39081
  %i.bhy = zext i16 %.sroa.02.0.copyload.i.i.i.i.i to i64
  %i.bhz = and i32 %.sroa.4.1.i.ph.i.i.i.i, 63
  %i.bia = zext nneg i32 %i.bhz to i64
  %i.bib = add nuw nsw i64 %i.bhy, %i.bia         ; 2 uses
  %i.bic = icmp samesign ult i64 %i.bib, 8798
  call void @llvm.assume(i1 %i.bic)
  %i.bid = getelementptr inbounds nuw i8, ptr @161, i64 %i.bib
  %i.bie = load i8, ptr %i.bid, align 1, !noalias !39081, !noundef !41
  br label %_RNvMs_NtNtCs9v5mpa3E6Mm_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCsd6m03GZV8Uy_14icu_properties5props9LineBreakE25get32_by_small_index_coldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

bb.mx:                                            ; preds = %bb.mv
  %i.bif = invoke noundef i8 @_RNvMs_NtNtCs9v5mpa3E6Mm_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCsd6m03GZV8Uy_14icu_properties5props9LineBreakE20get32_by_small_indexCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) @162, i32 noundef range(i32 0, 1114112) %.sroa.4.1.i.ph.i.i.i.i) #58
          to label %_RNvMs_NtNtCs9v5mpa3E6Mm_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCsd6m03GZV8Uy_14icu_properties5props9LineBreakE25get32_by_small_index_coldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i unwind label %.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, !noalias !39080

_RNvMs_NtNtCs9v5mpa3E6Mm_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCsd6m03GZV8Uy_14icu_properties5props9LineBreakE25get32_by_small_index_coldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %bb.mx, %bb.mw
  %.sroa.012.0.i.i.i.i = phi i8 [ %i.bie, %bb.mw ], [ %i.bif, %bb.mx ]
  switch i8 %.sroa.012.0.i.i.i.i, label %bb.ng [
    i8 6, label %bb.my
    i8 10, label %bb.my
    i8 17, label %bb.my
    i8 29, label %bb.my
    i8 9, label %bb.mz
  ]

bb.my:                                            ; preds = %_RNvMs_NtNtCs9v5mpa3E6Mm_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCsd6m03GZV8Uy_14icu_properties5props9LineBreakE25get32_by_small_index_coldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, %_RNvMs_NtNtCs9v5mpa3E6Mm_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCsd6m03GZV8Uy_14icu_properties5props9LineBreakE25get32_by_small_index_coldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, %_RNvMs_NtNtCs9v5mpa3E6Mm_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCsd6m03GZV8Uy_14icu_properties5props9LineBreakE25get32_by_small_index_coldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, %_RNvMs_NtNtCs9v5mpa3E6Mm_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCsd6m03GZV8Uy_14icu_properties5props9LineBreakE25get32_by_small_index_coldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  br label %bb.ng

bb.mz:                                            ; preds = %_RNvMs_NtNtCs9v5mpa3E6Mm_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCsd6m03GZV8Uy_14icu_properties5props9LineBreakE25get32_by_small_index_coldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  br i1 %.not.i87.i.i.i.i, label %bb.na, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread171.invoke.i.i.i.i

bb.na:                                            ; preds = %bb.mz
  %i.big = load i8, ptr %i.bgk, align 1, !alias.scope !39094, !noalias !39080, !noundef !41
  %i.bih = icmp sgt i8 %i.big, -65
  br i1 %i.bih, label %bb.nb, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread171.invoke.i.i.i.i

bb.nb:                                            ; preds = %bb.na
  %i.bii = sub nuw i64 %i.ani, %.sroa.68.0.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !39081
  store i32 12369903, ptr %i.bz, align 4, !noalias !39081
  %.not.i96.i.i.i.i = icmp samesign ult i64 %i.bii, 3
  br i1 %.not.i96.i.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit99.thread.i.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit99.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit99.thread.i.i.i.i: ; preds = %bb.nb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !39081
  br label %bb.ng

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit99.i.i.i.i: ; preds = %bb.nb
  %i.bij = load i16, ptr %i.bz, align 4
  %i.bik = load i16, ptr %i.bgk, align 1
  %i.bil = xor i16 %i.bij, %i.bik
  %i.bim = getelementptr i8, ptr %i.bz, i64 2
  %i.bin = getelementptr i8, ptr %i.bgk, i64 2
  %i.bio = load i8, ptr %i.bim, align 2
  %i.bip = load i8, ptr %i.bin, align 1
  %i.biq = zext i8 %i.bio to i16
  %i.bir = zext i8 %i.bip to i16
  %i.bis = xor i16 %i.biq, %i.bir
  %i.bit = or i16 %i.bil, %i.bis
  %i.biu = icmp ne i16 %i.bit, 0
  %i.biv = zext i1 %i.biu to i32
  %i.biw = icmp eq i32 %i.biv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !39081
  br i1 %i.biw, label %bb.nc, label %bb.ng

bb.nc:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit99.i.i.i.i
  %i.bix = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 128
  br i1 %i.bix, label %bb.nf, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.biy = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 2048
  br i1 %i.biy, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.biz = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 65536
  %..i.i.i.i = select i1 %i.biz, i64 3, i64 4
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd, %bb.nc
  %.sroa.013.0.i.i.i.i = phi i64 [ 2, %bb.nd ], [ %..i.i.i.i, %bb.ne ], [ 1, %bb.nc ]
  %i.bja = add i64 %.sroa.013.0.i.i.i.i, %.ph.i.i.i.i
  %i.bjb = icmp eq i64 %i.bja, %.sroa.68.0.i.i.i.i
  br i1 %i.bjb, label %.backedge.i.i.i.i.backedge, label %bb.ng

bb.ng:                                            ; preds = %bb.nf, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit99.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit99.thread.i.i.i.i, %bb.my, %_RNvMs_NtNtCs9v5mpa3E6Mm_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCsd6m03GZV8Uy_14icu_properties5props9LineBreakE25get32_by_small_index_coldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, %bb.mu
  %.sroa.011.1.i.i.i.i = phi i8 [ 1, %bb.mu ], [ 1, %bb.my ], [ 0, %bb.nf ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit99.i.i.i.i ], [ 0, %_RNvMs_NtNtCs9v5mpa3E6Mm_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCsd6m03GZV8Uy_14icu_properties5props9LineBreakE25get32_by_small_index_coldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit99.thread.i.i.i.i ]
  %i.bjc = icmp ult i64 %.ph.i.i.i.i, %.sroa.68.0.i.i.i.i
  %or.cond.i.i.i.i = select i1 %i.ayn, i1 %i.bjc, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.ni, label %bb.nh

bb.nh:                                            ; preds = %bb.np, %bb.ng
  %.sroa.057.0.insert.ext.i.i.i.i = zext nneg i8 %.sroa.011.1.i.i.i.i to i24
  invoke fastcc void @_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline9linebreak31linebreak_optimized_approximate0B7_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.cm, i64 noundef %.sroa.68.0.i.i.i.i, i24 %.sroa.057.0.insert.ext.i.i.i.i)
          to label %.backedge.i.i.i.i.backedge unwind label %.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, !noalias !39088

.backedge.i.i.i.i.backedge:                       ; preds = %bb.nh, %bb.nf, %bb.mm
  %.sroa.0.0.i.i.i.i.be = phi i64 [ %.sroa.68.0.i.i.i.i, %bb.nh ], [ %.sroa.0.1.ph.i.i.i.i, %bb.nf ], [ %.sroa.0.1.ph.i.i.i.i, %bb.mm ]
  %.be = phi i64 [ %.sroa.68.0.i.i.i.i, %bb.nh ], [ %.ph.i.i.i.i, %bb.nf ], [ %.ph.i.i.i.i, %bb.mm ]
  br label %.backedge.i.i.i.i

bb.ni:                                            ; preds = %bb.ng
  %i.bjd = icmp ugt i64 %.sroa.68.0.i.i.i.i, %i.ani
  br i1 %i.bjd, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread171.invoke.i.i.i.i, label %bb.nj, !prof !120

bb.nj:                                            ; preds = %bb.ni
  %i.bje = icmp eq i64 %.ph.i.i.i.i, 0
  br i1 %i.bje, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %bb.nl, %bb.nj
  br i1 %i.bht, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i.i.i.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i

bb.nl:                                            ; preds = %bb.nj
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.ayj, i64 %.ph.i.i.i.i
  %i.bjg = load i8, ptr %i.bjf, align 1, !alias.scope !39095, !noalias !39080, !noundef !41
  %i.bjh = icmp sgt i8 %i.bjg, -65
  br i1 %i.bjh, label %bb.nk, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread171.invoke.i.i.i.i, !prof !121

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i: ; preds = %bb.nk
  %i.bji = load i8, ptr %i.bgk, align 1, !alias.scope !39095, !noalias !39080, !noundef !41
  %i.bjj = icmp sgt i8 %i.bji, -65
  br i1 %i.bjj, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i.i.i.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread171.invoke.i.i.i.i, !prof !62

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread171.invoke.i.i.i.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i, %bb.nl, %bb.ni, %bb.na, %bb.mz, %bb.mo, %.split.i88.i.i.i.i, %bb.ll, %.split3.i.i.i.i.i
  %i.bjk = phi i64 [ %.sroa.68.0.i.i.i.i, %bb.mz ], [ 0, %.split.i88.i.i.i.i ], [ 0, %.split3.i.i.i.i.i ], [ 0, %bb.ll ], [ 0, %bb.mo ], [ %.sroa.68.0.i.i.i.i, %bb.na ], [ %.ph.i.i.i.i, %bb.nl ], [ %.ph.i.i.i.i, %bb.ni ], [ %.ph.i.i.i.i, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i ]
  %i.bjl = phi i64 [ %i.ani, %bb.mz ], [ %.sroa.68.0.i.i.i.i, %.split.i88.i.i.i.i ], [ %i.bac, %.split3.i.i.i.i.i ], [ %i.bac, %bb.ll ], [ %.sroa.68.0.i.i.i.i, %bb.mo ], [ %i.ani, %bb.na ], [ %.sroa.68.0.i.i.i.i, %bb.nl ], [ %.sroa.68.0.i.i.i.i, %bb.ni ], [ %.sroa.68.0.i.i.i.i, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i ]
  %i.bjm = phi ptr [ @163, %bb.mz ], [ @159, %.split.i88.i.i.i.i ], [ @157, %.split3.i.i.i.i.i ], [ @157, %bb.ll ], [ @159, %bb.mo ], [ @163, %bb.na ], [ @164, %bb.nl ], [ @164, %bb.ni ], [ @164, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ayj, i64 noundef %i.ani, i64 noundef %i.bjk, i64 noundef %i.bjl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bjm) #57
          to label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread171.cont.i.i.i.i unwind label %.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !39080

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread171.cont.i.i.i.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread171.invoke.i.i.i.i
  unreachable

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i.i.i.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i, %bb.nk
  %i.bjn = sub nuw i64 %.sroa.68.0.i.i.i.i, %.ph.i.i.i.i
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.ayj, i64 %.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !39081
  store ptr %i.bjo, ptr %i.ca, align 8, !noalias !39081
  store i64 %i.bjn, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !39081
  store i8 -1, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !39081
  store i8 -1, ptr %.sroa.415.0..sroa_idx.i.i.i.i, align 1, !noalias !39081
  br label %bb.nm

bb.nm:                                            ; preds = %.loopexit178.i.i.i.i, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i.i.i.i
  %i.bjp = phi i64 [ %i.bju, %.loopexit178.i.i.i.i ], [ %.ph.i.i.i.i, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i.i.i.i ] ; 4 uses
  %i.bjq = invoke fastcc { ptr, i64 } @_RNvXs5_NtCs4vtCw9T9d1A_20unicode_segmentation4wordNtB5_11UWordBoundsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ca)
          to label %bb.nn unwind label %.loopexit.split-lp180.loopexit.split-lp.loopexit.i.i.i.i, !noalias !39080 ; 2 uses

bb.nn:                                            ; preds = %bb.nm
  %i.bjr = extractvalue { ptr, i64 } %i.bjq, 0    ; 6 uses
  %i.bjs = extractvalue { ptr, i64 } %i.bjq, 1    ; 8 uses
  %.not66.i.i.i.i = icmp eq ptr %i.bjr, null
  br i1 %.not66.i.i.i.i, label %bb.np, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.bjt = icmp eq i64 %i.bjs, 0
  br i1 %i.bjt, label %.loopexit178.i.i.i.i, label %bb.nq

bb.np:                                            ; preds = %bb.nn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !39081
  br label %bb.nh

.loopexit178.i.i.i.i:                             ; preds = %.noexc105.i61.i.i.i, %bb.nt, %_RINvNtNtCs7tN9tvpkfrg_12typst_layout6inline9linebreak12hyphenationsQNCNvB2_31linebreak_optimized_approximate0EB6_.exit.i.i.i.i, %bb.no
  %i.bju = add i64 %i.bjs, %i.bjp
  br label %bb.nm

bb.nq:                                            ; preds = %bb.no
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bjr, i64 %i.bjs ; 4 uses
  br label %.lr.ph.i100.i60.i.i.i

.lr.ph.i100.i60.i.i.i:                            ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3all5checkcNvMNtNtBe_4char7methodsc13is_alphabeticE0Cs7tN9tvpkfrg_12typst_layout.exit.backedge.i.i.i.i.i, %bb.nq
  %i.bjw = phi ptr [ %i.blf, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3all5checkcNvMNtNtBe_4char7methodsc13is_alphabeticE0Cs7tN9tvpkfrg_12typst_layout.exit.backedge.i.i.i.i.i ], [ %i.bjr, %bb.nq ] ; 5 uses
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjw, i64 1 ; 3 uses
  %i.bjy = load i8, ptr %i.bjw, align 1, !noalias !39096, !noundef !41 ; 5 uses
  %i.bjz = icmp sgt i8 %i.bjy, -1
  br i1 %i.bjz, label %bb.nr, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i101.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i101.i.i.i.i: ; preds = %.lr.ph.i100.i60.i.i.i
  %i.bka = and i8 %i.bjy, 31
  %i.bkb = zext nneg i8 %i.bka to i32             ; 3 uses
  %i.bkc = icmp ne ptr %i.bjx, %i.bjv
  call void @llvm.assume(i1 %i.bkc)
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bjw, i64 2 ; 3 uses
  %i.bke = load i8, ptr %i.bjx, align 1, !noalias !39096, !noundef !41
  %i.bkf = shl nuw nsw i32 %i.bkb, 6
  %i.bkg = and i8 %i.bke, 63
  %i.bkh = zext nneg i8 %i.bkg to i32             ; 2 uses
  %i.bki = or disjoint i32 %i.bkf, %i.bkh
  %i.bkj = icmp samesign ugt i8 %i.bjy, -33
  br i1 %i.bkj, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i.i103.i.i.i.i, label %bb.ns

bb.nr:                                            ; preds = %.lr.ph.i100.i60.i.i.i
  %i.bkk = zext nneg i8 %i.bjy to i32
  br label %bb.ns

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i.i103.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i101.i.i.i.i
  %i.bkl = icmp ne ptr %i.bkd, %i.bjv
  call void @llvm.assume(i1 %i.bkl)
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bjw, i64 3 ; 3 uses
  %i.bkn = load i8, ptr %i.bkd, align 1, !noalias !39096, !noundef !41
  %i.bko = shl nuw nsw i32 %i.bkh, 6
  %i.bkp = and i8 %i.bkn, 63
  %i.bkq = zext nneg i8 %i.bkp to i32
  %i.bkr = or disjoint i32 %i.bko, %i.bkq         ; 2 uses
  %i.bks = shl nuw nsw i32 %i.bkb, 12
  %i.bkt = or disjoint i32 %i.bkr, %i.bks
  %i.bku = icmp samesign ugt i8 %i.bjy, -17
  br i1 %i.bku, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i.i104.i.i.i.i, label %bb.ns

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i.i104.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i.i103.i.i.i.i
  %i.bkv = icmp ne ptr %i.bkm, %i.bjv
  call void @llvm.assume(i1 %i.bkv)
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bjw, i64 4
  %i.bkx = load i8, ptr %i.bkm, align 1, !noalias !39096, !noundef !41
  %i.bky = shl nuw nsw i32 %i.bkb, 18
  %i.bkz = and i32 %i.bky, 1835008
  %i.bla = shl nuw nsw i32 %i.bkr, 6
  %i.blb = and i8 %i.bkx, 63
  %i.blc = zext nneg i8 %i.blb to i32
  %i.bld = or disjoint i32 %i.bla, %i.blc
  %i.ble = or disjoint i32 %i.bld, %i.bkz
  br label %bb.ns

bb.ns:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i.i104.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i.i103.i.i.i.i, %bb.nr, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i101.i.i.i.i
  %i.blf = phi ptr [ %i.bkm, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i.i103.i.i.i.i ], [ %i.bkw, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i.i104.i.i.i.i ], [ %i.bkd, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i101.i.i.i.i ], [ %i.bjx, %bb.nr ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i = phi i32 [ %i.bkt, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i.i103.i.i.i.i ], [ %i.ble, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i.i104.i.i.i.i ], [ %i.bki, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i101.i.i.i.i ], [ %i.bkk, %bb.nr ] ; 3 uses
  %i.blg = and i32 %spec.select.i.ph.i.i.i.i.i, 2097119
  %i.blh = add nsw i32 %i.blg, -65
  %or.cond3.i.i.i.i.i.i.i.i = icmp ult i32 %i.blh, 26
  br i1 %or.cond3.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3all5checkcNvMNtNtBe_4char7methodsc13is_alphabeticE0Cs7tN9tvpkfrg_12typst_layout.exit.backedge.i.i.i.i.i, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.bli = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i, 170
  br i1 %i.bli, label %.loopexit178.i.i.i.i, label %.split.i102.i.i.i.i

.split.i102.i.i.i.i:                              ; preds = %bb.nt
  %i.blj = invoke noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef range(i32 0, 1114112) %spec.select.i.ph.i.i.i.i.i) #58
          to label %.noexc105.i61.i.i.i unwind label %.loopexit179.i.i.i.i, !noalias !39080

end_hunk_0
