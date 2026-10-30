Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h619ec96b184ac384E":bb.a
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.au = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.av = zext i1 %i.au to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h19917c15cc345f78E.exit.i.i.i"

bb.g:                                             ; preds = %bb.e
  %i.aw = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.ax = zext i1 %i.aw to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h19917c15cc345f78E.exit.i.i.i"

bb.h:                                             ; preds = %bb.e
  %i.ay = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !2457, !noundef !17
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h19917c15cc345f78E.exit.i.i.i"

bb.i:                                             ; preds = %bb.e
  %i.bc = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !2457, !noundef !17
  %i.bg = lshr i8 %i.bf, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h19917c15cc345f78E.exit.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h19917c15cc345f78E.exit.i.i.i": ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.ax, %bb.g ], [ %i.bb, %bb.h ], [ %i.av, %bb.f ], [ %i.bg, %bb.i ]
  %i.bh = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bh, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h8e51c8ac38b10a2aE.exit.i.i", label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17ha814d48079d57428E.exit"

"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h8e51c8ac38b10a2aE.exit.i.i": ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h19917c15cc345f78E.exit.i.i.i", %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bi = icmp eq ptr %i.an, %i.a
  br i1 %i.bi, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17ha814d48079d57428E.exit", label %.lr.ph.i.i

"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17ha814d48079d57428E.exit": ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h8e51c8ac38b10a2aE.exit.i.i", %bb.e, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h19917c15cc345f78E.exit.i.i.i", %bb.d, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %1, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h8e51c8ac38b10a2aE.exit.i.i" ], [ %i.c, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h19917c15cc345f78E.exit.i.i.i" ], [ %i.c, %bb.d ], [ %i.c, %bb.e ] ; 2 uses
  %i.bj = sub nuw i64 %1, %.sroa.0.0
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0
  %i.bl = insertvalue { ptr, i64 } poison, ptr %i.bk, 0
  %i.bm = insertvalue { ptr, i64 } %i.bl, i64 %i.bj, 1
  ret { ptr, i64 } %i.bm
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$9next_back17h8ade5086cc4e058aE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !21, !noundef !17
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !21, !noundef !17
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.e, align 8
  %i.h = tail call fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$9next_back17h8ade5086cc4e058aE"(ptr noalias noundef align 8 dereferenceable(128) %0) ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.h, 1        ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.k = icmp eq i64 %i.j, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.u, label %bb.v

bb.d:                                             ; preds = %bb.u, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.l, align 8, !nonnull !17, !align !31, !noundef !17 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val6 = load i64, ptr %i.m, align 8, !noundef !17 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2471)
  %i.n = load i64, ptr %0, align 8, !range !44, !alias.scope !2471, !noundef !17
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.n, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.q = load i8, ptr %i.p, align 2, !range !21, !alias.scope !2472, !noundef !17
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.thread7.i", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted.i = load i8, ptr %i.s, align 1, !alias.scope !2472 ; 2 uses
  %.promoted29.i = load i64, ptr %i.t, align 8, !alias.scope !2472 ; 12 uses
  %i.u = trunc nuw i8 %.promoted.i to i1          ; 2 uses
  %i.v = icmp eq i64 %.promoted29.i, 0
  %i.w = xor i8 %.promoted.i, 1                   ; 3 uses
  br i1 %i.v, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2473)
  %.not.i.i.i.peel = icmp ult i64 %.promoted29.i, %.val6
  br i1 %.not.i.i.i.peel, label %bb.e, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %.lr.ph
  %i.x = icmp eq i64 %.promoted29.i, %.val6
  br i1 %i.x, label %bb.f, label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted29.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !2474, !noalias !2475, !noundef !17
  %i.aa = icmp sgt i8 %i.z, -65
  br i1 %i.aa, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e, %.split.i.i.i.peel
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted29.i ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -1
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !2476, !noundef !17 ; 3 uses
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.i, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit17.i.i.i.peel"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit17.i.i.i.peel": ; preds = %bb.f
  %i.af = icmp ne i64 %.promoted29.i, 1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds i8, ptr %i.ab, i64 -2
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !2476, !noundef !17 ; 3 uses
  %i.ai = and i8 %i.ah, 31
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = icmp slt i8 %i.ah, -64
  br i1 %i.ak, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit19.i.i.i.peel", label %bb.h

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit19.i.i.i.peel": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit17.i.i.i.peel"
  %i.al = icmp ne i64 %.promoted29.i, 2
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds i8, ptr %i.ab, i64 -3
  %i.an = load i8, ptr %i.am, align 1, !noalias !2476, !noundef !17 ; 3 uses
  %i.ao = and i8 %i.an, 15
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = icmp slt i8 %i.an, -64
  br i1 %i.aq, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit21.i.i.i.peel", label %bb.g

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit21.i.i.i.peel": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit19.i.i.i.peel"
  %i.ar = icmp ne i64 %.promoted29.i, 3
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.at = load i8, ptr %i.as, align 1, !noalias !2476, !noundef !17
  %i.au = and i8 %i.at, 7
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 6
  %i.ax = and i8 %i.an, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  br label %bb.g

