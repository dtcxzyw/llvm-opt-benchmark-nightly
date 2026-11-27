Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.08?download=true
inline.NumInlined: 531
inline.NumDeleted: 320
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMNtCsf3Ta7LF998c_4core3stre16trim_end_matchescECsbzNSmZPCnTx_10tgrep_core:_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %i.ah = and i8 %i.i, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  br label %bb.d

_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.6.2.ph.i.i = phi ptr [ %.sroa.6.0.i.i, %bb.d ], [ %i.d, %bb.c ]
  %.sroa.4.1.i.ph.i.i = phi i32 [ %i.w, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.ak = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = ptrtoint ptr %.sroa.6.2.ph.i.i to i64
  %.reass.i = sub i64 %i.al, %i.a
  %.not.i = icmp eq i32 %.sroa.4.1.i.ph.i.i, %2
  br i1 %.not.i, label %bb.a, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsbzNSmZPCnTx_10tgrep_core.exit

_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a, %_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i
  %i.am = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.an = insertvalue { ptr, i64 } %i.am, i64 %.reass5.i, 1
  ret { ptr, i64 } %i.an
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbzNSmZPCnTx_10tgrep_core.exit.i.i
  %i.c = phi i64 [ %i.ar, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbzNSmZPCnTx_10tgrep_core.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %i.an, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbzNSmZPCnTx_10tgrep_core.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !82, !noundef !4 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit12.i.i.i.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !82, !noundef !4
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !82, !noundef !4
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !82, !noundef !4
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit12.i.i.i.i.i
  %i.an = phi ptr [ %i.u, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit14.i.i.i.i.i ], [ %i.ae, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit16.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit12.i.i.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ab, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit14.i.i.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit16.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit12.i.i.i.i.i ], [ %i.s, %bb.b ] ; 8 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.c, %i.e
  %i.ar = add i64 %i.aq, %i.ap
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbzNSmZPCnTx_10tgrep_core.exit.i.i
    i32 13, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbzNSmZPCnTx_10tgrep_core.exit.i.i
    i32 12, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbzNSmZPCnTx_10tgrep_core.exit.i.i
    i32 11, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbzNSmZPCnTx_10tgrep_core.exit.i.i
    i32 10, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbzNSmZPCnTx_10tgrep_core.exit.i.i
    i32 9, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbzNSmZPCnTx_10tgrep_core.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.as, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.at, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.au = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.av = zext i1 %i.au to i8
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aw = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.ax = zext i1 %i.aw to i8
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ay = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsf3Ta7LF998c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !83, !noundef !4
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bc = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsf3Ta7LF998c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !83, !noundef !4
  %i.bg = lshr i8 %i.bf, 1
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i

_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.ax, %bb.g ], [ %i.bb, %bb.h ], [ %i.av, %bb.f ], [ %i.bg, %bb.i ]
  %i.bh = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bh, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbzNSmZPCnTx_10tgrep_core.exit.i.i, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit

_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bi = icmp eq ptr %i.an, %i.a
  br i1 %i.bi, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph.i.i

_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbzNSmZPCnTx_10tgrep_core.exit.i.i, %bb.e, %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i, %bb.d, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %1, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbzNSmZPCnTx_10tgrep_core.exit.i.i ], [ %i.c, %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i ], [ %i.c, %bb.d ], [ %i.c, %bb.e ] ; 2 uses
  %i.bj = sub nuw i64 %1, %.sroa.0.0
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0
  %i.bl = insertvalue { ptr, i64 } poison, ptr %i.bk, 0
  %i.bm = insertvalue { ptr, i64 } %i.bl, i64 %i.bj, 1
  ret { ptr, i64 } %i.bm
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre18trim_start_matchesReECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsu_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.b = load i64, ptr %i.a, align 8, !range !109, !alias.scope !110, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !108 ; 21 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !108, !nonnull !4 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !108, !nonnull !4 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !108 ; 11 uses
  %i.m = add nsw i64 %i.l, -1                     ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !108 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %.promoted.i = load i64, ptr %i.c, align 8, !alias.scope !108 ; 2 uses
  %.promoted98.i = load i64, ptr %i.g, align 8, !alias.scope !108
  %.promoted99.i = load i64, ptr %i.n, align 8, !alias.scope !108 ; 30 uses
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %.split.us.i
    i64 1, label %.split.us115.i
    i64 2, label %.split.us125.i
  ]

