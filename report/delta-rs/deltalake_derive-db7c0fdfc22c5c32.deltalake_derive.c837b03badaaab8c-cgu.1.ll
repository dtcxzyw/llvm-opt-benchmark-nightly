Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_derive-db7c0fdfc22c5c32.deltalake_derive.c837b03badaaab8c-cgu.1?download=true
inline.NumInlined: 1622
inline.NumDeleted: 397
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNvNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect14default_extendTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIB15_ReEEINtB2_10SpecExtendNtNtCskxeEtmv7ubq_20unicode_segmentation8grapheme15GraphemeIndicesE6extendCshbKHpCRGxgC_16deltalake_derive:bb.a

.critedge.sink.split.i.i.i.i.i.i.loopexit397:     ; preds = %bb.ag
  br label %.critedge.sink.split.i.i.i.i.i.i

.critedge.sink.split.i.i.i.i.i.i:                 ; preds = %bb.ag, %.critedge.sink.split.i.i.i.i.i.i.loopexit397, %.critedge.sink.split.i.i.i.i.i.i.loopexit
  %.sink.i.i.i.i.i.i = phi i8 [ 4, %.critedge.sink.split.i.i.i.i.i.i.loopexit ], [ 5, %.critedge.sink.split.i.i.i.i.i.i.loopexit397 ], [ 3, %bb.ag ]
  store i8 %.sink.i.i.i.i.i.i, ptr %i.m, align 2, !alias.scope !4064
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.ah, %.critedge.sink.split.i.i.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !4064
  store i64 0, ptr %i.ga, align 8, !alias.scope !4064
  br label %.loopexit.i.i.i.i

_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCskxeEtmv7ubq_20unicode_segmentation6tables8grapheme11GraphemeCatE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit3.i.i.i.i.i.i: ; preds = %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit.i.i.i.i.i.i, %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit.thread49.i.i.i.i.i.i
  %spec.select.i2552.i.i.i.i.i.i = phi i32 [ %i.gu, %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit.thread49.i.i.i.i.i.i ], [ %i.hr, %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit.i.i.i.i.i.i ]
  %i.gb = call noundef i8 @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.b, i32 noundef %spec.select.i2552.i.i.i.i.i.i), !noalias !4068 ; 2 uses
  store i8 %i.gb, ptr %i.o, align 1, !alias.scope !4064
  %.pre56.i.i.i.i.i.i = load i8, ptr %i.n, align 8, !range !4058, !alias.scope !4064 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.pre56.i.i.i.i.i.i, 16
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ai, label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCskxeEtmv7ubq_20unicode_segmentation6tables8grapheme11GraphemeCatE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i.i, !prof !4069

bb.ai:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCskxeEtmv7ubq_20unicode_segmentation6tables8grapheme11GraphemeCatE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit3.i.i.i.i.i.i
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #19, !noalias !4068
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCskxeEtmv7ubq_20unicode_segmentation6tables8grapheme11GraphemeCatE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i.i: ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCskxeEtmv7ubq_20unicode_segmentation6tables8grapheme11GraphemeCatE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit3.i.i.i.i.i.i, %bb.ah, %bb.af
  %i.gc = phi i8 [ %i.gb, %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCskxeEtmv7ubq_20unicode_segmentation6tables8grapheme11GraphemeCatE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit3.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %bb.ah ], [ %.val9.pre.i.i.i.i.i.i, %bb.af ] ; 6 uses
  %i.gd = phi i8 [ %.pre56.i.i.i.i.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCskxeEtmv7ubq_20unicode_segmentation6tables8grapheme11GraphemeCatE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit3.i.i.i.i.i.i ], [ %.val10.i.i.i.i.i.i, %bb.ah ], [ %.val10.i.i.i.i.i.i, %bb.af ] ; 6 uses
  switch i8 %i.gc, label %bb.aj [
    i8 1, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.i.i.i.i.i.i
    i8 2, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i
    i8 7, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i
  ]

bb.aj:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCskxeEtmv7ubq_20unicode_segmentation6tables8grapheme11GraphemeCatE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i.i
  switch i8 %i.gd, label %bb.ak [
    i8 1, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i
    i8 2, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i
    i8 7, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i
  ]

