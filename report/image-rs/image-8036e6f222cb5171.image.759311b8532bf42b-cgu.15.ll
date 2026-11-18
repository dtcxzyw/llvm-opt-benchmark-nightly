Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.15?download=true
inline.NumInlined: 862
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RINvMNtCsj6eKBz9Db1c_4core3stre12trim_matchescECsa5QsYiPB8Gl_5image:_RNvXs2_NtNtCsj6eKBz9Db1c_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
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

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %bb.x
  %.sroa.028.0101 = phi ptr [ %i.cy, %bb.x ], [ %i.ay, %.lr.ph103.preheader ] ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.028.0101, i64 496 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.028.0101, i64 493
  %i.da = load i8, ptr %i.cz, align 1, !range !8, !noundef !5
  %.not78 = icmp eq i8 %i.da, 0
  br i1 %.not78, label %bb.x, label %bb.y

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

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %bb.x
  %.sroa.028.0101 = phi ptr [ %i.cy, %bb.x ], [ %i.ay, %.lr.ph103.preheader ] ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.028.0101, i64 496 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.028.0101, i64 493
  %i.da = load i8, ptr %i.cz, align 1, !range !8, !noundef !5
  %.not78 = icmp eq i8 %i.da, 0
  br i1 %.not78, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.z, %bb.aa, %.lr.ph103
  %i.db = icmp eq ptr %i.cy, %i.ax
  br i1 %i.db, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEEs_0ECsa5QsYiPB8Gl_5image.exit.thread, label %.lr.ph103

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

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEEs_0ECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.f, %bb.x, %bb.w, %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 29413
  %i.dk = load i8, ptr %i.dj, align 1, !range !10, !noundef !5
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEEs_0ECsa5QsYiPB8Gl_5image.exit.thread
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 1384 ; 3 uses
  %i.dn = load i32, ptr %i.dm, align 8, !range !7, !noundef !5 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 1388 ; 3 uses
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

bb.ac:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_4misc22setup_component_paramsINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEEs_0ECsa5QsYiPB8Gl_5image.exit.thread
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 29409
  %i.dq = load i8, ptr %i.dp, align 1, !range !10, !noundef !5
  %i.dr = trunc nuw i8 %i.dq to i1
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 1464
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 15368
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
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 1440
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 1442
  %i.ec = load i8, ptr %i.eb, align 2, !range !10, !noundef !5
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 1441
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
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECsa5QsYiPB8Gl_5image(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsa5QsYiPB8Gl_5image.exit, label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !13, !invariant.load !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsa5QsYiPB8Gl_5image.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !14, !invariant.load !5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #30
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsa5QsYiPB8Gl_5image.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !13, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !14, !invariant.load !5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #30
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit4.i

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc6borrow3CowShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !5
  %switch = icmp ugt i64 %i.a, -3
  br i1 %switch, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CowShEECsa5QsYiPB8Gl_5image.exit, label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CowShEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read22default_read_buf_exactINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB11_6cursor6CursorRShEINtBZ_4TakeIB22_QB1A_EEEECsa5QsYiPB8Gl_5image:bb.a

bb.j:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image(ptr nonnull %i.h) #31
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4util24uninlined_slow_read_byteINtNtNtB4_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1G_6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !307
  store i8 0, ptr %i.b, align 1, !noalias !307
  %i.c = call { i64, ptr } @_RNvXs4_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1c_6cursor6CursorRShEEENtNtB9_4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef nonnull %i.b, i64 noundef 1), !noalias !306 ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 2 uses
  %i.f = trunc nuw i64 %i.d to i1
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.i
  %i.h = phi ptr [ %i.e, %.lr.ph.i ], [ %i.ai, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i ] ; 8 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.j = and i64 %i.i, 3
  switch i64 %i.j, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %.split13.i
    i64 0, label %.split14.i
    i64 1, label %.split.i
  ], !prof !16

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i unwind label %bb.f, !noalias !306

.noexc.i:                                         ; preds = %bb.c
  %i.l = lshr i64 %i.i, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !306, !nonnull !5, !noundef !5
  %i.p = invoke noundef zeroext i1 %i.o(i32 noundef %i.m)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i unwind label %bb.f, !noalias !306, !inline_history !0

.split13.i:                                       ; preds = %bb.b
  %i.q = lshr i64 %i.i, 32
  %i.r = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.q to i8
  %spec.select.i.i.i.i = select i1 %i.r, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.s = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.t, label %bb.h, label %bb.g

.split14.i:                                       ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.v = load i8, ptr %i.u, align 8, !range !23, !noalias !306, !noundef !5
  %i.w = icmp eq i8 %i.v, 35
  br i1 %i.w, label %.thread.i, label %bb.g