.split.us.i:                                      ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.s = load i8, ptr %i.r, align 2, !range !5, !alias.scope !108
  %i.t = trunc nuw i8 %i.s to i1
  %.promoted156.i = load i8, ptr %i.q, align 8, !alias.scope !108 ; 4 uses
  br i1 %i.t, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.us.i
  %i.u = icmp eq i64 %.promoted99.i, 0            ; 3 uses
  %.not.i.i.us.i = icmp ult i64 %.promoted99.i, %i.e ; 3 uses
  %i.v = icmp eq i64 %.promoted99.i, %i.e
  %.fr.i = freeze i1 %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 %.promoted99.i ; 3 uses
  %i.x = add i64 %.promoted99.i, 1
  %i.y = icmp samesign ne i64 %i.x, %i.e          ; 2 uses
  %i.z = add i64 %.promoted99.i, 2
  %i.aa = icmp samesign ne i64 %i.z, %i.e         ; 2 uses
  %i.ab = add nuw nsw i64 %.promoted99.i, 3
  %i.ac = icmp samesign ne i64 %i.ab, %i.e        ; 2 uses
  br i1 %.fr.i, label %.lr.ph.split.us.split.i, label %.lr.ph.split.split.i.preheader

.lr.ph.split.split.i.preheader:                   ; preds = %.lr.ph.i
  %i.ad = trunc nuw i8 %.promoted156.i to i1
  br i1 %i.u, label %thread-pre-split.i.peel, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.split.i.preheader
  br i1 %.not.i.i.us.i, label %bb.c, label %.split105.us.i

bb.c:                                             ; preds = %bb.b
  %i.ae = load i8, ptr %i.w, align 1, !noalias !111, !noundef !4 ; 2 uses
  %i.af = icmp sgt i8 %i.ae, -65
  br i1 %i.af, label %bb.d, label %.split105.us.i

thread-pre-split.i.peel:                          ; preds = %.lr.ph.split.split.i.preheader
  %.pr.i.peel = load i8, ptr %i.w, align 1, !noalias !112
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i.peel, %bb.c
  %.pr.i = phi i8 [ %.pr.i.peel, %thread-pre-split.i.peel ], [ %i.ae, %bb.c ] ; 6 uses
  %i.ag = icmp sgt i8 %.pr.i, -1                  ; 2 uses
  br i1 %i.ag, label %bb.e, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit12.i.i.us.i.peel

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit12.i.i.us.i.peel: ; preds = %bb.d
  tail call void @llvm.assume(i1 %i.y)
  %i.ah = icmp samesign ugt i8 %.pr.i, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit14.i.i.us.i.peel, label %bb.e

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit14.i.i.us.i.peel: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit12.i.i.us.i.peel
  tail call void @llvm.assume(i1 %i.aa)
  %i.ai = icmp samesign ugt i8 %.pr.i, -17
  br i1 %i.ai, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit16.i.i.us.i.peel, label %bb.e

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit16.i.i.us.i.peel: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit14.i.i.us.i.peel
  tail call void @llvm.assume(i1 %i.ac)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit16.i.i.us.i.peel, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit14.i.i.us.i.peel, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit12.i.i.us.i.peel
  br i1 %i.ad, label %.lr.ph.split.split.i, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.i
  br i1 %i.u, label %.lr.ph.split.us.split.split.us.i, label %.lr.ph.split.us.split.split.i

.lr.ph.split.us.split.split.us.i:                 ; preds = %.lr.ph.split.us.split.i
  %i.aj = trunc nuw i8 %.promoted156.i to i1
  br i1 %i.aj, label %.split114.us.i.sink.split, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit

.lr.ph.split.us.split.split.i:                    ; preds = %.lr.ph.split.us.split.i
  br i1 %.not.i.i.us.i, label %.lr.ph.split.us.split.split.split.us.i, label %.lr.ph201.split.us.i