bb.ak:                                            ; preds = %bb.aj
  switch i8 %i.gc, label %bb.al [
    i8 6, label %bb.am
    i8 8, label %bb.an
    i8 14, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  switch i8 %i.gd, label %bb.ao [
    i8 3, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i
    i8 12, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread39.i.i.i.i.i.i
    i8 13, label %bb.ap
    i8 15, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i
  ]

bb.am:                                            ; preds = %bb.ak
  switch i8 %i.gd, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i [
    i8 6, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i
    i8 8, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i
    i8 9, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i
    i8 14, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i
    i8 3, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i
    i8 12, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread39.i.i.i.i.i.i
    i8 5, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread41.i.i.i.i.i.i
    i8 15, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i
  ]

bb.an:                                            ; preds = %bb.ak, %bb.ak
  switch i8 %i.gd, label %bb.ao [
    i8 13, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i
    i8 14, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i
    i8 3, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i
    i8 12, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread39.i.i.i.i.i.i
    i8 15, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i
  ]

bb.ao:                                            ; preds = %bb.an, %bb.al
  %i.ge = icmp eq i8 %i.gc, 10
  br i1 %i.ge, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread39.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.al
  switch i8 %i.gc, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i [
    i8 9, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i
    i8 13, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i
    i8 10, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread39.i.i.i.i.i.i
  ]

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.ao
  switch i8 %i.gd, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i [
    i8 4, label %bb.aq
    i8 5, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread41.i.i.i.i.i.i
    i8 11, label %bb.ar
  ]

bb.aq:                                            ; preds = %.thread.i.i.i.i.i.i.i
  %i.gf = icmp eq i8 %i.gc, 15
  br i1 %i.gf, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread45.i.i.i.i.i.i, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i

bb.ar:                                            ; preds = %.thread.i.i.i.i.i.i.i
  %i.gg = icmp eq i8 %i.gc, 11
  br i1 %i.gg, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread43.i.i.i.i.i.i, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i

_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.i.i.i.i.i.i: ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCskxeEtmv7ubq_20unicode_segmentation6tables8grapheme11GraphemeCatE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i.i
  %.not54.i.i.i.i.i.i = icmp eq i8 %i.gd, 7
  br i1 %.not54.i.i.i.i.i.i, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i, label %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i

bb.as:                                            ; preds = %bb.af
  br i1 %.not.i25.i.not.i.i.i.i, label %.split.i.i.i23.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gh = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ft
  %i.gi = load i8, ptr %i.gh, align 1, !alias.scope !4070, !noalias !4055, !noundef !75
  %i.gj = icmp sgt i8 %i.gi, -65
  br i1 %i.gj, label %.split.i.i.i23.i.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab, i64 noundef 0, i64 noundef %i.ft, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19, !noalias !4071
  unreachable

.split.i.i.i23.i.i.i.i.i.i:                       ; preds = %bb.at, %bb.as
  %i.gk = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ft ; 4 uses
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 -1
  %i.gm = load i8, ptr %i.gl, align 1, !alias.scope !4072, !noalias !4073, !noundef !75 ; 3 uses
  %i.gn = icmp sgt i8 %i.gm, -1
  br i1 %i.gn, label %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit.thread49.i.i.i.i.i.i, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i.i.i.i

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i.i.i.i: ; preds = %.split.i.i.i23.i.i.i.i.i.i
  %i.go = icmp ne i64 %i.ft, 1
  call void @llvm.assume(i1 %i.go)
  %i.gp = getelementptr inbounds i8, ptr %i.gk, i64 -2
  %i.gq = load i8, ptr %i.gp, align 1, !alias.scope !4072, !noalias !4073, !noundef !75 ; 3 uses
  %i.gr = and i8 %i.gq, 31
  %i.gs = zext nneg i8 %i.gr to i32
  %i.gt = icmp slt i8 %i.gq, -64
  br i1 %i.gt, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit.i.i.i.i.i.i

_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit.thread49.i.i.i.i.i.i: ; preds = %.split.i.i.i23.i.i.i.i.i.i
  %i.gu = zext nneg i8 %i.gm to i32
  br label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCskxeEtmv7ubq_20unicode_segmentation6tables8grapheme11GraphemeCatE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit3.i.i.i.i.i.i

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i.i.i.i
  %i.gv = icmp ne i64 %i.ft, 2
  call void @llvm.assume(i1 %i.gv)
  %i.gw = getelementptr inbounds i8, ptr %i.gk, i64 -3
  %i.gx = load i8, ptr %i.gw, align 1, !alias.scope !4072, !noalias !4073, !noundef !75 ; 3 uses
  %i.gy = and i8 %i.gx, 15
  %i.gz = zext nneg i8 %i.gy to i32
  %i.ha = icmp slt i8 %i.gx, -64
  br i1 %i.ha, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i.i.i.i.i.i, label %bb.av

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i.i.i.i
  %i.hb = icmp ne i64 %i.ft, 3
  call void @llvm.assume(i1 %i.hb)
  %i.hc = getelementptr inbounds i8, ptr %i.gk, i64 -4
  %i.hd = load i8, ptr %i.hc, align 1, !alias.scope !4072, !noalias !4073, !noundef !75
  %i.he = and i8 %i.hd, 7
  %i.hf = zext nneg i8 %i.he to i32
  %i.hg = shl nuw nsw i32 %i.hf, 6
  %i.hh = and i8 %i.gx, 63
  %i.hi = zext nneg i8 %i.hh to i32
  %i.hj = or disjoint i32 %i.hg, %i.hi
  br label %bb.av

bb.av:                                            ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i.i.i.i.i.i, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i.i.i.i
  %.sroa.010.1.i.i.i.i.i.i.i.i = phi i32 [ %i.hj, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i.i.i.i.i.i ], [ %i.gz, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i.i.i.i ]
  %i.hk = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i.i.i.i, 6
  %i.hl = and i8 %i.gq, 63
  %i.hm = zext nneg i8 %i.hl to i32
  %i.hn = or disjoint i32 %i.hk, %i.hm
  br label %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit.i.i.i.i.i.i

_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit.i.i.i.i.i.i: ; preds = %bb.av, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i.i.i.i
  %.sroa.010.0.i.i.i.i.i.i.i.i = phi i32 [ %i.hn, %bb.av ], [ %i.gs, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i.i.i.i ]
  %i.ho = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i.i.i.i, 6
  %i.hp = and i8 %i.gm, 63
  %i.hq = zext nneg i8 %i.hp to i32
  %i.hr = or disjoint i32 %i.ho, %i.hq            ; 2 uses
  %.not.i6.i.i.i.i.i.i = icmp eq i32 %i.hr, 1114112
  br i1 %.not.i6.i.i.i.i.i.i, label %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit.thread.i.i.i.i.i.i, label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCskxeEtmv7ubq_20unicode_segmentation6tables8grapheme11GraphemeCatE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit3.i.i.i.i.i.i, !prof !4074

_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit.thread.i.i.i.i.i.i: ; preds = %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit.i.i.i.i.i.i
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19, !noalias !4068
  unreachable

_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i: ; preds = %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.i.i.i.i.i.i, %bb.ap, %bb.ap, %bb.an, %bb.an, %bb.an, %bb.an, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.al, %bb.al
  store i8 1, ptr %i.m, align 2, !alias.scope !4075
  %.sroa.19.8.insert.mask44.i.i.i.i.i = and i64 %.sroa.19.0.i.i.i.i.i, -256
  br label %bb.bv

_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i: ; preds = %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.i.i.i.i.i.i, %bb.ar, %bb.aq, %.thread.i.i.i.i.i.i.i, %bb.ap, %bb.am, %bb.aj, %bb.aj, %bb.aj, %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCskxeEtmv7ubq_20unicode_segmentation6tables8grapheme11GraphemeCatE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCskxeEtmv7ubq_20unicode_segmentation6tables8grapheme11GraphemeCatE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i.i
  store i8 2, ptr %i.m, align 2, !alias.scope !4076
  %.sroa.19.8.insert.mask41.i.i.i.i.i = and i64 %.sroa.19.0.i.i.i.i.i, -256
  %.sroa.19.8.insert.insert42.i.i.i.i.i = or disjoint i64 %.sroa.19.8.insert.mask41.i.i.i.i.i, 1
  br label %bb.bv

_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread39.i.i.i.i.i.i: ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  %i.hs = load i8, ptr %i.t, align 4, !range !116, !alias.scope !4064, !noundef !75 ; 2 uses
  %2 = icmp eq i8 %i.hs, 0
  %..i.i.i.i.i.i.i.i = select i1 %2, i8 2, i8 1
  store i8 %..i.i.i.i.i.i.i.i, ptr %i.m, align 2, !alias.scope !4077
  %3 = xor i8 %i.hs, 1
  %.sroa.19.8.insert.ext.i.i.i.i.i = zext nneg i8 %3 to i64
  %.sroa.19.8.insert.mask47.i.i.i.i.i = and i64 %.sroa.19.0.i.i.i.i.i, -256
  %.sroa.19.8.insert.insert48.i.i.i.i.i = or disjoint i64 %.sroa.19.8.insert.mask47.i.i.i.i.i, %.sroa.19.8.insert.ext.i.i.i.i.i
  br label %bb.bv

_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread41.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i.i.i, %bb.am
  %brmerge.i.i = or i1 %i.fz, %.not.i25.i.not.i.i.i.i
  br i1 %brmerge.i.i, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread41.i.i.i.i.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ft
  %i.hu = load i8, ptr %i.ht, align 1, !alias.scope !4078, !noalias !4071, !noundef !75
  %i.hv = icmp sgt i8 %i.hu, -65
  br i1 %i.hv, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab, i64 noundef 0, i64 noundef %i.ft, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #19, !noalias !4071
  unreachable

_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i: ; preds = %bb.aw, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread41.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4079)
  call void @llvm.experimental.noalias.scope.decl(metadata !4080)
  %i.hw = load i8, ptr %i.t, align 4, !range !116, !alias.scope !4081, !noalias !4071, !noundef !75
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %bb.ay, label %.thread.i.i.i

