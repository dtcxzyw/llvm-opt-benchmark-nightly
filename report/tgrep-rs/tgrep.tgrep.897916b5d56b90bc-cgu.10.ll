Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.10?download=true
inline.NumInlined: 800
inline.NumDeleted: 433
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMNtCsf3Ta7LF998c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsbNLsQi0JuJ4_5tgrep:bb.a
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !88, !noundef !6 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit17.i.i.i.i.i
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit17.i.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit19.i.i.i.i.i
  %i.cf = icmp ne ptr %.sroa.4.121, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !88, !noundef !6
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit19.i.i.i.i.i
  %i.co = phi ptr [ %i.cg, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit21.i.i.i.i.i ], [ %i.bv, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit21.i.i.i.i.i ], [ %i.by, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit19.i.i.i.i.i ]
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
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbNLsQi0JuJ4_5tgrep.exit.i.i.i6

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbNLsQi0JuJ4_5tgrep.exit.i.i.i6

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsf3Ta7LF998c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !89, !noundef !6
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbNLsQi0JuJ4_5tgrep.exit.i.i.i6

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsf3Ta7LF998c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !89, !noundef !6
  %i.dj = lshr i8 %i.di, 1
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbNLsQi0JuJ4_5tgrep.exit.i.i.i6

_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbNLsQi0JuJ4_5tgrep.exit.i.i.i6: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbNLsQi0JuJ4_5tgrep.exit.i.i.i6, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.121, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbNLsQi0JuJ4_5tgrep.exit.i.i.i6, %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.121 to i64
  %i.do = sub i64 %.sroa.18.019, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i, %bb.t, %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbNLsQi0JuJ4_5tgrep.exit, %bb.u
  %.sroa.0.042 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbNLsQi0JuJ4_5tgrep.exit ], [ %.sroa.0.0, %bb.t ], [ 0, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i ] ; 2 uses
  %.sroa.02.1 = phi i64 [ %i.dp, %bb.u ], [ %.sroa.18.019, %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbNLsQi0JuJ4_5tgrep.exit ], [ %.sroa.18.019, %bb.t ], [ 0, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i ]
  %i.dq = sub nuw i64 %.sroa.02.1, %.sroa.0.042
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.042
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre16trim_end_matchescECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern13into_searcher.exit:
  %i.a = ptrtoint ptr %0 to i64
  br label %bb.a

