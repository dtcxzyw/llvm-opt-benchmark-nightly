Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.15?download=true
inline.NumInlined: 862
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RINvMNtCsj6eKBz9Db1c_4core3stre12trim_matchescECsa5QsYiPB8Gl_5image:_RNvXs2_NtNtCsj6eKBz9Db1c_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %i.ab = shl nuw nsw i32 %i.i, 12
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = icmp samesign ugt i8 %i.f, -17
  br i1 %i.ad, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i
  %i.ae = add nuw nsw i64 %.sroa.6.0, 3
  %i.af = icmp samesign ne i64 %i.ae, %1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ah = load i8, ptr %i.v, align 1, !noalias !83, !noundef !5
  %i.ai = shl nuw nsw i32 %i.i, 18
  %i.aj = and i32 %i.ai, 1835008
  %i.ak = shl nuw nsw i32 %i.aa, 6
  %i.al = and i8 %i.ah, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am
  %i.ao = or disjoint i32 %i.an, %i.aj
  br label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i, %bb.c, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i
  %.sroa.0.0.ph.i.i = phi ptr [ %i.l, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i ], [ %i.v, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i ], [ %i.ag, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i ], [ %i.e, %bb.c ]
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.q, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i ], [ %i.ac, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i ], [ %i.ao, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.ap = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = ptrtoint ptr %.sroa.0.0.ph.i.i to i64
  %.reass.i = add i64 %invariant.op.i, %i.aq      ; 3 uses
  %.not.i = icmp eq i32 %.sroa.4.0.i.ph.i.i, %2
  br i1 %.not.i, label %bb.a, label %_RNvYNtNtNtCsj6eKBz9Db1c_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCsa5QsYiPB8Gl_5image.exit

_RNvYNtNtNtCsj6eKBz9Db1c_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i
  %.sroa.6.122 = phi i64 [ %.reass.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i ], [ %1, %bb.a ] ; 6 uses
  %.sroa.02.0 = phi i64 [ %.reass.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi i64 [ %.sroa.6.0, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.6.122
  %i.as = ptrtoint ptr %i.ar to i64
  %invariant.op.i3 = sub i64 %.sroa.6.122, %i.as
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs0_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i, %_RNvYNtNtNtCsj6eKBz9Db1c_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCsa5QsYiPB8Gl_5image.exit
  %.reass5.i5 = phi i64 [ %.reass.i6, %_RNvXs0_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i ], [ %1, %_RNvYNtNtNtCsj6eKBz9Db1c_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCsa5QsYiPB8Gl_5image.exit ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.reass5.i5 ; 4 uses
  %i.au = icmp samesign eq i64 %.sroa.6.122, %.reass5.i5
  br i1 %i.au, label %_RNvYNtNtNtCsj6eKBz9Db1c_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsa5QsYiPB8Gl_5image.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -1 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !noalias !84, !noundef !5 ; 3 uses
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %bb.f, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa5QsYiPB8Gl_5image.exit17.i.i.i

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa5QsYiPB8Gl_5image.exit17.i.i.i: ; preds = %bb.e
  %i.ay = add nsw i64 %.reass5.i5, -1
  %i.az = icmp ne i64 %.sroa.6.122, %i.ay
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds i8, ptr %i.at, i64 -2 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !84, !noundef !5 ; 3 uses
  %i.bc = and i8 %i.bb, 31
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = icmp slt i8 %i.bb, -64
  br i1 %i.be, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa5QsYiPB8Gl_5image.exit19.i.i.i, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = zext nneg i8 %i.aw to i32
  br label %_RNvXs0_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa5QsYiPB8Gl_5image.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa5QsYiPB8Gl_5image.exit17.i.i.i
  %i.bg = add nsw i64 %.reass5.i5, -2
  %i.bh = icmp ne i64 %.sroa.6.122, %i.bg
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds i8, ptr %i.at, i64 -3 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !84, !noundef !5 ; 3 uses
  %i.bk = and i8 %i.bj, 15
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = icmp slt i8 %i.bj, -64
  br i1 %i.bm, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa5QsYiPB8Gl_5image.exit21.i.i.i, label %bb.h

bb.g:                                             ; preds = %bb.h, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa5QsYiPB8Gl_5image.exit17.i.i.i
  %.sroa.6.0.i.i = phi ptr [ %.sroa.6.1.i.i, %bb.h ], [ %i.ba, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa5QsYiPB8Gl_5image.exit17.i.i.i ]
  %.sroa.010.0.i.i.i = phi i32 [ %i.ce, %bb.h ], [ %i.bd, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa5QsYiPB8Gl_5image.exit17.i.i.i ]
  %i.bn = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6
  %i.bo = and i8 %i.aw, 63
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.bn, %i.bp
  br label %_RNvXs0_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa5QsYiPB8Gl_5image.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa5QsYiPB8Gl_5image.exit19.i.i.i
  %i.br = add nsw i64 %.reass5.i5, -3
  %i.bs = icmp ne i64 %.sroa.6.122, %i.br
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds i8, ptr %i.at, i64 -4 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !84, !noundef !5
  %i.bv = and i8 %i.bu, 7
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 6
  %i.by = and i8 %i.bj, 63
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bx, %i.bz
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa5QsYiPB8Gl_5image.exit21.i.i.i, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa5QsYiPB8Gl_5image.exit19.i.i.i
  %.sroa.6.1.i.i = phi ptr [ %i.bt, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa5QsYiPB8Gl_5image.exit21.i.i.i ], [ %i.bi, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa5QsYiPB8Gl_5image.exit19.i.i.i ]
  %.sroa.010.1.i.i.i = phi i32 [ %i.ca, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa5QsYiPB8Gl_5image.exit21.i.i.i ], [ %i.bl, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa5QsYiPB8Gl_5image.exit19.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6
  %i.cc = and i8 %i.bb, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.g

_RNvXs0_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.6.2.ph.i.i = phi ptr [ %.sroa.6.0.i.i, %bb.g ], [ %i.av, %bb.f ]
  %.sroa.4.1.i.ph.i.i = phi i32 [ %i.bq, %bb.g ], [ %i.bf, %bb.f ] ; 2 uses
  %i.cf = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = ptrtoint ptr %.sroa.6.2.ph.i.i to i64
  %.reass.i6 = add i64 %invariant.op.i3, %i.cg
  %.not.i7 = icmp eq i32 %.sroa.4.1.i.ph.i.i, %2
  br i1 %.not.i7, label %bb.d, label %_RNvYNtNtNtCsj6eKBz9Db1c_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsa5QsYiPB8Gl_5image.exit

_RNvYNtNtNtCsj6eKBz9Db1c_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d, %_RNvXs0_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i
  %.sroa.02.1 = phi i64 [ %.reass5.i5, %_RNvXs0_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i ], [ %.sroa.02.0, %bb.d ]
  %i.ch = sub nuw i64 %.sroa.02.1, %.sroa.0.0
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0
  %i.cj = insertvalue { ptr, i64 } poison, ptr %i.ci, 0
  %i.ck = insertvalue { ptr, i64 } %i.cj, i64 %i.ch, 1
  ret { ptr, i64 } %i.ck
}

; Function Attrs: noinline nonlazybind uwtable
define noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorBA_EECsa5QsYiPB8Gl_5image(i8 noundef range(i8 0, 44) %0, i64 noundef range(i64 0, 3) %1, ptr %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtBW_2io5error5ErrorEE4fromCsa5QsYiPB8Gl_5image(i64 noundef range(i64 0, 3) %1, ptr %2) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = tail call noundef nonnull ptr @_RNvNtNtCs4wP2HXfJTCR_5alloc2io5error21custom_owner_from_box(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c)
  %i.e = tail call noundef nonnull ptr @_RNvMs0_NtNtNtCsj6eKBz9Db1c_4core2io5error4reprNtB5_4Repr10new_custom(ptr noundef nonnull %i.d)
  ret ptr %i.e
}

; Function Attrs: noinline nonlazybind uwtable
define noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newNtNtCshj339Ta6RuV_5weezl5error8LzwErrorECsa5QsYiPB8Gl_5image(i8 noundef range(i8 0, 44) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCshj339Ta6RuV_5weezl5error8LzwErrorE4fromCsa5QsYiPB8Gl_5image() ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = tail call noundef nonnull ptr @_RNvNtNtCs4wP2HXfJTCR_5alloc2io5error21custom_owner_from_box(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c)
  %i.e = tail call noundef nonnull ptr @_RNvMs0_NtNtNtCsj6eKBz9Db1c_4core2io5error4reprNtB5_4Repr10new_custom(ptr noundef nonnull %i.d)
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs5XDXJCpOCOR_3png7encoder11write_chunkQQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %2, ptr %i.d, align 4
  %i.e = trunc i64 %4 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.e)
  store i32 %i.f, ptr %i.b, align 4
  %.val.i.i = load ptr, ptr %1, align 8, !noalias !87, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  call void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE17extend_from_sliceCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE17extend_from_sliceCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, -9223372036854775808) 4)
  call void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE17extend_from_sliceCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMCs8SLmhRwIZHN_9crc32fastNtB2_6Hasher3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c)
  call void @_RNvMCs8SLmhRwIZHN_9crc32fastNtB2_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 4)
  call void @_RNvMCs8SLmhRwIZHN_9crc32fastNtB2_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = call i32 @llvm.bswap.i32(i32 %i.h)
  store i32 %i.i, ptr %i.a, align 4
  call void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE17extend_from_sliceCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, -9223372036854775808) 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaXAyoiiLu3Y_9zune_jpeg4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(29432) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.435 = alloca [31 x i8], align 1          ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.j = load i16, ptr %i.i, align 8, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 210
  %i.l = load i16, ptr %i.k, align 2, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 5 uses
  %i.o = icmp ult i64 %i.n, 18595508138820113
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.n, 3
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1392 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !range !7, !noundef !5
  %i.s = icmp eq i32 %i.r, 6
  br i1 %i.s, label %bb.d, label %.thread127

