Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-4cd5076fd53ab298.xtask.9db97cdd31b73b23-cgu.0?download=true
inline.NumInlined: 15192
inline.NumDeleted: 6593
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 95
begin_hunk_0_@"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h369a8729cb13c1ffE":bb.a
"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17he89e5348ec1bd2efE.exit.i.i": ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h6643a64323ebe260E.exit.i.i.i", %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2f33e8b98c125565E.exit": ; preds = %bb.e, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h6643a64323ebe260E.exit.i.i.i", %bb.d, %bb.a
  %.sroa.4.121 = phi ptr [ %0, %bb.a ], [ %.sroa.4.0, %bb.d ], [ %.sroa.4.0, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h6643a64323ebe260E.exit.i.i.i" ], [ %.sroa.4.0, %bb.e ] ; 6 uses
  %.sroa.18.019 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.d ], [ %i.aq, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h6643a64323ebe260E.exit.i.i.i" ], [ %i.aq, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h6643a64323ebe260E.exit.i.i.i" ], [ %i.c, %bb.e ] ; 3 uses
  %i.bi = icmp eq ptr %.sroa.4.121, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2f33e8b98c125565E.exit", %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2f33e8b98c125565E.exit" ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !19692, !noundef !24 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit17.i.i.i.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit17.i.i.i.i.i": ; preds = %.lr.ph.i.i4
  %i.bn = icmp ne ptr %.sroa.4.121, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !19692, !noundef !24 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit19.i.i.i.i.i", label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit19.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit17.i.i.i.i.i"
  %i.bu = icmp ne ptr %.sroa.4.121, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !19692, !noundef !24 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit21.i.i.i.i.i", label %bb.l

bb.k:                                             ; preds = %bb.l, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit17.i.i.i.i.i"
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit17.i.i.i.i.i" ]
  %.sroa.04.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit17.i.i.i.i.i" ]
  %i.cb = shl nuw nsw i32 %.sroa.04.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit21.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit19.i.i.i.i.i"
  %i.cf = icmp ne ptr %.sroa.4.121, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !19692, !noundef !24
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit21.i.i.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit19.i.i.i.i.i"
  %i.co = phi ptr [ %i.cg, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit21.i.i.i.i.i" ], [ %i.bv, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit19.i.i.i.i.i" ]
  %.sroa.04.1.i.i.i.i.i = phi i32 [ %i.cn, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit21.i.i.i.i.i" ], [ %i.by, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit19.i.i.i.i.i" ]
  %i.cp = shl nuw nsw i32 %.sroa.04.1.i.i.i.i.i, 6
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
  %i.cv = icmp samesign ugt i32 %.sroa.4.1.i.ph.i.i.i.i, 127
  br i1 %i.cv, label %bb.o, label %bb.u

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
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h6643a64323ebe260E.exit.i.i.i6"

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h6643a64323ebe260E.exit.i.i.i6"

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !19693, !noundef !24
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h6643a64323ebe260E.exit.i.i.i6"

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !19693, !noundef !24
  %i.dj = lshr i8 %i.di, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h6643a64323ebe260E.exit.i.i.i6"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h6643a64323ebe260E.exit.i.i.i6": ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h6643a64323ebe260E.exit.i.i.i6", %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.121, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h6643a64323ebe260E.exit.i.i.i6", %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.121 to i64
  %i.do = sub i64 %.sroa.18.019, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17he89e5348ec1bd2efE.exit.i.i", %bb.t, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2f33e8b98c125565E.exit", %bb.u
  %.sroa.0.042 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2f33e8b98c125565E.exit" ], [ %.sroa.0.0, %bb.t ], [ 0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17he89e5348ec1bd2efE.exit.i.i" ] ; 2 uses
  %.sroa.01.1 = phi i64 [ %i.dp, %bb.u ], [ %.sroa.18.019, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2f33e8b98c125565E.exit" ], [ %.sroa.18.019, %bb.t ], [ 0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17he89e5348ec1bd2efE.exit.i.i" ]
  %i.dq = sub nuw i64 %.sroa.01.1, %.sroa.0.042
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.042
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3str7pattern14TwoWaySearcher9next_back17h434f09cb54900f43E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(none) %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.b = sub i64 %.promoted, %5                   ; 2 uses
  %i.c = icmp ult i64 %i.b, %3
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.promoted46 = load i64, ptr %i.h, align 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %5) ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 0, ptr %i.a, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.k = phi i64 [ %.promoted46, %.lr.ph ], [ %i.v, %bb.f ] ; 5 uses
  %i.l = phi i64 [ %i.b, %.lr.ph ], [ %i.x, %bb.f ] ; 9 uses
  %i.m = phi i64 [ %.promoted, %.lr.ph ], [ %i.w, %bb.f ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !noundef !24
  %i.p = and i8 %i.o, 63
  %i.q = zext nneg i8 %i.p to i64
  %i.r = shl nuw i64 1, %i.q
  %i.s = and i64 %i.r, %i.e
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.i, %._crit_edge
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %bb.i ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  store i64 %i.l, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.g)
  %.sroa.01.0 = select i1 %6, i64 %i.g, i64 %.sroa.0.0.i
  %.sroa.01.0.fr = freeze i64 %.sroa.01.0         ; 3 uses
  %i.u = add i64 %.sroa.01.0.fr, -1               ; 2 uses
  %.first_iter = icmp ult i64 %i.u, %5
  %.not110 = icmp eq i64 %.sroa.01.0.fr, 0        ; 2 uses
  br i1 %.first_iter, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.e
  br i1 %.not110, label %._crit_edge114, label %.lr.ph129

