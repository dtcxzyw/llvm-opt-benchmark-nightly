Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.248?download=true
inline.NumInlined: 327
inline.NumDeleted: 213
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsl8OoimOLbh_6qdrant:bb.a
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !42, !noundef !5 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit17.i.i.i.i.i
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit17.i.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit19.i.i.i.i.i
  %i.cf = icmp ne ptr %.sroa.4.121, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !42, !noundef !5
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit19.i.i.i.i.i
  %i.co = phi ptr [ %i.cg, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit21.i.i.i.i.i ], [ %i.bv, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit21.i.i.i.i.i ], [ %i.by, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit19.i.i.i.i.i ]
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
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsl8OoimOLbh_6qdrant.exit.i.i.i6

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsl8OoimOLbh_6qdrant.exit.i.i.i6

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !43, !noundef !5
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsl8OoimOLbh_6qdrant.exit.i.i.i6

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !43, !noundef !5
  %i.dj = lshr i8 %i.di, 1
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsl8OoimOLbh_6qdrant.exit.i.i.i6

_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsl8OoimOLbh_6qdrant.exit.i.i.i6: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsl8OoimOLbh_6qdrant.exit.i.i.i6, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.121, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsl8OoimOLbh_6qdrant.exit.i.i.i6, %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.121 to i64
  %i.do = sub i64 %.sroa.18.019, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsl8OoimOLbh_6qdrant.exit.i.i, %bb.t, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsl8OoimOLbh_6qdrant.exit, %bb.u
  %.sroa.0.042 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsl8OoimOLbh_6qdrant.exit ], [ %.sroa.0.0, %bb.t ], [ 0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsl8OoimOLbh_6qdrant.exit.i.i ] ; 2 uses
  %.sroa.02.1 = phi i64 [ %i.dp, %bb.u ], [ %.sroa.18.019, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsl8OoimOLbh_6qdrant.exit ], [ %.sroa.18.019, %bb.t ], [ 0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsl8OoimOLbh_6qdrant.exit.i.i ]
  %i.dq = sub nuw i64 %.sroa.02.1, %.sroa.0.042
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.042
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre16trim_end_matchescECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvXs2_NtNtCskKLDkoKarTP_4core3str7patterncNtB5_7Pattern13into_searcher.exit:
  %i.a = ptrtoint ptr %0 to i64
  br label %bb.a