.thread127:                                       ; preds = %bb.b, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.idx128 = mul nuw nsw i64 %i.n, 496
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx128
  br label %.lr.ph

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.idx = mul nuw nsw i64 %i.n, 496
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx ; 2 uses
  %i.z = icmp eq i64 %i.n, 0
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread127, %bb.c
  %i.aa = phi ptr [ %i.v, %.thread127 ], [ %i.y, %bb.c ] ; 2 uses
  %i.ab = phi ptr [ %i.u, %.thread127 ], [ %i.x, %bb.c ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 29312 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 29320 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 29328
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 29336
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 29344
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 29352
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 29416
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ak = zext i16 %i.l to i64                    ; 3 uses
  %i.al = zext i16 %i.j to i64                    ; 3 uses
  %.pre = load i64, ptr %i.ac, align 8
  %.pre118 = load i64, ptr %i.ad, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %i.q, align 8
  br label %.thread127

bb.e:                                             ; preds = %.lr.ph, %bb.t
  %i.am = phi i64 [ %.pre118, %.lr.ph ], [ %..i83, %bb.t ]
  %i.an = phi i64 [ %.pre, %.lr.ph ], [ %..i, %bb.t ]
  %.sroa.0.0100 = phi ptr [ %i.ab, %.lr.ph ], [ %i.ao, %bb.t ] ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 496 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 160
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !5 ; 4 uses
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.aq, i64 %i.an) ; 7 uses
  store i64 %..i, ptr %i.ac, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 152
  %i.as = load i64, ptr %i.ar, align 8, !noundef !5
  %..i83 = tail call noundef i64 @llvm.umax.i64(i64 %i.as, i64 %i.am) ; 6 uses
  store i64 %..i83, ptr %i.ad, align 8
  %i.at = shl i64 %..i, 3                         ; 4 uses
  store i64 %i.at, ptr %i.ae, align 8
  %i.au = shl i64 %..i83, 3                       ; 4 uses
  store i64 %i.au, ptr %i.af, align 8
  %i.av = icmp eq i64 %i.at, 0
  br i1 %i.av, label %bb.i, label %bb.h

