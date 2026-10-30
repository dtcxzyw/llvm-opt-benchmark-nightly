Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 148
loop-unroll.NumUnrolled: 257
begin_hunk_0_@"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h94403c4d20bb630eE":bb.a
bb.g:                                             ; preds = %.lr.ph.i.i
  %i.aj = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aj, %i.ad
  br i1 %exitcond.not.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit", label %.lr.ph.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i: ; preds = %.backedge
  %i.ak = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %.pre.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ae, i64 noundef %i.ad), !noalias !13665 ; 2 uses
  %i.al = extractvalue { i64, i64 } %i.ak, 0
  %i.am = extractvalue { i64, i64 } %i.ak, 1
  %i.an = trunc nuw i64 %i.al to i1
  br i1 %i.an, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i: ; preds = %.lr.ph.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i
  %.sroa.4.0.i27.i = phi i64 [ %i.am, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i ], [ %.sroa.01.05.i.i, %.lr.ph.i.i ]
  %i.ao = add i64 %i.ac, 1
  %i.ap = add i64 %i.ao, %.sroa.4.0.i27.i         ; 4 uses
  %.not20.i = icmp uge i64 %i.ap, %i.z
  %.not21.i = icmp ule i64 %i.ap, %1              ; 2 uses
  %or.cond.i.not = and i1 %.not20.i, %.not21.i    ; 2 uses
  br i1 %or.cond.i.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i
  br i1 %.not21.i, label %.backedge.backedge, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.loopexit"

.backedge.backedge:                               ; preds = %bb.h, %bb.i
  br label %.backedge

bb.i:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i
  %i.aq = sub nuw i64 %i.ap, %i.z                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.ar, ptr noundef nonnull dereferenceable(1) %i.y, i64 %i.z), !noalias !13666
  %i.as = icmp eq i32 %bcmp.i, 0
  br i1 %i.as, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.loopexit", label %.backedge.backedge

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.loopexit": ; preds = %bb.h, %bb.i
  %.sroa.4.0.ph = phi i64 [ undef, %bb.h ], [ %i.aq, %bb.i ]
  %i.at = zext i1 %or.cond.i.not to i64
  br label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit"

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit": ; preds = %.preheader.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i, %bb.g, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.loopexit"
  %.sroa.4.0 = phi i64 [ %.sroa.4.0.ph, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.loopexit" ], [ undef, %bb.g ], [ undef, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i ], [ undef, %.preheader.i.i ]
  %.sink.i = phi i64 [ %i.at, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.loopexit" ], [ 0, %bb.g ], [ 0, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i ], [ 0, %.preheader.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.au = insertvalue { i64, i64 } poison, i64 %.sink.i, 0
  %i.av = insertvalue { i64, i64 } %i.au, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$9next_back17h0278bc8b5275d5c1E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !55, !noundef !53
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !55, !noundef !53
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.e, align 8
  %i.h = tail call fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$9next_back17h0278bc8b5275d5c1E"(ptr noalias noundef align 8 dereferenceable(128) %0) ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.h, 1        ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.k = icmp eq i64 %i.j, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.u, label %bb.v

bb.d:                                             ; preds = %bb.u, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.l, align 8, !nonnull !53, !align !59, !noundef !53 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val6 = load i64, ptr %i.m, align 8, !noundef !53 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13680)
  %i.n = load i64, ptr %0, align 8, !range !61, !alias.scope !13680, !noundef !53
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.n, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.q = load i8, ptr %i.p, align 2, !range !55, !alias.scope !13681, !noundef !53
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.thread7.i", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted.i = load i8, ptr %i.s, align 1, !alias.scope !13681 ; 2 uses
  %.promoted29.i = load i64, ptr %i.t, align 8, !alias.scope !13681 ; 12 uses
  %i.u = trunc nuw i8 %.promoted.i to i1          ; 2 uses
  %i.v = icmp eq i64 %.promoted29.i, 0
  %i.w = xor i8 %.promoted.i, 1                   ; 3 uses
  br i1 %i.v, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13682)
  %.not.i.i.i.peel = icmp ult i64 %.promoted29.i, %.val6
  br i1 %.not.i.i.i.peel, label %bb.e, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %.lr.ph
  %i.x = icmp eq i64 %.promoted29.i, %.val6
  br i1 %i.x, label %bb.f, label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted29.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !13683, !noalias !13684, !noundef !53
  %i.aa = icmp sgt i8 %i.z, -65
  br i1 %i.aa, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e, %.split.i.i.i.peel
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted29.i ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -1
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !13685, !noundef !53 ; 3 uses
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.i, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i.i.peel"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i.i.peel": ; preds = %bb.f
  %i.af = icmp ne i64 %.promoted29.i, 1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds i8, ptr %i.ab, i64 -2
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !13685, !noundef !53 ; 3 uses
  %i.ai = and i8 %i.ah, 31
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = icmp slt i8 %i.ah, -64
  br i1 %i.ak, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i.i.peel", label %bb.h

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i.i.peel": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i.i.peel"
  %i.al = icmp ne i64 %.promoted29.i, 2
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds i8, ptr %i.ab, i64 -3
  %i.an = load i8, ptr %i.am, align 1, !noalias !13685, !noundef !53 ; 3 uses
  %i.ao = and i8 %i.an, 15
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = icmp slt i8 %i.an, -64
  br i1 %i.aq, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i.i.peel", label %bb.g

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i.i.peel": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i.i.peel"
  %i.ar = icmp ne i64 %.promoted29.i, 3
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.at = load i8, ptr %i.as, align 1, !noalias !13685, !noundef !53
  %i.au = and i8 %i.at, 7
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 6
  %i.ax = and i8 %i.an, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  br label %bb.g