bb.a:                                             ; preds = %_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i, %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %.reass5.i = phi i64 [ %.reass.i, %_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i ], [ %1, %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern13into_searcher.exit ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.reass5.i ; 4 uses
  %i.c = icmp samesign eq i64 %.reass5.i, 0
  br i1 %i.c, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsbNLsQi0JuJ4_5tgrep.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !noalias !98, !noundef !6 ; 3 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit17.i.i.i

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit17.i.i.i: ; preds = %bb.b
  %i.g = icmp ne i64 %.reass5.i, 1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -2 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !98, !noundef !6 ; 3 uses
  %i.j = and i8 %i.i, 31
  %i.k = zext nneg i8 %i.j to i32
  %i.l = icmp slt i8 %i.i, -64
  br i1 %i.l, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit19.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i8 %i.e to i32
  br label %_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit17.i.i.i
  %i.n = icmp ne i64 %.reass5.i, 2
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds i8, ptr %i.b, i64 -3 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !noalias !98, !noundef !6 ; 3 uses
  %i.q = and i8 %i.p, 15
  %i.r = zext nneg i8 %i.q to i32
  %i.s = icmp slt i8 %i.p, -64
  br i1 %i.s, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit21.i.i.i, label %bb.e

bb.d:                                             ; preds = %bb.e, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit17.i.i.i
  %.sroa.6.0.i.i = phi ptr [ %.sroa.6.1.i.i, %bb.e ], [ %i.h, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit17.i.i.i ]
  %.sroa.010.0.i.i.i = phi i32 [ %i.aj, %bb.e ], [ %i.k, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit17.i.i.i ]
  %i.t = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6
  %i.u = and i8 %i.e, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v
  br label %_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit19.i.i.i
  %i.x = icmp ne i64 %.reass5.i, 3
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !noalias !98, !noundef !6
  %i.aa = and i8 %i.z, 7
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 6
  %i.ad = and i8 %i.p, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit21.i.i.i, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit19.i.i.i
  %.sroa.6.1.i.i = phi ptr [ %i.y, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit21.i.i.i ], [ %i.o, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit19.i.i.i ]
  %.sroa.010.1.i.i.i = phi i32 [ %i.af, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit21.i.i.i ], [ %i.r, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNLsQi0JuJ4_5tgrep.exit19.i.i.i ]
  %i.ag = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6
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
  br i1 %.not.i, label %bb.a, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsbNLsQi0JuJ4_5tgrep.exit

_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a, %_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i
  %.reass5.i.lcssa = phi i64 [ 0, %bb.a ], [ %.reass5.i, %_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i ]
  %i.am = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.an = insertvalue { ptr, i64 } %i.am, i64 %.reass5.i.lcssa, 1
  ret { ptr, i64 } %i.an
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbNLsQi0JuJ4_5tgrep.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.c = phi i64 [ %i.ar, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %i.an, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !112, !noundef !6 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit12.i.i.i.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !112, !noundef !6
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !112, !noundef !6
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !112, !noundef !6
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit12.i.i.i.i.i
  %i.an = phi ptr [ %i.u, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit14.i.i.i.i.i ], [ %i.ae, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit16.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit12.i.i.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ab, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit14.i.i.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit16.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit12.i.i.i.i.i ], [ %i.s, %bb.b ] ; 8 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.c, %i.e
  %i.ar = add i64 %i.aq, %i.ap
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i
    i32 13, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i
    i32 12, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i
    i32 11, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i
    i32 10, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i
    i32 9, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.as, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbNLsQi0JuJ4_5tgrep.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.at, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbNLsQi0JuJ4_5tgrep.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.au = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.av = zext i1 %i.au to i8
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbNLsQi0JuJ4_5tgrep.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aw = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.ax = zext i1 %i.aw to i8
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbNLsQi0JuJ4_5tgrep.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ay = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsf3Ta7LF998c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !113, !noundef !6
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbNLsQi0JuJ4_5tgrep.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bc = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsf3Ta7LF998c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !113, !noundef !6
  %i.bg = lshr i8 %i.bf, 1
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbNLsQi0JuJ4_5tgrep.exit.i.i.i

_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.ax, %bb.g ], [ %i.bb, %bb.h ], [ %i.av, %bb.f ], [ %i.bg, %bb.i ]
  %i.bh = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bh, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbNLsQi0JuJ4_5tgrep.exit

_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbNLsQi0JuJ4_5tgrep.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bi = icmp eq ptr %i.an, %i.a
  br i1 %i.bi, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbNLsQi0JuJ4_5tgrep.exit, label %.lr.ph.i.i

_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i, %bb.e, %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbNLsQi0JuJ4_5tgrep.exit.i.i.i, %bb.d, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %1, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i ], [ %i.c, %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbNLsQi0JuJ4_5tgrep.exit.i.i.i ], [ %i.c, %bb.d ], [ %i.c, %bb.e ] ; 2 uses
  %i.bj = sub nuw i64 %1, %.sroa.0.0
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0
  %i.bl = insertvalue { ptr, i64 } poison, ptr %i.bk, 0
  %i.bm = insertvalue { ptr, i64 } %i.bl, i64 %i.bj, 1
  ret { ptr, i64 } %i.bm
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsbNLsQi0JuJ4_5tgrep(ptr noalias noundef nonnull align 8 captures(address, ret: address, provenance) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.e = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0CsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

_RNCNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0CsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_RNCNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0CsbNLsQi0JuJ4_5tgrep.exit
  %.sroa.0.0 = phi ptr [ %i.e, %_RNCNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0CsbNLsQi0JuJ4_5tgrep.exit ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #29
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_9DebugList7entriesRNtCs30WoLBgco1_6ignore5ErrorINtNtNtBa_5slice4iter4IterB14_EECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !114
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMst_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB6_20RangedI64ValueParsermE5rangeINtNtNtCsf3Ta7LF998c_4core3ops5range9RangeFromxEECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) initializes((0, 16)) %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
_RNvMsd_NtNtCsf3Ta7LF998c_4core3ops5rangeINtB5_5BoundRxE6clonedCsbNLsQi0JuJ4_5tgrep.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = icmp eq i64 %i.b, 2
  %i.e = load i64, ptr %i.c, align 8
  %spec.select = select i1 %i.d, i64 undef, i64 %i.e
end_hunk_0
begin_hunk_1_@_RNvNtCsbNLsQi0JuJ4_5tgrep3mem14proc_status_kb:bb.a

.lr.ph.split.preheader:                           ; preds = %bb.a
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.c, align 8
  %i.o = load ptr, ptr %.sroa.417.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !6 ; 10 uses
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsbNLsQi0JuJ4_5tgrep.exit.backedge
  %.lcssa96108 = phi i64 [ %.lcssa96105, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsbNLsQi0JuJ4_5tgrep.exit.backedge ], [ 0, %.lr.ph.split.preheader ] ; 3 uses
  %.lcssa100102 = phi i64 [ %.lcssa98, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsbNLsQi0JuJ4_5tgrep.exit.backedge ], [ 0, %.lr.ph.split.preheader ] ; 7 uses
  %i.r = icmp ult i64 %i.q, %.lcssa96108
  br i1 %i.r, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split, %bb.i
  %i.s = phi i64 [ %i.ag, %bb.i ], [ %.lcssa96108, %.lr.ph.split ] ; 6 uses
  %i.t = sub nuw i64 %i.q, %i.s                   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.s ; 2 uses
  %i.v = icmp samesign ult i64 %i.t, 16
  br i1 %i.v, label %.preheader.i.i.i, label %bb.g

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.q, %i.s
  br i1 %.not.i.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %.lr.ph.split.i.i
  %i.w = invoke { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef range(i64 0, -9223372036854775808) %i.t)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.g
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  %i.z = trunc nuw i64 %i.x to i1
  br i1 %i.z, label %.loopexit.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.h
  %.sroa.04.011.i.i.i = phi i64 [ %i.ad, %bb.h ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.04.011.i.i.i
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !588, !noalias !589, !noundef !6
  %i.ac = icmp eq i8 %i.ab, 10
  br i1 %i.ac, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = add nuw nsw i64 %.sroa.04.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ad, %i.t
  br i1 %exitcond.not.i.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %.noexc
  %.sroa.5.0.i.i.i = phi i64 [ %i.y, %.noexc ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %i.ae = icmp ult i64 %.sroa.5.0.i.i.i, %i.t
  call void @llvm.assume(i1 %i.ae)
  %i.af = add i64 %i.s, 1
  %i.ag = add i64 %i.af, %.sroa.5.0.i.i.i         ; 8 uses
  %.not12.i.i = icmp ugt i64 %i.ag, %i.q
  %i.ah = add i64 %i.s, %.sroa.5.0.i.i.i
  %or.cond.i.i.not = icmp ult i64 %i.ah, %i.q
  br i1 %or.cond.i.i.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.j, %.loopexit.i.i
  br i1 %.not12.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i, label %.lr.ph.split.i.i

bb.j:                                             ; preds = %.loopexit.i.i
  %i.ai = getelementptr i8, ptr %i.o, i64 %i.s
  %i.aj = getelementptr i8, ptr %i.ai, i64 %.sroa.5.0.i.i.i
  %lhsc = load i8, ptr %i.aj, align 1
  %i.ak = icmp eq i8 %lhsc, 10
  br i1 %i.ak, label %bb.k, label %bb.i

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.i, %.preheader.i.i.i, %.noexc, %bb.h, %.lr.ph.split
  %.lcssa96107 = phi i64 [ %i.q, %bb.h ], [ %.lcssa96108, %.lr.ph.split ], [ %i.q, %.noexc ], [ %i.q, %.preheader.i.i.i ], [ %i.ag, %bb.i ]
  %.not.i3.i.not = icmp eq i64 %i.q, %.lcssa100102
  br i1 %.not.i3.i.not, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsbNLsQi0JuJ4_5tgrep.exit._crit_edge, label %.thread72

.thread72:                                        ; preds = %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 %.lcssa100102 ; 2 uses
  %i.am = sub nuw i64 %i.q, %.lcssa100102         ; 2 uses
  %i.an = insertvalue { ptr, i64 } poison, ptr %i.al, 0
  %i.ao = insertvalue { ptr, i64 } %i.an, i64 %i.am, 1
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ap = sub nuw i64 %i.ag, %.lcssa100102        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 %.lcssa100102 ; 2 uses
  %i.ar = insertvalue { ptr, i64 } poison, ptr %i.aq, 0
  %i.as = insertvalue { ptr, i64 } %i.ar, i64 %i.ap, 1 ; 2 uses
  %.not.i.i.i47 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i47, label %_RNvXs3_NtCsf3Ta7LF998c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %.thread72, %bb.k
  %.lcssa96106 = phi i64 [ %.lcssa96107, %.thread72 ], [ %i.ag, %bb.k ] ; 2 uses
  %.lcssa99 = phi i64 [ %.lcssa100102, %.thread72 ], [ %i.ag, %bb.k ] ; 2 uses
  %i.at = phi i1 [ true, %.thread72 ], [ false, %bb.k ] ; 2 uses
  %i.au = phi { ptr, i64 } [ %i.ao, %.thread72 ], [ %i.as, %bb.k ] ; 2 uses
  %.sroa.0.1.i78 = phi ptr [ %i.al, %.thread72 ], [ %i.aq, %bb.k ]
  %.sroa.4.1.i77 = phi i64 [ %i.am, %.thread72 ], [ %i.ap, %bb.k ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 %.lcssa100102 ; 2 uses
  %.pre.i.i4879 = add i64 %.sroa.4.1.i77, -1      ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.pre.i.i4879
  %rhsc.i = load i8, ptr %i.aw, align 1, !alias.scope !590
  %rhsc.fr.i = freeze i8 %rhsc.i
  %i.ax = icmp eq i8 %rhsc.fr.i, 10
  br i1 %i.ax, label %bb.l, label %_RNvXs3_NtCsf3Ta7LF998c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit

bb.l:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.ay = insertvalue { ptr, i64 } %i.au, i64 %.pre.i.i4879, 1
  %.not.i.i15.i = icmp eq i64 %.pre.i.i4879, 0
  %.pre.i16.i = add i64 %.sroa.4.1.i77, -2        ; 2 uses
  br i1 %.not.i.i15.i, label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.i17.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.i17.i: ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %.pre.i16.i
  %rhsc4.i = load i8, ptr %i.az, align 1, !alias.scope !590
  %rhsc4.fr.i = freeze i8 %rhsc4.i
  %i.ba = icmp eq i8 %rhsc4.fr.i, 13
  %spec.select.i20.i = select i1 %i.ba, ptr %.sroa.0.1.i78, ptr null
  br label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i

_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.i17.i, %bb.l
  %i.bb = phi ptr [ %spec.select.i20.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.i17.i ], [ null, %bb.l ] ; 2 uses
  %i.bc = insertvalue { ptr, i64 } poison, ptr %i.bb, 0
  %i.bd = insertvalue { ptr, i64 } %i.bc, i64 %.pre.i16.i, 1
  %.not14.i = icmp eq ptr %i.bb, null
  %..i = select i1 %.not14.i, { ptr, i64 } %i.ay, { ptr, i64 } %i.bd
  br label %_RNvXs3_NtCsf3Ta7LF998c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsbNLsQi0JuJ4_5tgrep.exit._crit_edge: ; preds = %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsbNLsQi0JuJ4_5tgrep.exit.backedge
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.m

bb.m:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsbNLsQi0JuJ4_5tgrep.exit._crit_edge
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.q, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.cb, %bb.q ], [ %i.be, %bb.m ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsbNLsQi0JuJ4_5tgrep.exit._crit_edge
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit55, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit
  %.sroa.6.1 = phi i64 [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit ], [ %.sroa.6.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit55 ], [ undef, %bb.e ]
  %.sroa.0.1 = phi i64 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit ], [ %.sroa.0.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit55 ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bg = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.bh = insertvalue { i64, i64 } %i.bg, i64 %.sroa.6.1, 1
  ret { i64, i64 } %i.bh

_RNvXs3_NtCsf3Ta7LF998c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit: ; preds = %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.i.i, %bb.k
  %.lcssa96105 = phi i64 [ %.lcssa96106, %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i ], [ %.lcssa96106, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.i.i ], [ %i.ag, %bb.k ]
  %.lcssa98 = phi i64 [ %.lcssa99, %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i ], [ %.lcssa99, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.i.i ], [ %i.ag, %bb.k ]
  %i.bi = phi i1 [ %i.at, %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i ], [ %i.at, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.i.i ], [ false, %bb.k ]
  %.merged.i = phi { ptr, i64 } [ %..i, %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i ], [ %i.au, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.i.i ], [ %i.as, %bb.k ] ; 2 uses
  %i.bj = extractvalue { ptr, i64 } %.merged.i, 1 ; 2 uses
  %.not.i49 = icmp samesign ult i64 %i.bj, %1
  br i1 %.not.i49, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsbNLsQi0JuJ4_5tgrep.exit.backedge, label %.split

.split:                                           ; preds = %_RNvXs3_NtCsf3Ta7LF998c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit
  %i.bk = extractvalue { ptr, i64 } %.merged.i, 0 ; 2 uses
  %bcmp.i.i50 = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull readonly dereferenceable(1) %i.bk, i64 range(i64 0, -9223372036854775808) %1), !alias.scope !591
  %i.bl = icmp eq i32 %bcmp.i.i50, 0
  br i1 %i.bl, label %.split112.us, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsbNLsQi0JuJ4_5tgrep.exit.backedge

_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsbNLsQi0JuJ4_5tgrep.exit.backedge: ; preds = %.split, %_RNvXs3_NtCsf3Ta7LF998c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit
  br i1 %i.bi, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsbNLsQi0JuJ4_5tgrep.exit._crit_edge, label %.lr.ph.split

.split112.us:                                     ; preds = %.split
  %i.bm = sub nuw nsw i64 %i.bj, %1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %1
  %i.bo = call { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bm) ; 2 uses
  %i.bp = extractvalue { ptr, i64 } %i.bo, 0      ; 2 uses
  %i.bq = extractvalue { ptr, i64 } %i.bo, 1      ; 3 uses
  %.not.i51 = icmp samesign ult i64 %i.bq, 2
  br i1 %.not.i51, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.thread, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.split112.us
  %i.br = getelementptr i8, ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 -2
  %i.bt = load i16, ptr %i.bs, align 1
  %i.bu = icmp ne i16 17003, %i.bt
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.thread

bb.p:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit
  %i.bx = add nsw i64 %i.bq, -2
  %i.by = call { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef %i.bx) ; 2 uses
  %i.bz = extractvalue { ptr, i64 } %i.by, 0      ; 3 uses
  %i.ca = extractvalue { ptr, i64 } %i.by, 1      ; 2 uses
  switch i64 %i.ca, label %thread-pre-split.i [
    i64 0, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.thread
    i64 1, label %bb.s
  ]

_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.thread: ; preds = %.preheader56.i, %bb.u, %.preheader56.i.preheader, %bb.v, %.lr.ph.i, %.preheader.i, %bb.s, %bb.s, %bb.p, %.split112.us, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit
  %.sroa.6.2 = phi i64 [ undef, %.split112.us ], [ undef, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit ], [ 0, %.preheader.i ], [ undef, %bb.s ], [ undef, %bb.p ], [ undef, %bb.s ], [ %i.db, %bb.v ], [ undef, %.lr.ph.i ], [ undef, %bb.u ], [ undef, %.preheader56.i.preheader ], [ %i.cr, %.preheader56.i ]
  %.sroa.0.2 = phi i64 [ 0, %.split112.us ], [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit ], [ 1, %.preheader.i ], [ 0, %bb.s ], [ 0, %bb.p ], [ 0, %bb.s ], [ 1, %bb.v ], [ 0, %.lr.ph.i ], [ 0, %bb.u ], [ 0, %.preheader56.i.preheader ], [ 1, %.preheader56.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit55 unwind label %bb.q

bb.q:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.thread
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit55: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.thread
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.o

bb.s:                                             ; preds = %bb.p
  %i.cd = load i8, ptr %i.bz, align 1, !alias.scope !592, !noundef !6 ; 2 uses
  switch i8 %i.cd, label %bb.t [
    i8 43, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.thread
    i8 45, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.p
  %.pr.i = load i8, ptr %i.bz, align 1, !alias.scope !592
  br label %bb.t

bb.t:                                             ; preds = %thread-pre-split.i, %bb.s
  %i.ce = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.cd, %bb.s ]
  %cond.i = icmp eq i8 %i.ce, 43                  ; 2 uses
  %i.cf = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.ca, %i.cf        ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i56 = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.cg = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.cg, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.t
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.thread, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i57226, i64 1
  %i.ci = add nsw i64 %.sroa.15.1.i225, -1        ; 2 uses
  %.not52.i.not = icmp eq i64 %i.ci, 0
  br i1 %.not52.i.not, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.thread, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.t, %.preheader56.i
  %.sroa.0.1.i57226 = phi ptr [ %i.ch, %.preheader56.i ], [ %.sroa.0.0.i56, %bb.t ] ; 2 uses
  %.sroa.15.1.i225 = phi i64 [ %i.ci, %.preheader56.i ], [ %.sroa.15.0.i, %bb.t ]
  %.sroa.042.0.i224 = phi i64 [ %i.cr, %.preheader56.i ], [ 0, %bb.t ]
  %i.cj = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i224, i64 10) ; 2 uses
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  br i1 %i.ck, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.thread, label %bb.u, !prof !9

bb.u:                                             ; preds = %.preheader56.i.preheader
  %i.cl = extractvalue { i64, i1 } %i.cj, 0       ; 2 uses
  %i.cm = load i8, ptr %.sroa.0.1.i57226, align 1, !alias.scope !592, !noundef !6
  %i.cn = zext i8 %i.cm to i32
  %i.co = add nsw i32 %i.cn, -48                  ; 2 uses
  %i.cp = icmp ugt i32 %i.co, 9
  %i.cq = zext nneg i32 %i.co to i64
  %i.cr = add i64 %i.cl, %i.cq                    ; 3 uses
  %i.cs = icmp ult i64 %i.cr, %i.cl
  %or.cond = select i1 %i.cp, i1 true, i1 %i.cs, !prof !22
  br i1 %or.cond, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.thread, label %.preheader56.i, !prof !22

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.v
  %.sroa.0.269.i = phi ptr [ %i.cz, %bb.v ], [ %.sroa.0.0.i56, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.cy, %bb.v ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.db, %bb.v ], [ 0, %.preheader.i ]
  %i.ct = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !592, !noundef !6
  %i.cu = zext i8 %i.ct to i32
  %i.cv = add nsw i32 %i.cu, -48                  ; 2 uses
  %i.cw = icmp ugt i32 %i.cv, 9
  br i1 %i.cw, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.thread, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.cx = mul i64 %.sroa.042.267.i, 10
  %i.cy = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.da = zext nneg i32 %i.cv to i64
  %i.db = add i64 %i.cx, %i.da                    ; 2 uses
  %.not53.i = icmp eq i64 %i.cy, 0
  br i1 %.not53.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsbNLsQi0JuJ4_5tgrep.exit.thread, label %.lr.ph.i

bb.w:                                             ; preds = %bb.f
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsbNLsQi0JuJ4_5tgrep3mem18format_peak_memory(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = tail call fastcc { i64, i64 } @_RNvNtCsbNLsQi0JuJ4_5tgrep3mem14proc_status_kb(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 8) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, i64 } %i.e, 1
  %i.i = shl i64 %i.h, 10                         ; 2 uses
  %i.j = atomicrmw umax ptr @_RNvNtCsbNLsQi0JuJ4_5tgrep3mem11PRIVATE_HWM, i64 %i.i monotonic, align 8 ; 0 uses
  %i.k = load atomic i64, ptr @_RNvNtCsbNLsQi0JuJ4_5tgrep3mem11PRIVATE_HWM monotonic, align 8
  %i.l = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.k) ; 5 uses
  %i.m = tail call fastcc { i64, i64 } @_RNvNtCsbNLsQi0JuJ4_5tgrep3mem14proc_status_kb(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 6) ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = extractvalue { i64, i64 } %i.m, 1
  %i.q = shl i64 %i.p, 10                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br i1 %i.o, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = tail call fastcc { i64, i64 } @_RNvNtCsbNLsQi0JuJ4_5tgrep3mem14proc_status_kb(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 6) ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = trunc nuw i64 %i.s to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br i1 %i.t, label %bb.o, label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.u = tail call i64 @llvm.uadd.sat.i64(i64 %i.l, i64 67108864)
  %i.v = lshr i64 %i.l, 2
  %i.w = tail call i64 @llvm.uadd.sat.i64(i64 %i.l, i64 %i.v)
  %i.x = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.w)
  %i.y = icmp ugt i64 %i.q, %i.x
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  tail call fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep3mem12format_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, i64 noundef %i.l)
  br label %_RNvNtCsbNLsQi0JuJ4_5tgrep3mem20describe_peak_memory.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !595
  call fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep3mem12format_bytes(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.l), !noalias !595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !595
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep3mem12format_bytes(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.q)
          to label %bb.h unwind label %bb.g, !noalias !595

.body.i:                                          ; preds = %bb.j, %bb.i, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.z, %bb.g ], [ %i.ac, %bb.j ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #31
          to label %common.resume.i unwind label %bb.n, !noalias !595

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i, %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !595
  store ptr %i.c, ptr %i.a, align 8, !noalias !595
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !595
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.aa, align 8, !noalias !595
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !595
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @37, ptr noundef nonnull %i.a)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.i, !noalias !595

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #31
          to label %.body.i unwind label %bb.n, !noalias !595

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !595
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.j, !noalias !595

bb.j:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.k, !noalias !595

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !595
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.g, !noalias !595

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !595
end_hunk_1