.split.us:                                        ; preds = %10
  %.not.us = icmp eq i64 %7, 0
  br i1 %.not.us, label %._crit_edge114, label %.lr.ph129

.lr.ph129:                                        ; preds = %.split.us.preheader, %.split.us
  %.sroa.5.0.us128 = phi i64 [ %7, %.split.us ], [ %.sroa.01.0.fr, %.split.us.preheader ]
  %7 = add i64 %.sroa.5.0.us128, -1               ; 5 uses
  %8 = add i64 %7, %i.l                           ; 3 uses
  %9 = icmp ult i64 %8, %3
  br i1 %9, label %10, label %.split71.us

10:                                               ; preds = %.lr.ph129
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 %7
  %12 = load i8, ptr %11, align 1, !noundef !24
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 %8
  %14 = load i8, ptr %13, align 1, !noundef !24
  %.not23.us = icmp eq i8 %12, %14
  br i1 %.not23.us, label %.split.us, label %.split73.us

.split71.us:                                      ; preds = %.lr.ph129
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %8, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @481) #54
  unreachable

.split73.us:                                      ; preds = %10
  %.neg = add i64 %7, %i.m
  %15 = sub i64 %.neg, %i.g                       ; 3 uses
  store i64 %15, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

.split:                                           ; preds = %bb.e
  br i1 %.not110, label %._crit_edge114, label %.lr.ph113

.sink.split:                                      ; preds = %bb.d, %.split73.us, %bb.n
  %.sink = phi i64 [ %i.j, %bb.n ], [ %5, %.split73.us ], [ %5, %bb.d ] ; 2 uses
  %.ph93 = phi i64 [ %i.aj, %bb.n ], [ %15, %.split73.us ], [ %i.l, %bb.d ]
  store i64 %.sink, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %.split73.us, %bb.n, %bb.d
  %i.v = phi i64 [ %i.k, %.split73.us ], [ %i.k, %bb.n ], [ %i.k, %bb.d ], [ %.sink, %.sink.split ]
  %i.w = phi i64 [ %15, %.split73.us ], [ %i.aj, %bb.n ], [ %i.l, %bb.d ], [ %.ph93, %.sink.split ] ; 2 uses
  %i.x = sub i64 %i.w, %5                         ; 2 uses
  %i.y = icmp ult i64 %i.x, %3
  br i1 %i.y, label %bb.b, label %._crit_edge

._crit_edge114:                                   ; preds = %.split.us, %.split.us.preheader, %.split
  %.sroa.07.0 = select i1 %6, i64 %5, i64 %i.k    ; 2 uses
  %umax69 = tail call i64 @llvm.umax.i64(i64 %.sroa.07.0, i64 %i.g)
  %exitcond.not115.not = icmp ult i64 %i.g, %.sroa.07.0
  br i1 %exitcond.not115.not, label %.lr.ph118, label %._crit_edge119

.lr.ph113:                                        ; preds = %.split
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.u, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @480) #54
  unreachable

bb.g:                                             ; preds = %bb.l
  %exitcond.not = icmp eq i64 %i.z, %umax69
  br i1 %exitcond.not, label %._crit_edge119, label %.lr.ph118

._crit_edge119:                                   ; preds = %._crit_edge114, %bb.g
  store i64 %i.l, ptr %i.a, align 8
  br i1 %6, label %bb.i, label %bb.h

.lr.ph118:                                        ; preds = %._crit_edge114, %bb.g
  %.sroa.08.0116 = phi i64 [ %i.z, %bb.g ], [ %i.g, %._crit_edge114 ] ; 4 uses
  %i.z = add i64 %.sroa.08.0116, 1                ; 2 uses
  %exitcond70.not = icmp eq i64 %.sroa.08.0116, %umax
  br i1 %exitcond70.not, label %bb.k, label %bb.j

bb.h:                                             ; preds = %._crit_edge119
  store i64 %5, ptr %i.h, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge119
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.aa, align 8, !alias.scope !19696
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.ab, align 8, !alias.scope !19696
  br label %bb.c