bb.a:                                             ; preds = %_RNvXs0_NtNtCskKLDkoKarTP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i, %_RNvXs2_NtNtCskKLDkoKarTP_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %.reass5.i = phi i64 [ %.reass.i, %_RNvXs0_NtNtCskKLDkoKarTP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i ], [ %1, %_RNvXs2_NtNtCskKLDkoKarTP_4core3str7patterncNtB5_7Pattern13into_searcher.exit ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.reass5.i ; 4 uses
  %i.c = icmp samesign eq i64 %.reass5.i, 0
  br i1 %i.c, label %_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !noalias !52, !noundef !5 ; 3 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit17.i.i.i

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit17.i.i.i: ; preds = %bb.b
  %i.g = icmp ne i64 %.reass5.i, 1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -2 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !52, !noundef !5 ; 3 uses
  %i.j = and i8 %i.i, 31
  %i.k = zext nneg i8 %i.j to i32
  %i.l = icmp slt i8 %i.i, -64
  br i1 %i.l, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit19.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i8 %i.e to i32
  br label %_RNvXs0_NtNtCskKLDkoKarTP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit17.i.i.i
  %i.n = icmp ne i64 %.reass5.i, 2
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds i8, ptr %i.b, i64 -3 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !noalias !52, !noundef !5 ; 3 uses
  %i.q = and i8 %i.p, 15
  %i.r = zext nneg i8 %i.q to i32
  %i.s = icmp slt i8 %i.p, -64
  br i1 %i.s, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit21.i.i.i, label %bb.e

bb.d:                                             ; preds = %bb.e, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit17.i.i.i
  %.sroa.6.0.i.i = phi ptr [ %.sroa.6.1.i.i, %bb.e ], [ %i.h, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit17.i.i.i ]
  %.sroa.010.0.i.i.i = phi i32 [ %i.aj, %bb.e ], [ %i.k, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit17.i.i.i ]
  %i.t = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6
  %i.u = and i8 %i.e, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v
  br label %_RNvXs0_NtNtCskKLDkoKarTP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit19.i.i.i
  %i.x = icmp ne i64 %.reass5.i, 3
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !noalias !52, !noundef !5
  %i.aa = and i8 %i.z, 7
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 6
  %i.ad = and i8 %i.p, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit21.i.i.i, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit19.i.i.i
  %.sroa.6.1.i.i = phi ptr [ %i.y, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit21.i.i.i ], [ %i.o, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit19.i.i.i ]
  %.sroa.010.1.i.i.i = phi i32 [ %i.af, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit21.i.i.i ], [ %i.r, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl8OoimOLbh_6qdrant.exit19.i.i.i ]
  %i.ag = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6
  %i.ah = and i8 %i.i, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  br label %bb.d

_RNvXs0_NtNtCskKLDkoKarTP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.6.2.ph.i.i = phi ptr [ %.sroa.6.0.i.i, %bb.d ], [ %i.d, %bb.c ]
  %.sroa.4.1.i.ph.i.i = phi i32 [ %i.w, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.ak = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = ptrtoint ptr %.sroa.6.2.ph.i.i to i64
  %.reass.i = sub i64 %i.al, %i.a
  %.not.i = icmp eq i32 %.sroa.4.1.i.ph.i.i, %2
  br i1 %.not.i, label %bb.a, label %_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsl8OoimOLbh_6qdrant.exit

_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %_RNvXs0_NtNtCskKLDkoKarTP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i
  %i.am = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.an = insertvalue { ptr, i64 } %i.am, i64 %.reass5.i, 1
  ret { ptr, i64 } %i.an
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre18trim_start_matchescECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvXs2_NtNtCskKLDkoKarTP_4core3str7patterncNtB5_7Pattern13into_searcher.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = ptrtoint ptr %i.a to i64
  %invariant.op.i = sub i64 %1, %i.b
  br label %bb.a

bb.a:                                             ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i, %_RNvXs2_NtNtCskKLDkoKarTP_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %.reass5.i = phi i64 [ %.reass.i, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i ], [ 0, %_RNvXs2_NtNtCskKLDkoKarTP_4core3str7patterncNtB5_7Pattern13into_searcher.exit ] ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.reass5.i ; 5 uses
  %i.d = icmp samesign eq i64 %.reass5.i, %1
  br i1 %i.d, label %_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.c, align 1, !noalias !61, !noundef !5 ; 5 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.c, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit12.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit12.i.i.i: ; preds = %bb.b
  %i.h = and i8 %i.f, 31
  %i.i = zext nneg i8 %i.h to i32                 ; 3 uses
  %i.j = add nuw nsw i64 %.reass5.i, 1
  %i.k = icmp samesign ne i64 %i.j, %1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.m = load i8, ptr %i.e, align 1, !noalias !61, !noundef !5
  %i.n = shl nuw nsw i32 %i.i, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.f, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit14.i.i.i, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i

bb.c:                                             ; preds = %bb.b
  %i.s = zext nneg i8 %i.f to i32
  br label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit12.i.i.i
  %i.t = add nuw nsw i64 %.reass5.i, 2
  %i.u = icmp samesign ne i64 %i.t, %1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.w = load i8, ptr %i.l, align 1, !noalias !61, !noundef !5
  %i.x = shl nuw nsw i32 %i.p, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %i.ab = shl nuw nsw i32 %i.i, 12
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = icmp samesign ugt i8 %i.f, -17
  br i1 %i.ad, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit16.i.i.i, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit14.i.i.i
  %i.ae = add nuw nsw i64 %.reass5.i, 3
  %i.af = icmp samesign ne i64 %i.ae, %1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ah = load i8, ptr %i.v, align 1, !noalias !61, !noundef !5
  %i.ai = shl nuw nsw i32 %i.i, 18
  %i.aj = and i32 %i.ai, 1835008
  %i.ak = shl nuw nsw i32 %i.aa, 6
  %i.al = and i8 %i.ah, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am
  %i.ao = or disjoint i32 %i.an, %i.aj
  br label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i

_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit16.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit14.i.i.i, %bb.c, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit12.i.i.i
  %.sroa.0.0.ph.i.i = phi ptr [ %i.l, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit12.i.i.i ], [ %i.v, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit14.i.i.i ], [ %i.ag, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit16.i.i.i ], [ %i.e, %bb.c ]
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.q, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit12.i.i.i ], [ %i.ac, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit14.i.i.i ], [ %i.ao, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit16.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.ap = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = ptrtoint ptr %.sroa.0.0.ph.i.i to i64
  %.reass.i = add i64 %invariant.op.i, %i.aq
  %.not.i = icmp eq i32 %.sroa.4.0.i.ph.i.i, %2
  br i1 %.not.i, label %bb.a, label %_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCsl8OoimOLbh_6qdrant.exit

_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i
  %.sroa.0.0 = phi i64 [ %.reass5.i, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i ], [ %1, %bb.a ] ; 2 uses
  %i.ar = sub nuw i64 %1, %.sroa.0.0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0
  %i.at = insertvalue { ptr, i64 } poison, ptr %i.as, 0
  %i.au = insertvalue { ptr, i64 } %i.at, i64 %i.ar, 1
  ret { ptr, i64 } %i.au
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directiveNtB3_9Directive11make_tablesINtNtCsexYYUdYSQU6_5alloc3vec3VecB12_EECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1120 x i8]) align 8 captures(none) dereferenceable(1120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [656 x i8], align 8               ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [464 x i8], align 8               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %.sroa.03.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !69
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !69, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !69 ; 2 uses
  %i.h = icmp ult i64 %.sroa.55.0.copyload.i, 115292150460684698
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw [80 x i8], ptr %.sroa.44.0.copyload.i, i64 %.sroa.55.0.copyload.i
  store ptr %.sroa.44.0.copyload.i, ptr %i.e, align 8, !alias.scope !68
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %i.j, align 8, !alias.scope !68
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.44.0.copyload.i, ptr %i.k, align 8, !alias.scope !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.i, ptr %i.l, align 8, !alias.scope !68
  call void @_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9partitionINtB8_3VecBR_ENvMBT_BR_10is_dynamicECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.m, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.n = icmp ult i64 %.sroa.5.0.copyload, 115292150460684698
  call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.5.0.copyload
  %i.p = icmp sgt i64 %.sroa.0.0.copyload, -1
  call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5
  %i.u = getelementptr inbounds nuw [80 x i8], ptr %i.r, i64 %i.t
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  store ptr %.sroa.4.0.copyload, ptr %i.c, align 8, !alias.scope !71
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx9, align 8, !alias.scope !71
  %.sroa.5.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx11, align 8, !alias.scope !71
  %.sroa.6.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.o, ptr %.sroa.6.0..sroa_idx13, align 8, !alias.scope !71
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.r, ptr %i.v, align 8, !alias.scope !72
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.u, ptr %i.w, align 8, !alias.scope !72
  invoke void @_RINvXs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber6filter9directiveINtB6_12DirectiveSetNtB6_15StaticDirectiveEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorB1j_E9from_iterINtNtNtB1N_8adapters5chain5ChainINtNtB30_10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtB8_3env9directive9DirectiveENCINvMB4M_B4K_11make_tablesINtB41_3VecB4K_EE0EIB3s_INtNtNtB1P_5slice4iter4IterB4K_ENvB5n_9to_staticEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([464 x i8]) align 8 captures(none) dereferenceable(464) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  invoke void @_RINvXs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber6filter9directiveINtB6_12DirectiveSetNtNtNtB8_3env9directive9DirectiveEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorB1j_E9from_iterINtNtCsexYYUdYSQU6_5alloc3vec3VecB1j_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([656 x i8]) align 8 captures(none) dereferenceable(656) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke void @_RNvXsx_Csct6HaUIs3yu_8smallvecINtB5_8SmallVecANtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter9directive15StaticDirectivej8_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %i.y)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %i.z, ptr noundef nonnull align 8 dereferenceable(464) %i.d, i64 464, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef nonnull align 8 dereferenceable(656) %i.b, i64 656, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.e:                                             ; preds = %bb.c, %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.g
  %.pn16 = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.x, %bb.c ]
  resume { ptr, i32 } %.pn16

