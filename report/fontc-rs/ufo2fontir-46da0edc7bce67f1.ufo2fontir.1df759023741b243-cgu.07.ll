Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/ufo2fontir-46da0edc7bce67f1.ufo2fontir.1df759023741b243-cgu.07?download=true
inline.NumInlined: 515
inline.NumDeleted: 153
begin_hunk_0_@_RINvMNtCsf3Ta7LF998c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs2zvA5OmMqFb_10ufo2fontir:bb.a
_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ]
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bg, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2zvA5OmMqFb_10ufo2fontir.exit.i.i, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit

_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2zvA5OmMqFb_10ufo2fontir.exit.i.i: ; preds = %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.e, %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i, %bb.d, %bb.a
  %.sroa.4.121 = phi ptr [ %0, %bb.a ], [ %.sroa.4.0, %bb.d ], [ %.sroa.4.0, %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i ], [ %.sroa.4.0, %bb.e ] ; 6 uses
  %.sroa.18.019 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.d ], [ %i.aq, %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i ], [ %i.aq, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  %i.bi = icmp eq ptr %.sroa.4.121, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit, %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !57, !noundef !6 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2zvA5OmMqFb_10ufo2fontir.exit17.i.i.i.i.i

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2zvA5OmMqFb_10ufo2fontir.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i4
  %i.bn = icmp ne ptr %.sroa.4.121, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !57, !noundef !6 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2zvA5OmMqFb_10ufo2fontir.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2zvA5OmMqFb_10ufo2fontir.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2zvA5OmMqFb_10ufo2fontir.exit17.i.i.i.i.i
  %i.bu = icmp ne ptr %.sroa.4.121, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !57, !noundef !6 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2zvA5OmMqFb_10ufo2fontir.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2zvA5OmMqFb_10ufo2fontir.exit17.i.i.i.i.i
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2zvA5OmMqFb_10ufo2fontir.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2zvA5OmMqFb_10ufo2fontir.exit17.i.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2zvA5OmMqFb_10ufo2fontir.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2zvA5OmMqFb_10ufo2fontir.exit19.i.i.i.i.i
  %i.cf = icmp ne ptr %.sroa.4.121, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !57, !noundef !6
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2zvA5OmMqFb_10ufo2fontir.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2zvA5OmMqFb_10ufo2fontir.exit19.i.i.i.i.i
  %i.co = phi ptr [ %i.cg, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2zvA5OmMqFb_10ufo2fontir.exit21.i.i.i.i.i ], [ %i.bv, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2zvA5OmMqFb_10ufo2fontir.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2zvA5OmMqFb_10ufo2fontir.exit21.i.i.i.i.i ], [ %i.by, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2zvA5OmMqFb_10ufo2fontir.exit19.i.i.i.i.i ]
  %i.cp = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cv, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i6

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i6

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsf3Ta7LF998c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !58, !noundef !6
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i6

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsf3Ta7LF998c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !58, !noundef !6
  %i.dj = lshr i8 %i.di, 1
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i6

_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i6: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i6, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.121, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs2zvA5OmMqFb_10ufo2fontir.exit.i.i.i6, %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.121 to i64
  %i.do = sub i64 %.sroa.18.019, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2zvA5OmMqFb_10ufo2fontir.exit.i.i, %bb.t, %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit, %bb.u
  %.sroa.0.042 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit ], [ %.sroa.0.0, %bb.t ], [ 0, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2zvA5OmMqFb_10ufo2fontir.exit.i.i ] ; 2 uses
  %.sroa.02.1 = phi i64 [ %i.dp, %bb.u ], [ %.sroa.18.019, %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit ], [ %.sroa.18.019, %bb.t ], [ 0, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2zvA5OmMqFb_10ufo2fontir.exit.i.i ]
  %i.dq = sub nuw i64 %.sroa.02.1, %.sroa.0.042
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.042
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre18trim_start_matchesReECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsu_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.b = load i64, ptr %i.a, align 8, !range !84, !alias.scope !85, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !83 ; 21 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !83, !nonnull !6 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !83, !nonnull !6 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !83 ; 11 uses
  %i.m = add nsw i64 %i.l, -1                     ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !83 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %.promoted.i = load i64, ptr %i.c, align 8, !alias.scope !83 ; 2 uses
  %.promoted98.i = load i64, ptr %i.g, align 8, !alias.scope !83
  %.promoted99.i = load i64, ptr %i.n, align 8, !alias.scope !83 ; 30 uses
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %.split.us.i
    i64 1, label %.split.us115.i
    i64 2, label %.split.us125.i
  ]