._crit_edge:                                      ; preds = %bb.t, %bb.c
  %i.aw = phi i1 [ true, %bb.c ], [ false, %bb.t ] ; 2 uses
  %i.ax = phi ptr [ %i.y, %bb.c ], [ %i.aa, %bb.t ] ; 2 uses
  %i.ay = phi ptr [ %i.x, %bb.c ], [ %i.ab, %bb.t ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %._crit_edge
  %i.az = phi ptr [ %i.bb, %bb.g ], [ %i.ay, %._crit_edge ] ; 5 uses
  %i.ba = icmp eq ptr %i.az, %i.ax
  br i1 %i.ba, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEs_0ECsa5QsYiPB8Gl_5image.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 496
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 493
  %i.bd = load i8, ptr %i.bc, align 1, !range !8, !noalias !93, !noundef !5
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEs_0ECsa5QsYiPB8Gl_5image.exit, label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.bf = udiv i64 %i.al, %i.at
  %i.bg = urem i64 %i.al, %i.at
  %.not = icmp ne i64 %i.bg, 0
  %i.bh = zext i1 %.not to i64
  %.sroa.04.0 = add nuw nsw i64 %i.bf, %i.bh      ; 3 uses
  store i64 %.sroa.04.0, ptr %i.ag, align 8
  %i.bi = icmp eq i64 %i.au, 0
  br i1 %i.bi, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bj = udiv i64 %i.ak, %i.au
  %i.bk = urem i64 %i.ak, %i.au
  %.not76 = icmp ne i64 %i.bk, 0
  %i.bl = zext i1 %.not76 to i64
  %.sroa.05.0 = add nuw nsw i64 %i.bj, %i.bl
  store i64 %.sroa.05.0, ptr %i.ah, align 8
  %i.bm = icmp eq i64 %..i, 1
  %i.bn = icmp eq i64 %..i83, 1
  %or.cond = and i1 %i.bm, %i.bn
  br i1 %or.cond, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #28
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 494
  %i.bp = load i8, ptr %i.bo, align 2, !noundef !5 ; 2 uses
  %i.bq = zext i8 %i.bp to i64                    ; 2 uses
  %i.br = icmp ult i8 %i.bp, 4
  br i1 %i.br, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.j
  store i8 1, ptr %i.ai, align 8
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw [260 x i8], ptr %i.aj, i64 %i.bq ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !range !9, !noundef !5
  %i.bu = trunc nuw i32 %i.bt to i1
  br i1 %i.bu, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.l
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bq, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #28
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bw = icmp eq i64 %..i, 0
  br i1 %i.bw, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !94
  store ptr %i.bx, ptr %i.a, align 8, !noalias !94
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtCsaXAyoiiLu3Y_9zune_jpeg10componentsNtB5_11ComponentIDNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !94
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.by, ptr noundef nonnull @25, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !94
  %.sroa.617.0.copyload = load ptr, ptr %i.by, align 8
  store i8 5, ptr %0, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.445.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.c, i64 7, i1 false)
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.617.0.copyload, ptr %.sroa.546.0..sroa_idx, align 8
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.647.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  br label %bb.at