bb.ay:                                            ; preds = %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i
  %i.hy = load i64, ptr %i.p, align 8, !range !97, !alias.scope !4081, !noalias !4071, !noundef !75 ; 2 uses
  %i.hz = load i64, ptr %i.q, align 8, !alias.scope !4081, !noalias !4071 ; 2 uses
  %i.ia = trunc nuw i64 %i.hy to i1
  %..i.i.i.i = select i1 %i.ia, i64 %i.hz, i64 0
  %i.ib = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ft
  %4 = icmp eq i64 %i.hy, 0
  br label %.outer.i.i.i

.outer.i.i.i:                                     ; preds = %bb.be, %bb.ay
  %i.ic = phi i64 [ %i.le, %bb.be ], [ %i.hz, %bb.ay ]
  %i.id = phi i1 [ false, %bb.be ], [ %4, %bb.ay ]
  %.sroa.2.0.ph.i.i.i = phi ptr [ %.sroa.2.317.i.i.i, %bb.be ], [ %i.ib, %bb.ay ]
  %.sroa.0.0.ph.i.i.i = phi i64 [ %i.le, %bb.be ], [ %..i.i.i.i, %bb.ay ]
  br label %bb.az

bb.az:                                            ; preds = %bb.bd, %.outer.i.i.i
  %.sroa.2.0.i.i.i = phi ptr [ %.sroa.2.317.i.i.i, %bb.bd ], [ %.sroa.2.0.ph.i.i.i, %.outer.i.i.i ] ; 5 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.aa, %.sroa.2.0.i.i.i
  br i1 %.not.i.i.i2.i.i, label %.thread.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ie = getelementptr inbounds i8, ptr %.sroa.2.0.i.i.i, i64 -1 ; 3 uses
  %i.if = load i8, ptr %i.ie, align 1, !alias.scope !4080, !noalias !4082, !noundef !75 ; 3 uses
  %i.ig = icmp sgt i8 %i.if, -1
  br i1 %i.ig, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread13.i.i.i, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i.i

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i.i: ; preds = %bb.ba
  %i.ih = icmp ne ptr %i.aa, %i.ie
  call void @llvm.assume(i1 %i.ih), !noalias !4071
  %i.ii = getelementptr inbounds i8, ptr %.sroa.2.0.i.i.i, i64 -2 ; 3 uses
  %i.ij = load i8, ptr %i.ii, align 1, !alias.scope !4080, !noalias !4082, !noundef !75 ; 3 uses
  %i.ik = and i8 %i.ij, 31
  %i.il = zext nneg i8 %i.ik to i32
  %i.im = icmp slt i8 %i.ij, -64
  br i1 %i.im, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread13.i.i.i: ; preds = %bb.ba
  %i.in = zext nneg i8 %i.if to i32
  br label %bb.bc

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i.i
  %i.io = icmp ne ptr %i.aa, %i.ii
  call void @llvm.assume(i1 %i.io), !noalias !4071
  %i.ip = getelementptr inbounds i8, ptr %.sroa.2.0.i.i.i, i64 -3 ; 3 uses
  %i.iq = load i8, ptr %i.ip, align 1, !alias.scope !4080, !noalias !4082, !noundef !75 ; 3 uses
  %i.ir = and i8 %i.iq, 15
  %i.is = zext nneg i8 %i.ir to i32
  %i.it = icmp slt i8 %i.iq, -64
  br i1 %i.it, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i.i.i.i, label %bb.bb

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i.i
  %i.iu = icmp ne ptr %i.aa, %i.ip
  call void @llvm.assume(i1 %i.iu), !noalias !4071
  %i.iv = getelementptr inbounds i8, ptr %.sroa.2.0.i.i.i, i64 -4 ; 2 uses
  %i.iw = load i8, ptr %i.iv, align 1, !alias.scope !4080, !noalias !4082, !noundef !75
  %i.ix = and i8 %i.iw, 7
  %i.iy = zext nneg i8 %i.ix to i32
  %i.iz = shl nuw nsw i32 %i.iy, 6
  %i.ja = and i8 %i.iq, 63
  %i.jb = zext nneg i8 %i.ja to i32
  %i.jc = or disjoint i32 %i.iz, %i.jb
  br label %bb.bb