bb.g:                                             ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i.i.peel", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i.i.peel"
  %.sroa.04.1.i.i.i.peel = phi i32 [ %i.az, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i.i.peel" ], [ %i.ap, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i.i.peel" ]
  %i.ba = shl nuw nsw i32 %.sroa.04.1.i.i.i.peel, 6
  %i.bb = and i8 %i.ah, 63
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i.i.peel"
  %.sroa.04.0.i.i.i.peel = phi i32 [ %i.bd, %bb.g ], [ %i.aj, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i.i.peel" ]
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
  store i64 %i.bn, ptr %i.t, align 8, !alias.scope !13686
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.r, label %.peel.next

bb.n:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !13680, !noundef !53
  %i.bs = icmp eq i64 %i.br, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !13680, !nonnull !53, !align !59, !noundef !53 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !13680, !noundef !53 ; 2 uses
  br i1 %i.bs, label %bb.t, label %bb.s

.peel.next:                                       ; preds = %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.i.peel"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13687)
  %.not.i.i.i = icmp ult i64 %i.bn, %.val6
  br i1 %.not.i.i.i, label %bb.o, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.peel.next
  %i.bx = icmp eq i64 %i.bn, %.val6
  br i1 %i.bx, label %bb.p, label %.loopexit

bb.o:                                             ; preds = %.peel.next
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bn
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !13683, !noalias !13688, !noundef !53
  %i.ca = icmp sgt i8 %i.bz, -65
  br i1 %i.ca, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o, %.split.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bn ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -1
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !13689, !noundef !53
  %i.ce = icmp sgt i8 %i.cd, -1
  br i1 %i.ce, label %.sink.split, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i.i": ; preds = %bb.p
  %i.cf = icmp ne i64 %i.bn, 1
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.cb, i64 -2
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !13689, !noundef !53
  %i.ci = icmp slt i8 %i.ch, -64
  br i1 %i.ci, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i.i", label %.sink.split

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i.i"
  %i.cj = icmp ne i64 %i.bn, 2
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds i8, ptr %i.cb, i64 -3
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !13689, !noundef !53
  %i.cm = icmp slt i8 %i.cl, -64
  br i1 %i.cm, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i.i", label %.sink.split

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i.i"
  %i.cn = icmp ne i64 %i.bn, 3
  tail call void @llvm.assume(i1 %i.cn)
  br label %.sink.split

.loopexit:                                        ; preds = %bb.o, %.split.i.i.i, %bb.e, %.split.i.i.i.peel
  %.lcssa20 = phi i8 [ %i.w, %.split.i.i.i.peel ], [ %i.w, %bb.e ], [ 0, %.split.i.i.i ], [ 0, %bb.o ]
  %.lcssa17 = phi i64 [ %.promoted29.i, %.split.i.i.i.peel ], [ %.promoted29.i, %bb.e ], [ %i.bn, %.split.i.i.i ], [ %i.bn, %bb.o ]
  store i8 %.lcssa20, ptr %i.s, align 1, !alias.scope !13681
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val6, i64 noundef 0, i64 noundef %.lcssa17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3072) #70, !noalias !13688
  unreachable