bb.r:                                             ; preds = %bb.p
  %i.bz = icmp eq i64 %..i83, 0
  br i1 %i.bz, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #28
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ca = mul i64 %i.aq, %i.ak
  %i.cb = add i64 %..i, -1                        ; 2 uses
  %i.cc = add i64 %i.cb, %i.ca
  %i.cd = mul i64 %i.aq, %i.al
  %i.ce = add i64 %i.cb, %i.cd
  %i.cf = udiv i64 %i.ce, %..i
  %i.cg = udiv i64 %i.cc, %..i83
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 456
  store i64 %i.cf, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 464
  %i.cj = shl i64 %i.aq, 3
  %i.ck = mul i64 %i.cj, %.sroa.04.0
  store i64 %i.ck, ptr %i.ci, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 472
  store i64 %i.cg, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.cm, ptr noundef nonnull align 4 dereferenceable(256) %i.bv, i64 256, i1 false)
  %i.cn = shl nuw nsw i64 %.sroa.04.0, 3
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 440 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !noundef !5
  %i.cq = mul i64 %i.cn, %i.cp
  store i64 %i.cq, ptr %i.co, align 8
  %i.cr = icmp eq ptr %i.ao, %i.aa
  br i1 %i.cr, label %._crit_edge, label %bb.e