bb.bb:                                            ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i.i.i.i, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i.i
  %.sroa.2.2.i.i.i = phi ptr [ %i.iv, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i.i.i.i ], [ %i.ip, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i.i = phi i32 [ %i.jc, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i.i.i.i ], [ %i.is, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i.i ]
  %i.jd = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i.i, 6
  %i.je = and i8 %i.ij, 63
  %i.jf = zext nneg i8 %i.je to i32
  %i.jg = or disjoint i32 %i.jd, %i.jf
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i: ; preds = %bb.bb, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i.i
  %.sroa.2.1.i.i.i = phi ptr [ %.sroa.2.2.i.i.i, %bb.bb ], [ %i.ii, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i.i = phi i32 [ %i.jg, %bb.bb ], [ %i.il, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i.i ]
  %i.jh = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i.i, 6
  %i.ji = and i8 %i.if, 63
  %i.jj = zext nneg i8 %i.ji to i32
  %i.jk = or disjoint i32 %i.jh, %i.jj            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.jk, 1114112
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread13.i.i.i
  %spec.select.i.i18.i.i.i = phi i32 [ %i.in, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread13.i.i.i ], [ %i.jk, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i ] ; 21 uses
  %.sroa.2.317.i.i.i = phi ptr [ %i.ie, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread13.i.i.i ], [ %.sroa.2.1.i.i.i, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i ] ; 2 uses
  %i.jl = call noundef zeroext i1 @_RNvNtCskxeEtmv7ubq_20unicode_segmentation6tables14is_incb_linker(i32 noundef %spec.select.i.i18.i.i.i), !noalias !4083
  br i1 %i.jl, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jm = icmp samesign ult i32 %spec.select.i.i18.i.i.i, 43263
  %i.jn = select i1 %i.jm, i64 0, i64 185, !unpredictable !75 ; 2 uses
  %i.jo = add nuw nsw i64 %i.jn, 93               ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.jo ; 2 uses
  %.val17.1.i.i.i.i.i.i = load i32, ptr %i.jp, align 4, !range !4060, !noalias !4084, !noundef !75
  %i.jq = getelementptr i8, ptr %i.jp, i64 4
  %.val18.1.i.i.i.i.i.i = load i32, ptr %i.jq, align 4, !range !4060, !noalias !4084, !noundef !75
  %.not.i19.1.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.1.i.i.i.i.i.i, %spec.select.i.i18.i.i.i
  %.not1.i20.1.i.i.i.i.i.i = icmp samesign ule i32 %spec.select.i.i18.i.i.i, %.val18.1.i.i.i.i.i.i
  %i.jr = select i1 %.not1.i20.1.i.i.i.i.i.i, i1 %.not.i19.1.i.i.i.i.i.i, i1 false
  %i.js = select i1 %i.jr, i64 %i.jn, i64 %i.jo, !unpredictable !75 ; 2 uses
  %i.jt = add nuw nsw i64 %i.js, 46               ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.jt ; 2 uses
  %.val17.2.i.i.i.i.i.i = load i32, ptr %i.ju, align 4, !range !4060, !noalias !4084, !noundef !75
  %i.jv = getelementptr i8, ptr %i.ju, i64 4
  %.val18.2.i.i.i.i.i.i = load i32, ptr %i.jv, align 4, !range !4060, !noalias !4084, !noundef !75
  %.not.i19.2.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.2.i.i.i.i.i.i, %spec.select.i.i18.i.i.i
  %.not1.i20.2.i.i.i.i.i.i = icmp samesign ule i32 %spec.select.i.i18.i.i.i, %.val18.2.i.i.i.i.i.i
  %i.jw = select i1 %.not1.i20.2.i.i.i.i.i.i, i1 %.not.i19.2.i.i.i.i.i.i, i1 false
  %i.jx = select i1 %i.jw, i64 %i.js, i64 %i.jt, !unpredictable !75 ; 2 uses
  %i.jy = add nuw nsw i64 %i.jx, 23               ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.jy ; 2 uses
  %.val17.3.i.i.i.i.i.i = load i32, ptr %i.jz, align 4, !range !4060, !noalias !4084, !noundef !75
  %i.ka = getelementptr i8, ptr %i.jz, i64 4
  %.val18.3.i.i.i.i.i.i = load i32, ptr %i.ka, align 4, !range !4060, !noalias !4084, !noundef !75
  %.not.i19.3.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.3.i.i.i.i.i.i, %spec.select.i.i18.i.i.i
  %.not1.i20.3.i.i.i.i.i.i = icmp samesign ule i32 %spec.select.i.i18.i.i.i, %.val18.3.i.i.i.i.i.i
  %i.kb = select i1 %.not1.i20.3.i.i.i.i.i.i, i1 %.not.i19.3.i.i.i.i.i.i, i1 false
  %i.kc = select i1 %i.kb, i64 %i.jx, i64 %i.jy, !unpredictable !75 ; 2 uses
  %i.kd = add nuw nsw i64 %i.kc, 12               ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.kd ; 2 uses
  %.val17.4.i.i.i.i.i.i = load i32, ptr %i.ke, align 4, !range !4060, !noalias !4084, !noundef !75
  %i.kf = getelementptr i8, ptr %i.ke, i64 4
  %.val18.4.i.i.i.i.i.i = load i32, ptr %i.kf, align 4, !range !4060, !noalias !4084, !noundef !75
  %.not.i19.4.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.4.i.i.i.i.i.i, %spec.select.i.i18.i.i.i
  %.not1.i20.4.i.i.i.i.i.i = icmp samesign ule i32 %spec.select.i.i18.i.i.i, %.val18.4.i.i.i.i.i.i
  %i.kg = select i1 %.not1.i20.4.i.i.i.i.i.i, i1 %.not.i19.4.i.i.i.i.i.i, i1 false
  %i.kh = select i1 %i.kg, i64 %i.kc, i64 %i.kd, !unpredictable !75 ; 2 uses
  %i.ki = add nuw nsw i64 %i.kh, 6                ; 2 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.ki ; 2 uses
  %.val17.5.i.i.i.i.i.i = load i32, ptr %i.kj, align 4, !range !4060, !noalias !4084, !noundef !75
  %i.kk = getelementptr i8, ptr %i.kj, i64 4
  %.val18.5.i.i.i.i.i.i = load i32, ptr %i.kk, align 4, !range !4060, !noalias !4084, !noundef !75
  %.not.i19.5.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.5.i.i.i.i.i.i, %spec.select.i.i18.i.i.i
  %.not1.i20.5.i.i.i.i.i.i = icmp samesign ule i32 %spec.select.i.i18.i.i.i, %.val18.5.i.i.i.i.i.i
  %i.kl = select i1 %.not1.i20.5.i.i.i.i.i.i, i1 %.not.i19.5.i.i.i.i.i.i, i1 false
  %i.km = select i1 %i.kl, i64 %i.kh, i64 %i.ki, !unpredictable !75 ; 2 uses
  %i.kn = add nuw nsw i64 %i.km, 3                ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.kn ; 2 uses
  %.val17.6.i.i.i.i.i.i = load i32, ptr %i.ko, align 4, !range !4060, !noalias !4084, !noundef !75
  %i.kp = getelementptr i8, ptr %i.ko, i64 4
  %.val18.6.i.i.i.i.i.i = load i32, ptr %i.kp, align 4, !range !4060, !noalias !4084, !noundef !75
  %.not.i19.6.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.6.i.i.i.i.i.i, %spec.select.i.i18.i.i.i
  %.not1.i20.6.i.i.i.i.i.i = icmp samesign ule i32 %spec.select.i.i18.i.i.i, %.val18.6.i.i.i.i.i.i
  %i.kq = select i1 %.not1.i20.6.i.i.i.i.i.i, i1 %.not.i19.6.i.i.i.i.i.i, i1 false
  %i.kr = select i1 %i.kq, i64 %i.km, i64 %i.kn, !unpredictable !75 ; 2 uses
  %i.ks = add nuw nsw i64 %i.kr, 1                ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.ks ; 2 uses
  %.val17.7.i.i.i.i.i.i = load i32, ptr %i.kt, align 4, !range !4060, !noalias !4084, !noundef !75
  %i.ku = getelementptr i8, ptr %i.kt, i64 4
  %.val18.7.i.i.i.i.i.i = load i32, ptr %i.ku, align 4, !range !4060, !noalias !4084, !noundef !75
  %.not.i19.7.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.7.i.i.i.i.i.i, %spec.select.i.i18.i.i.i
  %.not1.i20.7.i.i.i.i.i.i = icmp samesign ule i32 %spec.select.i.i18.i.i.i, %.val18.7.i.i.i.i.i.i
  %i.kv = select i1 %.not1.i20.7.i.i.i.i.i.i, i1 %.not.i19.7.i.i.i.i.i.i, i1 false
  %i.kw = select i1 %i.kv, i64 %i.kr, i64 %i.ks, !unpredictable !75 ; 2 uses
  %i.kx = add nuw nsw i64 %i.kw, 1                ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.kx ; 2 uses
  %.val17.8.i.i.i.i.i.i = load i32, ptr %i.ky, align 4, !range !4060, !noalias !4084, !noundef !75
  %i.kz = getelementptr i8, ptr %i.ky, i64 4
  %.val18.8.i.i.i.i.i.i = load i32, ptr %i.kz, align 4, !range !4060, !noalias !4084, !noundef !75
  %.not.i19.8.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.8.i.i.i.i.i.i, %spec.select.i.i18.i.i.i
  %.not1.i20.8.i.i.i.i.i.i = icmp samesign ule i32 %spec.select.i.i18.i.i.i, %.val18.8.i.i.i.i.i.i
  %i.la = select i1 %.not1.i20.8.i.i.i.i.i.i, i1 %.not.i19.8.i.i.i.i.i.i, i1 false
  %i.lb = select i1 %i.la, i64 %i.kw, i64 %i.kx, !unpredictable !75
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.lb ; 2 uses
  %.val14.i.i.i.i.i.i = load i32, ptr %i.lc, align 4, !range !4060, !noalias !4084, !noundef !75
  %i.ld = getelementptr i8, ptr %i.lc, i64 4
  %.val15.i.i.i.i.i.i = load i32, ptr %i.ld, align 4, !range !4060, !noalias !4084, !noundef !75
  %.not.i.i.i.i.i3.i.i = icmp samesign ule i32 %.val14.i.i.i.i.i.i, %spec.select.i.i18.i.i.i
  %.not1.i.i.i.i.i.i.i = icmp samesign ule i32 %spec.select.i.i18.i.i.i, %.val15.i.i.i.i.i.i
  %.not.i.not.i.i.i.i.i = select i1 %.not1.i.i.i.i.i.i.i, i1 %.not.i.i.i.i.i3.i.i, i1 false
  br i1 %.not.i.not.i.i.i.i.i, label %bb.az, label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.le = add i64 %.sroa.0.0.ph.i.i.i, 1          ; 3 uses
  store i64 1, ptr %i.p, align 8, !alias.scope !4081, !noalias !4071
  store i64 %i.le, ptr %i.q, align 8, !alias.scope !4081, !noalias !4071
  br label %.outer.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %.not520.i.i.i = icmp eq i64 %i.ic, 0
  %.not5.not.i.i.i = select i1 %i.id, i1 true, i1 %.not520.i.i.i
  br i1 %.not5.not.i.i.i, label %.thread.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lf = call noundef i8 @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.b, i32 noundef %spec.select.i.i18.i.i.i), !noalias !4085
  %.not21.i.i.i = icmp eq i8 %i.lf, 5
  br i1 %.not21.i.i.i, label %bb.bh, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i, %bb.az, %bb.bg, %bb.bf, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i
  store i8 2, ptr %i.m, align 2, !alias.scope !4081, !noalias !4071
  %.sroa.19.8.insert.mask70.i.i.i.i.i = and i64 %.sroa.19.0.i.i.i.i.i, -256
  %.sroa.19.8.insert.insert71.i.i.i.i.i = or disjoint i64 %.sroa.19.8.insert.mask70.i.i.i.i.i, 1
  br label %bb.bv

bb.bh:                                            ; preds = %bb.bg
  store i8 1, ptr %i.m, align 2, !alias.scope !4081, !noalias !4071
  %.sroa.19.8.insert.mask67.i.i.i.i.i = and i64 %.sroa.19.0.i.i.i.i.i, -256
  br label %bb.bv

_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread43.i.i.i.i.i.i: ; preds = %bb.ar
  %i.lg = load i64, ptr %i.r, align 8, !range !97, !alias.scope !4064, !noundef !75
  %i.lh = trunc nuw i64 %i.lg to i1
  br i1 %i.lh, label %bb.bn, label %bb.bo

_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread45.i.i.i.i.i.i: ; preds = %bb.aq
  %i.li = call fastcc { ptr, i64 } @_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab, i64 noundef %i.ft, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #21, !noalias !4071 ; 2 uses
  %i.lj = extractvalue { ptr, i64 } %i.li, 0
  %i.lk = extractvalue { ptr, i64 } %i.li, 1
  call fastcc void @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor12handle_emoji(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.lj, i64 noundef %i.lk) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !4086)
  %.val2.i27.i.i.i.i.i = load i8, ptr %i.m, align 2, !range !4087, !alias.scope !4088, !noundef !75
  switch i8 %.val2.i27.i.i.i.i.i, label %bb.bj [
    i8 2, label %bb.bi
    i8 1, label %bb.bk
  ]