._crit_edge:                                      ; preds = %.lr.ph.i
  store i8 %i.w, ptr %i.s, align 1, !alias.scope !13681
  br i1 %i.u, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.p, align 2, !alias.scope !13681
  br label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.thread7.i"

.sink.split:                                      ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i.i", %bb.p, %bb.j
  %.lcssa18 = phi i64 [ %.promoted29.i, %bb.j ], [ %i.bn, %bb.p ], [ %i.bn, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i.i" ], [ %i.bn, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i.i" ], [ %i.bn, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i.i" ]
  store i8 0, ptr %i.s, align 1, !alias.scope !13681
  br label %bb.r

bb.r:                                             ; preds = %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.i.peel", %.sink.split, %._crit_edge
  %1 = phi i64 [ %.lcssa18, %.sink.split ], [ 0, %._crit_edge ], [ 0, %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.i.peel" ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.co, align 8, !alias.scope !13679
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.cp, align 8, !alias.scope !13679
  br label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.thread7.i"

"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.thread7.i": ; preds = %bb.r, %bb.q, %.preheader.i
  %storemerge.i = phi i64 [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader.i ]
  store i64 %storemerge.i, ptr %i.a, align 8, !alias.scope !13679
  br label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17h775f985d5ad64e85E.exit"

bb.s:                                             ; preds = %bb.n
  call fastcc void @_ZN4core3str7pattern14TwoWaySearcher9next_back17h6a13f05792e2c3d4E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.bp, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bu, i64 noundef %i.bw, i1 noundef zeroext false)
  br label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17h775f985d5ad64e85E.exit"

bb.t:                                             ; preds = %bb.n
  call fastcc void @_ZN4core3str7pattern14TwoWaySearcher9next_back17h6a13f05792e2c3d4E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.bp, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bu, i64 noundef %i.bw, i1 noundef zeroext true)
  br label %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17h775f985d5ad64e85E.exit"

"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17h775f985d5ad64e85E.exit": ; preds = %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17heb2d9d6cedb84cc6E.exit.thread7.i", %bb.s, %bb.t
  %i.cq = load i64, ptr %i.a, align 8, !range !61, !noundef !53
  %i.cr = trunc nuw i64 %i.cq to i1
  br i1 %i.cr, label %bb.w, label %bb.x

bb.u:                                             ; preds = %bb.c
  %i.cs = load i8, ptr %i.b, align 1, !range !55, !noundef !53
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
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !53
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !53 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !noundef !53
  %i.dc = sub nuw i64 %i.db, %i.cz
  store i64 %i.cx, ptr %i.da, align 8
  br label %bb.y

bb.x:                                             ; preds = %"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17h775f985d5ad64e85E.exit"
  store i8 1, ptr %i.b, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !noundef !53 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dg = load i64, ptr %i.df, align 8, !noundef !53
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
define internal fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$9next_back17h5dd0d5326edb4662E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !55, !noundef !53
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !55, !noundef !53
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 8
  %i.g = tail call fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$9next_back17h5dd0d5326edb4662E"(ptr noalias noundef align 8 dereferenceable(72) %0) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 2 uses
  %.not = icmp eq ptr %i.h, null
  %i.j = icmp eq i64 %i.i, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.k, label %bb.l