bb.j:                                             ; preds = %.lr.ph118
  %i.ac = add i64 %.sroa.08.0116, %i.l            ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %3
  br i1 %i.ad, label %bb.l, label %bb.m

bb.k:                                             ; preds = %.lr.ph118
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @478) #54
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.08.0116
  %i.af = load i8, ptr %i.ae, align 1, !noundef !24
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !24
  %.not22 = icmp eq i8 %i.af, %i.ah
  br i1 %.not22, label %bb.g, label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ai = add i64 %i.g, %i.l
  %umax68 = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.ai)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax68, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @479) #54
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aj = sub i64 %i.m, %i.j                      ; 3 uses
  store i64 %i.aj, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h8cdf1748ba45a43cE(i64 %.0.val, i64 %.8.val, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !19709
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !19709
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !19709
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !19709
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !19709
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !19709
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !19709
  %.val.i = load i64, ptr %0, align 8, !noalias !19710, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19711
  store i64 %.val.i, ptr %i.a, align 8, !noalias !19711
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19711
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !19712
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !19712
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !19712 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !19712
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !19712, !noundef !24
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !19712, !noundef !24
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bq
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h98b4340ab986f628E(i64 %.0.val, i64 %.8.val, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !19725
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !19725
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !19725
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !19725
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !19725
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !19725
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !19725
  %.val.i = load i64, ptr %0, align 8, !noalias !19726, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19727
  store i64 %.val.i, ptr %i.a, align 8, !noalias !19727
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19727
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !19728
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !19728
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !19728 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !19728
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !19728, !noundef !24
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !19728, !noundef !24
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bq
end_hunk_0
begin_hunk_1_@"_ZN5xtask6common7command3run28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf11cf45ef12e7926E":bb.a
  %i.ig = shl nuw i64 1, %i.if
  %i.ih = and i64 %i.ig, %i.hv
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ij = add i64 %i.hz, %i.gz
  br label %.sink.split.i.i

bb.ab:                                            ; preds = %bb.z
  %.sroa.0.0.i.i10.i = call i64 @llvm.umax.i64(i64 %i.ia, i64 %i.hw) ; 4 uses
  %umax50.i11.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i10.i, i64 %i.gz)
  %exitcond.not.i13.i1343.not = icmp ult i64 %.sroa.0.0.i.i10.i, %i.gz
  br i1 %exitcond.not.i13.i1343.not, label %.lr.ph, label %.preheader3.i.preheader

.sink.split.i.i:                                  ; preds = %bb.ai, %bb.af, %bb.aa
  %.sink.i.i = phi i64 [ %i.hy, %bb.af ], [ 0, %bb.ai ], [ 0, %bb.aa ]
  %.ph72.i.i = phi i64 [ %i.iz, %bb.af ], [ %i.jf, %bb.ai ], [ %i.ij, %bb.aa ] ; 2 uses
  %i.ik = add i64 %.ph72.i.i, %i.ha               ; 2 uses
  %i.il = icmp ult i64 %i.ik, %i.gx
  br i1 %i.il, label %bb.z, label %.loopexit

bb.ac:                                            ; preds = %bb.ag
  %i.im = add nuw i64 %.sroa.02.0.i12.i1344, 1    ; 2 uses
  %exitcond.not.i13.i = icmp eq i64 %i.im, %umax50.i11.i
  br i1 %exitcond.not.i13.i, label %.preheader3.i.preheader, label %.lr.ph

.preheader3.i.preheader:                          ; preds = %bb.ac, %bb.ab
  %i.in = icmp ult i64 %i.ia, %i.hw
  br i1 %i.in, label %.lr.ph1346, label %.loopexit

.lr.ph:                                           ; preds = %bb.ab, %bb.ac
  %.sroa.02.0.i12.i1344 = phi i64 [ %i.im, %bb.ac ], [ %.sroa.0.0.i.i10.i, %bb.ab ] ; 4 uses
  %i.io = add i64 %.sroa.02.0.i12.i1344, %i.hz    ; 2 uses
  %i.ip = icmp ult i64 %i.io, %i.gx
  br i1 %i.ip, label %bb.ag, label %bb.ah

.preheader3.i:                                    ; preds = %bb.ae
  %i.iq = icmp ult i64 %i.ia, %i.ir
  br i1 %i.iq, label %.lr.ph1346, label %.loopexit

.lr.ph1346:                                       ; preds = %.preheader3.i.preheader, %.preheader3.i
  %.sroa.57.0.i16.i1345 = phi i64 [ %i.ir, %.preheader3.i ], [ %i.hw, %.preheader3.i.preheader ]
  %i.ir = add i64 %.sroa.57.0.i16.i1345, -1       ; 6 uses
  %i.is = icmp ult i64 %i.ir, %i.gz
  br i1 %i.is, label %bb.ad, label %.invoke1284

bb.ad:                                            ; preds = %.lr.ph1346
  %i.it = add i64 %i.ir, %i.hz                    ; 3 uses
  %i.iu = icmp ult i64 %i.it, %i.gx
  br i1 %i.iu, label %bb.ae, label %.invoke1284

bb.ae:                                            ; preds = %bb.ad
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ir
  %i.iw = load i8, ptr %i.iv, align 1, !alias.scope !34020, !noundef !24
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.it
  %i.iy = load i8, ptr %i.ix, align 1, !alias.scope !34019, !noundef !24
  %.not.i17.i = icmp eq i8 %i.iw, %i.iy
  br i1 %.not.i17.i, label %.preheader3.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iz = add i64 %i.hz, %i.hx
  br label %.sink.split.i.i

bb.ag:                                            ; preds = %.lr.ph
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.sroa.02.0.i12.i1344
  %i.jb = load i8, ptr %i.ja, align 1, !alias.scope !34020, !noundef !24
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.io
  %i.jd = load i8, ptr %i.jc, align 1, !alias.scope !34019, !noundef !24
  %.not22.i15.i = icmp eq i8 %i.jb, %i.jd
  br i1 %.not22.i15.i, label %bb.ac, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph
  %i.je = add i64 %.sroa.0.0.i.i10.i, %i.hz
  %umax.i14.i = call i64 @llvm.umax.i64(i64 %i.gx, i64 %i.je)
  br label %.invoke1284

bb.ai:                                            ; preds = %bb.ag
  %.reass.i.reass.reass = add i64 %i.hz, %invariant.op
  %i.jf = add i64 %.reass.i.reass.reass, %.sroa.02.0.i12.i1344
  br label %.sink.split.i.i

bb.aj:                                            ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !34021)
  call void @llvm.experimental.noalias.scope.decl(metadata !34022)
  call void @llvm.experimental.noalias.scope.decl(metadata !34023)
  %.promoted.i2.i = load i64, ptr %i.ec, align 8, !alias.scope !34021, !noalias !34009 ; 2 uses
  %i.jg = add i64 %.promoted.i2.i, %i.ha          ; 2 uses
  %i.jh = icmp ult i64 %i.jg, %i.gx
  br i1 %i.jh, label %.lr.ph.i4.i, label %.loopexit