bb.g:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #16
          to label %bb.f unwind label %bb.e
}

end_hunk_0
begin_hunk_1_@_RNvNtCsl8OoimOLbh_6qdrant7tracing5setup:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload6HandleINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerINtNtB36_7layered7LayeredINtBE_5LayerIB1t_IB28_IB2u_DIB34_NtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB4V_4SyncEL_EENtNtB1x_3env9EnvFilterB4j_EB4j_EB4j_EEB4T_B5c_EL_EEB5s_B3n_EB3n_EECsl8OoimOLbh_6qdrant.exit4.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.s:                                             ; preds = %bb.p, %bb.m
  %.sink = phi ptr [ %i.x, %bb.m ], [ %i.z, %bb.p ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.aa, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.ab = load ptr, ptr %i.c, align 8, !alias.scope !604, !nonnull !5, !noundef !5
  %i.ac = atomicrmw add ptr %i.ab, i64 -1 release, align 8, !noalias !604
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEEB1Z_.exit.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEEB1Z_.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_5boxed3BoxDINtNtB1E_5layer5LayerINtNtB3F_7layered7LayeredINtNtB1E_6reload5LayerIB1y_IB2I_IB3k_DIB3D_NtNtNtB1E_8registry7sharded8RegistryENtNtB2M_6marker4SendNtB5G_4SyncEL_EENtNtB1C_3env9EnvFilterB53_EB53_EB53_EEB5E_B5Y_EL_EEB6e_B3X_EEENtNtNtB2M_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload6HandleINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerINtNtB36_7layered7LayeredINtBE_5LayerIB1t_IB28_IB2u_DIB34_NtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB4V_4SyncEL_EENtNtB1x_3env9EnvFilterB4j_EB4j_EB4j_EEB4T_B5c_EL_EEB5s_B3n_EB3n_EECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEEB1Z_.exit.i: ; preds = %bb.t, %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_5boxed3BoxDINtNtB1E_5layer5LayerINtNtB3F_7layered7LayeredINtNtB1E_6reload5LayerIB1y_IB2I_IB3k_DIB3D_NtNtNtB1E_8registry7sharded8RegistryENtNtB2M_6marker4SendNtB5G_4SyncEL_EENtNtB1C_3env9EnvFilterB53_EB53_EB53_EEB5E_B5Y_EL_EEB6e_B3X_EEENtNtNtB2M_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload6HandleINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerINtNtB36_7layered7LayeredINtBE_5LayerIB1t_IB28_IB2u_DIB34_NtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB4V_4SyncEL_EENtNtB1x_3env9EnvFilterB4j_EB4j_EB4j_EEB4T_B5c_EL_EEB5s_B3n_EB3n_EECsl8OoimOLbh_6qdrant.exit4.i unwind label %bb.v

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload6HandleINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerINtNtB36_7layered7LayeredINtBE_5LayerIB1t_IB28_IB2u_DIB34_NtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB4V_4SyncEL_EENtNtB1x_3env9EnvFilterB4j_EB4j_EB4j_EEB4T_B5c_EL_EEB5s_B3n_EB3n_EECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.v, %bb.u
  %.pn.i = phi { ptr, i32 } [ %i.ai, %bb.v ], [ %i.ae, %bb.u ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_5boxed3BoxDINtNtB1E_5layer5LayerNtNtNtB1E_8registry7sharded8RegistryENtNtB2M_6marker4SendNtB4A_4SyncEL_EENtNtB1C_3env9EnvFilterB3X_EEENtNtNtB2M_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload5LayerINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerNtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB3Y_4SyncEL_EENtNtB1w_3env9EnvFilterB3m_EB3m_EECsl8OoimOLbh_6qdrant.exit unwind label %bb.w

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEEB1Z_.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload6HandleINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerINtNtB36_7layered7LayeredINtBE_5LayerIB1t_IB28_IB2u_DIB34_NtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB4V_4SyncEL_EENtNtB1x_3env9EnvFilterB4j_EB4j_EB4j_EEB4T_B5c_EL_EEB5s_B3n_EB3n_EECsl8OoimOLbh_6qdrant.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload6HandleINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerINtNtB36_7layered7LayeredINtBE_5LayerIB1t_IB28_IB2u_DIB34_NtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB4V_4SyncEL_EENtNtB1x_3env9EnvFilterB4j_EB4j_EB4j_EEB4T_B5c_EL_EEB5s_B3n_EB3n_EECsl8OoimOLbh_6qdrant.exit4.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEEB1Z_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_5boxed3BoxDINtNtB1E_5layer5LayerNtNtNtB1E_8registry7sharded8RegistryENtNtB2M_6marker4SendNtB4A_4SyncEL_EENtNtB1C_3env9EnvFilterB3X_EEENtNtNtB2M_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj)
  br label %bb.r

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload6HandleINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerINtNtB36_7layered7LayeredINtBE_5LayerIB1t_IB28_IB2u_DIB34_NtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB4V_4SyncEL_EENtNtB1x_3env9EnvFilterB4j_EB4j_EB4j_EEB4T_B5c_EL_EEB5s_B3n_EB3n_EECsl8OoimOLbh_6qdrant.exit.i, %bb.u
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.x:                                             ; preds = %bb.ad, %.thread54, %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload5LayerINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerNtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB3Y_4SyncEL_EENtNtB1w_3env9EnvFilterB3m_EB3m_EECsl8OoimOLbh_6qdrant.exit.thread, %bb.aa, %bb.y, %bb.j
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.y:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layered7LayeredINtNtBI_6reload5LayerINtNtNtBI_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtBG_5LayerIBC_IB1D_IB1Y_IB2D_IB2Z_DIB3z_NtNtNtBI_8registry7sharded8RegistryENtNtB4_6marker4SendNtB4Q_4SyncEL_EENtNtB22_3env9EnvFilterB4e_EB4e_EB4e_EEB4O_B57_EL_EEB5n_B3K_EB3K_EB3K_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(576) %i.e) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload5LayerINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerNtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB3Y_4SyncEL_EENtNtB1w_3env9EnvFilterB3m_EB3m_EECsl8OoimOLbh_6qdrant.exit unwind label %bb.x