bb.u:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #28
  unreachable

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEs_0ECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %i.az, i64 160
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !5
  %i.cu = icmp eq i64 %i.ct, 2
  br i1 %i.cu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEs_0ECsa5QsYiPB8Gl_5image.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.az, i64 152
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !5
  %i.cx = icmp ne i64 %i.cw, 2
  %or.cond104 = or i1 %i.cx, %i.aw
  br i1 %or.cond104, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEs_0ECsa5QsYiPB8Gl_5image.exit.thread, label %.lr.ph103.preheader

bb.w:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEs_0ECsa5QsYiPB8Gl_5image.exit
  br i1 %i.aw, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEs_0ECsa5QsYiPB8Gl_5image.exit.thread, label %.lr.ph103.preheader

.lr.ph103.preheader:                              ; preds = %bb.w, %bb.v
  br label %.lr.ph103
end_hunk_0
begin_hunk_1_@_RINvNtCsaXAyoiiLu3Y_9zune_jpeg4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a

bb.x:                                             ; preds = %bb.z, %bb.aa, %.lr.ph103
  %i.db = icmp eq ptr %i.cy, %i.ax
  br i1 %i.db, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEs_0ECsa5QsYiPB8Gl_5image.exit.thread, label %.lr.ph103

bb.y:                                             ; preds = %.lr.ph103
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.028.0101, i64 160
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !5
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.028.0101, i64 152
  %i.dg = load i64, ptr %i.df, align 8, !noundef !5
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.x, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.028.0101, i64 480
  store i64 2, ptr %i.di, align 8
  br label %bb.x

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEs_0ECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.f, %bb.x, %bb.w, %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 29421
  %i.dk = load i8, ptr %i.dj, align 1, !range !10, !noundef !5
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEs_0ECsa5QsYiPB8Gl_5image.exit.thread
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 1392 ; 3 uses
  %i.dn = load i32, ptr %i.dm, align 8, !range !7, !noundef !5 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 1396 ; 3 uses
  switch i32 %i.dn, label %default.unreachable126 [
    i32 0, label %bb.ah
    i32 1, label %bb.ad
    i32 2, label %bb.ah
    i32 3, label %bb.ae
    i32 4, label %bb.af
    i32 5, label %bb.ad
    i32 6, label %bb.ad
    i32 7, label %bb.ah
    i32 8, label %bb.ad
    i32 9, label %.thread
    i32 10, label %bb.ad
    i32 11, label %bb.ah
    i32 12, label %bb.ah
    i32 13, label %bb.ag
  ]

bb.ac:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEs_0ECsa5QsYiPB8Gl_5image.exit.thread
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 29417
  %i.dq = load i8, ptr %i.dp, align 1, !range !10, !noundef !5
  %i.dr = trunc nuw i8 %i.dq to i1
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 1472
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 15376
  tail call void @_RNvNtCsaXAyoiiLu3Y_9zune_jpeg4misc25fill_default_mjpeg_tables(i1 noundef zeroext %i.dr, ptr noalias nofree noundef nonnull align 4 %i.ds, i64 noundef 4, ptr noalias nofree noundef nonnull align 4 %i.dt, i64 noundef 4)
  br label %bb.ab