.lr.ph.i4.i:                                      ; preds = %bb.aj
  %i.ji = load i64, ptr %i.ed, align 8, !alias.scope !34021, !noalias !34009, !noundef !24
  %i.jj = load i64, ptr %i.du, align 8, !alias.scope !34021, !noalias !34009
  %.fr1040 = freeze i64 %i.jj                     ; 8 uses
  %i.jk = load i64, ptr %i.dw, align 8, !alias.scope !34021, !noalias !34009
  %umax50.i.i = call i64 @llvm.umax.i64(i64 %.fr1040, i64 %i.gz)
  %i.jl = add i64 %.fr1040, -1                    ; 2 uses
  %.first_iter.i = icmp ult i64 %i.jl, %i.gz
  %exitcond.not.i.i1348.not = icmp ult i64 %.fr1040, %i.gz
  %invariant.op1458 = sub i64 1, %.fr1040
  %.not.i284.us1351 = icmp eq i64 %.fr1040, 0     ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.lr.ph.i4.i
  %i.jm = phi i64 [ %.promoted.i2.i, %.lr.ph.i4.i ], [ %i.jw, %bb.am ] ; 10 uses
  %i.jn = phi i64 [ %i.jg, %.lr.ph.i4.i ], [ %i.jx, %bb.am ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !alias.scope !34022, !noundef !24
  %i.jq = and i8 %i.jp, 63
  %i.jr = zext nneg i8 %i.jq to i64
  %i.js = shl nuw i64 1, %i.jr
  %i.jt = and i64 %i.js, %i.ji
  %i.ju = icmp eq i64 %i.jt, 0
  br i1 %i.ju, label %bb.al, label %.preheader59.i.preheader

.preheader59.i.preheader:                         ; preds = %bb.ak
  br i1 %exitcond.not.i.i1348.not, label %.lr.ph1350, label %.preheader.i.preheader

bb.al:                                            ; preds = %bb.ak
  %i.jv = add i64 %i.jm, %i.gz
  br label %bb.am

bb.am:                                            ; preds = %bb.aq, %.split1025.us, %bb.al
  %i.jw = phi i64 [ %i.ks, %bb.aq ], [ %i.kh, %.split1025.us ], [ %i.jv, %bb.al ] ; 2 uses
  %i.jx = add i64 %i.jw, %i.ha                    ; 2 uses
  %i.jy = icmp ult i64 %i.jx, %i.gx
  br i1 %i.jy, label %bb.ak, label %.loopexit

.preheader59.i:                                   ; preds = %bb.ao
  %i.jz = add nuw i64 %.sroa.02.0.i.i1349, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.jz, %umax50.i.i
  br i1 %exitcond.not.i.i, label %.preheader.i.preheader, label %.lr.ph1350

.preheader.i.preheader:                           ; preds = %.preheader59.i, %.preheader59.i.preheader
  br i1 %.first_iter.i, label %.preheader.i.us.preheader, label %.preheader.i.preheader.split

.preheader.i.us.preheader:                        ; preds = %.preheader.i.preheader
  br i1 %.not.i284.us1351, label %.loopexit, label %.lr.ph1353

.preheader.i.us:                                  ; preds = %bb.an
  %.not.i284.us = icmp eq i64 %i.ka, 0
  br i1 %.not.i284.us, label %.loopexit, label %.lr.ph1353

.lr.ph1353:                                       ; preds = %.preheader.i.us.preheader, %.preheader.i.us
  %.sroa.57.0.i.i.us1352 = phi i64 [ %i.ka, %.preheader.i.us ], [ %.fr1040, %.preheader.i.us.preheader ]
  %i.ka = add i64 %.sroa.57.0.i.i.us1352, -1      ; 4 uses
  %i.kb = add i64 %i.ka, %i.jm                    ; 3 uses
  %i.kc = icmp ult i64 %i.kb, %i.gx
  br i1 %i.kc, label %bb.an, label %.invoke1284

bb.an:                                            ; preds = %.lr.ph1353
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ka
  %i.ke = load i8, ptr %i.kd, align 1, !alias.scope !34023, !noundef !24
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.kb
  %i.kg = load i8, ptr %i.kf, align 1, !alias.scope !34022, !noundef !24
  %.not.i.i.us = icmp eq i8 %i.ke, %i.kg
  br i1 %.not.i.i.us, label %.preheader.i.us, label %.split1025.us

.split1025.us:                                    ; preds = %bb.an
  %i.kh = add i64 %i.jm, %i.jk
  br label %bb.am

.preheader.i.preheader.split:                     ; preds = %.preheader.i.preheader
  br i1 %.not.i284.us1351, label %.loopexit, label %.invoke1284

.lr.ph1350:                                       ; preds = %.preheader59.i.preheader, %.preheader59.i
  %.sroa.02.0.i.i1349 = phi i64 [ %i.jz, %.preheader59.i ], [ %.fr1040, %.preheader59.i.preheader ] ; 4 uses
  %i.ki = add i64 %.sroa.02.0.i.i1349, %i.jm      ; 2 uses
  %i.kj = icmp ult i64 %i.ki, %i.gx
  br i1 %i.kj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph1350
  %i.kk = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.sroa.02.0.i.i1349
  %i.kl = load i8, ptr %i.kk, align 1, !alias.scope !34023, !noundef !24
  %i.km = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ki
  %i.kn = load i8, ptr %i.km, align 1, !alias.scope !34022, !noundef !24
  %.not22.i.i = icmp eq i8 %i.kl, %i.kn
  br i1 %.not22.i.i, label %.preheader59.i, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph1350
  %i.ko = add i64 %i.jm, %.fr1040
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.gx, i64 %i.ko)
  br label %.invoke1284