.split.i:                                         ; preds = %bb.b
  %i.x = getelementptr i8, ptr %i.h, i64 31
  %i.y = load i8, ptr %i.x, align 8, !range !23, !noalias !306, !noundef !5
  %i.z = icmp eq i8 %i.y, 35
  br i1 %i.z, label %bb.i, label %bb.g

._crit_edge.i:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i, %bb.a
  %.lcssa.i = phi ptr [ %i.e, %bb.a ], [ %i.ai, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i ]
  %i.aa = icmp eq ptr %.lcssa.i, null
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  store i8 2, ptr %0, align 8, !alias.scope !306
  br label %_RINvNtNtCs4wP2HXfJTCR_5alloc2io4util22inlined_slow_read_byteINtNtNtB4_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1E_6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %._crit_edge.i
  %i.ab = load i8, ptr %i.b, align 1, !noalias !307, !noundef !5
  store i8 0, ptr %0, align 8, !alias.scope !306
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !306
  br label %_RINvNtNtCs4wP2HXfJTCR_5alloc2io4util22inlined_slow_read_byteINtNtNtB4_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1E_6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit

bb.f:                                             ; preds = %.noexc.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 1, ptr nonnull %i.h) #31
          to label %bb.k unwind label %bb.j, !noalias !306

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %.noexc.i
  br i1 %i.p, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split.i, %.split14.i, %.split13.i
  store i8 1, ptr %0, align 8, !alias.scope !306
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !306
  br label %_RINvNtNtCs4wP2HXfJTCR_5alloc2io4util22inlined_slow_read_byteINtNtNtB4_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1E_6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit

.thread.i:                                        ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split14.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !307
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i

bb.h:                                             ; preds = %.split13.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !307
  %i.ad = and i64 %i.i, 1095216660480
  %i.ae = icmp ne i64 %i.ad, 1095216660480
  call void @llvm.assume(i1 %i.r)
  call void @llvm.assume(i1 %i.ae)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i

bb.i:                                             ; preds = %.split.i
  %i.af = getelementptr i8, ptr %i.h, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !307
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  store ptr %i.af, ptr %i.g, align 8, !alias.scope !308, !noalias !307
  store i8 3, ptr %i.a, align 8, !alias.scope !308, !noalias !307
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g), !noalias !306
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.i, %bb.h, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !307
  %i.ag = call { i64, ptr } @_RNvXs4_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1c_6cursor6CursorRShEEENtNtB9_4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef nonnull %i.b, i64 noundef 1), !noalias !306 ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0
  %i.ai = extractvalue { i64, ptr } %i.ag, 1      ; 2 uses
  %i.aj = trunc nuw i64 %i.ah to i1
  br i1 %i.aj, label %bb.b, label %._crit_edge.i

bb.j:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !306
  unreachable

bb.k:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ac

_RINvNtNtCs4wP2HXfJTCR_5alloc2io4util22inlined_slow_read_byteINtNtNtB4_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1E_6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d, %bb.e, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !307
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder12read_line_u8INtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 16, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !range !20, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !24, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.j = icmp samesign ugt i64 %i.f, 15
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.f, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.l, align 8
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !319, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load i64, ptr %i.m, align 8, !alias.scope !319, !noundef !5 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.promoted = load i64, ptr %i.n, align 8, !alias.scope !320 ; 4 uses
  %i.o = icmp ugt i64 %.val1.i.i, %.promoted
  br i1 %i.o, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #31
          to label %common.resume unwind label %bb.l

.lr.ph:                                           ; preds = %bb.c, %bb.k
  %i.q = phi i64 [ %i.ae, %bb.k ], [ 0, %bb.c ]   ; 3 uses
  %..i.i.i.pn = phi i64 [ %..i.i.i, %bb.k ], [ %.promoted, %bb.c ]
  %i.r = phi i64 [ %i.u, %bb.k ], [ %.promoted, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %..i.i.i.pn
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.t = load i8, ptr %i.s, align 1, !noalias !321, !noundef !5 ; 2 uses
  %i.u = add nuw i64 %i.r, 1                      ; 5 uses
  store i64 %i.u, ptr %i.n, align 8, !alias.scope !320
  %i.v = icmp eq i8 %i.t, 10
  br i1 %i.v, label %.loopexit.thread.a, label %bb.e

.loopexit:                                        ; preds = %bb.k, %bb.c
  %i.w = phi i64 [ 0, %bb.c ], [ %i.ae, %bb.k ]   ; 2 uses
  %.lcssa14 = phi i64 [ %.promoted, %bb.c ], [ %i.u, %bb.k ]
  store i64 %.lcssa14, ptr %i.n, align 8, !alias.scope !320
  %i.x = icmp sgt i64 %i.w, -1
  call void @llvm.assume(i1 %i.x)
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %bb.g, label %.loopexit.thread.a

bb.e:                                             ; preds = %.lr.ph
  %i.y = load i64, ptr %i.b, align 8, !range !13, !alias.scope !322, !noundef !5
  %i.z = icmp eq i64 %i.q, %i.y
  br i1 %i.z, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #33
          to label %bb.k unwind label %bb.d

.loopexit.thread.a:                               ; preds = %.lr.ph, %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.j

bb.g:                                             ; preds = %.loopexit
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit, %.loopexit.thread.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.k:                                             ; preds = %bb.e, %bb.f
  %i.ac = load ptr, ptr %i.k, align 8, !alias.scope !322, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.q
  store i8 %i.t, ptr %i.ad, align 1
  %i.ae = add i64 %i.q, 1                         ; 3 uses
  store i64 %i.ae, ptr %i.l, align 8, !alias.scope !322
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i, i64 %i.u)
  %i.af = icmp ugt i64 %.val1.i.i, %i.u
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.l:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9quicksortyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(8) %2, i32 noundef %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 33
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %.lr.ph._crit_edge, label %.lr.ph133