.lr.ph.split.us.split.split.split.us.i:           ; preds = %.lr.ph.split.us.split.split.i
  %i.ak = load i8, ptr %i.w, align 1, !alias.scope !113, !noalias !114, !noundef !4
  %i.al = icmp sgt i8 %i.ak, -65
  br i1 %i.al, label %.lr.ph206.split.us.i, label %.split105.us.i

.lr.ph206.split.us.i:                             ; preds = %.lr.ph.split.us.split.split.split.us.i
  %i.am = trunc nuw i8 %.promoted156.i to i1
  br i1 %i.am, label %.split114.us.i.sink.split, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit

.lr.ph201.split.us.i:                             ; preds = %.lr.ph.split.us.split.split.i
  %i.an = trunc nuw i8 %.promoted156.i to i1
  br i1 %i.an, label %.split114.us.i.sink.split, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit

.lr.ph.split.split.i:                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.ao = icmp sgt i8 %.pr.i, -65
  %or.cond = and i1 %.not.i.i.us.i, %i.ao
  %or.cond213 = select i1 %i.u, i1 true, i1 %or.cond
  br i1 %or.cond213, label %thread-pre-split.i, label %.split105.us.i

thread-pre-split.i:                               ; preds = %.lr.ph.split.split.i
  br i1 %i.ag, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit12.i.i.us.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit12.i.i.us.i: ; preds = %thread-pre-split.i
  tail call void @llvm.assume(i1 %i.y)
  %i.ap = icmp samesign ugt i8 %.pr.i, -33
  br i1 %i.ap, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit14.i.i.us.i, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit14.i.i.us.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit12.i.i.us.i
  tail call void @llvm.assume(i1 %i.aa)
  %i.aq = icmp samesign ugt i8 %.pr.i, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit16.i.i.us.i, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit16.i.i.us.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit14.i.i.us.i
  tail call void @llvm.assume(i1 %i.ac)
  br label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit

.split105.us.i:                                   ; preds = %.lr.ph.split.split.i, %bb.b, %bb.c, %.lr.ph.split.us.split.split.split.us.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.e, i64 noundef %.promoted99.i, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #22, !noalias !114
  unreachable

.split114.us.i.sink.split:                        ; preds = %.lr.ph201.split.us.i, %.lr.ph206.split.us.i, %.lr.ph.split.us.split.split.us.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  br label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit

.split.us115.i:                                   ; preds = %bb.a
  %.not41.i.us216.i = icmp ult i64 %.promoted99.i, %i.e
  br i1 %.not41.i.us216.i, label %.lr.ph217.i, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit

.lr.ph217.i:                                      ; preds = %.split.us115.i
  %i.ar = load i8, ptr %i.q, align 8, !alias.scope !110, !noundef !4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 %.promoted99.i
  %i.at = load i8, ptr %i.as, align 1, !noalias !116, !noundef !4
  %i.au = icmp eq i8 %i.at, %i.ar
  br i1 %i.au, label %.lr.ph.preheader, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph217.i
  %i.av = add nuw i64 %.promoted99.i, 1           ; 2 uses
  %exitcond.not.i261 = icmp eq i64 %i.av, %i.e
  br i1 %exitcond.not.i261, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.aw = phi i64 [ %i.ba, %.lr.ph ], [ %i.av, %.lr.ph.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !117, !noundef !4
  %i.az = icmp eq i8 %i.ay, %i.ar
  br i1 %i.az, label %.lr.ph, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit

.lr.ph:                                           ; preds = %.lr.ph262
  %i.ba = add nuw i64 %i.aw, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ba, %i.e
  br i1 %exitcond.not.i, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph262

.split.us125.i:                                   ; preds = %bb.a
  %i.bb = icmp eq i64 %.promoted.i, %i.e
  br i1 %i.bb, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph219.i

.lr.ph219.i:                                      ; preds = %.split.us125.i
  %i.bc = load i64, ptr %i.q, align 8, !alias.scope !108 ; 2 uses
  %i.bd = sub i64 %i.l, %i.bc
  %umax.i.us.i.us.i = tail call i64 @llvm.umax.i64(i64 %.promoted99.i, i64 range(i64 0, -9223372036854775808) %i.l) ; 2 uses
  %i.be = add i64 %.promoted99.i, -1              ; 2 uses
  %.first_iter.i.us.i = icmp ult i64 %i.be, %i.l
  %.first_iter.i.fr.us.i = freeze i1 %.first_iter.i.us.i
  %.not73.i.us128.i = icmp eq i64 %.promoted99.i, 0
  %invariant.op = sub i64 1, %.promoted99.i
  %exitcond.not.i.us.i.us.i252.not = icmp ult i64 %.promoted99.i, %i.l
  %exitcond.not.i.us.i.us.i.us255.not = icmp ult i64 %.promoted99.i, %i.l
  %.not73.i.us.us.i.us258 = icmp eq i64 %.promoted99.i, 0
  br label %bb.f

bb.f:                                             ; preds = %.split69.us.i.us.i, %.lr.ph219.i
  %.sink132.i.us.i49.lcssa51.us61 = phi i64 [ %.promoted.i, %.lr.ph219.i ], [ %i.bk, %.split69.us.i.us.i ] ; 22 uses
  %i.bf = phi i64 [ %.promoted98.i, %.lr.ph219.i ], [ %spec.select86, %.split69.us.i.us.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.bg = add i64 %.sink132.i.us.i49.lcssa51.us61, %i.m ; 4 uses
  %i.bh = icmp ult i64 %i.bg, %i.e
  br i1 %i.bh, label %.lr.ph.i.i.us.i, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit

.lr.ph.i.i.us.i:                                  ; preds = %bb.f
  %i.bi = icmp eq i64 %i.bf, -1
  %invariant.op.i.i.us.reass.reass.i.reass.reass.reass = add i64 %.sink132.i.us.i49.lcssa51.us61, %invariant.op ; 3 uses
  %i.bj = add i64 %.sink132.i.us.i49.lcssa51.us61, %i.bc ; 2 uses
  %i.bk = add i64 %.sink132.i.us.i49.lcssa51.us61, %i.l ; 5 uses
  br i1 %i.bi, label %.lr.ph.i.split.us.i.us.i.preheader, label %.lr.ph.i.split.i.us.i

.lr.ph.i.split.us.i.us.i.preheader:               ; preds = %.lr.ph.i.i.us.i
  br i1 %.first_iter.i.fr.us.i, label %.lr.ph.i.split.us.i.us.i.us, label %.lr.ph.i.split.us.i.us.i

.lr.ph.i.split.us.i.us.i.us:                      ; preds = %.lr.ph.i.split.us.i.us.i.preheader, %.loopexit.split.us.us.i.us
  %.sink132.i.us.i49.us = phi i64 [ %.sink132.i.us.i.us, %.loopexit.split.us.us.i.us ], [ %.sink132.i.us.i49.lcssa51.us61, %.lr.ph.i.split.us.i.us.i.preheader ]
  %i.bl = phi i64 [ %i.cg, %.loopexit.split.us.us.i.us ], [ %i.bg, %.lr.ph.i.split.us.i.us.i.preheader ]
  %.not.i46.us.i.us.i.us = icmp eq i64 %.sink132.i.us.i49.lcssa51.us61, %.sink132.i.us.i49.us
  br i1 %.not.i46.us.i.us.i.us, label %bb.g, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit

bb.g:                                             ; preds = %.lr.ph.i.split.us.i.us.i.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !118, !noalias !114, !noundef !4
  %i.bo = and i8 %i.bn, 63
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = and i64 %i.bq, %i.p
  %.not20.i.us.i.us.i.us = icmp eq i64 %i.br, 0
  br i1 %.not20.i.us.i.us.i.us, label %.loopexit.split.us.us.i.us, label %.preheader74.i.us.i.us.preheader

.preheader74.i.us.i.us.preheader:                 ; preds = %bb.g
  br i1 %exitcond.not.i.us.i.us.i.us255.not, label %.lr.ph257, label %.preheader.i.us.us.i.us.preheader

.preheader74.i.us.i.us:                           ; preds = %.lr.ph257
  %i.bs = add nuw i64 %.sroa.04.0.i.us.i.us.i.us256, 1 ; 2 uses
  %exitcond.not.i.us.i.us.i.us = icmp eq i64 %i.bs, %umax.i.us.i.us.i
  br i1 %exitcond.not.i.us.i.us.i.us, label %.preheader.i.us.us.i.us.preheader, label %.lr.ph257

.preheader.i.us.us.i.us.preheader:                ; preds = %.preheader74.i.us.i.us, %.preheader74.i.us.i.us.preheader
  br i1 %.not73.i.us.us.i.us258, label %.split69.us.i.us.i, label %.lr.ph260

.lr.ph257:                                        ; preds = %.preheader74.i.us.i.us.preheader, %.preheader74.i.us.i.us
  %.sroa.04.0.i.us.i.us.i.us256 = phi i64 [ %i.bs, %.preheader74.i.us.i.us ], [ %.promoted99.i, %.preheader74.i.us.i.us.preheader ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.04.0.i.us.i.us.i.us256
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !119, !noalias !114, !noundef !4
  %i.bv = add i64 %.sroa.04.0.i.us.i.us.i.us256, %.sink132.i.us.i49.lcssa51.us61 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.e
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !118, !noalias !114, !noundef !4
  %.not22.i.us.i.us.i.us = icmp eq i8 %i.bu, %i.by
  br i1 %.not22.i.us.i.us.i.us, label %.preheader74.i.us.i.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph257
  %.reass.i.us.i.us.i.us = add i64 %.sroa.04.0.i.us.i.us.i.us256, %invariant.op.i.i.us.reass.reass.i.reass.reass.reass
  br label %.loopexit.split.us.us.i.us

.preheader.i.us.us.i.us:                          ; preds = %.lr.ph260
  %.not73.i.us.us.i.us = icmp eq i64 %i.bz, 0
  br i1 %.not73.i.us.us.i.us, label %.split69.us.i.us.i, label %.lr.ph260

.lr.ph260:                                        ; preds = %.preheader.i.us.us.i.us.preheader, %.preheader.i.us.us.i.us
  %.sroa.2.0.i.us.i.us.us.i.us259 = phi i64 [ %i.bz, %.preheader.i.us.us.i.us ], [ %.promoted99.i, %.preheader.i.us.us.i.us.preheader ]
  %i.bz = add i64 %.sroa.2.0.i.us.i.us.us.i.us259, -1 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !119, !noalias !114, !noundef !4
  %i.cc = add i64 %i.bz, %.sink132.i.us.i49.lcssa51.us61 ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.e
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cc
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !118, !noalias !114, !noundef !4
  %.not21.i.us.i.us.us.i.us = icmp eq i8 %i.cb, %i.cf
  br i1 %.not21.i.us.i.us.us.i.us, label %.preheader.i.us.us.i.us, label %.loopexit.split.us.us.i.us

.loopexit.split.us.us.i.us:                       ; preds = %.lr.ph260, %bb.h, %bb.g
  %.sink132.i.us.i.us = phi i64 [ %i.bk, %bb.g ], [ %.reass.i.us.i.us.i.us, %bb.h ], [ %i.bj, %.lr.ph260 ] ; 2 uses
  %i.cg = add i64 %.sink132.i.us.i.us, %i.m       ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.e
  br i1 %i.ch, label %.lr.ph.i.split.us.i.us.i.us, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit

.lr.ph.i.split.i.us.i:                            ; preds = %.lr.ph.i.i.us.i, %.sink.split.i.i.us.i
  %.sink133.i.us.i41 = phi i64 [ %.sink133.i.us.i, %.sink.split.i.i.us.i ], [ %.sink132.i.us.i49.lcssa51.us61, %.lr.ph.i.i.us.i ]
  %i.ci = phi i64 [ %.sink55.i.i.us.i, %.sink.split.i.i.us.i ], [ %i.bf, %.lr.ph.i.i.us.i ] ; 3 uses
  %i.cj = phi i64 [ %i.di, %.sink.split.i.i.us.i ], [ %i.bg, %.lr.ph.i.i.us.i ]
  %.not.i46.i.us.i = icmp eq i64 %.sink132.i.us.i49.lcssa51.us61, %.sink133.i.us.i41
  br i1 %.not.i46.i.us.i, label %bb.i, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsbzNSmZPCnTx_10tgrep_core.exit

bb.i:                                             ; preds = %.lr.ph.i.split.i.us.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !118, !noalias !114, !noundef !4
end_hunk_0