.invoke1284:                                      ; preds = %.preheader.i.preheader.split, %bb.ad, %.lr.ph1346, %.lr.ph1353, %bb.ah, %bb.ap
  %i.kp = phi i64 [ %umax.i.i, %bb.ap ], [ %i.kb, %.lr.ph1353 ], [ %i.it, %bb.ad ], [ %umax.i14.i, %bb.ah ], [ %i.ir, %.lr.ph1346 ], [ %i.jl, %.preheader.i.preheader.split ]
  %i.kq = phi i64 [ %i.gx, %bb.ap ], [ %i.gx, %.lr.ph1353 ], [ %i.gx, %bb.ad ], [ %i.gx, %bb.ah ], [ %i.gz, %.lr.ph1346 ], [ %i.gz, %.preheader.i.preheader.split ]
  %i.kr = phi ptr [ @477, %bb.ap ], [ @476, %.lr.ph1353 ], [ @476, %bb.ad ], [ @477, %bb.ah ], [ @475, %.lr.ph1346 ], [ @475, %.preheader.i.preheader.split ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.kp, i64 noundef %i.kq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kr) #54
          to label %.cont1285 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont1285:                                        ; preds = %.invoke1284
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %.reass170.i.reass.reass = add i64 %i.jm, %invariant.op1458
  %i.ks = add i64 %.reass170.i.reass.reass, %.sroa.02.0.i.i1349
  br label %bb.am