bb.z:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_5boxed3BoxDINtNtB1E_5layer5LayerINtNtB3F_7layered7LayeredINtNtB1E_6reload5LayerIB1y_IB2I_IB3k_DIB3D_NtNtNtB1E_8registry7sharded8RegistryENtNtB2M_6marker4SendNtB5G_4SyncEL_EENtNtB1C_3env9EnvFilterB53_EB53_EB53_EEB5E_B5Y_EL_EEB6e_B3X_EEENtNtNtB2M_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.thread54 unwind label %bb.x

bb.aa:                                            ; preds = %bb.f, %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layered7LayeredINtNtBI_6reload5LayerINtNtNtBI_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtBG_5LayerNtNtNtBI_8registry7sharded8RegistryENtNtB4_6marker4SendNtB4m_4SyncEL_EENtNtB22_3env9EnvFilterB3K_EB3K_EB3K_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(560) %i.i) #16
          to label %.thread54 unwind label %bb.x

bb.ab:                                            ; preds = %.thread54
  br i1 %.sroa.04.023, label %bb.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload5LayerINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerNtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB3Y_4SyncEL_EENtNtB1w_3env9EnvFilterB3m_EB3m_EECsl8OoimOLbh_6qdrant.exit.thread

.thread54:                                        ; preds = %bb.aa, %bb.z, %.thread16
  %.sroa.04.023 = phi i1 [ %.sroa.04.1, %.thread16 ], [ false, %bb.z ], [ false, %bb.aa ]
  %.pn.pn.pn.pn21 = phi { ptr, i32 } [ %i.q, %.thread16 ], [ %i.an, %bb.z ], [ %i.ao, %bb.aa ] ; 3 uses
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_5boxed3BoxDINtNtB1E_5layer5LayerNtNtNtB1E_8registry7sharded8RegistryENtNtB2M_6marker4SendNtB4A_4SyncEL_EENtNtB1C_3env9EnvFilterB3X_EEENtNtNtB2M_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.ab unwind label %bb.x