bb.g:                                             ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit21.i.i.i.peel", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit19.i.i.i.peel"
  %.sroa.04.1.i.i.i.peel = phi i32 [ %i.az, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit21.i.i.i.peel" ], [ %i.ap, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit19.i.i.i.peel" ]
  %i.ba = shl nuw nsw i32 %.sroa.04.1.i.i.i.peel, 6
  %i.bb = and i8 %i.ah, 63
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit17.i.i.i.peel"
  %.sroa.04.0.i.i.i.peel = phi i32 [ %i.bd, %bb.g ], [ %i.aj, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit17.i.i.i.peel" ]
  %i.be = shl nuw nsw i32 %.sroa.04.0.i.i.i.peel, 6
  %i.bf = and i8 %i.ad, 63
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.be, %i.bg
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.bi = zext nneg i8 %i.ad to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.4.1.i.ph.i.i.peel = phi i32 [ %i.bi, %bb.i ], [ %i.bh, %bb.h ] ; 4 uses
  %i.bj = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bj)
  br i1 %i.u, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel, 128
  br i1 %i.bk, label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.i.peel", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel, 2048
  br i1 %i.bl, label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.i.peel", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.bm, i64 -3, i64 -4
  br label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.i.peel"

"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.i.peel": ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.01.0.neg.i.i.peel = phi i64 [ -2, %bb.l ], [ %..i.i.peel, %bb.m ], [ -1, %bb.k ]
  %i.bn = add i64 %.sroa.01.0.neg.i.i.peel, %.promoted29.i ; 15 uses
  store i64 %i.bn, ptr %i.t, align 8, !alias.scope !2477
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.r, label %.peel.next

bb.n:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !2471, !noundef !17
  %i.bs = icmp eq i64 %i.br, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !2471, !nonnull !17, !align !31, !noundef !17 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !2471, !noundef !17 ; 2 uses
  br i1 %i.bs, label %bb.t, label %bb.s

.peel.next:                                       ; preds = %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.i.peel"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  %.not.i.i.i = icmp ult i64 %i.bn, %.val6
  br i1 %.not.i.i.i, label %bb.o, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.peel.next
  %i.bx = icmp eq i64 %i.bn, %.val6
  br i1 %i.bx, label %bb.p, label %.loopexit

bb.o:                                             ; preds = %.peel.next
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bn
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !2474, !noalias !2479, !noundef !17
  %i.ca = icmp sgt i8 %i.bz, -65
  br i1 %i.ca, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o, %.split.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bn ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -1
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !2480, !noundef !17
  %i.ce = icmp sgt i8 %i.cd, -1
  br i1 %i.ce, label %.sink.split, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit17.i.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit17.i.i.i": ; preds = %bb.p
  %i.cf = icmp ne i64 %i.bn, 1
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.cb, i64 -2
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !2480, !noundef !17
  %i.ci = icmp slt i8 %i.ch, -64
  br i1 %i.ci, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit19.i.i.i", label %.sink.split

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit19.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit17.i.i.i"
  %i.cj = icmp ne i64 %i.bn, 2
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds i8, ptr %i.cb, i64 -3
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !2480, !noundef !17
  %i.cm = icmp slt i8 %i.cl, -64
  br i1 %i.cm, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit21.i.i.i", label %.sink.split

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit21.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit19.i.i.i"
  %i.cn = icmp ne i64 %i.bn, 3
  tail call void @llvm.assume(i1 %i.cn)
  br label %.sink.split