.split.us.i:                                      ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.s = load i8, ptr %i.r, align 2, !range !7, !alias.scope !83
  %i.t = trunc nuw i8 %i.s to i1
  %.promoted156.i = load i8, ptr %i.q, align 8, !alias.scope !83 ; 4 uses
  br i1 %i.t, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit, label %.lr.ph.i

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
  %i.ae = load i8, ptr %i.w, align 1, !noalias !86, !noundef !6 ; 2 uses
  %i.af = icmp sgt i8 %i.ae, -65
  br i1 %i.af, label %bb.d, label %.split105.us.i

thread-pre-split.i.peel:                          ; preds = %.lr.ph.split.split.i.preheader
  %.pr.i.peel = load i8, ptr %i.w, align 1, !noalias !87
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i.peel, %bb.c
  %.pr.i = phi i8 [ %.pr.i.peel, %thread-pre-split.i.peel ], [ %i.ae, %bb.c ] ; 6 uses
  %i.ag = icmp sgt i8 %.pr.i, -1                  ; 2 uses
  br i1 %i.ag, label %bb.e, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir.exit12.i.i.us.i.peel

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir.exit12.i.i.us.i.peel: ; preds = %bb.d
  tail call void @llvm.assume(i1 %i.y)
  %i.ah = icmp samesign ugt i8 %.pr.i, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir.exit14.i.i.us.i.peel, label %bb.e

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir.exit14.i.i.us.i.peel: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir.exit12.i.i.us.i.peel
  tail call void @llvm.assume(i1 %i.aa)
  %i.ai = icmp samesign ugt i8 %.pr.i, -17
  br i1 %i.ai, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir.exit16.i.i.us.i.peel, label %bb.e

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir.exit16.i.i.us.i.peel: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir.exit14.i.i.us.i.peel
  tail call void @llvm.assume(i1 %i.ac)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir.exit16.i.i.us.i.peel, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir.exit14.i.i.us.i.peel, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir.exit12.i.i.us.i.peel
  br i1 %i.ad, label %.lr.ph.split.split.i, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.i
  br i1 %i.u, label %.lr.ph.split.us.split.split.us.i, label %.lr.ph.split.us.split.split.i

.lr.ph.split.us.split.split.us.i:                 ; preds = %.lr.ph.split.us.split.i
  %i.aj = trunc nuw i8 %.promoted156.i to i1
  br i1 %i.aj, label %.split114.us.i.sink.split, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit

.lr.ph.split.us.split.split.i:                    ; preds = %.lr.ph.split.us.split.i
  br i1 %.not.i.i.us.i, label %.lr.ph.split.us.split.split.split.us.i, label %.lr.ph201.split.us.i

.lr.ph.split.us.split.split.split.us.i:           ; preds = %.lr.ph.split.us.split.split.i
  %i.ak = load i8, ptr %i.w, align 1, !alias.scope !88, !noalias !89, !noundef !6
  %i.al = icmp sgt i8 %i.ak, -65
  br i1 %i.al, label %.lr.ph206.split.us.i, label %.split105.us.i

.lr.ph206.split.us.i:                             ; preds = %.lr.ph.split.us.split.split.split.us.i
  %i.am = trunc nuw i8 %.promoted156.i to i1
  br i1 %i.am, label %.split114.us.i.sink.split, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit

.lr.ph201.split.us.i:                             ; preds = %.lr.ph.split.us.split.split.i
  %i.an = trunc nuw i8 %.promoted156.i to i1
  br i1 %i.an, label %.split114.us.i.sink.split, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit

.lr.ph.split.split.i:                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.ao = icmp sgt i8 %.pr.i, -65
  %or.cond = and i1 %.not.i.i.us.i, %i.ao
  %or.cond213 = select i1 %i.u, i1 true, i1 %or.cond
  br i1 %or.cond213, label %thread-pre-split.i, label %.split105.us.i

thread-pre-split.i:                               ; preds = %.lr.ph.split.split.i
  br i1 %i.ag, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir.exit12.i.i.us.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir.exit12.i.i.us.i: ; preds = %thread-pre-split.i
  tail call void @llvm.assume(i1 %i.y)
  %i.ap = icmp samesign ugt i8 %.pr.i, -33
  br i1 %i.ap, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir.exit14.i.i.us.i, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir.exit14.i.i.us.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir.exit12.i.i.us.i
  tail call void @llvm.assume(i1 %i.aa)
  %i.aq = icmp samesign ugt i8 %.pr.i, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir.exit16.i.i.us.i, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir.exit16.i.i.us.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir.exit14.i.i.us.i
  tail call void @llvm.assume(i1 %i.ac)
  br label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit

.split105.us.i:                                   ; preds = %.lr.ph.split.split.i, %bb.b, %bb.c, %.lr.ph.split.us.split.split.split.us.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.e, i64 noundef %.promoted99.i, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #21, !noalias !89
  unreachable