bb.bi:                                            ; preds = %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread45.i.i.i.i.i.i
  %.sroa.19.8.insert.mask64.i.i.i.i.i = and i64 %.sroa.19.0.i.i.i.i.i, -256
  %.sroa.19.8.insert.insert65.i.i.i.i.i = or disjoint i64 %.sroa.19.8.insert.mask64.i.i.i.i.i, 1
  br label %bb.bv

bb.bj:                                            ; preds = %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread45.i.i.i.i.i.i
  %i.ll = load i64, ptr %i.b, align 8, !range !97, !alias.scope !4088, !noundef !75
  %i.lm = trunc nuw i64 %i.ll to i1
  br i1 %i.lm, label %bb.bl, label %bb.bm

bb.bk:                                            ; preds = %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread45.i.i.i.i.i.i
  %.sroa.19.8.insert.mask61.i.i.i.i.i = and i64 %.sroa.19.0.i.i.i.i.i, -256
  br label %bb.bv

bb.bl:                                            ; preds = %bb.bj
  %i.ln = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.lo = load i64, ptr %i.ln, align 8, !alias.scope !4088, !noundef !75
  br label %.loopexit.i.i.i.i

bb.bm:                                            ; preds = %bb.bj
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core9panicking19unreachable_displayReECshbKHpCRGxgC_16deltalake_derive() #22, !noalias !4089
  unreachable