.loopexit:                                        ; preds = %bb.o, %.split.i.i.i, %bb.e, %.split.i.i.i.peel
  %.lcssa20 = phi i8 [ %i.w, %.split.i.i.i.peel ], [ %i.w, %bb.e ], [ 0, %.split.i.i.i ], [ 0, %bb.o ]
  %.lcssa17 = phi i64 [ %.promoted29.i, %.split.i.i.i.peel ], [ %.promoted29.i, %bb.e ], [ %i.bn, %.split.i.i.i ], [ %i.bn, %bb.o ]
  store i8 %.lcssa20, ptr %i.s, align 1, !alias.scope !2472
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val6, i64 noundef 0, i64 noundef %.lcssa17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @929) #54, !noalias !2479
  unreachable

._crit_edge:                                      ; preds = %.lr.ph.i
  store i8 %i.w, ptr %i.s, align 1, !alias.scope !2472
  br i1 %i.u, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.p, align 2, !alias.scope !2472
  br label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.thread7.i"

.sink.split:                                      ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit19.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit21.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit17.i.i.i", %bb.p, %bb.j
  %.lcssa18 = phi i64 [ %.promoted29.i, %bb.j ], [ %i.bn, %bb.p ], [ %i.bn, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit17.i.i.i" ], [ %i.bn, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit21.i.i.i" ], [ %i.bn, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb96b9de391f93ff8E.exit19.i.i.i" ]
  store i8 0, ptr %i.s, align 1, !alias.scope !2472
  br label %bb.r

bb.r:                                             ; preds = %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.i.peel", %.sink.split, %._crit_edge
  %1 = phi i64 [ %.lcssa18, %.sink.split ], [ 0, %._crit_edge ], [ 0, %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.i.peel" ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.co, align 8, !alias.scope !2470
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.cp, align 8, !alias.scope !2470
  br label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.thread7.i"

"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.thread7.i": ; preds = %bb.r, %bb.q, %.preheader.i
  %storemerge.i = phi i64 [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader.i ]
  store i64 %storemerge.i, ptr %i.a, align 8, !alias.scope !2470
  br label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17h775f985d5ad64e85E.exit"

bb.s:                                             ; preds = %bb.n
  call fastcc void @_ZN4core3str7pattern14TwoWaySearcher9next_back17ha7ad5eeef0917f14E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.bp, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bu, i64 noundef %i.bw, i1 noundef zeroext false)
  br label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17h775f985d5ad64e85E.exit"

bb.t:                                             ; preds = %bb.n
  call fastcc void @_ZN4core3str7pattern14TwoWaySearcher9next_back17ha7ad5eeef0917f14E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.bp, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bu, i64 noundef %i.bw, i1 noundef zeroext true)
  br label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17h775f985d5ad64e85E.exit"

"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17h775f985d5ad64e85E.exit": ; preds = %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.thread7.i", %bb.s, %bb.t
  %i.cq = load i64, ptr %i.a, align 8, !range !44, !noundef !17
  %i.cr = trunc nuw i64 %i.cq to i1
  br i1 %i.cr, label %bb.w, label %bb.x

bb.u:                                             ; preds = %bb.c
  %i.cs = load i8, ptr %i.b, align 1, !range !21, !noundef !17
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.v, label %bb.d

bb.v:                                             ; preds = %bb.u, %bb.c, %bb.a, %bb.y
  %.sroa.6.0 = phi i64 [ undef, %bb.a ], [ %.sroa.6.1, %bb.y ], [ %i.j, %bb.c ], [ undef, %bb.u ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.1, %bb.y ], [ %i.i, %bb.c ], [ null, %bb.u ]
  %i.cu = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.cv = insertvalue { ptr, i64 } %i.cu, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %i.cv

bb.w:                                             ; preds = %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17h775f985d5ad64e85E.exit"
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !17
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !17 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !noundef !17
  %i.dc = sub nuw i64 %i.db, %i.cz
  store i64 %i.cx, ptr %i.da, align 8
  br label %bb.y

bb.x:                                             ; preds = %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17h775f985d5ad64e85E.exit"
  store i8 1, ptr %i.b, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !noundef !17 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dg = load i64, ptr %i.df, align 8, !noundef !17
  %i.dh = sub nuw i64 %i.dg, %i.de
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sroa.6.1 = phi i64 [ %i.dc, %bb.w ], [ %i.dh, %bb.x ]
  %.pn = phi i64 [ %i.cz, %bb.w ], [ %i.de, %bb.x ]
  %.sroa.0.1 = getelementptr inbounds nuw i8, ptr %.val, i64 %.pn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3str7pattern14TwoWaySearcher9next_back17ha7ad5eeef0917f14E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(none) %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.b = sub i64 %.promoted, %5                   ; 2 uses
  %i.c = icmp ult i64 %i.b, %3
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !17
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
  %i.o = load i8, ptr %i.n, align 1, !noundef !17
  %i.p = and i8 %i.o, 63
  %i.q = zext nneg i8 %i.p to i64
  %i.r = shl nuw i64 1, %i.q
  %i.s = and i64 %i.r, %i.e
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.j, %._crit_edge
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %bb.j ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  store i64 %i.l, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.g)
  %.sroa.01.0 = select i1 %6, i64 %i.g, i64 %.sroa.0.0.i ; 3 uses
  %i.u = add i64 %.sroa.01.0, -1
  %.first_iter = icmp ult i64 %i.u, %5
  %.not110 = icmp eq i64 %.sroa.01.0, 0
  br i1 %.not110, label %._crit_edge114, label %.lr.ph113