.loopexit:                                        ; preds = %.sink.split.i.i, %.preheader3.i.preheader, %bb.am, %.preheader.i.us.preheader, %.preheader3.i, %.preheader.i.us, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a2781a5f7381f4aE.exit12.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a2781a5f7381f4aE.exit14.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a2781a5f7381f4aE.exit16.i.i.i.i", %bb.x, %bb.l, %.preheader.i.i, %bb.o, %bb.w, %bb.y, %bb.aj, %.preheader.i.preheader.split
  %.sroa.6.3.i = phi i64 [ undef, %bb.y ], [ %i.jm, %.preheader.i.preheader.split ], [ undef, %.preheader.i.i ], [ %i.ex, %bb.w ], [ %i.hz, %.preheader3.i ], [ %i.jm, %bb.am ], [ %i.hb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a2781a5f7381f4aE.exit12.i.i.i.i" ], [ undef, %bb.aj ], [ %.promoted.i.i, %bb.o ], [ %.promoted.i.i, %bb.l ], [ %i.jm, %.preheader.i.us ], [ %i.hb, %bb.x ], [ %i.hb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a2781a5f7381f4aE.exit16.i.i.i.i" ], [ %i.hb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a2781a5f7381f4aE.exit14.i.i.i.i" ], [ %i.jm, %.preheader.i.us.preheader ], [ %i.hz, %.preheader3.i.preheader ], [ %i.hz, %.sink.split.i.i ] ; 11 uses
  %.sroa.0.01.i = phi i1 [ false, %bb.y ], [ true, %.preheader.i.preheader.split ], [ false, %.preheader.i.i ], [ true, %bb.w ], [ true, %.preheader3.i ], [ false, %bb.am ], [ true, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a2781a5f7381f4aE.exit12.i.i.i.i" ], [ false, %bb.aj ], [ true, %bb.o ], [ %i.ey, %bb.l ], [ true, %.preheader.i.us ], [ true, %bb.x ], [ true, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a2781a5f7381f4aE.exit16.i.i.i.i" ], [ true, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a2781a5f7381f4aE.exit14.i.i.i.i" ], [ true, %.preheader.i.us.preheader ], [ false, %.sink.split.i.i ], [ true, %.preheader3.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !34009
  %.sroa.0.0.val = load ptr, ptr %i.eq, align 8, !nonnull !24, !noundef !24
  %.sroa.0.0.val254 = load i64, ptr %i.er, align 8, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !34024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !34024
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h2e461a66dd9667e2E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.av, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.val, i64 noundef %.sroa.0.0.val254, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1232, i64 noundef 2)
          to label %.noexc302 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc302:                                        ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !34025)
  call void @llvm.experimental.noalias.scope.decl(metadata !34026)
  %i.kt = load i64, ptr %i.av, align 8, !range !36, !alias.scope !34026, !noalias !34024, !noundef !24
  %i.ku = trunc nuw i64 %i.kt to i1
  br i1 %i.ku, label %.invoke, label %.preheader.i.i292

.preheader.i.i292:                                ; preds = %.noexc302
  %i.kv = load i8, ptr %i.ee, align 2, !range !38, !alias.scope !34027, !noalias !34024, !noundef !24
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.thread7.i.i", label %.lr.ph.i.i293

.lr.ph.i.i293:                                    ; preds = %.preheader.i.i292
  %i.kx = load ptr, ptr %i.eh, align 8, !alias.scope !34027, !noalias !34024, !nonnull !24, !align !42, !noundef !24 ; 8 uses
  %i.ky = load i64, ptr %i.ei, align 8, !alias.scope !34027, !noalias !34024, !noundef !24 ; 8 uses
  %.promoted.i.i294 = load i8, ptr %i.ef, align 1, !alias.scope !34027, !noalias !34024
  %.promoted29.i.i = load i64, ptr %i.eg, align 8, !alias.scope !34027, !noalias !34024 ; 12 uses
  %i.kz = trunc nuw i8 %.promoted.i.i294 to i1    ; 2 uses
  %i.la = icmp eq i64 %.promoted29.i.i, 0
  br i1 %i.la, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i293
  %.not.i.i.i.peel.i295 = icmp ult i64 %.promoted29.i.i, %i.ky
  br i1 %.not.i.i.i.peel.i295, label %bb.ar, label %.split.i.i.i.peel.i296

.split.i.i.i.peel.i296:                           ; preds = %.lr.ph.i
  %i.lb = icmp eq i64 %.promoted29.i.i, %i.ky
  br i1 %i.lb, label %bb.as, label %.invoke1283

bb.ar:                                            ; preds = %.lr.ph.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 %.promoted29.i.i
  %i.ld = load i8, ptr %i.lc, align 1, !alias.scope !34028, !noalias !34029, !noundef !24
  %i.le = icmp sgt i8 %i.ld, -65
  br i1 %i.le, label %bb.as, label %.invoke1283