bb.bn:                                            ; preds = %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread43.i.i.i.i.i.i
  %i.lp = load i64, ptr %i.s, align 8, !alias.scope !4064, !noundef !75
  %i.lq = and i64 %i.lp, 1                        ; 2 uses
  %i.lr = icmp eq i64 %i.lq, 0
  %..i.i26.i.i.i.i.i.i = select i1 %i.lr, i8 2, i8 1
  store i8 %..i.i26.i.i.i.i.i.i, ptr %i.m, align 2, !alias.scope !4090
  %.sroa.19.8.insert.mask51.i.i.i.i.i = and i64 %.sroa.19.0.i.i.i.i.i, -256
  %i.ls = or disjoint i64 %i.lq, %.sroa.19.8.insert.mask51.i.i.i.i.i
  %.sroa.19.8.insert.insert52.i.i.i.i.i = xor i64 %i.ls, 1
  br label %bb.bv

bb.bo:                                            ; preds = %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread43.i.i.i.i.i.i
  %i.lt = call fastcc { ptr, i64 } @_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab, i64 noundef %i.ft, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21, !noalias !4071 ; 2 uses
  %i.lu = extractvalue { ptr, i64 } %i.lt, 0
  %i.lv = extractvalue { ptr, i64 } %i.lt, 1
  call fastcc void @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor15handle_regional(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.lu, i64 noundef %i.lv) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !4091)
  %.val2.i.i.i.i.i.i = load i8, ptr %i.m, align 2, !range !4087, !alias.scope !4092, !noundef !75
  switch i8 %.val2.i.i.i.i.i.i, label %bb.bq [
    i8 2, label %bb.bp
    i8 1, label %bb.br
  ]