bb.ac:                                            ; preds = %bb.ab
  %i.ap = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !605
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload5LayerINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerNtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB3Y_4SyncEL_EENtNtB1w_3env9EnvFilterB3m_EB3m_EECsl8OoimOLbh_6qdrant.exit.thread

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_5boxed3BoxDINtNtB1D_5layer5LayerNtNtNtB1D_8registry7sharded8RegistryENtNtB2L_6marker4SendNtB4z_4SyncEL_EENtNtB1B_3env9EnvFilterB3W_EEE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload5LayerINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerNtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB3Y_4SyncEL_EENtNtB1w_3env9EnvFilterB3m_EB3m_EECsl8OoimOLbh_6qdrant.exit.thread unwind label %bb.x

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload5LayerINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerNtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB3Y_4SyncEL_EENtNtB1w_3env9EnvFilterB3m_EB3m_EECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload6HandleINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerINtNtB36_7layered7LayeredINtBE_5LayerIB1t_IB28_IB2u_DIB34_NtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB4V_4SyncEL_EENtNtB1x_3env9EnvFilterB4j_EB4j_EB4j_EEB4T_B5c_EL_EEB5s_B3n_EB3n_EECsl8OoimOLbh_6qdrant.exit.i, %bb.j, %bb.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload5LayerINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerNtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB3Y_4SyncEL_EENtNtB1w_3env9EnvFilterB3m_EB3m_EECsl8OoimOLbh_6qdrant.exit.thread
  %.pn.pn.pn.pn.pn14 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn15, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload5LayerINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerNtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB3Y_4SyncEL_EENtNtB1w_3env9EnvFilterB3m_EB3m_EECsl8OoimOLbh_6qdrant.exit.thread ], [ %i.v, %bb.j ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload6HandleINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerINtNtB36_7layered7LayeredINtBE_5LayerIB1t_IB28_IB2u_DIB34_NtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB4V_4SyncEL_EENtNtB1x_3env9EnvFilterB4j_EB4j_EB4j_EEB4T_B5c_EL_EEB5s_B3n_EB3n_EECsl8OoimOLbh_6qdrant.exit.i ], [ %i.am, %bb.y ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn14

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload5LayerINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerNtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB3Y_4SyncEL_EENtNtB1w_3env9EnvFilterB3m_EB3m_EECsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.ac, %bb.ad, %bb.ab, %.thread
  %.pn.pn.pn.pn.pn15 = phi { ptr, i32 } [ %i.m, %.thread ], [ %.pn.pn.pn.pn21, %bb.ab ], [ %.pn.pn.pn.pn21, %bb.ad ], [ %.pn.pn.pn.pn21, %bb.ac ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(200) %1) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload5LayerINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerNtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB3Y_4SyncEL_EENtNtB1w_3env9EnvFilterB3m_EB3m_EECsl8OoimOLbh_6qdrant.exit unwind label %bb.x
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsl8OoimOLbh_6qdrant7tracing6filter(ptr dead_on_unwind noalias nofree noundef writable sret([1768 x i8]) align 8 captures(address) dereferenceable(1768) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [112 x i8], align 8               ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 34 uses
  %i.g = alloca [16 x i8], align 8                ; 26 uses
  %i.h = alloca [8 x i8], align 8                 ; 40 uses
  %i.i = alloca [16 x i8], align 8                ; 42 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 15 uses
  %i.l = alloca [24 x i8], align 8                ; 15 uses
  %i.m = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %2, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 8 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %2, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %1, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %2, ptr %.sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx, align 8
  %.sroa.514.sroa.5.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 0, ptr %.sroa.514.sroa.5.0..sroa.514.0..sroa_idx.sroa_idx, align 8
  %.sroa.514.sroa.6.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 %2, ptr %.sroa.514.sroa.6.0..sroa.514.0..sroa_idx.sroa_idx, align 8
  %.sroa.514.sroa.7.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i32 44, ptr %.sroa.514.sroa.7.0..sroa.514.0..sroa_idx.sroa_idx, align 8
  %.sroa.514.sroa.8.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  store i32 44, ptr %.sroa.514.sroa.8.0..sroa.514.0..sroa_idx.sroa_idx, align 4
  %.sroa.514.sroa.9.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i8 1, ptr %.sroa.514.sroa.9.0..sroa.514.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 65
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  br label %bb.b

bb.b:                                             ; preds = %.noexc89, %bb.a
  %i.o = invoke fastcc { ptr, i64 } @_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE9next_backCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.k) #18
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc88:                                         ; preds = %bb.b
  %i.p = extractvalue { ptr, i64 } %i.o, 0        ; 2 uses
  %.not.i.not.not = icmp ne ptr %i.p, null        ; 2 uses
  br i1 %.not.i.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc88
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  %i.r = invoke noundef range(i64 -1, 6) i64 @_RNvXs5_Cs7A8gjpeJ2x1_3logNtB5_11LevelFilterNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.q)
          to label %.noexc89 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc89:                                         ; preds = %bb.c
  %.not7.i = icmp eq i64 %i.r, -1
  br i1 %.not7.i, label %bb.b, label %bb.f