bb.as:                                            ; preds = %bb.ar, %.split.i.i.i.peel.i296
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kx, i64 %.promoted29.i.i ; 4 uses
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 -1
  %i.lh = load i8, ptr %i.lg, align 1, !noalias !34030, !noundef !24 ; 3 uses
  %i.li = icmp sgt i8 %i.lh, -1
  br i1 %i.li, label %bb.av, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit17.i.i.i.peel.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit17.i.i.i.peel.i": ; preds = %bb.as
  %i.lj = icmp ne i64 %.promoted29.i.i, 1
  call void @llvm.assume(i1 %i.lj)
  %i.lk = getelementptr inbounds i8, ptr %i.lf, i64 -2
  %i.ll = load i8, ptr %i.lk, align 1, !noalias !34030, !noundef !24 ; 3 uses
  %i.lm = and i8 %i.ll, 31
  %i.ln = zext nneg i8 %i.lm to i32
  %i.lo = icmp slt i8 %i.ll, -64
  br i1 %i.lo, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit19.i.i.i.peel.i", label %bb.au

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit19.i.i.i.peel.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit17.i.i.i.peel.i"
  %i.lp = icmp ne i64 %.promoted29.i.i, 2
  call void @llvm.assume(i1 %i.lp)
  %i.lq = getelementptr inbounds i8, ptr %i.lf, i64 -3
  %i.lr = load i8, ptr %i.lq, align 1, !noalias !34030, !noundef !24 ; 3 uses
  %i.ls = and i8 %i.lr, 15
  %i.lt = zext nneg i8 %i.ls to i32
  %i.lu = icmp slt i8 %i.lr, -64
  br i1 %i.lu, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit21.i.i.i.peel.i", label %bb.at

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit21.i.i.i.peel.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit19.i.i.i.peel.i"
  %i.lv = icmp ne i64 %.promoted29.i.i, 3
  call void @llvm.assume(i1 %i.lv)
  %i.lw = getelementptr inbounds i8, ptr %i.lf, i64 -4
  %i.lx = load i8, ptr %i.lw, align 1, !noalias !34030, !noundef !24
  %i.ly = and i8 %i.lx, 7
  %i.lz = zext nneg i8 %i.ly to i32
  %i.ma = shl nuw nsw i32 %i.lz, 6
  %i.mb = and i8 %i.lr, 63
  %i.mc = zext nneg i8 %i.mb to i32
  %i.md = or disjoint i32 %i.ma, %i.mc
  br label %bb.at

bb.at:                                            ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit21.i.i.i.peel.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit19.i.i.i.peel.i"
  %.sroa.04.1.i.i.i.peel.i = phi i32 [ %i.md, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit21.i.i.i.peel.i" ], [ %i.lt, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit19.i.i.i.peel.i" ]
  %i.me = shl nuw nsw i32 %.sroa.04.1.i.i.i.peel.i, 6
  %i.mf = and i8 %i.ll, 63
  %i.mg = zext nneg i8 %i.mf to i32
  %i.mh = or disjoint i32 %i.me, %i.mg
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit17.i.i.i.peel.i"
  %.sroa.04.0.i.i.i.peel.i = phi i32 [ %i.mh, %bb.at ], [ %i.ln, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit17.i.i.i.peel.i" ]
  %i.mi = shl nuw nsw i32 %.sroa.04.0.i.i.i.peel.i, 6
  %i.mj = and i8 %i.lh, 63
  %i.mk = zext nneg i8 %i.mj to i32
  %i.ml = or disjoint i32 %i.mi, %i.mk
  br label %bb.aw

bb.av:                                            ; preds = %bb.as
  %i.mm = zext nneg i8 %i.lh to i32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sroa.4.1.i.ph.i.i.peel.i = phi i32 [ %i.mm, %bb.av ], [ %i.ml, %bb.au ] ; 4 uses
  %i.mn = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.mn)
  br i1 %i.kz, label %._crit_edge.thread.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.mo = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel.i, 128
  br i1 %i.mo, label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.i.peel.i", label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mp = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel.i, 2048
  br i1 %i.mp, label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.i.peel.i", label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mq = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i298 = select i1 %i.mq, i64 -3, i64 -4
  br label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.i.peel.i"

"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.i.peel.i": ; preds = %bb.az, %bb.ay, %bb.ax
  %.sroa.01.0.neg.i.i.peel.i = phi i64 [ -2, %bb.ay ], [ %..i.i.peel.i298, %bb.az ], [ -1, %bb.ax ]
  %i.mr = add i64 %.sroa.01.0.neg.i.i.peel.i, %.promoted29.i.i ; 14 uses
  %i.ms = icmp eq i64 %i.mr, 0
  br i1 %i.ms, label %._crit_edge.thread.i, label %.peel.next.i