bb.bp:                                            ; preds = %bb.bo
  %.sroa.19.8.insert.mask58.i.i.i.i.i = and i64 %.sroa.19.0.i.i.i.i.i, -256
  %.sroa.19.8.insert.insert59.i.i.i.i.i = or disjoint i64 %.sroa.19.8.insert.mask58.i.i.i.i.i, 1
  br label %bb.bv

bb.bq:                                            ; preds = %bb.bo
  %i.lw = load i64, ptr %i.b, align 8, !range !97, !alias.scope !4092, !noundef !75
  %i.lx = trunc nuw i64 %i.lw to i1
  br i1 %i.lx, label %bb.bs, label %bb.bt

bb.br:                                            ; preds = %bb.bo
  %.sroa.19.8.insert.mask55.i.i.i.i.i = and i64 %.sroa.19.0.i.i.i.i.i, -256
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bq
  %i.ly = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.lz = load i64, ptr %i.ly, align 8, !alias.scope !4092, !noundef !75
  br label %.loopexit.i.i.i.i

bb.bt:                                            ; preds = %bb.bq
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core9panicking19unreachable_displayReECshbKHpCRGxgC_16deltalake_derive() #22, !noalias !4093
  unreachable

bb.bu:                                            ; preds = %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit24.thread82.i.i.i.i.i
  store i8 1, ptr %i.l, align 1, !alias.scope !4053
  br label %.loopexit.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit24.thread82.i.i.i.i.i
  store i8 2, ptr %i.m, align 2, !alias.scope !4094
  br label %bb.z

bb.bv:                                            ; preds = %bb.br, %bb.bp, %bb.bn, %bb.bk, %bb.bi, %bb.bh, %.thread.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread39.i.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i, %bb.ab, %bb.z
  %.sroa.0.1237.i.i.i.i.i = phi i32 [ %.sroa.0.1.ph.i.i.i.i.i, %bb.br ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.bp ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.bi ], [ %.sroa.0.1.ph.i.i.i.i.i, %.thread.i.i.i ], [ %.sroa.0.1238.i.i.i.i.i, %bb.z ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.ab ], [ %.sroa.0.1.ph.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.bk ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.bn ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.bh ], [ %.sroa.0.1.ph.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i ], [ %.sroa.0.1.ph.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread39.i.i.i.i.i.i ]
  %.sroa.0.173235.i.i.i.i.i = phi ptr [ %.sroa.0.173.ph.i.i.i.i.i, %bb.br ], [ %.sroa.0.173.ph.i.i.i.i.i, %bb.bp ], [ %.sroa.0.173.ph.i.i.i.i.i, %bb.bi ], [ %.sroa.0.173.ph.i.i.i.i.i, %.thread.i.i.i ], [ %.sroa.0.173236.i.i.i.i.i, %bb.z ], [ %.sroa.0.173.ph.i.i.i.i.i, %bb.ab ], [ %.sroa.0.173.ph.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i ], [ %.sroa.0.173.ph.i.i.i.i.i, %bb.bk ], [ %.sroa.0.173.ph.i.i.i.i.i, %bb.bn ], [ %.sroa.0.173.ph.i.i.i.i.i, %bb.bh ], [ %.sroa.0.173.ph.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i ], [ %.sroa.0.173.ph.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread39.i.i.i.i.i.i ]
  %.sroa.19.1.ph.i.i.i.i.i = phi i64 [ %.sroa.19.8.insert.mask55.i.i.i.i.i, %bb.br ], [ %.sroa.19.8.insert.insert59.i.i.i.i.i, %bb.bp ], [ %.sroa.19.8.insert.insert65.i.i.i.i.i, %bb.bi ], [ %.sroa.19.8.insert.insert71.i.i.i.i.i, %.thread.i.i.i ], [ %.sroa.19.8.insert.insert39.i.i.i.i.i, %bb.z ], [ %.sroa.19.8.insert.mask.i.i.i.i.i, %bb.ab ], [ %.sroa.19.8.insert.mask44.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread37.i.i.i.i.i.i ], [ %.sroa.19.8.insert.mask61.i.i.i.i.i, %bb.bk ], [ %.sroa.19.8.insert.insert52.i.i.i.i.i, %bb.bn ], [ %.sroa.19.8.insert.mask67.i.i.i.i.i, %bb.bh ], [ %.sroa.19.8.insert.insert42.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i ], [ %.sroa.19.8.insert.insert48.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread39.i.i.i.i.i.i ] ; 2 uses
  %i.ma = trunc i64 %.sroa.19.1.ph.i.i.i.i.i to i1
  store i8 0, ptr %i.l, align 1, !alias.scope !4053
  br i1 %i.ma, label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionjE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i, label %bb.i