.lr.ph:                                           ; preds = %.backedge
  %i.c = icmp eq i32 %i.d, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph133

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort18small_sort_networkyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull %4)
  br label %bb.c

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.084.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.083.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort8heapsortyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %.sroa.0.084.lcssa, i64 noundef %.sroa.15.083.lcssa, ptr noalias nofree noundef nonnull %4) #33
  br label %bb.c

.lr.ph133:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.081132 = phi i32 [ %i.d, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.082131 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.083130 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.sroa.0.084129 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 29 uses
  %i.d = add i32 %.sroa.026.081132, -1            ; 3 uses
  %i.e = lshr i64 %.sroa.15.083130, 3             ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.084129, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.e, 56
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.084129, i64 %.idx2.i ; 3 uses
  %i.h = icmp samesign ult i64 %.sroa.15.083130, 64
  br i1 %i.h, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3yNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph133
  %i.i = tail call noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image(ptr noundef nonnull readonly align 8 %.sroa.0.084129, ptr noundef nonnull readonly %i.f, ptr noundef nonnull readonly %i.g, i64 noundef %i.e, ptr noalias nofree noundef nonnull %4)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3yNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph133
  %.val6.i = load i64, ptr %.sroa.0.084129, align 8, !alias.scope !373, !noundef !5 ; 2 uses
  %.val7.i = load i64, ptr %i.f, align 8, !alias.scope !374, !noundef !5 ; 2 uses
  %i.j = icmp ult i64 %.val6.i, %.val7.i          ; 2 uses
  %.val5.i = load i64, ptr %i.g, align 8, !alias.scope !374, !noundef !5 ; 2 uses
  %i.k = icmp ult i64 %.val6.i, %.val5.i
  %i.l = xor i1 %i.j, %i.k
  %i.m = icmp ult i64 %.val7.i, %.val5.i
  %i.n = xor i1 %i.j, %i.m
  %..i.i = select i1 %i.n, ptr %i.g, ptr %i.f
  %.sroa.0.0.i.i = select i1 %i.l, ptr %.sroa.0.084129, ptr %..i.i
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3yNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3yNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit.i ], [ %i.i, %bb.b ]
  %i.o = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.p = ptrtoint ptr %.sroa.0.084129 to i64
  %i.q = sub nuw i64 %i.o, %i.p                   ; 4 uses
  %.sroa.0.0.i = lshr exact i64 %i.q, 3
  %i.r = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.083130
  tail call void @llvm.assume(i1 %i.r)
  %.not = icmp eq ptr %.sroa.023.082131, null
  br i1 %.not, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit._crit_edge, label %bb.f

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit._crit_edge: ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit
  %.sroa.0.0.copyload.i.i.i.pre = load i64, ptr %.sroa.0.084129, align 8, !alias.scope !375
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.084129, i64 %i.q
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !375
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.d:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit._crit_edge, %bb.f
  %i.s = phi i64 [ %.pre, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit._crit_edge ], [ %.val, %bb.f ]
  %.sroa.0.0.copyload.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.pre, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit._crit_edge ], [ %.sroa.0.0.copyload.i.i.i.pre97, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.084129, i64 %i.q
  store i64 %i.s, ptr %.sroa.0.084129, align 8, !alias.scope !375
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.t, align 8, !alias.scope !375
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.084129, i64 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !378, !noundef !5 ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %.sroa.0.084129, i64 %.sroa.15.083130 ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -8       ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.084129, i64 16 ; 3 uses
  %i.y = icmp ult ptr %.sroa.13.030.i.i, %i.x
  %.val1.i.pre.i.i = load i64, ptr %.sroa.0.084129, align 8, !alias.scope !379, !noalias !5 ; 4 uses
  br i1 %i.y, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.23.0.lcssa.i.i = phi i64 [ 0, %bb.d ], [ %i.aq, %.lr.ph.i.i ] ; 2 uses
  %.sroa.015.0.lcssa.i.i = phi ptr [ %i.u, %bb.d ], [ %i.al, %.lr.ph.i.i ] ; 2 uses
  %.sroa.13.0.lcssa.i.i = phi ptr [ %.sroa.13.030.i.i, %bb.d ], [ %.sroa.13.0.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.z = icmp eq ptr %.sroa.13.0.lcssa.i.i, %i.w
  br i1 %i.z, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit.i, label %.cont.i.i

.cont.i.i:                                        ; preds = %.preheader.i.i, %.cont.i.i
  %.sroa.015.1.i7.i = phi ptr [ %.sroa.13.1.i6.i, %.cont.i.i ], [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i ]
  %.sroa.13.1.i6.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.cont.i.i ], [ %.sroa.13.0.lcssa.i.i, %.preheader.i.i ] ; 4 uses
  %.sroa.23.1.i5.i = phi i64 [ %i.ae, %.cont.i.i ], [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.val.i.else.val.i.i = load i64, ptr %.sroa.13.1.i6.i, align 8, !alias.scope !380, !noalias !381, !noundef !5 ; 2 uses
  %i.aa = icmp ult i64 %.val.i.else.val.i.i, %.val1.i.pre.i.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.23.1.i5.i ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !378, !noalias !381
  store i64 %i.ac, ptr %.sroa.015.1.i7.i, align 8, !alias.scope !378, !noalias !381
  store i64 %.val.i.else.val.i.i, ptr %i.ab, align 8, !alias.scope !378, !noalias !381
  %i.ad = zext i1 %i.aa to i64
  %i.ae = add i64 %.sroa.23.1.i5.i, %i.ad         ; 2 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i, i64 8 ; 2 uses
  %i.af = icmp eq ptr %.sroa.13.1.sroa.gep.i.i, %i.w
  br i1 %i.af, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit.i, label %.cont.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i ], [ %.sroa.13.030.i.i, %bb.d ] ; 2 uses
  %.sroa.015.032.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %i.u, %bb.d ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.aq, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %.val.i11.i.i = load i64, ptr %.sroa.13.033.i.i, align 8, !alias.scope !382, !noalias !383, !noundef !5 ; 2 uses
  %i.ag = icmp ult i64 %.val.i11.i.i, %.val1.i.pre.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.23.031.i.i ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !378, !noalias !383
  store i64 %i.ai, ptr %.sroa.015.032.i.i, align 8, !alias.scope !378, !noalias !383
  store i64 %.val.i11.i.i, ptr %i.ah, align 8, !alias.scope !378, !noalias !383
  %i.aj = zext i1 %i.ag to i64
  %i.ak = add i64 %.sroa.23.031.i.i, %i.aj        ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 16 ; 3 uses
  %.val.i13.i.i = load i64, ptr %i.al, align 8, !alias.scope !384, !noalias !385, !noundef !5 ; 2 uses
  %i.am = icmp ult i64 %.val.i13.i.i, %.val1.i.pre.i.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ak ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !378, !noalias !385
  store i64 %i.ao, ptr %.sroa.13.033.i.i, align 8, !alias.scope !378, !noalias !385
  store i64 %.val.i13.i.i, ptr %i.an, align 8, !alias.scope !378, !noalias !385
  %i.ap = zext i1 %i.am to i64
  %i.aq = add i64 %i.ak, %i.ap                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 24 ; 3 uses
  %i.ar = icmp ult ptr %.sroa.13.0.i.i, %i.x
  br i1 %i.ar, label %.lr.ph.i.i, label %.preheader.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.cont.i.i, %.preheader.i.i
  %.sroa.23.1.i.lcssa.i = phi i64 [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ], [ %i.ae, %.cont.i.i ] ; 2 uses
  %.sroa.015.1.i.lcssa.i = phi ptr [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i ], [ %.sroa.13.1.i6.i, %.cont.i.i ]
  %i.as = icmp ult i64 %i.v, %.val1.i.pre.i.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.23.1.i.lcssa.i ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !378, !noalias !381
  store i64 %i.au, ptr %.sroa.015.1.i.lcssa.i, align 8, !alias.scope !378, !noalias !381
  store i64 %i.v, ptr %i.at, align 8, !alias.scope !378, !noalias !381
  %i.av = zext i1 %i.as to i64
end_hunk_1