default.unreachable126:                           ; preds = %bb.al, %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  br label %bb.ah

bb.af:                                            ; preds = %bb.ab
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ab
  %i.du = load i32, ptr %i.do, align 4, !range !11, !noundef !5
  %i.dv = zext i32 %i.du to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.sroa.031.0 = phi i64 [ 1, %bb.ae ], [ 2, %bb.af ], [ 3, %bb.ab ], [ 4, %bb.ad ], [ %i.dv, %bb.ag ], [ 3, %bb.ab ], [ 3, %bb.ab ], [ 3, %bb.ab ], [ 3, %bb.ab ]
  %i.dw = load i64, ptr %i.m, align 8, !noundef !5 ; 5 uses
  %i.dx = icmp ult i64 %i.dw, 18595508138820113
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp samesign ugt i64 %.sroa.031.0, %i.dw
  br i1 %i.dy, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.dz = icmp eq i32 %i.dn, 5
  br i1 %i.dz, label %bb.ak, label %bb.aj

.thread:                                          ; preds = %bb.ab, %bb.ah, %bb.ak, %bb.am, %bb.an
  store i8 -1, ptr %0, align 8
  br label %bb.at

bb.aj:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 1448
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 1450
  %i.ec = load i8, ptr %i.eb, align 2, !range !10, !noundef !5
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 1449
  %i.ee = load i8, ptr %i.ed, align 1, !range !10, !noundef !5
  %i.ef = or i8 %i.ee, %i.ec
  %i.eg = load i8, ptr %i.ea, align 8, !range !10, !noundef !5
  %i.eh = or i8 %i.ef, %i.eg
  %.not79 = icmp eq i8 %i.eh, 0
  br i1 %.not79, label %bb.am, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  store i32 2, ptr %i.dm, align 8
  br label %.thread

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  switch i32 %i.dn, label %default.unreachable126 [
    i32 0, label %.split
    i32 1, label %bb.ao
    i32 2, label %.split
    i32 3, label %bb.ap
    i32 4, label %bb.aq
    i32 5, label %bb.ao
    i32 6, label %bb.ao
    i32 7, label %.split
    i32 8, label %bb.ao
    i32 9, label %bb.ar
    i32 10, label %bb.ao
    i32 11, label %.split
    i32 12, label %.split
    i32 13, label %bb.as
  ]

bb.am:                                            ; preds = %bb.aj
  %.not80 = icmp eq i64 %i.dw, 0
  br i1 %.not80, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ei = trunc nuw i64 %i.dw to i32
  store i32 13, ptr %i.dm, align 8
  store i32 %i.ei, ptr %i.do, align 4
  br label %.thread

bb.ao:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al, %bb.al
  br label %.split

bb.ap:                                            ; preds = %bb.al
  br label %.split

bb.aq:                                            ; preds = %bb.al
  br label %.split

bb.ar:                                            ; preds = %bb.al
  br label %.split

bb.as:                                            ; preds = %bb.al
  %i.ej = load i32, ptr %i.do, align 4, !range !11, !noundef !5
  %i.ek = zext i32 %i.ej to i64
  br label %.split

.split:                                           ; preds = %bb.al, %bb.al, %bb.al, %bb.al, %bb.al, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.sink = phi i64 [ %i.ek, %bb.as ], [ 0, %bb.ar ], [ 2, %bb.aq ], [ 1, %bb.ap ], [ 4, %bb.ao ], [ 3, %bb.al ], [ 3, %bb.al ], [ 3, %bb.al ], [ 3, %bb.al ], [ 3, %bb.al ]
  store i64 %.sink, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.dw, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.462.0..sroa_idx, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.el, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.466.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @9, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.435)
  %.sroa.435.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.435, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.435.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.435.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.435, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.435)
  br label %bb.at