.split114.us.i.sink.split:                        ; preds = %.lr.ph201.split.us.i, %.lr.ph206.split.us.i, %.lr.ph.split.us.split.split.us.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  br label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit

.split.us115.i:                                   ; preds = %bb.a
  %.not41.i.us216.i = icmp ult i64 %.promoted99.i, %i.e
  br i1 %.not41.i.us216.i, label %.lr.ph217.i, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit

.lr.ph217.i:                                      ; preds = %.split.us115.i
  %i.ar = load i8, ptr %i.q, align 8, !alias.scope !85, !noundef !6 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 %.promoted99.i
  %i.at = load i8, ptr %i.as, align 1, !noalias !91, !noundef !6
  %i.au = icmp eq i8 %i.at, %i.ar
  br i1 %i.au, label %.lr.ph.preheader, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph217.i
  %i.av = add nuw i64 %.promoted99.i, 1           ; 2 uses
  %exitcond.not.i261 = icmp eq i64 %i.av, %i.e
  br i1 %exitcond.not.i261, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit, label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.aw = phi i64 [ %i.ba, %.lr.ph ], [ %i.av, %.lr.ph.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !92, !noundef !6
  %i.az = icmp eq i8 %i.ay, %i.ar
  br i1 %i.az, label %.lr.ph, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit

.lr.ph:                                           ; preds = %.lr.ph262
  %i.ba = add nuw i64 %i.aw, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ba, %i.e
  br i1 %exitcond.not.i, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit, label %.lr.ph262

.split.us125.i:                                   ; preds = %bb.a
  %i.bb = icmp eq i64 %.promoted.i, %i.e
  br i1 %i.bb, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit, label %.lr.ph219.i

.lr.ph219.i:                                      ; preds = %.split.us125.i
  %i.bc = load i64, ptr %i.q, align 8, !alias.scope !83 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.bg = add i64 %.sink132.i.us.i49.lcssa51.us61, %i.m ; 4 uses
  %i.bh = icmp ult i64 %i.bg, %i.e
  br i1 %i.bh, label %.lr.ph.i.i.us.i, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit

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
  br i1 %.not.i46.us.i.us.i.us, label %bb.g, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit

bb.g:                                             ; preds = %.lr.ph.i.split.us.i.us.i.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !93, !noalias !89, !noundef !6
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
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !94, !noalias !89, !noundef !6
  %i.bv = add i64 %.sroa.04.0.i.us.i.us.i.us256, %.sink132.i.us.i49.lcssa51.us61 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.e
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !93, !noalias !89, !noundef !6
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
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !94, !noalias !89, !noundef !6
  %i.cc = add i64 %i.bz, %.sink132.i.us.i49.lcssa51.us61 ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.e
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cc
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !93, !noalias !89, !noundef !6
  %.not21.i.us.i.us.us.i.us = icmp eq i8 %i.cb, %i.cf
  br i1 %.not21.i.us.i.us.us.i.us, label %.preheader.i.us.us.i.us, label %.loopexit.split.us.us.i.us

.loopexit.split.us.us.i.us:                       ; preds = %.lr.ph260, %bb.h, %bb.g
  %.sink132.i.us.i.us = phi i64 [ %i.bk, %bb.g ], [ %.reass.i.us.i.us.i.us, %bb.h ], [ %i.bj, %.lr.ph260 ] ; 2 uses
  %i.cg = add i64 %.sink132.i.us.i.us, %i.m       ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.e
  br i1 %i.ch, label %.lr.ph.i.split.us.i.us.i.us, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit

.lr.ph.i.split.i.us.i:                            ; preds = %.lr.ph.i.i.us.i, %.sink.split.i.i.us.i
  %.sink133.i.us.i41 = phi i64 [ %.sink133.i.us.i, %.sink.split.i.i.us.i ], [ %.sink132.i.us.i49.lcssa51.us61, %.lr.ph.i.i.us.i ]
  %i.ci = phi i64 [ %.sink55.i.i.us.i, %.sink.split.i.i.us.i ], [ %i.bf, %.lr.ph.i.i.us.i ] ; 3 uses
  %i.cj = phi i64 [ %i.di, %.sink.split.i.i.us.i ], [ %i.bg, %.lr.ph.i.i.us.i ]
  %.not.i46.i.us.i = icmp eq i64 %.sink132.i.us.i49.lcssa51.us61, %.sink133.i.us.i41
  br i1 %.not.i46.i.us.i, label %bb.i, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs2zvA5OmMqFb_10ufo2fontir.exit

bb.i:                                             ; preds = %.lr.ph.i.split.i.us.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !93, !noalias !89, !noundef !6
end_hunk_0