.sink.split:                                      ; preds = %bb.d, %bb.t, %bb.o
  %.sink = phi i64 [ %i.j, %bb.o ], [ %5, %bb.t ], [ %5, %bb.d ] ; 2 uses
  %.ph93 = phi i64 [ %i.ak, %bb.o ], [ %i.ar, %bb.t ], [ %i.l, %bb.d ]
  store i64 %.sink, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.t, %bb.o, %bb.d
  %i.v = phi i64 [ %i.k, %bb.t ], [ %i.k, %bb.o ], [ %i.k, %bb.d ], [ %.sink, %.sink.split ]
  %i.w = phi i64 [ %i.ar, %bb.t ], [ %i.ak, %bb.o ], [ %i.l, %bb.d ], [ %.ph93, %.sink.split ] ; 2 uses
  %i.x = sub i64 %i.w, %5                         ; 2 uses
  %i.y = icmp ult i64 %i.x, %3
  br i1 %i.y, label %bb.b, label %._crit_edge

bb.g:                                             ; preds = %bb.r
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %._crit_edge114, label %.lr.ph113

._crit_edge114:                                   ; preds = %bb.g, %bb.e
  %.sroa.07.0 = select i1 %6, i64 %5, i64 %i.k    ; 2 uses
  %umax69 = tail call i64 @llvm.umax.i64(i64 %.sroa.07.0, i64 %i.g)
  %exitcond.not115.not = icmp ult i64 %i.g, %.sroa.07.0
  br i1 %exitcond.not115.not, label %.lr.ph118, label %._crit_edge119

.lr.ph113:                                        ; preds = %bb.e, %bb.g
  %.sroa.5.0111 = phi i64 [ %i.z, %bb.g ], [ %.sroa.01.0, %bb.e ]
  %i.z = add i64 %.sroa.5.0111, -1                ; 6 uses
  br i1 %.first_iter, label %bb.p, label %bb.q

bb.h:                                             ; preds = %bb.m
  %exitcond.not = icmp eq i64 %i.aa, %umax69
  br i1 %exitcond.not, label %._crit_edge119, label %.lr.ph118

._crit_edge119:                                   ; preds = %._crit_edge114, %bb.h
  store i64 %i.l, ptr %i.a, align 8
  br i1 %6, label %bb.j, label %bb.i

.lr.ph118:                                        ; preds = %._crit_edge114, %bb.h
  %.sroa.08.0116 = phi i64 [ %i.aa, %bb.h ], [ %i.g, %._crit_edge114 ] ; 4 uses
  %i.aa = add i64 %.sroa.08.0116, 1               ; 2 uses
  %exitcond70.not = icmp eq i64 %.sroa.08.0116, %umax
  br i1 %exitcond70.not, label %bb.l, label %bb.k

bb.i:                                             ; preds = %._crit_edge119
  store i64 %5, ptr %i.h, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge119
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.ab, align 8, !alias.scope !2483
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.ac, align 8, !alias.scope !2483
  br label %bb.c

bb.k:                                             ; preds = %.lr.ph118
  %i.ad = add i64 %.sroa.08.0116, %i.l            ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %3
  br i1 %i.ae, label %bb.m, label %bb.n

bb.l:                                             ; preds = %.lr.ph118
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #54
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.08.0116
  %i.ag = load i8, ptr %i.af, align 1, !noundef !17
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !17
  %.not22 = icmp eq i8 %i.ag, %i.ai
  br i1 %.not22, label %bb.h, label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.aj = add i64 %i.g, %i.l
  %umax68 = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.aj)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax68, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #54
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ak = sub i64 %i.m, %i.j                      ; 3 uses
  store i64 %i.ak, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

end_hunk_0