bb.d:                                             ; preds = %.noexc88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @2, ptr %i.j, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs6_Cs7A8gjpeJ2x1_3logNtB5_11LevelFilterNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.s = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4, ptr noundef nonnull @3, ptr noundef nonnull %i.j)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  br i1 %i.s, label %.invoke, label %.thread122, !prof !606

.invoke:                                          ; preds = %bb.x, %bb.w, %bb.j, %bb.m, %bb.p, %bb.s, %bb.u, %bb.e
  %i.t = phi ptr [ @15, %bb.w ], [ @6, %bb.e ], [ @15, %bb.u ], [ @15, %bb.s ], [ @15, %bb.p ], [ @15, %bb.m ], [ @15, %bb.j ], [ @17, %bb.x ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t) #20
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.thread122:                                       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.436.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.440.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.444.0..sroa_idx125 = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br label %.thread134

bb.f:                                             ; preds = %.noexc89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @7, ptr %i.i, align 8, !captures !607
  store i64 5, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 3, ptr %i.h, align 8
  %i.ac = icmp samesign ugt i64 %i.r, 3
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ad = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !5 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp ne i64 %i.ad, 0                    ; 2 uses
  %spec.select = select i1 %i.af, ptr @13, ptr inttoptr (i64 1 to ptr)
  %spec.select196 = zext i1 %i.af to i64
  store ptr %spec.select, ptr %i.g, align 8
  store i64 %spec.select196, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.436.0..sroa_idx, align 8
  store ptr %i.i, ptr %i.aa, align 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.440.0..sroa_idx, align 8
  store ptr %i.h, ptr %i.ab, align 8
  store ptr @_RNvXs6_Cs7A8gjpeJ2x1_3logNtB5_11LevelFilterNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  %i.ag = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4, ptr noundef nonnull @14, ptr noundef nonnull %i.f)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread134:                                       ; preds = %.thread122, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit85
  %.sroa.444.0..sroa_idx128.ph = phi ptr [ %.sroa.444.0..sroa_idx, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit85 ], [ %.sroa.444.0..sroa_idx125, %.thread122 ]
  %.ph129 = phi ptr [ %i.ab, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit85 ], [ %i.x, %.thread122 ]
  %.sroa.440.0..sroa_idx127.ph = phi ptr [ %.sroa.440.0..sroa_idx, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit85 ], [ %.sroa.440.0..sroa_idx124, %.thread122 ]
  %.ph130 = phi ptr [ %i.aa, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit85 ], [ %i.w, %.thread122 ]
  %.sroa.436.0..sroa_idx126.ph = phi ptr [ %.sroa.436.0..sroa_idx, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit85 ], [ %.sroa.436.0..sroa_idx123, %.thread122 ]
  %.ph131 = phi ptr [ %i.z, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit85 ], [ %i.v, %.thread122 ]
  %.ph132 = phi i64 [ %i.r, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit85 ], [ 3, %.thread122 ]
  %.ph133 = phi ptr [ %i.y, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit85 ], [ %i.u, %.thread122 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @8, ptr %i.i, align 8, !captures !607
  store i64 2, ptr %.ph133, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 1, ptr %i.h, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @8, ptr %i.i, align 8, !captures !607
  store i64 2, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 1, ptr %i.h, align 8
  %i.ah = icmp samesign ugt i64 %i.r, 1
  br i1 %i.ah, label %bb.i, label %.thread151

.thread151:                                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br label %.thread172

bb.i:                                             ; preds = %.thread134, %bb.h
  %i.ai = phi ptr [ %.ph133, %.thread134 ], [ %i.y, %bb.h ] ; 8 uses
  %i.aj = phi i64 [ %.ph132, %.thread134 ], [ %i.r, %bb.h ]
  %i.ak = phi ptr [ %.ph131, %.thread134 ], [ %i.z, %bb.h ] ; 5 uses
  %.sroa.436.0..sroa_idx126142 = phi ptr [ %.sroa.436.0..sroa_idx126.ph, %.thread134 ], [ %.sroa.436.0..sroa_idx, %bb.h ] ; 5 uses
  %i.al = phi ptr [ %.ph130, %.thread134 ], [ %i.aa, %bb.h ] ; 5 uses
  %.sroa.440.0..sroa_idx127140 = phi ptr [ %.sroa.440.0..sroa_idx127.ph, %.thread134 ], [ %.sroa.440.0..sroa_idx, %bb.h ] ; 5 uses
  %i.am = phi ptr [ %.ph129, %.thread134 ], [ %i.ab, %bb.h ] ; 5 uses
  %.sroa.444.0..sroa_idx128138 = phi ptr [ %.sroa.444.0..sroa_idx128.ph, %.thread134 ], [ %.sroa.444.0..sroa_idx, %bb.h ] ; 5 uses
  %i.an = phi i1 [ %.not.i.not.not, %.thread134 ], [ false, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ao = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !5 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp ne i64 %i.ao, 0                    ; 2 uses
  %spec.select197 = select i1 %i.aq, ptr @13, ptr inttoptr (i64 1 to ptr)
  %spec.select198 = zext i1 %i.aq to i64
  store ptr %spec.select197, ptr %i.g, align 8
  store i64 %spec.select198, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.436.0..sroa_idx126142, align 8
  store ptr %i.i, ptr %i.al, align 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.440.0..sroa_idx127140, align 8
  store ptr %i.h, ptr %i.am, align 8
  store ptr @_RNvXs6_Cs7A8gjpeJ2x1_3logNtB5_11LevelFilterNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.444.0..sroa_idx128138, align 8
  %i.ar = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4, ptr noundef nonnull @14, ptr noundef nonnull %i.f)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  br i1 %i.ar, label %.invoke, label %bb.k, !prof !606

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @9, ptr %i.i, align 8, !captures !607
  store i64 5, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 2, ptr %i.h, align 8
  %i.as = icmp samesign ugt i64 %i.aj, 2          ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.at = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !5 ; 2 uses
  %i.au = icmp sgt i64 %i.at, -1
  call void @llvm.assume(i1 %i.au)
  %i.av = icmp ne i64 %i.at, 0                    ; 2 uses
  %spec.select199 = select i1 %i.av, ptr @13, ptr inttoptr (i64 1 to ptr)
  %spec.select200 = zext i1 %i.av to i64
  store ptr %spec.select199, ptr %i.g, align 8
  store i64 %spec.select200, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.436.0..sroa_idx126142, align 8
  store ptr %i.i, ptr %i.al, align 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.440.0..sroa_idx127140, align 8
  store ptr %i.h, ptr %i.am, align 8
  store ptr @_RNvXs6_Cs7A8gjpeJ2x1_3logNtB5_11LevelFilterNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.444.0..sroa_idx128138, align 8
  %i.aw = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4, ptr noundef nonnull @14, ptr noundef nonnull %i.f)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  br i1 %i.aw, label %.invoke, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit85.2, !prof !606

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit85.2: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @10, ptr %i.i, align 8, !captures !607
  store i64 6, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 3, ptr %i.h, align 8
  br i1 %i.an, label %bb.o, label %.thread179

.thread179:                                       ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit85.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @11, ptr %i.i, align 8, !captures !607
  store i64 3, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 2, ptr %i.h, align 8
  br label %bb.r

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @10, ptr %i.i, align 8, !captures !607
  store i64 6, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 3, ptr %i.h, align 8
  br i1 %i.an, label %bb.o, label %.thread172

bb.o:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit85.2, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ax = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !5 ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, -1
  call void @llvm.assume(i1 %i.ay)
  %i.az = icmp ne i64 %i.ax, 0                    ; 2 uses
  %spec.select201 = select i1 %i.az, ptr @13, ptr inttoptr (i64 1 to ptr)
  %spec.select202 = zext i1 %i.az to i64
  store ptr %spec.select201, ptr %i.g, align 8
end_hunk_1