bb.at:                                            ; preds = %bb.q, %.split, %.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaXAyoiiLu3Y_9zune_jpeg4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(29424) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.435 = alloca [31 x i8], align 1          ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.j = load i16, ptr %i.i, align 8, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 210
  %i.l = load i16, ptr %i.k, align 2, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 5 uses
  %i.o = icmp ult i64 %i.n, 18595508138820113
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.n, 3
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1384 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !range !7, !noundef !5
  %i.s = icmp eq i32 %i.r, 6
  br i1 %i.s, label %bb.d, label %.thread127

.thread127:                                       ; preds = %bb.b, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.idx128 = mul nuw nsw i64 %i.n, 496
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx128
  br label %.lr.ph

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.idx = mul nuw nsw i64 %i.n, 496
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx ; 2 uses
  %i.z = icmp eq i64 %i.n, 0
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread127, %bb.c
  %i.aa = phi ptr [ %i.v, %.thread127 ], [ %i.y, %bb.c ] ; 2 uses
  %i.ab = phi ptr [ %i.u, %.thread127 ], [ %i.x, %bb.c ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 29304 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 29312 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 29320
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 29328
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 29336
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 29344
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 29408
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ak = zext i16 %i.l to i64                    ; 3 uses
  %i.al = zext i16 %i.j to i64                    ; 3 uses
  %.pre = load i64, ptr %i.ac, align 8
  %.pre118 = load i64, ptr %i.ad, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %i.q, align 8
  br label %.thread127

bb.e:                                             ; preds = %.lr.ph, %bb.t
  %i.am = phi i64 [ %.pre118, %.lr.ph ], [ %..i83, %bb.t ]
  %i.an = phi i64 [ %.pre, %.lr.ph ], [ %..i, %bb.t ]
  %.sroa.0.0100 = phi ptr [ %i.ab, %.lr.ph ], [ %i.ao, %bb.t ] ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 496 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 160
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !5 ; 4 uses
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.aq, i64 %i.an) ; 7 uses
  store i64 %..i, ptr %i.ac, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 152
  %i.as = load i64, ptr %i.ar, align 8, !noundef !5
  %..i83 = tail call noundef i64 @llvm.umax.i64(i64 %i.as, i64 %i.am) ; 6 uses
  store i64 %..i83, ptr %i.ad, align 8
  %i.at = shl i64 %..i, 3                         ; 4 uses
  store i64 %i.at, ptr %i.ae, align 8
  %i.au = shl i64 %..i83, 3                       ; 4 uses
  store i64 %i.au, ptr %i.af, align 8
  %i.av = icmp eq i64 %i.at, 0
  br i1 %i.av, label %bb.i, label %bb.h