.invoke:                                          ; preds = %.noexc302
  %i.mt = load i64, ptr %i.el, align 8, !alias.scope !34026, !noalias !34024, !noundef !24
  %i.mu = icmp eq i64 %i.mt, -1
  %i.mv = load ptr, ptr %i.eh, align 8, !alias.scope !34026, !noalias !34024, !nonnull !24, !align !42, !noundef !24
  %i.mw = load i64, ptr %i.ei, align 8, !alias.scope !34026, !noalias !34024, !noundef !24
  %i.mx = load ptr, ptr %i.em, align 8, !alias.scope !34026, !noalias !34024, !nonnull !24, !align !42, !noundef !24
  %i.my = load i64, ptr %i.en, align 8, !alias.scope !34026, !noalias !34024, !noundef !24
  invoke fastcc void @_ZN4core3str7pattern14TwoWaySearcher9next_back17h434f09cb54900f43E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias noundef align 8 dereferenceable(64) %i.ek, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.mv, i64 noundef %i.mw, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.mx, i64 noundef %i.my, i1 noundef zeroext %i.mu)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.peel.next.i:                                     ; preds = %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.i.peel.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !34031)
  %.not.i.i.i.i299 = icmp ult i64 %i.mr, %i.ky
  br i1 %.not.i.i.i.i299, label %bb.ba, label %.split.i.i.i.i300

.split.i.i.i.i300:                                ; preds = %.peel.next.i
  %i.mz = icmp eq i64 %i.mr, %i.ky
  br i1 %i.mz, label %bb.bb, label %.invoke1283

bb.ba:                                            ; preds = %.peel.next.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.mr
  %i.nb = load i8, ptr %i.na, align 1, !alias.scope !34028, !noalias !34032, !noundef !24
  %i.nc = icmp sgt i8 %i.nb, -65
  br i1 %i.nc, label %bb.bb, label %.invoke1283

bb.bb:                                            ; preds = %bb.ba, %.split.i.i.i.i300
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.mr ; 3 uses
  %i.ne = getelementptr inbounds i8, ptr %i.nd, i64 -1
  %i.nf = load i8, ptr %i.ne, align 1, !noalias !34033, !noundef !24
  %i.ng = icmp sgt i8 %i.nf, -1
  br i1 %i.ng, label %._crit_edge.thread.i, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit17.i.i.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit17.i.i.i.i": ; preds = %bb.bb
  %i.nh = icmp ne i64 %i.mr, 1
  call void @llvm.assume(i1 %i.nh)
  %i.ni = getelementptr inbounds i8, ptr %i.nd, i64 -2
  %i.nj = load i8, ptr %i.ni, align 1, !noalias !34033, !noundef !24
  %i.nk = icmp slt i8 %i.nj, -64
  br i1 %i.nk, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit19.i.i.i.i", label %._crit_edge.thread.i

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit19.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit17.i.i.i.i"
  %i.nl = icmp ne i64 %i.mr, 2
  call void @llvm.assume(i1 %i.nl)
  %i.nm = getelementptr inbounds i8, ptr %i.nd, i64 -3
  %i.nn = load i8, ptr %i.nm, align 1, !noalias !34033, !noundef !24
  %i.no = icmp slt i8 %i.nn, -64
  br i1 %i.no, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit21.i.i.i.i", label %._crit_edge.thread.i

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit21.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit19.i.i.i.i"
  %i.np = icmp ne i64 %i.mr, 3
  call void @llvm.assume(i1 %i.np)
  br label %._crit_edge.thread.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.i293
  br i1 %i.kz, label %._crit_edge.thread.i, label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.thread7.i.i"

._crit_edge.thread.i:                             ; preds = %bb.bb, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit17.i.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit19.i.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit21.i.i.i.i", %._crit_edge.i, %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.i.peel.i", %bb.aw
  %i.nq = phi i64 [ 0, %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.i.peel.i" ], [ 0, %._crit_edge.i ], [ %.promoted29.i.i, %bb.aw ], [ %i.mr, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit21.i.i.i.i" ], [ %i.mr, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit19.i.i.i.i" ], [ %i.mr, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386ee1fc2174fb94E.exit17.i.i.i.i" ], [ %i.mr, %bb.bb ]
  store i64 %i.nq, ptr %i.ej, align 8, !alias.scope !34025, !noalias !34024
  br label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.thread7.i.i"

"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.thread7.i.i": ; preds = %._crit_edge.thread.i, %._crit_edge.i, %.preheader.i.i292
  %storemerge.i.i = phi i64 [ 1, %._crit_edge.thread.i ], [ 0, %.preheader.i.i292 ], [ 0, %._crit_edge.i ]
  store i64 %storemerge.i.i, ptr %i.aw, align 8, !alias.scope !34025, !noalias !34024
  br label %bb.bc

bb.bc:                                            ; preds = %.invoke, %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.thread7.i.i"
  %i.nr = load i64, ptr %i.aw, align 8, !range !36, !noalias !34024, !noundef !24
  %i.ns = trunc nuw i64 %i.nr to i1
  %i.nt = load i64, ptr %i.ej, align 8, !noalias !34024 ; 12 uses
end_hunk_1