bb.d:                                             ; preds = %bb.k, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.k, align 8, !nonnull !53, !align !59, !noundef !53 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6 = load i64, ptr %i.l, align 8, !noundef !53 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13693)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !13693, !noundef !53 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.promoted.i = load i64, ptr %i.o, align 8, !alias.scope !13693 ; 3 uses
  %i.p = icmp ult i64 %.promoted.i, %i.n
  %.not33.i = icmp ugt i64 %.promoted.i, %.val6
  %or.cond34.i = or i1 %i.p, %.not33.i
  br i1 %or.cond34.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i8, ptr %i.s, align 8, !alias.scope !13693, !noundef !53 ; 2 uses
  %i.u = zext nneg i8 %i.t to i64                 ; 3 uses
  %i.v = add nsw i64 %i.u, -1                     ; 3 uses
  %i.w = icmp ult i8 %i.t, 5
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %i.y = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.af, %bb.h ]
  %i.z = sub nuw i64 %i.y, %i.n
  %i.aa = load i8, ptr %i.x, align 1, !alias.scope !13693, !noundef !53
  %i.ab = tail call { i64, i64 } @_ZN4core5slice6memchr7memrchr17h0c3e43ac4b055a3eE(i8 noundef %i.aa, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.q, i64 noundef %i.z), !noalias !13694 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = extractvalue { i64, i64 } %i.ab, 1
  %i.af = add i64 %i.ae, %i.n                     ; 6 uses
  %.not23.i = icmp ult i64 %i.af, %i.v
  br i1 %.not23.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !13693
  br label %.loopexit

bb.h:                                             ; preds = %bb.j, %bb.i, %bb.f
  store i64 %i.af, ptr %i.o, align 8, !alias.scope !13693
  %i.ag = icmp ult i64 %i.af, %i.n
  %.not.i = icmp ugt i64 %i.af, %.val6
  %or.cond.i = or i1 %i.ag, %.not.i
  br i1 %or.cond.i, label %.loopexit, label %bb.e

bb.i:                                             ; preds = %bb.f
  %i.ah = sub nuw i64 %i.af, %i.v                 ; 5 uses
  %i.ai = add i64 %i.ah, %i.u                     ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %.not24.i = icmp ugt i64 %i.ai, %.val6
  %or.cond25.i = or i1 %i.aj, %.not24.i
  br i1 %or.cond25.i, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ah
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.r, i64 %i.u), !noalias !13695
  %i.al = icmp eq i32 %bcmp.i, 0
  br i1 %i.al, label %bb.m, label %bb.h

bb.k:                                             ; preds = %bb.c
  %i.am = load i8, ptr %i.a, align 1, !range !55, !noundef !53
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.l, label %bb.d

bb.l:                                             ; preds = %bb.k, %bb.c, %bb.a, %bb.n
  %.sroa.6.0 = phi i64 [ undef, %bb.a ], [ %.sroa.6.1, %bb.n ], [ %i.i, %bb.c ], [ undef, %bb.k ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.1, %bb.n ], [ %i.h, %bb.c ], [ null, %bb.k ]
  %i.ao = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ap = insertvalue { ptr, i64 } %i.ao, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %i.ap

bb.m:                                             ; preds = %bb.j
  store i64 %i.ah, ptr %i.o, align 8, !alias.scope !13693
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !53
  %i.as = sub nuw i64 %i.ar, %i.ai
  store i64 %i.ah, ptr %i.aq, align 8
  br label %bb.n

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.d
  store i8 1, ptr %i.a, align 1
  %i.at = load i64, ptr %0, align 8, !noundef !53 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noundef !53
  %i.aw = sub nuw i64 %i.av, %i.at
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit
  %.sroa.6.1 = phi i64 [ %i.as, %bb.m ], [ %i.aw, %.loopexit ]
  %.pn = phi i64 [ %i.ai, %bb.m ], [ %i.at, %.loopexit ]
  %.sroa.0.1 = getelementptr inbounds nuw i8, ptr %.val, i64 %.pn
  br label %bb.l
}

; Function Attrs: cold inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h51897ff6b7b9add1E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #24 personality ptr @rust_eh_personality {
bb.a:
  br i1 %3, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.preheader16

.preheader16:                                     ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !nonnull !53, !align !59, !noundef !53
  %i.b = getelementptr i8, ptr %i.a, i64 %1       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