._crit_edge:                                      ; preds = %bb.t, %bb.c
  %i.aw = phi i1 [ true, %bb.c ], [ false, %bb.t ] ; 2 uses
  %i.ax = phi ptr [ %i.y, %bb.c ], [ %i.aa, %bb.t ] ; 2 uses
  %i.ay = phi ptr [ %i.x, %bb.c ], [ %i.ab, %bb.t ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %._crit_edge
  %i.az = phi ptr [ %i.bb, %bb.g ], [ %i.ay, %._crit_edge ] ; 5 uses
  %i.ba = icmp eq ptr %i.az, %i.ax
  br i1 %i.ba, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEEs_0ECsa5QsYiPB8Gl_5image.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 496
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 493
  %i.bd = load i8, ptr %i.bc, align 1, !range !8, !noalias !100, !noundef !5
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEEs_0ECsa5QsYiPB8Gl_5image.exit, label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.bf = udiv i64 %i.al, %i.at
  %i.bg = urem i64 %i.al, %i.at
  %.not = icmp ne i64 %i.bg, 0
  %i.bh = zext i1 %.not to i64
  %.sroa.04.0 = add nuw nsw i64 %i.bf, %i.bh      ; 3 uses
  store i64 %.sroa.04.0, ptr %i.ag, align 8
  %i.bi = icmp eq i64 %i.au, 0
  br i1 %i.bi, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bj = udiv i64 %i.ak, %i.au
  %i.bk = urem i64 %i.ak, %i.au
  %.not76 = icmp ne i64 %i.bk, 0
  %i.bl = zext i1 %.not76 to i64
  %.sroa.05.0 = add nuw nsw i64 %i.bj, %i.bl
  store i64 %.sroa.05.0, ptr %i.ah, align 8
  %i.bm = icmp eq i64 %..i, 1
  %i.bn = icmp eq i64 %..i83, 1
  %or.cond = and i1 %i.bm, %i.bn
  br i1 %or.cond, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #28
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 494
  %i.bp = load i8, ptr %i.bo, align 2, !noundef !5 ; 2 uses
  %i.bq = zext i8 %i.bp to i64                    ; 2 uses
  %i.br = icmp ult i8 %i.bp, 4
  br i1 %i.br, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.j
  store i8 1, ptr %i.ai, align 8
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw [260 x i8], ptr %i.aj, i64 %i.bq ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !range !9, !noundef !5
  %i.bu = trunc nuw i32 %i.bt to i1
  br i1 %i.bu, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.l
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bq, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #28
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bw = icmp eq i64 %..i, 0
  br i1 %i.bw, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101
  store ptr %i.bx, ptr %i.a, align 8, !noalias !101
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtCsaXAyoiiLu3Y_9zune_jpeg10componentsNtB5_11ComponentIDNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !101
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.by, ptr noundef nonnull @25, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101
  %.sroa.617.0.copyload = load ptr, ptr %i.by, align 8
  store i8 5, ptr %0, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.445.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.c, i64 7, i1 false)
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.617.0.copyload, ptr %.sroa.546.0..sroa_idx, align 8
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.647.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  br label %bb.at

bb.r:                                             ; preds = %bb.p
  %i.bz = icmp eq i64 %..i83, 0
  br i1 %i.bz, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #28
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ca = mul i64 %i.aq, %i.ak
  %i.cb = add i64 %..i, -1                        ; 2 uses
  %i.cc = add i64 %i.cb, %i.ca
  %i.cd = mul i64 %i.aq, %i.al
  %i.ce = add i64 %i.cb, %i.cd
  %i.cf = udiv i64 %i.ce, %..i
  %i.cg = udiv i64 %i.cc, %..i83
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 456
  store i64 %i.cf, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 464
  %i.cj = shl i64 %i.aq, 3
  %i.ck = mul i64 %i.cj, %.sroa.04.0
  store i64 %i.ck, ptr %i.ci, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 472
  store i64 %i.cg, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.cm, ptr noundef nonnull align 4 dereferenceable(256) %i.bv, i64 256, i1 false)
  %i.cn = shl nuw nsw i64 %.sroa.04.0, 3
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0100, i64 440 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !noundef !5
  %i.cq = mul i64 %i.cn, %i.cp
  store i64 %i.cq, ptr %i.co, align 8
  %i.cr = icmp eq ptr %i.ao, %i.aa
  br i1 %i.cr, label %._crit_edge, label %bb.e

bb.u:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #28
  unreachable

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEEs_0ECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %i.az, i64 160
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !5
  %i.cu = icmp eq i64 %i.ct, 2
  br i1 %i.cu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEEs_0ECsa5QsYiPB8Gl_5image.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.az, i64 152
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !5
  %i.cx = icmp ne i64 %i.cw, 2
  %or.cond104 = or i1 %i.cx, %i.aw
  br i1 %or.cond104, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEEs_0ECsa5QsYiPB8Gl_5image.exit.thread, label %.lr.ph103.preheader

bb.w:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEEs_0ECsa5QsYiPB8Gl_5image.exit
  br i1 %i.aw, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEEs_0ECsa5QsYiPB8Gl_5image.exit.thread, label %.lr.ph103.preheader

.lr.ph103.preheader:                              ; preds = %bb.w, %bb.v
  br label %.lr.ph103
end_hunk_1