.loopexit.i.i.i.i:                                ; preds = %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i, %bb.aa, %bb.bu, %bb.bs, %bb.bl, %.critedge.i.i.i.i.i.i, %bb.ad
  %.sroa.12.0.ph.i.i.i.i = phi i64 [ undef, %bb.bu ], [ %.sroa.19.0.i.i.i.i.i, %bb.aa ], [ %i.lo, %bb.bl ], [ %i.lz, %bb.bs ], [ 0, %.critedge.i.i.i.i.i.i ], [ %i.fy, %bb.ad ], [ undef, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i ], [ undef, %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ]
  %.sroa.6.0.ph.i.i.i.i = phi i64 [ 2, %bb.bu ], [ 3, %bb.aa ], [ 0, %bb.bl ], [ 0, %bb.bs ], [ 0, %.critedge.i.i.i.i.i.i ], [ 0, %bb.ad ], [ 2, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i ], [ 2, %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4095
  store i64 %.sroa.6.0.ph.i.i.i.i, ptr %i.a, align 8, !noalias !4095
  %i.mb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.12.0.ph.i.i.i.i, ptr %i.mb, align 8, !noalias !4095
  call void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20, !noalias !4096
  unreachable

bb.bw:                                            ; preds = %bb.b
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #19, !noalias !4055
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionjE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i: ; preds = %bb.bv
  %i.mc = load i64, ptr %i.f, align 8, !alias.scope !4053, !noundef !75 ; 7 uses
  %i.md = load ptr, ptr %i.i, align 8, !alias.scope !4050, !nonnull !75, !noundef !75 ; 4 uses
  %i.me = load i64, ptr %i.j, align 8, !alias.scope !4050, !noundef !75 ; 5 uses
  %.not.i.i.i2.i.i.i.i = icmp ugt i64 %.val1.i.i132.i.i, %i.mc
  br i1 %.not.i.i.i2.i.i.i.i, label %bb.cd, label %bb.bx

bb.bx:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionjE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i
  br i1 %i.ae, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.not5.i.i.i.i.i.i.i = icmp ult i64 %.val1.i.i132.i.i, %i.me
  br i1 %.not5.i.i.i.i.i.i.i, label %bb.ca, label %.split.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.ca, %.split.i.i.i.i.i.i.i, %bb.bx
  %i.mf = icmp eq i64 %i.mc, 0
  br i1 %i.mf, label %bb.ce, label %bb.cb

.split.i.i.i.i.i.i.i:                             ; preds = %bb.by
  %i.mg = icmp eq i64 %.val1.i.i132.i.i, %i.me
  br i1 %i.mg, label %bb.bz, label %bb.cd

bb.ca:                                            ; preds = %bb.by
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 %.val1.i.i132.i.i
  %i.mi = load i8, ptr %i.mh, align 1, !alias.scope !4097, !noalias !4055, !noundef !75
  %i.mj = icmp sgt i8 %i.mi, -65
  br i1 %i.mj, label %bb.bz, label %bb.cd

bb.cb:                                            ; preds = %bb.bz
  %.not6.i.i.i.i.i.i.i = icmp ult i64 %i.mc, %i.me
  br i1 %.not6.i.i.i.i.i.i.i, label %bb.cc, label %.split7.i.i.i.i.i.i.i

.split7.i.i.i.i.i.i.i:                            ; preds = %bb.cb
  %i.mk = icmp eq i64 %i.mc, %i.me
  br i1 %i.mk, label %bb.ce, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ml = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mc
  %i.mm = load i8, ptr %i.ml, align 1, !alias.scope !4097, !noalias !4055, !noundef !75
  %i.mn = icmp sgt i8 %i.mm, -65
  br i1 %i.mn, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.split7.i.i.i.i.i.i.i, %bb.ca, %.split.i.i.i.i.i.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionjE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i
  call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.md, i64 noundef %i.me, i64 noundef %.val1.i.i132.i.i, i64 noundef %i.mc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #19, !noalias !4055
  unreachable

bb.ce:                                            ; preds = %bb.cc, %.split7.i.i.i.i.i.i.i, %bb.bz
  %i.mo = sub nuw i64 %i.mc, %.val1.i.i132.i.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.md, i64 %.val1.i.i132.i.i ; 2 uses
  %i.mq = ptrtoint ptr %i.mp to i64
  %i.mr = load i64, ptr %i.u, align 8, !alias.scope !4098, !noalias !4099, !noundef !75
  %i.ms = sub i64 %i.mq, %i.mr
  %i.mt = load i64, ptr %i.v, align 8, !alias.scope !4100, !noalias !4101, !noundef !75 ; 3 uses
  %i.mu = load i64, ptr %0, align 8, !range !95, !alias.scope !4100, !noalias !4101, !noundef !75
  %i.mv = icmp eq i64 %i.mt, %i.mu
  br i1 %i.mv, label %bb.cf, label %_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendjE10extend_oneCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i

bb.cf:                                            ; preds = %bb.ce
  call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsl1mHGn7pXMx_12convert_case(ptr noalias noundef nonnull align 8 dereferenceable(48) %0), !noalias !4102
  br label %_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendjE10extend_oneCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i

_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendjE10extend_oneCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i: ; preds = %bb.cf, %bb.ce
  %i.mw = load ptr, ptr %i.w, align 8, !alias.scope !4100, !noalias !4101, !nonnull !75, !noundef !75
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %i.mt
  store i64 %i.ms, ptr %i.mx, align 8, !noalias !4102
  %i.my = add i64 %i.mt, 1
  store i64 %i.my, ptr %i.v, align 8, !alias.scope !4100, !noalias !4101
end_hunk_0
