Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.10?download=true
inline.NumInlined: 5637
inline.NumDeleted: 1815
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17hfb42177d89ab4e7bE":bb.a
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i", %bb.b, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i"
  %i.an = phi ptr [ %i.u, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i" ], [ %i.ae, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i" ], [ %i.l, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i" ], [ %i.f, %bb.b ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ab, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i" ], [ %i.am, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i" ], [ %i.q, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i" ], [ %i.s, %bb.b ] ; 8 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.c, %i.e
  %i.ar = add i64 %i.aq, %i.ap
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h3ae5bed8ca7c8eb6E.exit.i.i"
    i32 13, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h3ae5bed8ca7c8eb6E.exit.i.i"
    i32 12, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h3ae5bed8ca7c8eb6E.exit.i.i"
    i32 11, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h3ae5bed8ca7c8eb6E.exit.i.i"
    i32 10, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h3ae5bed8ca7c8eb6E.exit.i.i"
    i32 9, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h3ae5bed8ca7c8eb6E.exit.i.i"
  ]

bb.d:                                             ; preds = %bb.c
  %i.as = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i.i, 127
  br i1 %i.as, label %bb.e, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17hae4be1053e217c6fE.exit"

bb.e:                                             ; preds = %bb.d
  %i.at = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.at, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17hae4be1053e217c6fE.exit" [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.au = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.av = zext i1 %i.au to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h69e0071b05f88684E.exit.i.i.i"

bb.g:                                             ; preds = %bb.e
  %i.aw = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.ax = zext i1 %i.aw to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h69e0071b05f88684E.exit.i.i.i"

bb.h:                                             ; preds = %bb.e
  %i.ay = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h6aa907968f5af47cE, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !10172, !noundef !13
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h69e0071b05f88684E.exit.i.i.i"

bb.i:                                             ; preds = %bb.e
  %i.bc = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h6aa907968f5af47cE, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !10172, !noundef !13
  %i.bg = lshr i8 %i.bf, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h69e0071b05f88684E.exit.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h69e0071b05f88684E.exit.i.i.i": ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.ax, %bb.g ], [ %i.bb, %bb.h ], [ %i.av, %bb.f ], [ %i.bg, %bb.i ]
  %i.bh = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bh, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h3ae5bed8ca7c8eb6E.exit.i.i", label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17hae4be1053e217c6fE.exit"

"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h3ae5bed8ca7c8eb6E.exit.i.i": ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h69e0071b05f88684E.exit.i.i.i", %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bi = icmp eq ptr %i.an, %i.a
  br i1 %i.bi, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17hae4be1053e217c6fE.exit", label %.lr.ph.i.i

"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17hae4be1053e217c6fE.exit": ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h3ae5bed8ca7c8eb6E.exit.i.i", %bb.e, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h69e0071b05f88684E.exit.i.i.i", %bb.d, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %1, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h3ae5bed8ca7c8eb6E.exit.i.i" ], [ %i.c, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h69e0071b05f88684E.exit.i.i.i" ], [ %i.c, %bb.d ], [ %i.c, %bb.e ] ; 2 uses
  %i.bj = sub nuw i64 %1, %.sroa.0.0
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0
  %i.bl = insertvalue { ptr, i64 } poison, ptr %i.bk, 0
  %i.bm = insertvalue { ptr, i64 } %i.bl, i64 %i.bj, 1
  ret { ptr, i64 } %i.bm
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  br i1 %3, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !13, !align !22, !noundef !13
  %i.d = getelementptr i8, ptr %i.c, i64 %1       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !13 ; 4 uses
  %i.h = load ptr, ptr %i.e, align 8, !nonnull !13, !align !22, !noundef !13 ; 4 uses
  %i.i = icmp ult i64 %i.g, 4
  %i.j = getelementptr i8, ptr %i.h, i64 %i.g     ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us
  %.sroa.0.016.us = phi i16 [ %i.ab, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.n = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.016.us, i1 true) ; 2 uses
  %i.o = zext nneg i16 %i.n to i64
  %i.p = getelementptr i8, ptr %i.d, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 1        ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10181)
  call void @llvm.experimental.noalias.scope.decl(metadata !10182)
  %i.r = getelementptr i8, ptr %i.q, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10183
  store ptr %i.q, ptr %i.b, align 8, !noalias !10184
  store ptr %i.r, ptr %i.l, align 8, !noalias !10184
  store ptr %i.h, ptr %i.a, align 8, !noalias !10184
  store ptr %i.j, ptr %i.m, align 8, !noalias !10184
  %i.s = call noundef i64 @_ZN4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4size17h70231c8b4b0fe5b0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !noalias !10185
  %i.t = call noundef i64 @_ZN4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4size17h70231c8b4b0fe5b0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !10185
  %.sroa.0.0.i.i.i.i.us = call noundef i64 @llvm.umin.i64(i64 %i.t, i64 %i.s) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10183
  %exitcond.not.i.us28 = icmp eq i64 %.sroa.0.0.i.i.i.i.us, 0 ; 3 uses
  br i1 %exitcond.not.i.us28, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.u = add i64 %.sroa.9.0.i.us29, 1             ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.u, %.sroa.0.0.i.i.i.i.us
  br i1 %exitcond.not.i.us, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.split.us, %bb.b
  %.sroa.9.0.i.us29 = phi i64 [ %i.u, %bb.b ], [ 0, %.preheader.split.us ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.9.0.i.us29
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.9.0.i.us29
  %i.x = load i8, ptr %i.v, align 1, !alias.scope !10181, !noalias !10182, !noundef !13
  %i.y = load i8, ptr %i.w, align 1, !alias.scope !10182, !noalias !10181, !noundef !13
  %.not13.i.us = icmp eq i8 %i.x, %i.y
  br i1 %.not13.i.us, label %bb.b, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us

_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us: ; preds = %.lr.ph
  %i.z = shl nuw i16 1, %i.n
  %i.aa = xor i16 %i.z, -1
  %i.ab = and i16 %.sroa.0.016.us, %i.aa          ; 2 uses
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread
  %.sroa.0.016 = phi i16 [ %i.aq, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread ], [ %2, %.preheader ] ; 2 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.016, i1 true) ; 2 uses
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = getelementptr i8, ptr %i.d, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10182)
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.g
  %i.ai = getelementptr i8, ptr %i.ah, i64 -4     ; 3 uses
  %i.aj = icmp ult ptr %i.ag, %i.ai
  br i1 %i.aj, label %.lr.ph.i, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.024.i = phi ptr [ %i.ak, %bb.c ], [ %i.ag, %.preheader.split ] ; 2 uses
  %.sroa.08.023.i = phi ptr [ %i.al, %bb.c ], [ %i.h, %.preheader.split ] ; 2 uses
  %.sroa.04.0.val.i = load i32, ptr %.sroa.04.024.i, align 1, !alias.scope !10181, !noalias !10182
  %.sroa.08.0.val.i = load i32, ptr %.sroa.08.023.i, align 1, !alias.scope !10182, !noalias !10181
  %.not.i = icmp eq i32 %.sroa.04.0.val.i, %.sroa.08.0.val.i
  br i1 %.not.i, label %bb.c, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread

bb.c:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.024.i, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.023.i, i64 4
  %i.am = icmp ult ptr %i.ak, %i.ai
  br i1 %i.am, label %.lr.ph.i, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit

_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit: ; preds = %bb.c, %.preheader.split
  %.val14.i = load i32, ptr %i.ai, align 1, !alias.scope !10181, !noalias !10182
  %.val.i = load i32, ptr %i.k, align 1, !alias.scope !10182, !noalias !10181
  %i.an = icmp eq i32 %.val14.i, %.val.i
  br i1 %i.an, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread

_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12: ; preds = %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us, %.preheader.split.us, %bb.b, %bb.a
  %.sroa.03.0 = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ %exitcond.not.i.us28, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us ], [ %exitcond.not.i.us28, %.preheader.split.us ], [ false, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread ], [ true, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit ]
  ret i1 %.sroa.03.0

_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread: ; preds = %.lr.ph.i, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit
  %i.ao = shl nuw i16 1, %i.ad
  %i.ap = xor i16 %i.ao, -1
  %i.aq = and i16 %.sroa.0.016, %i.ap             ; 2 uses
  %i.ar = icmp eq i16 %i.aq, 0
  br i1 %i.ar, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12, label %.preheader.split
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_ZN4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4size17h193b25ba455324e2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_ZN4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4size17hf23bd863c452153eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0), !noalias !10190
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = tail call noundef i64 @_ZN4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4size17h3423defdd646a923E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b), !noalias !10190
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %i.a)
  ret i64 %.sroa.0.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h052127fb68e40755E(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h15c135632892b558E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h15f6391e2c3b4499E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h24552a0b1e493d3aE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h3104ff9e6a7cadd9E(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h3239d3d436090005E(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h38482244b43b7e17E(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h4149018468e56693E(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h45428d16ac1a0180E(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h48ab6cadded0486bE(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h6678786fc4681585E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17ha1d5fde6e5e35cc1E(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17ha343477b1681c80aE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hb42a52e5988d8195E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hb9df50ed2183fb8dE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hdf3a9a06816e3d38E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17he68a1c55d0d77c4fE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17he88cbd77bd67f24fE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hf262e75aeb8b9c30E(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hf6b2d8a0cb15a105E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hf6f365f34dd00240E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hf87e9e6c2df29997E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hfdf6342d1e1e9d7bE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @825, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h072eae9fd434c2b5E(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h0fc1f741ed232be7E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h244b26f1805ae60aE(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h2628dc61d8297d81E(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h28d38f60441aeefbE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @1411, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h3587da5533f6dc65E(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h3e5086c6ee5fb602E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !10193, !align !22, !noundef !13 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !10193, !nonnull !13, !align !14
  %.sroa.3.0.i = select i1 %.not.i, ptr undef, ptr %i.d
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h480e62acb91d0f26E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !10196, !nonnull !13, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !10196, !nonnull !13, !align !14, !noundef !13
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h559f7f3990c421ecE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !19, !alias.scope !10199, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.0.0.i = select i1 %i.c, ptr %i.d, ptr null
  %i.e = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @1486, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h606db82543fbae8eE(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17hbf7e0bc0f4c7d011E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !76, !alias.scope !10202, !noundef !13
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %"_ZN59_$LT$multer..error..Error$u20$as$u20$core..error..Error$GT$6source17hed086590f0c08236E.exit"
    i8 1, label %"_ZN59_$LT$multer..error..Error$u20$as$u20$core..error..Error$GT$6source17hed086590f0c08236E.exit"
    i8 2, label %"_ZN59_$LT$multer..error..Error$u20$as$u20$core..error..Error$GT$6source17hed086590f0c08236E.exit"
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.d
    i8 6, label %"_ZN59_$LT$multer..error..Error$u20$as$u20$core..error..Error$GT$6source17hed086590f0c08236E.exit"
    i8 7, label %"_ZN59_$LT$multer..error..Error$u20$as$u20$core..error..Error$GT$6source17hed086590f0c08236E.exit"
    i8 8, label %"_ZN59_$LT$multer..error..Error$u20$as$u20$core..error..Error$GT$6source17hed086590f0c08236E.exit"
    i8 9, label %bb.e
    i8 10, label %"_ZN59_$LT$multer..error..Error$u20$as$u20$core..error..Error$GT$6source17hed086590f0c08236E.exit"
    i8 11, label %"_ZN59_$LT$multer..error..Error$u20$as$u20$core..error..Error$GT$6source17hed086590f0c08236E.exit"
    i8 12, label %bb.f
    i8 13, label %"_ZN59_$LT$multer..error..Error$u20$as$u20$core..error..Error$GT$6source17hed086590f0c08236E.exit"
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %"_ZN59_$LT$multer..error..Error$u20$as$u20$core..error..Error$GT$6source17hed086590f0c08236E.exit"

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !10202, !nonnull !13, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !10202, !nonnull !13, !align !14, !noundef !13
  br label %"_ZN59_$LT$multer..error..Error$u20$as$u20$core..error..Error$GT$6source17hed086590f0c08236E.exit"

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !10202, !nonnull !13, !noundef !13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !10202, !nonnull !13, !align !14, !noundef !13
  br label %"_ZN59_$LT$multer..error..Error$u20$as$u20$core..error..Error$GT$6source17hed086590f0c08236E.exit"

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !10202, !nonnull !13, !noundef !13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !10202, !nonnull !13, !align !14, !noundef !13
  br label %"_ZN59_$LT$multer..error..Error$u20$as$u20$core..error..Error$GT$6source17hed086590f0c08236E.exit"

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %"_ZN59_$LT$multer..error..Error$u20$as$u20$core..error..Error$GT$6source17hed086590f0c08236E.exit"

"_ZN59_$LT$multer..error..Error$u20$as$u20$core..error..Error$GT$6source17hed086590f0c08236E.exit": ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.7.0.i = phi ptr [ @994, %bb.b ], [ %i.f, %bb.c ], [ %i.j, %bb.d ], [ %i.n, %bb.e ], [ @996, %bb.f ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.b, %bb.b ], [ %i.d, %bb.c ], [ %i.h, %bb.d ], [ %i.l, %bb.e ], [ %i.o, %bb.f ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ]
  %i.p = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.q = insertvalue { ptr, ptr } %i.p, ptr %.sroa.7.0.i, 1
  ret { ptr, ptr } %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17hce90de74335cd1c4E(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17he2678ebdaf2b15c4E(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_ZN4core5error5Error5cause17he897330dbc0397f3E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17hfd90b4c0c66cd3b3E(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17h0520d2e78a344140E(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17h074b5be5071fdf1aE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17h12f084054724ab0bE(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17h13d6a16165d8b551E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17h3da06bc70fa48186E(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}
end_hunk_0
begin_hunk_1_@"_ZN53_$LT$S$u20$as$u20$futures_core..stream..TryStream$GT$13try_poll_next17h863f394427f7316bE":bb.a

bb.j:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %1, align 8, !alias.scope !10295, !noalias !10301
  br label %common.resume.i

bb.k:                                             ; preds = %bb.i
  invoke fastcc void @"_ZN4core3ptr526drop_in_place$LT$core..option..Option$LT$async_compression..tokio..bufread..ZstdDecoder$LT$tokio_util..io..stream_reader..StreamReader$LT$futures_util..stream..try_stream..MapErr$LT$reqwest..async_impl..body..DataStream$LT$reqwest..async_impl..decoder..Decoder$GT$$C$anki..sync..request..header_and_stream..decode_zstd_body_stream_for_client$LT$reqwest..async_impl..body..DataStream$LT$reqwest..async_impl..decoder..Decoder$GT$$C$reqwest..error..Error$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$bytes..bytes..Bytes$GT$$GT$$GT$$GT$17h1d66135b1a947c94E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %1)
          to label %"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h104ce7fff7fef693E.exit.i" unwind label %bb.j, !noalias !10302

common.resume.i:                                  ; preds = %bb.p, %bb.j, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ab, %bb.j ], [ %i.ax, %bb.p ], [ %i.z, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h104ce7fff7fef693E.exit.i": ; preds = %bb.k
  store i64 2, ptr %1, align 8, !alias.scope !10295, !noalias !10301
  store i64 0, ptr %0, align 8, !alias.scope !10294, !noalias !10298
  br label %"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hc26b51415893a95fE.exit"

bb.l:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.l, align 8, !noalias !10296, !nonnull !13, !align !14, !noundef !13
  call void @_ZN5bytes9bytes_mut8BytesMut5split17h76fe19f67a8817deE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac), !noalias !10294
  call void @llvm.experimental.noalias.scope.decl(metadata !10303)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10296
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !10303, !noalias !10304, !noundef !13 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = and i64 %i.af, 1
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.g, align 8, !alias.scope !10303, !noalias !10304, !nonnull !13, !noundef !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !10303, !noalias !10304, !noundef !13
  br label %_ZN5bytes9bytes_mut8BytesMut6freeze17h41dc8ce3224f9045E.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ak = lshr i64 %i.af, 5                       ; 5 uses
  %i.al = load ptr, ptr %i.g, align 8, !alias.scope !10303, !noalias !10304, !nonnull !13, !noundef !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !10303, !noalias !10304, !noundef !13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !10303, !noalias !10304, !noundef !13
  call void @_ZN5bytes9bytes_mut11rebuild_vec17h163fb5854d8d5b53E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull %i.al, i64 noundef %i.an, i64 noundef %i.ap, i64 noundef %i.ak), !noalias !10305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10306
  call void @"_ZN92_$LT$bytes..bytes..Bytes$u20$as$u20$core..convert..From$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$4from17h74b33f2ae46dca77E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !10305
  call void @llvm.experimental.noalias.scope.decl(metadata !10307)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10306
  store i64 %i.ak, ptr %i.d, align 8, !noalias !10308
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !10307, !noalias !10306, !noundef !13 ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.ak, %i.ar
  br i1 %.not.i.i.i, label %bb.o, label %bb.q, !prof !15

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10308
  store i64 %i.ar, ptr %i.b, align 8, !noalias !10308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10308
  store ptr %i.d, ptr %i.a, align 8, !noalias !10308
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !10308
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.as, align 8, !noalias !10308
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !10308
  store ptr @1190, ptr %i.c, align 8, !noalias !10308
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %i.at, align 8, !noalias !10308
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.au, align 8, !noalias !10308
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.av, align 8, !noalias !10308
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %i.aw, align 8, !noalias !10308
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1192) #44
          to label %.noexc.i.i unwind label %bb.p, !noalias !10305

.noexc.i.i:                                       ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !10309)
  call void @llvm.experimental.noalias.scope.decl(metadata !10310)
  %i.ay = load ptr, ptr %i.e, align 8, !alias.scope !10311, !noalias !10306, !nonnull !13, !align !14, !noundef !13
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !10312, !nonnull !13, !noundef !13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !10311, !noalias !10306, !noundef !13
  invoke void %i.ba(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef %i.bd, i64 noundef %i.ar)
          to label %common.resume.i unwind label %bb.r, !noalias !10305, !inline_history !0

bb.q:                                             ; preds = %bb.n
  %i.be = sub nuw i64 %i.ar, %i.ak
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !10307, !noalias !10306, !noundef !13
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10306
  %.sroa.030.0.copyload31.i = load ptr, ptr %i.e, align 8, !noalias !10313
  %.sroa.7.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7.0.copyload38.i = load ptr, ptr %.sroa.7.0..sroa_idx37.i, align 8, !noalias !10313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10306
  br label %_ZN5bytes9bytes_mut8BytesMut6freeze17h41dc8ce3224f9045E.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43, !noalias !10305
  unreachable

_ZN5bytes9bytes_mut8BytesMut6freeze17h41dc8ce3224f9045E.exit.i: ; preds = %bb.q, %bb.m
  %.sroa.7.0.i = phi ptr [ %i.ae, %bb.m ], [ %.sroa.7.0.copyload38.i, %bb.q ]
  %.sroa.6.0.i = phi i64 [ %i.aj, %bb.m ], [ %i.be, %bb.q ]
  %.sroa.532.0.i = phi ptr [ %i.ah, %bb.m ], [ %i.bh, %bb.q ]
  %.sroa.030.0.i = phi ptr [ @_ZN5bytes9bytes_mut13SHARED_VTABLE17haa9e6d9e7b5468bdE, %bb.m ], [ %.sroa.030.0.copyload31.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10296
  store i64 1, ptr %0, align 8, !alias.scope !10294, !noalias !10298
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.030.0.i, ptr %.sroa.414.0..sroa_idx.i, align 8, !alias.scope !10294, !noalias !10298
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.532.0.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10294, !noalias !10298
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10294, !noalias !10298
  %.sroa.414.sroa.6.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.7.0.i, ptr %.sroa.414.sroa.6.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10294, !noalias !10298
  br label %"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hc26b51415893a95fE.exit"

bb.s:                                             ; preds = %bb.h
  store i64 2, ptr %1, align 8, !alias.scope !10295, !noalias !10299
  store i64 1, ptr %0, align 8, !alias.scope !10294, !noalias !10298
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !10294, !noalias !10298
  %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10294, !noalias !10298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10296
  br label %"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hc26b51415893a95fE.exit"

bb.t:                                             ; preds = %.body.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43, !noalias !10294
  unreachable

"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hc26b51415893a95fE.exit": ; preds = %bb.c, %bb.g, %"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h104ce7fff7fef693E.exit.i", %_ZN5bytes9bytes_mut8BytesMut6freeze17h41dc8ce3224f9045E.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$anki..types..Usn$u20$as$u20$core..fmt..Debug$GT$3fmt17h82a3b4271d43d4b7E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @886, i64 noundef 3, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @885)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hc2d8f31570e15d01E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @887, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN54_$LT$csv..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he6b63501fb3a19a4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @887, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @888)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @"_ZN54_$LT$httparse..Error$u20$as$u20$core..error..Error$GT$11description17h3a2c4487f445a458E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0) unnamed_addr #6 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !66, !noundef !13 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN54_$LT$httparse..Error$u20$as$u20$core..error..Error$GT$11description17h3a2c4487f445a458E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN54_$LT$httparse..Error$u20$as$u20$core..error..Error$GT$11description17h3a2c4487f445a458E.580", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %switch.load3, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %switch.ext, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN54_$LT$snafu..Whatever$u20$as$u20$core..error..Error$GT$11description17hebd9261a2db065d3E"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @882, i64 8 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN54_$LT$snafu..Whatever$u20$as$u20$core..error..Error$GT$5cause17h7929946435dd1673E"(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !align !22, !noundef !13 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !13, !align !14, !noundef !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.d, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN54_$LT$snafu..Whatever$u20$as$u20$core..error..Error$GT$6source17h30916d1f18752b4dE"(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !align !22, !noundef !13 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !13, !align !14, !noundef !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.d, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN55_$LT$$RF$str$u20$as$u20$anki..search..TryIntoSearch$GT$15try_into_search17hb6b61eefc3e47664E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 40)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4anki6search6parser5parse17h572bb13a822b2e02E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i64, ptr %i.a, align 8, !range !34, !noundef !13
  %.not = icmp eq i64 %i.b, -9223372036854775773
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775779, ptr %i.d, align 8
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h1465046165ccd021E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef range(i64 2, 21) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = alloca [104 x i8], align 8               ; 16 uses
  %i.d = icmp ult i64 %1, %3
  br i1 %i.d, label %bb.c, label %bb.b

_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread: ; preds = %.split.us.i.i, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i", %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader", %.lr.ph.split.us.i.i, %bb.s, %bb.b, %bb.av, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"
  %.sroa.0.0 = phi i8 [ %i.hj, %bb.av ], [ 0, %bb.b ], [ %.sroa.0.025, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit" ], [ %.sroa.015.5.i, %bb.s ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader" ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i" ], [ 1, %.split.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.av, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10347)
  %i.f = load i8, ptr %0, align 1, !alias.scope !10346, !noalias !10347, !noundef !13 ; 6 uses
  %i.g = add nsw i64 %1, -1                       ; 2 uses
  %i.h = icmp eq i64 %1, 2
  br i1 %i.h, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 21) %1, i64 4) ; 4 uses
  %i.j = icmp samesign ult i64 %i.i, %1
  br i1 %i.j, label %.lr.ph, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

bb.e:                                             ; preds = %.lr.ph
  %i.k = icmp ult i64 %i.i, %i.x
  br i1 %i.k, label %.lr.ph.1, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

.lr.ph.1:                                         ; preds = %bb.e
  %i.l = add nsw i64 %1, -2                       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !10346, !noalias !10348, !noundef !13 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.n, %i.f
  br i1 %.not.i.not.i.i.1, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph.1
  %i.o = icmp ult i64 %i.i, %i.l
  br i1 %i.o, label %.lr.ph.2, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

.lr.ph.2:                                         ; preds = %bb.f
  %i.p = add nsw i64 %1, -3                       ; 4 uses
  %i.q = icmp samesign ugt i64 %1, 2
  br i1 %i.q, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.2", label %bb.h

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.2": ; preds = %.lr.ph.2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !10346, !noalias !10348, !noundef !13 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.s, %i.f
  br i1 %.not.i.not.i.i.2, label %bb.g, label %bb.i

bb.g:                                             ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.2"
  %i.t = icmp ult i64 %i.i, %i.p
  br i1 %i.t, label %.lr.ph.3, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

.lr.ph.3:                                         ; preds = %bb.g
  %i.u = add nsw i64 %1, -4                       ; 3 uses
  %.not283 = icmp eq i64 %1, 3
  br i1 %.not283, label %bb.h, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.3"

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.3": ; preds = %.lr.ph.3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !10346, !noalias !10348, !noundef !13 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %i.w, %i.f
  br i1 %.not.i.not.i.i.3, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit, label %bb.i

.lr.ph:                                           ; preds = %bb.d
  %i.x = add nsw i64 %1, -1                       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !10346, !noalias !10348, !noundef !13 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.z, %i.f
  br i1 %.not.i.not.i.i, label %bb.e, label %bb.i

bb.h:                                             ; preds = %.lr.ph.3, %.lr.ph.2
  %.lcssa278 = phi i64 [ %i.u, %.lr.ph.3 ], [ %i.p, %.lr.ph.2 ]
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.lcssa278, i64 noundef range(i64 2, 21) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821) #44, !noalias !10349
  unreachable

bb.i:                                             ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.3", %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.2", %.lr.ph.1, %.lr.ph
  %.lcssa281 = phi i8 [ %i.z, %.lr.ph ], [ %i.n, %.lr.ph.1 ], [ %i.s, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.2" ], [ %i.w, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.3" ]
  %.lcssa279 = phi i64 [ %i.x, %.lr.ph ], [ %i.l, %.lr.ph.1 ], [ %i.p, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.2" ], [ %i.u, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.3" ]
  %i.aa = add nuw nsw i64 %1, 15
  %i.ab = icmp ult i64 %3, %i.aa
  br i1 %i.ab, label %.lr.ph.split.us.i.i, label %bb.j

.thread.i:                                        ; preds = %bb.c
  %i.ac = icmp ult i64 %3, 17
  br i1 %i.ac, label %.lr.ph.split.us.i.i, label %.thread106.i

.thread106.i:                                     ; preds = %.thread.i
  %i.ad = insertelement <1 x i8> poison, i8 %i.f, i64 0
  %i.ae = shufflevector <1 x i8> %i.ad, <1 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load <1 x i8>, ptr %.phi.trans.insert.i, align 1, !alias.scope !10346, !noalias !10347
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = insertelement <1 x i8> poison, i8 %.lcssa281, i64 0
  %i.ag = insertelement <1 x i8> poison, i8 %i.f, i64 0
  %i.ah = shufflevector <1 x i8> %i.ag, <1 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

.lr.ph.split.us.i.i:                              ; preds = %bb.i, %.thread.i
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %2, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 2, 21) %1), !alias.scope !10350, !noalias !10351
  %i.ai = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.ai, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader": ; preds = %.lr.ph.split.us.i.i
  %i.aj = add i64 %3, -1                          ; 2 uses
  %.not28.i.i239 = icmp ugt i64 %1, %i.aj
  br i1 %.not28.i.i239, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader", %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i"
  %i.ak = phi i64 [ %i.an, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i" ], [ %i.aj, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader" ]
  %.pn.i240 = phi ptr [ %i.al, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i" ], [ %2, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader" ]
  %i.al = getelementptr inbounds nuw i8, ptr %.pn.i240, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %i.al, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 2, 21) %1), !alias.scope !10350, !noalias !10351
  %i.am = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.am, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i": ; preds = %.split.us.i.i
  %i.an = add i64 %i.ak, -1                       ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZN56_$LT$T$u20$as$u20$futures_util..fns..FnMut1$LT$A$GT$$GT$8call_mut17hb0bcd732ca310594E":bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !12, !noalias !10421, !noundef !13 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %.noexc.i
  %i.j = load i64, ptr %i.i, align 8, !noalias !10421
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.h, i64 %i.j) #44
          to label %.noexc3.i unwind label %bb.i, !noalias !10420

.noexc3.i:                                        ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc.i
  %i.k = load ptr, ptr %i.i, align 8, !noalias !10421, !nonnull !13, !noundef !13 ; 2 uses
  %i.l = icmp ugt i64 %i.h, 15
  call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, ptr noundef nonnull align 1 dereferenceable(16) @610, i64 16, i1 false), !noalias !10422
  store i64 %i.h, ptr %i.c, align 8, !noalias !10420
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10420
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !10420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10420
  store ptr %2, ptr %i.b, align 8, !noalias !10420
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !10420
  %i.m = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4225) 8, i64 noundef range(i64 1, 9) 8) #45, !noalias !10420 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %"_ZN4anki4sync7request17header_and_stream23encode_zstd_body_stream28_$u7b$$u7b$closure$u7d$$u7d$17hadb8186f66f9ce0fE.exit", !prof !56

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 8) #44
          to label %.noexc4.i unwind label %bb.e, !noalias !10420

.noexc4.i:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #42
          to label %.body.i unwind label %bb.f, !noalias !10420

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43, !noalias !10420
  unreachable

.body.i:                                          ; preds = %bb.e
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %bb.h unwind label %bb.g, !noalias !10420

bb.g:                                             ; preds = %bb.i, %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43, !noalias !10420
  unreachable

bb.h:                                             ; preds = %bb.i, %.body.i
  %.pn3.i = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.o, %.body.i ]
  resume { ptr, i32 } %.pn3.i

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #42
          to label %bb.h unwind label %bb.g, !noalias !10420

"_ZN4anki4sync7request17header_and_stream23encode_zstd_body_stream28_$u7b$$u7b$closure$u7d$$u7d$17hadb8186f66f9ce0fE.exit": ; preds = %bb.c
  store ptr %2, ptr %i.m, align 8, !noalias !10420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10420
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 400, ptr %i.s, align 8, !alias.scope !10420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.t, align 8, !alias.scope !10420
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @612, ptr %i.u, align 8, !alias.scope !10420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @"_ZN56_$LT$T$u20$as$u20$futures_util..fns..FnMut1$LT$A$GT$$GT$8call_mut17hb22c2de526eefca2E"(ptr noalias nofree noundef nonnull readnone align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !10431
  %i.b = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4225) 48, i64 noundef range(i64 1, 9) 8) #45, !noalias !10431 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZN4core3ops8function5FnMut8call_mut17h2ab16c8a90e99cf4E.exit, !prof !56

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #44
          to label %.noexc.i.i.i unwind label %bb.c, !noalias !10432

.noexc.i.i.i:                                     ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr49drop_in_place$LT$anki..sync..error..HttpError$GT$17h9738dfde6ae04460E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #42
          to label %bb.e unwind label %bb.d, !noalias !10433

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43, !noalias !10433
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_ZN4core3ops8function5FnMut8call_mut17h2ab16c8a90e99cf4E.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @1039, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @"_ZN56_$LT$T$u20$as$u20$futures_util..fns..FnMut1$LT$A$GT$$GT$8call_mut17hb4c24b47260096c3E"(ptr noalias nofree noundef nonnull readnone align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10443
  store ptr %i.d, ptr %i.b, align 8, !noalias !10443
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN67_$LT$anki..sync..error..HttpError$u20$as$u20$core..fmt..Display$GT$3fmt17hc5c48dab44f58e07E", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !10443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10444
  store ptr @90, ptr %i.a, align 8, !noalias !10445
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10445
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !10445
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !10445
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !10445
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr49drop_in_place$LT$anki..sync..error..HttpError$GT$17h9738dfde6ae04460E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d) #42
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10443
  %i.f = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17ha6523a94d30ca5c5E(i8 noundef 6, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %"_ZN4anki4sync7request17header_and_stream23encode_zstd_body_stream28_$u7b$$u7b$closure$u7d$$u7d$17h4d67771aa12565c3E.exit" unwind label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

"_ZN4anki4sync7request17header_and_stream23encode_zstd_body_stream28_$u7b$$u7b$closure$u7d$$u7d$17h4d67771aa12565c3E.exit": ; preds = %bb.c
  call void @"_ZN4core3ptr49drop_in_place$LT$anki..sync..error..HttpError$GT$17h9738dfde6ae04460E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN56_$LT$headers_core..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7c161128a44d04e8E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @887, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @905, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @904)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: cold noreturn nounwind nonlazybind memory(inaccessiblemem: write) uwtable
define hidden void @"_ZN57_$LT$T$u20$as$u20$futures_util..fns..FnOnce1$LT$A$GT$$GT$9call_once17hbaec3d8162c79878E"() unnamed_addr #12 {
bb.a:
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN57_$LT$mime..FromStrError$u20$as$u20$core..error..Error$GT$11description17h02fe663a257ea302E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @906, i64 16 }
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN58_$LT$T$u20$as$u20$anki..sync..request..IntoSyncRequest$GT$21try_into_sync_request17hbe7c9586e53093ccE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke fastcc void @_ZN10serde_json3ser6to_vec17h7559a421a3e474b7E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %.body.thread65

.body.thread65:                                   ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !range !12, !noundef !13 ; 2 uses
  %i.g = icmp eq i64 %i.f, -9223372036854775808
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN4core3ptr63drop_in_place$LT$anki..sync..media..begin..SyncBeginRequest$GT$17h84e7261100c0f13fE.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

common.resume:                                    ; preds = %.body, %bb.l, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.l ], [ %i.k, %bb.d ], [ %.pn68, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr63drop_in_place$LT$anki..sync..media..begin..SyncBeginRequest$GT$17h84e7261100c0f13fE.exit": ; preds = %bb.c
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.623.0.copyload = load i64, ptr %.sroa.623.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.f, ptr %i.c, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.623.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775808, ptr %i.b, align 8
  %i.m = invoke { ptr, i64 } @_ZN4anki7version25sync_client_version_short17he031ea0548638006E()
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %"_ZN4core3ptr63drop_in_place$LT$anki..sync..media..begin..SyncBeginRequest$GT$17h84e7261100c0f13fE.exit51", %"_ZN4core3ptr63drop_in_place$LT$anki..sync..media..begin..SyncBeginRequest$GT$17h84e7261100c0f13fE.exit"
  ret void

bb.h:                                             ; preds = %bb.j, %bb.i, %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #42
          to label %bb.o unwind label %bb.n

bb.i:                                             ; preds = %bb.f
  %i.o = extractvalue { ptr, i64 } %i.m, 0
  %i.p = extractvalue { ptr, i64 } %i.m, 1        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10449
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.p, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc48 unwind label %bb.h

.noexc48:                                         ; preds = %bb.i
  %i.q = load i64, ptr %i.a, align 8, !range !18, !noalias !10449, !noundef !13
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !12, !noalias !10449, !noundef !13 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.r, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %.noexc48
  %i.v = load i64, ptr %i.u, align 8, !noalias !10449
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.t, i64 %i.v) #44
          to label %.noexc49 unwind label %bb.h

.noexc49:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.noexc48
  %i.w = load ptr, ptr %i.u, align 8, !noalias !10449, !nonnull !13, !noundef !13 ; 2 uses
  %i.x = icmp ule i64 %i.p, %i.t
  call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10449
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.o, i64 %i.p, i1 false), !noalias !10450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %.sroa.012.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.sroa.0.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.012.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.t, ptr %.sroa.012.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.012.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.w, ptr %.sroa.012.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.012.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.p, ptr %.sroa.012.sroa.0.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.012.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.012.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.012.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.012.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.012.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.012.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.sroa.0.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.012.sroa.0.sroa.9.0..sroa_idx, align 8
  %.sroa.012.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.012.sroa.0.sroa.10.0..sroa_idx, align 8
  %.sroa.012.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %.sroa.012.sroa.8.0..sroa_idx, align 8
  %.sroa.012.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i32 0, ptr %.sroa.012.sroa.9.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 137
  store i8 11, ptr %.sroa.9.0..sroa_idx, align 1
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN4core3ptr63drop_in_place$LT$anki..sync..media..begin..SyncBeginRequest$GT$17h84e7261100c0f13fE.exit51" unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

"_ZN4core3ptr63drop_in_place$LT$anki..sync..media..begin..SyncBeginRequest$GT$17h84e7261100c0f13fE.exit51": ; preds = %bb.k
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.g

bb.n:                                             ; preds = %.body, %bb.o, %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

bb.o:                                             ; preds = %bb.h
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %.body unwind label %bb.n

.body:                                            ; preds = %bb.o, %.body.thread65
  %.pn68 = phi { ptr, i32 } [ %i.e, %.body.thread65 ], [ %i.n, %bb.o ]
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$anki..sync..media..begin..SyncBeginRequest$GT$17h84e7261100c0f13fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %common.resume unwind label %bb.n
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h1b96e5150e105573E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !13
  %i.e = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h4e650b66fbb4b18aE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E"(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !10453, !noundef !13 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

end_hunk_2
begin_hunk_3_@"_ZN61_$LT$anki..error..AnkiError$u20$as$u20$core..fmt..Display$GT$3fmt17h60e6009c7d8b3515E":bb.a
    i64 28, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit209
    i64 29, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit214
    i64 30, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit219
    i64 31, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit224
    i64 32, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit229
    i64 33, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit234
    i64 34, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit239
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @931, i64 noundef 12), !noalias !10659, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit74: ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @932, i64 noundef 13), !noalias !10660, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit79: ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @935, i64 noundef 13), !noalias !10661, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit84: ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @937, i64 noundef 11), !noalias !10662, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit89: ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @939, i64 noundef 7), !noalias !10663, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit94: ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @941, i64 noundef 12), !noalias !10664, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit99: ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @943, i64 noundef 9), !noalias !10665, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit104: ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @944, i64 noundef 9), !noalias !10666, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit109: ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @945, i64 noundef 10), !noalias !10667, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit114: ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @946, i64 noundef 13), !noalias !10668, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit119: ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @947, i64 noundef 11), !noalias !10669, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit124: ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @948, i64 noundef 17), !noalias !10670, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit129: ; preds = %bb.a
  %i.u = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @949, i64 noundef 21), !noalias !10671, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit134: ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @951, i64 noundef 8), !noalias !10672, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit139: ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1143, i64 noundef 166), !noalias !10673, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit144: ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @953, i64 noundef 8), !noalias !10674, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit149: ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @955, i64 noundef 17), !noalias !10675, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit154: ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @957, i64 noundef 11), !noalias !10676, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit159: ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @958, i64 noundef 12), !noalias !10677, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit164: ; preds = %bb.a
  %i.ab = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @959, i64 noundef 9), !noalias !10678, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit169: ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @960, i64 noundef 25), !noalias !10679, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit174: ; preds = %bb.a
  %i.ad = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @961, i64 noundef 21), !noalias !10680, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit179: ; preds = %bb.a
  %i.ae = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @962, i64 noundef 18), !noalias !10681, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit184: ; preds = %bb.a
  %i.af = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @964, i64 noundef 16), !noalias !10682, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit189: ; preds = %bb.a
  %i.ag = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @966, i64 noundef 11), !noalias !10683, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit194: ; preds = %bb.a
  %i.ah = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @967, i64 noundef 9), !noalias !10684, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit199: ; preds = %bb.a
  %i.ai = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @968, i64 noundef 18), !noalias !10685, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit204: ; preds = %bb.a
  %i.aj = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @969, i64 noundef 19), !noalias !10686, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit209: ; preds = %bb.a
  %i.ak = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @970, i64 noundef 17), !noalias !10687, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit214: ; preds = %bb.a
  %i.al = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1144, i64 noundef 52), !noalias !10688, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit219: ; preds = %bb.a
  %i.am = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1145, i64 noundef 39), !noalias !10689, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit224: ; preds = %bb.a
  %i.an = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @975, i64 noundef 37), !noalias !10690, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit229: ; preds = %bb.a
  %i.ao = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @976, i64 noundef 24), !noalias !10691, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit234: ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @977, i64 noundef 24), !noalias !10692, !inline_history !7
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit239: ; preds = %bb.a
  %i.aq = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @978, i64 noundef 15), !noalias !10693, !inline_history !7
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit239, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit234, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit229, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit224, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit219, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit214, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit209, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit204, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit199, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit194, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit189, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit184, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit179, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit174, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit169, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit164, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit159, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit154, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit149, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit144, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit139, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit134, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit129, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit124, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit119, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit114, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit109, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit104, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit99, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit94, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit89, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit84, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit79, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit74, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
  %.sroa.0.0.in = phi i1 [ %i.i, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ], [ %i.j, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit74 ], [ %i.k, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit79 ], [ %i.l, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit84 ], [ %i.m, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit89 ], [ %i.n, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit94 ], [ %i.o, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit99 ], [ %i.p, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit104 ], [ %i.q, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit109 ], [ %i.r, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit114 ], [ %i.s, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit119 ], [ %i.t, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit124 ], [ %i.u, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit129 ], [ %i.v, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit134 ], [ %i.w, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit139 ], [ %i.x, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit144 ], [ %i.y, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit149 ], [ %i.z, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit154 ], [ %i.aa, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit159 ], [ %i.ab, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit164 ], [ %i.ac, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit169 ], [ %i.ad, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit174 ], [ %i.ae, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit179 ], [ %i.af, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit184 ], [ %i.ag, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit189 ], [ %i.ah, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit194 ], [ %i.ai, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit199 ], [ %i.aj, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit204 ], [ %i.ak, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit209 ], [ %i.al, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit214 ], [ %i.am, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit219 ], [ %i.an, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit224 ], [ %i.ao, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit229 ], [ %i.ap, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit234 ], [ %i.aq, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit239 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN61_$LT$anki..error..db..DbError$u20$as$u20$core..fmt..Debug$GT$3fmt17he2ce2cf93961c6b5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @939, i64 noundef 7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @933, i64 noundef 4, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @905, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1146)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN62_$LT$axum_core..error..Error$u20$as$u20$core..error..Error$GT$6source17hcf9ec8e9f308e700E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !13, !align !14, !noundef !13
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN62_$LT$core..convert..Infallible$u20$as$u20$core..fmt..Debug$GT$3fmt17hea17660e67335f7cE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN63_$LT$anki..error..CardTypeError$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa64f065a7e54b4cE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @935, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1152, i64 noundef 8, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1153, i64 noundef 7, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1001, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @883, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1151)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN63_$LT$anki..error..db..DbError$u20$as$u20$core..error..Error$GT$11description17h477ad3cb5adc6a36E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @939, i64 7 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN63_$LT$anki..error..db..DbError$u20$as$u20$core..error..Error$GT$5cause17hfb87dc96c7c89cfeE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN63_$LT$anki..error..db..DbError$u20$as$u20$core..error..Error$GT$6source17hd08e46a81fd099faE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$anki..browser_table..Column$u20$as$u20$core..fmt..Debug$GT$3fmt17h5d0f4e47d39a9925E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !71, !noundef !13 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN64_$LT$anki..browser_table..Column$u20$as$u20$core..fmt..Debug$GT$3fmt17h5d0f4e47d39a9925E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN64_$LT$anki..browser_table..Column$u20$as$u20$core..fmt..Debug$GT$3fmt17h5d0f4e47d39a9925E.584", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$anki_io..error..FileIoError$u20$as$u20$core..fmt..Debug$GT$3fmt17hb191c47308b3d168E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @937, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1175, i64 noundef 4, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1173, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1176, i64 noundef 2, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1174, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @883, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @907)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$core..convert..Infallible$u20$as$u20$core..fmt..Display$GT$3fmt17hb8d3e43308cd7216E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$alloc..string..FromUtf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h74eb3348ed036be9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1178, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1179, i64 noundef 5, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1177, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1030, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1007)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN65_$LT$anki..error..CardTypeError$u20$as$u20$core..error..Error$GT$11description17h0c2f2fb967efbf86E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @935, i64 13 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN65_$LT$anki..error..CardTypeError$u20$as$u20$core..error..Error$GT$5cause17h462580baf30ca8bdE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @1181, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN65_$LT$anki..error..CardTypeError$u20$as$u20$core..error..Error$GT$6source17hb54d0d59b38956e5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @1181, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN65_$LT$anki..error..CardTypeError$u20$as$u20$core..fmt..Display$GT$3fmt17ha084ebf614686a14E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8
  %.val = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !13, !noalias !10696, !nonnull !13
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @935, i64 noundef 13), !noalias !10696, !inline_history !7
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$anki..search..ReturnItemType$u20$as$u20$core..fmt..Debug$GT$3fmt17h879cdaa92ce92bc3E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !19, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %. = select i1 %i.b, ptr @1182, ptr @1156
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %., i64 noundef 5)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$anki..sync..error..HttpError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f4bd41586377f96E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1185, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1186, i64 noundef 4, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1183, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1187, i64 noundef 7, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @883, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1184)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$libsqlite3_sys..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h41f2c4488410c8b4E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @887, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1186, i64 noundef 4, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1193, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1194, i64 noundef 13, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @885)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$smallvec..CollectionAllocErr$u20$as$u20$core..fmt..Debug$GT$3fmt17h34ea618847bdb7a3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !12, !noundef !13
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1198, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1196)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1195, i64 noundef 16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN66_$LT$anki_io..error..FileIoError$u20$as$u20$core..error..Error$GT$11description17hefbc3333ebb66613E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @937, i64 11 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN66_$LT$anki_io..error..FileIoError$u20$as$u20$core..error..Error$GT$5cause17h6723bab80b9b354aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @612, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN66_$LT$anki_io..error..FileIoError$u20$as$u20$core..error..Error$GT$6source17h95e13e9831afa7b6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @612, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0d356f1c638ced89E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !18, !noundef !13
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1201, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1199, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f3e1feabc7106caE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(44) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !33, !noundef !13
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1201, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1202)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1199, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4aec70d24b42bd9eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !18, !noundef !13
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1201, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1203)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1199, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h599692f4b2d1e95eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !align !22, !noundef !13
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1201, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1204)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1199, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h778eb05780cd1b1dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !13
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1201, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1205)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1199, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17he0156eb3b8f4f4a1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !align !22, !noundef !13
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1201, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1003)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1199, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN67_$LT$M$u20$as$u20$tracing_subscriber..fmt..format..FormatFields$GT$13format_fields17hb4a686a8b5ecbe8aE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10700)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !10701
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 1, ptr %i.c, align 8, !alias.scope !10702, !noalias !10700
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 25 ; 2 uses
  store i8 0, ptr %i.d, align 1, !alias.scope !10702, !noalias !10700
  call void @"_ZN65_$LT$$RF$F$u20$as$u20$tracing_subscriber..field..RecordFields$GT$6record17h409794c9c25be12aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @1206)
  %.sroa.3.0.copyload = load i8, ptr %i.d, align 1
  %i.e = trunc nuw i8 %.sroa.3.0.copyload to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN67_$LT$M$u20$as$u20$tracing_subscriber..fmt..format..FormatFields$GT$13format_fields17he4ce67134ac83365E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10706)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !10707
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 1, ptr %i.c, align 8, !alias.scope !10708, !noalias !10706
end_hunk_3
begin_hunk_4_@"_ZN6multer5field5Field5bytes28_$u7b$$u7b$closure$u7d$$u7d$17h52ef1feb17315ccbE":bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !10791)
  %i.cr = load ptr, ptr %i.i, align 8, !alias.scope !10792, !nonnull !13, !align !14, !noundef !13
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !10792, !nonnull !13, !noundef !13
  %i.cu = load ptr, ptr %.sroa.3.0..sroa_idx2, align 8, !alias.scope !10792, !noundef !13
  %i.cv = load i64, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx, align 8, !alias.scope !10792, !noundef !13
  invoke void %i.ct(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx2.sroa_idx, ptr noundef %i.cu, i64 noundef %i.cv)
          to label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE.exit31" unwind label %bb.af, !inline_history !0

"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE.exit": ; preds = %bb.z, %bb.af
  %.pn8 = phi { ptr, i32 } [ %i.cw, %bb.af ], [ %i.bv, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.body24

bb.af:                                            ; preds = %bb.ae
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE.exit"

"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE.exit31": ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.thread

.thread:                                          ; preds = %bb.e, %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE.exit31"
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 544
  store ptr %i.cx, ptr %i.cy, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 560
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 560
  br label %bb.i

bb.ag:                                            ; preds = %bb.ap, %bb.z, %bb.ar, %.body24
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

bb.ah:                                            ; preds = %.noexc22, %bb.u
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body24

bb.ai:                                            ; preds = %bb.x, %bb.t
  %.sroa.862.0 = phi ptr [ %.sroa.970.0.copyload, %bb.t ], [ %.sroa.862.0.copyload64, %bb.x ]
  %.sroa.7.0 = phi i64 [ %.sroa.667.0.copyload, %bb.t ], [ %i.bq, %bb.x ]
  %.sroa.657.0 = phi ptr [ %.sroa.065.0.copyload, %bb.t ], [ %i.bt, %bb.x ]
  %.sroa.055.0 = phi ptr [ @_ZN5bytes9bytes_mut13SHARED_VTABLE17haa9e6d9e7b5468bdE, %bb.t ], [ %.sroa.055.0.copyload56, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 288
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$multer..field..Field$GT$17h02f0dd951bbb957dE"(ptr noalias noundef align 8 dereferenceable(256) %i.dc)
          to label %bb.al unwind label %bb.ak

bb.aj:                                            ; preds = %.body24, %bb.ak
  %.pn13 = phi { ptr, i32 } [ %i.dg, %bb.ak ], [ %.pn10.pn, %.body24 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 569
  %i.de = load i8, ptr %i.dd, align 1, !range !19, !noundef !13
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.ap, label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit34"

bb.ak:                                            ; preds = %bb.an, %bb.ai
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.al:                                            ; preds = %bb.ai
  store i8 0, ptr %i.ax, align 1
  br label %bb.am

bb.am:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit", %bb.al
  %.sroa.674.0 = phi ptr [ %.sroa.657.0, %bb.al ], [ %.sroa.650.sroa.0.0.copyload, %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit" ]
  %.sroa.473.0 = phi ptr [ %.sroa.055.0, %bb.al ], [ %.sroa.4.0.copyload, %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit" ]
  %.sroa.875.0 = phi i64 [ %.sroa.7.0, %bb.al ], [ %.sroa.650.sroa.3.0.copyload, %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit" ]
  %.sroa.976.0 = phi ptr [ %.sroa.862.0, %bb.al ], [ %.sroa.650.sroa.5.0.copyload, %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit" ]
  %.sroa.1077.0 = phi i64 [ undef, %bb.al ], [ %.sroa.8.0.copyload, %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit" ]
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 570
  store i8 0, ptr %i.dh, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i8 %i.av, ptr %0, align 8
  %.sroa.372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.372.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.372, i64 7, i1 false)
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.473.0, ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.674.0, ptr %.sroa.674.0..sroa_idx, align 8
  %.sroa.875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.875.0, ptr %.sroa.875.0..sroa_idx, align 8
  %.sroa.976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.976.0, ptr %.sroa.976.0..sroa_idx, align 8
  %.sroa.1077.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.1077.0, ptr %.sroa.1077.0..sroa_idx, align 8
  br label %common.ret

.body24:                                          ; preds = %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE.exit", %.body, %bb.ah, %bb.w
  %.pn10.pn = phi { ptr, i32 } [ %i.bj, %bb.w ], [ %i.db, %bb.ah ], [ %.pn5, %.body ], [ %.pn8, %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE.exit" ]
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 288
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$multer..field..Field$GT$17h02f0dd951bbb957dE"(ptr noalias noundef align 8 dereferenceable(256) %i.di) #42
          to label %bb.aj unwind label %bb.ag

bb.an:                                            ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.372, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.349, i64 7, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 288
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$multer..field..Field$GT$17h02f0dd951bbb957dE"(ptr noalias noundef align 8 dereferenceable(256) %i.dj)
          to label %bb.ao unwind label %bb.ak

bb.ao:                                            ; preds = %bb.an
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfc735800a8665824E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dk)
          to label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit" unwind label %bb.d

"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit": ; preds = %bb.ao
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 569
  store i8 0, ptr %i.dl, align 1
  br label %bb.am

.body:                                            ; preds = %bb.n, %bb.m
  %.pn5 = phi { ptr, i32 } [ %i.at, %bb.m ], [ %i.au, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.body24

bb.ap:                                            ; preds = %bb.aj
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfc735800a8665824E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dm)
          to label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit34" unwind label %bb.ag

bb.aq:                                            ; preds = %bb.ar, %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit34"
  store i8 0, ptr %i.x, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i8 2, ptr %i.l, align 8
  resume { ptr, i32 } %.pn15

bb.ar:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17hf4d983e2b95a205eE.exit34"
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$multer..field..Field$GT$17h02f0dd951bbb957dE"(ptr noalias noundef align 8 dereferenceable(256) %i.k) #42
          to label %bb.aq unwind label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN70_$LT$alloc..boxed..Box$LT$M$GT$$u20$as$u20$prost..message..Message$GT$11merge_field17h70f313ee2f745941E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i8 noundef range(i8 0, 6) %2, ptr noalias noundef align 8 dereferenceable(8) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.b = tail call noundef align 8 ptr @"_ZN74_$LT$anki_proto..search..SearchNode$u20$as$u20$prost..message..Message$GT$11merge_field17ha5ec194d55a566d6E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i32 noundef %1, i8 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4)
  ret ptr %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$anki..error..CardTypeErrorDetails$u20$as$u20$core..fmt..Debug$GT$3fmt17ha93968b9ff1b74f6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !48, !noundef !13 ; 3 uses
  %i.d = icmp ne i64 %i.c, -9223372036854775805
  tail call void @llvm.assume(i1 %i.d)
  %i.e = xor i64 %i.c, -9223372036854775808
  %i.f = icmp slt i64 %i.c, 0
  %i.g = select i1 %i.f, i64 %i.e, i64 3
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1251, i64 noundef 18)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.b, align 8
  %i.j = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1252, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1253, i64 noundef 5, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @972)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1254, i64 noundef 12)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.l = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1255, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1256, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1257, i64 noundef 12)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN70_$LT$anki..error..network..SyncError$u20$as$u20$core..error..Error$GT$11description17h3e29bd11352ffd93E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @943, i64 9 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN70_$LT$anki..error..network..SyncError$u20$as$u20$core..error..Error$GT$5cause17h8929b41d1b203253E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN70_$LT$anki..error..network..SyncError$u20$as$u20$core..error..Error$GT$6source17hb41d5c19985018a7E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN70_$LT$anki..error..network..SyncError$u20$as$u20$core..fmt..Display$GT$3fmt17h7d93812e8217ce1cE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hde434981500d7af5E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h69f5bc7605bd58edE", ptr %.sroa.46.0..sroa_idx, align 8
  store ptr @1259, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.k, align 8
  %.val = load ptr, ptr %1, align 8
  %i.l = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val7, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$anki..search..CardTableGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9a5d8ba3c89d3888E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [112 x i8], align 8               ; 6 uses
  %i.d = alloca [112 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !13, !align !14, !noundef !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 600
  call void @"_ZN4anki7storage4card54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$26clear_searched_cards_table17h8dddfaec4d2fb866E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.f)
  %i.g = load i64, ptr %i.d, align 8, !range !34, !noundef !13
  %.not = icmp eq i64 %i.g, -9223372036854775773
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.d, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN59_$LT$anki..error..AnkiError$u20$as$u20$core..fmt..Debug$GT$3fmt17h23f68fece724418fE", ptr %.sroa.42.0..sroa_idx, align 8
  store ptr @1260, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.k, align 8
  invoke void @_ZN3std2io5stdio6_print17h3fda082316a9dfcbE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c) #42
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$anki..search..NoteTableGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4dc951a98e4344d9E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [112 x i8], align 8               ; 6 uses
  %i.d = alloca [112 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !13, !align !14, !noundef !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 600
  call void @"_ZN4anki7storage4note54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$26clear_searched_notes_table17hf9b531b9ec59bc45E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.f)
  %i.g = load i64, ptr %i.d, align 8, !range !34, !noundef !13
  %.not = icmp eq i64 %i.g, -9223372036854775773
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.d, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN59_$LT$anki..error..AnkiError$u20$as$u20$core..fmt..Debug$GT$3fmt17h23f68fece724418fE", ptr %.sroa.42.0..sroa_idx, align 8
  store ptr @1260, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.k, align 8
  invoke void @_ZN3std2io5stdio6_print17h3fda082316a9dfcbE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c) #42
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN71_$LT$anki..error..network..NetworkError$u20$as$u20$core..fmt..Debug$GT$3fmt17h3a3a6a9222f92b2dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @941, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @933, i64 noundef 4, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @905, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1261)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, i64 } @"_ZN71_$LT$anki..import_export..ImportError$u20$as$u20$core..error..Error$GT$11description17h1fad5ea53fb30bc4E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
switch.lookup:
  %i.a = load i64, ptr %0, align 8, !range !70, !noundef !13 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775806
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
end_hunk_4
begin_hunk_5_@"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h40752e040661d9c5E":bb.a
  %i.c = load i64, ptr %i.a, align 8, !range !21, !alias.scope !10875, !noalias !10876, !noundef !13 ; 2 uses
  %i.d = icmp ne i64 %i.c, -9223372036854775807   ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !range !21, !alias.scope !10876, !noalias !10875, !noundef !13 ; 2 uses
  %i.f = icmp eq i64 %i.e, -9223372036854775807   ; 3 uses
  %not..i = xor i1 %i.f, true
  %i.g = xor i1 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

bb.b:                                             ; preds = %.lr.ph44
  br i1 %i.d, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not..i)
  %i.h = icmp eq i64 %i.c, -9223372036854775808   ; 2 uses
  %i.i = icmp eq i64 %i.e, -9223372036854775808   ; 3 uses
  %i.j = xor i1 %i.h, %i.i
  br i1 %i.j, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread", label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.h, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = xor i1 %i.i, true
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = tail call fastcc noundef zeroext i1 @"_ZN86_$LT$fluent_syntax..ast..InlineExpression$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8a8eb73fdc665f69E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.m), !inline_history !10854
  br i1 %i.n, label %bb.f, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10878)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !10877, !noalias !10878, !nonnull !13, !noundef !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !10877, !noalias !10878, !noundef !13 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !10878, !noalias !10877, !nonnull !13, !noundef !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !10878, !noalias !10877, !noundef !13
  %.not.i.i = icmp eq i64 %i.r, %i.v
  br i1 %.not.i.i, label %.preheader20, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

.preheader20:                                     ; preds = %bb.f
  %.not57 = icmp eq i64 %i.r, 0
  br i1 %.not57, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread18", label %.lr.ph42

.lr.ph42:                                         ; preds = %.preheader20, %_ZN4core3cmp9PartialEq2ne17h172869cb336fdbe9E.exit.i
  %.sroa.01.0.i.i41 = phi i64 [ %i.ax, %_ZN4core3cmp9PartialEq2ne17h172869cb336fdbe9E.exit.i ], [ 0, %.preheader20 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %.sroa.01.0.i.i41 ; 6 uses
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.t, i64 %.sroa.01.0.i.i41 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10882)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.z = load i8, ptr %i.y, align 8, !range !19, !alias.scope !10883, !noalias !10884, !noundef !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ab = load i8, ptr %i.aa, align 8, !range !19, !alias.scope !10885, !noalias !10886, !noundef !13
  %i.ac = icmp eq i8 %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

bb.g:                                             ; preds = %.lr.ph42
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10888)
  %i.ad = load i64, ptr %i.w, align 8, !range !18, !alias.scope !10887, !noalias !10889, !noundef !13
  %i.ae = load i64, ptr %i.x, align 8, !range !18, !alias.scope !10888, !noalias !10890, !noundef !13
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.h, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.val6.i = load i64, ptr %i.ag, align 8, !alias.scope !10887, !noalias !10889, !noundef !13 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val8.i = load i64, ptr %i.ah, align 8, !alias.scope !10888, !noalias !10890, !noundef !13
  %.not.i.i.i12 = icmp eq i64 %.val6.i, %.val8.i
  br i1 %.not.i.i.i12, label %"_ZN80_$LT$fluent_syntax..ast..VariantKey$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h08569a9c6ff56dbdE.exit", label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

"_ZN80_$LT$fluent_syntax..ast..VariantKey$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h08569a9c6ff56dbdE.exit": ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val3.i13 = load ptr, ptr %i.ai, align 8, !alias.scope !10888, !noalias !10890, !nonnull !13, !align !22, !noundef !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val.i14 = load ptr, ptr %i.aj, align 8, !alias.scope !10887, !noalias !10889, !nonnull !13, !align !22, !noundef !13
  %bcmp.i.i11.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i14, ptr nonnull readonly align 1 %.val3.i13, i64 %.val6.i), !noalias !10891
  %i.ak = icmp eq i32 %bcmp.i.i11.i, 0
  br i1 %i.ak, label %bb.i, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

bb.i:                                             ; preds = %"_ZN80_$LT$fluent_syntax..ast..VariantKey$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h08569a9c6ff56dbdE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10893)
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !10892, !noalias !10894, !nonnull !13, !noundef !13
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !10892, !noalias !10894, !noundef !13 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !10893, !noalias !10895, !nonnull !13, !noundef !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !10893, !noalias !10895, !noundef !13
  %.not.i.i7 = icmp eq i64 %i.ao, %i.as
  br i1 %.not.i.i7, label %.preheader, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

.preheader:                                       ; preds = %bb.i
  %.not58 = icmp eq i64 %i.ao, 0
  br i1 %.not58, label %_ZN4core3cmp9PartialEq2ne17h172869cb336fdbe9E.exit.i, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.at = add nuw i64 %.sroa.01.0.i.i940, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %i.ao
  br i1 %exitcond.not, label %_ZN4core3cmp9PartialEq2ne17h172869cb336fdbe9E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %.sroa.01.0.i.i940 = phi i64 [ %i.at, %bb.j ], [ 0, %.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [104 x i8], ptr %i.am, i64 %.sroa.01.0.i.i940
  %i.av = getelementptr inbounds nuw [104 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i940
  %i.aw = tail call fastcc noundef zeroext i1 @"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.av), !noalias !10896, !inline_history !10870
  br i1 %i.aw, label %bb.j, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

_ZN4core3cmp9PartialEq2ne17h172869cb336fdbe9E.exit.i: ; preds = %bb.j, %.preheader
  %i.ax = add nuw i64 %.sroa.01.0.i.i41, 1        ; 2 uses
  %exitcond61.not = icmp eq i64 %i.ax, %i.r
  br i1 %exitcond61.not, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread18", label %.lr.ph42

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.f)
  %i.ay = getelementptr i8, ptr %i.a, i64 16
  %.val2.i = load i64, ptr %i.ay, align 8, !alias.scope !10875, !noalias !10876, !noundef !13 ; 2 uses
  %i.az = getelementptr i8, ptr %i.b, i64 16
  %.val4.i = load i64, ptr %i.az, align 8, !alias.scope !10876, !noalias !10875, !noundef !13
  %.not.i.i.i = icmp eq i64 %.val2.i, %.val4.i
  br i1 %.not.i.i.i, label %.split, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

.split:                                           ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i = load ptr, ptr %i.ba, align 8, !alias.scope !10876, !noalias !10875, !nonnull !13, !align !22, !noundef !13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.bb, align 8, !alias.scope !10875, !noalias !10876, !nonnull !13, !align !22, !noundef !13
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val3.i, i64 %.val2.i), !alias.scope !10897, !noalias !10898, !inline_history !10874
  %i.bc = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bc, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread18", label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit": ; preds = %bb.d
  tail call void @llvm.assume(i1 %i.i)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bf = tail call fastcc noundef zeroext i1 @"_ZN86_$LT$fluent_syntax..ast..InlineExpression$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8a8eb73fdc665f69E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.be), !inline_history !10854
  br i1 %i.bf, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread18", label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread"

"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread18": ; preds = %_ZN4core3cmp9PartialEq2ne17h172869cb336fdbe9E.exit.i, %.split, %.preheader20, %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit"
  %i.bg = add nuw i64 %.sroa.01.043, 1            ; 2 uses
  %exitcond62.not = icmp eq i64 %i.bg, %1
  br i1 %exitcond62.not, label %"_ZN84_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad87a0a3adb9bfbE.exit.thread", label %.lr.ph44
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hd269ee2b1edc347dE"(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef %3) unnamed_addr #19 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %.preheader.split, label %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit.thread"

.preheader.split:                                 ; preds = %bb.a
  %.not14 = icmp eq i64 %1, 0
  br i1 %.not14, label %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit.thread", label %.lr.ph

bb.b:                                             ; preds = %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit"
  %i.a = add nuw i64 %.sroa.01.09, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.a, %1
  br i1 %exitcond.not, label %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit.thread", label %.lr.ph

"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit.thread": ; preds = %bb.b, %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h69197cc2134c3084E.exit.i", %.lr.ph, %.preheader.split, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.preheader.split ], [ false, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h69197cc2134c3084E.exit.i" ], [ false, %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit" ], [ true, %bb.b ], [ false, %.lr.ph ]
  ret i1 %.sroa.0.0

.lr.ph:                                           ; preds = %.preheader.split, %bb.b
  %.sroa.01.09 = phi i64 [ %i.a, %bb.b ], [ 0, %.preheader.split ] ; 3 uses
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.01.09 ; 3 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %.sroa.01.09 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10907)
  %i.d = getelementptr i8, ptr %i.b, i64 88
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !10906, !noalias !10907, !noundef !13 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 88
  %.val3.i = load i64, ptr %i.e, align 8, !alias.scope !10907, !noalias !10906, !noundef !13
  %.not.i.i.i = icmp eq i64 %.val1.i, %.val3.i
  br i1 %.not.i.i.i, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h69197cc2134c3084E.exit.i", label %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit.thread"

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h69197cc2134c3084E.exit.i": ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.val2.i = load ptr, ptr %i.f, align 8, !alias.scope !10907, !noalias !10906, !nonnull !13, !align !22, !noundef !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !10906, !noalias !10907, !nonnull !13, !align !22, !noundef !13
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val2.i, i64 %.val1.i), !alias.scope !10908, !noalias !10909, !inline_history !10905
  %i.h = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.h, label %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit", label %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit.thread"

"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit": ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h69197cc2134c3084E.exit.i"
  %i.i = tail call fastcc noundef zeroext i1 @"_ZN86_$LT$fluent_syntax..ast..InlineExpression$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8a8eb73fdc665f69E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c), !inline_history !10905
  br i1 %i.i, label %bb.b, label %"_ZN83_$LT$fluent_syntax..ast..NamedArgument$LT$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55836fbe7821efd8E.exit.thread"
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN73_$LT$anki..error..network..NetworkError$u20$as$u20$core..error..Error$GT$11description17h7cacfcb2e406c9d7E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @941, i64 12 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN73_$LT$anki..error..network..NetworkError$u20$as$u20$core..error..Error$GT$5cause17h16fa61a1d78a7672E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN73_$LT$anki..error..network..NetworkError$u20$as$u20$core..error..Error$GT$6source17h7cce42c782b2d108E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$anki..error..network..NetworkError$u20$as$u20$core..fmt..Display$GT$3fmt17h2f69417bd4708caeE"(ptr noalias readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8
  %.val = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !13, !noalias !10912, !nonnull !13
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @941, i64 noundef 12), !noalias !10912, !inline_history !7
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN73_$LT$anki..error..search..SearchErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17hb5bd1c06f801f59fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = load i64, ptr %0, align 8, !range !79, !noundef !13
  switch i64 %i.k, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 17, label %bb.s
    i64 18, label %bb.t
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1289, i64 noundef 12)
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1290, i64 noundef 11)
  br label %bb.u

bb.d:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1291, i64 noundef 10)
  br label %bb.u

bb.e:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1292, i64 noundef 13)
  br label %bb.u

bb.f:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1293, i64 noundef 13)
  br label %bb.u

bb.g:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1294, i64 noundef 10)
  br label %bb.u

bb.h:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1295, i64 noundef 13)
  br label %bb.u

bb.i:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1296, i64 noundef 10)
  br label %bb.u

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.j, align 8
  %i.u = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1297, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1298, i64 noundef 8, ptr noundef nonnull align 1 %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.u

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.i, align 8
  %i.w = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1299, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1298, i64 noundef 8, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.u

bb.l:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1300, i64 noundef 11)
  br label %bb.u

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.h, align 8
  %i.z = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1301, i64 noundef 19, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1298, i64 noundef 8, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.g, align 8
  %i.ab = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1302, i64 noundef 19, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1298, i64 noundef 8, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.o:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ad, ptr %i.f, align 8
  %i.ae = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1303, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1298, i64 noundef 8, ptr noundef nonnull align 1 %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1187, i64 noundef 7, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

bb.p:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ag, ptr %i.e, align 8
  %i.ah = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1304, i64 noundef 18, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1298, i64 noundef 8, ptr noundef nonnull align 1 %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1187, i64 noundef 7, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

bb.q:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aj, ptr %i.d, align 8
  %i.ak = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1305, i64 noundef 26, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1298, i64 noundef 8, ptr noundef nonnull align 1 %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1187, i64 noundef 7, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.u

bb.r:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.am, ptr %i.c, align 8
  %i.an = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1306, i64 noundef 26, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1298, i64 noundef 8, ptr noundef nonnull align 1 %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1187, i64 noundef 7, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.u

bb.s:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ap, ptr %i.b, align 8
  %i.aq = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1307, i64 noundef 19, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1298, i64 noundef 8, ptr noundef nonnull align 1 %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1187, i64 noundef 7, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @898)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.a, align 8
  %i.as = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1281, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @933, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @998)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.l, %bb.b ], [ %i.m, %bb.c ], [ %i.n, %bb.d ], [ %i.o, %bb.e ], [ %i.p, %bb.f ], [ %i.q, %bb.g ], [ %i.r, %bb.h ], [ %i.s, %bb.i ], [ %i.u, %bb.j ], [ %i.w, %bb.k ], [ %i.x, %bb.l ], [ %i.z, %bb.m ], [ %i.ab, %bb.n ], [ %i.ae, %bb.o ], [ %i.ah, %bb.p ], [ %i.ak, %bb.q ], [ %i.an, %bb.r ], [ %i.aq, %bb.s ], [ %i.as, %bb.t ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN74_$LT$anki..error..not_found..NotFoundError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5d84c711cd3387eaE"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_5
begin_hunk_6_@"_ZN75_$LT$F$u20$as$u20$axum..handler..Handler$LT$$LP$M$C$T1$C$T2$RP$$C$S$GT$$GT$4call28_$u7b$$u7b$closure$u7d$$u7d$17h13ecd67c67541891E":bb.a

"_ZN4core3ptr117drop_in_place$LT$axum..extract..state..State$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$17hed7ace6e1f7888a1E.exit.i.i": ; preds = %bb.bu, %bb.bt
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$anki..sync..request..SyncRequest$LT$anki..sync..media..begin..SyncBeginRequest$GT$$GT$17h32be340b9b618973E"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.eh)
          to label %"_ZN4core3ptr168drop_in_place$LT$anki..sync..http_server..routes..media_begin_post$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17ha7d636d7987c42b6E.exit.i" unwind label %bb.ca, !noalias !11452

bb.bx:                                            ; preds = %bb.bw
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43, !noalias !11452
  unreachable

bb.by:                                            ; preds = %bb.bv
  %i.eu = landingpad { ptr, i32 }
          cleanup
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 945
  store i8 0, ptr %i.ev, align 1, !noalias !11447
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 946
  store i8 0, ptr %i.ew, align 2, !noalias !11447
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 947
  store i8 0, ptr %i.ex, align 1, !noalias !11447
  br label %.body28.i

bb.bz:                                            ; preds = %bb.bv
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 945
  store i8 0, ptr %i.ey, align 1, !noalias !11447
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 946
  store i8 0, ptr %i.ez, align 2, !noalias !11447
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 947
  store i8 0, ptr %i.fa, align 1, !noalias !11447
  br label %"_ZN4core3ptr168drop_in_place$LT$anki..sync..http_server..routes..media_begin_post$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17ha7d636d7987c42b6E.exit.i"

bb.ca:                                            ; preds = %"_ZN4core3ptr117drop_in_place$LT$axum..extract..state..State$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$17hed7ace6e1f7888a1E.exit.i.i"
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body28.i

"_ZN4core3ptr168drop_in_place$LT$anki..sync..http_server..routes..media_begin_post$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17ha7d636d7987c42b6E.exit.i": ; preds = %bb.bz, %"_ZN4core3ptr117drop_in_place$LT$axum..extract..state..State$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$17hed7ace6e1f7888a1E.exit.i.i", %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11447
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 953
  store i8 0, ptr %i.fc, align 1, !noalias !11447
  br label %bb.cf

bb.cb:                                            ; preds = %.body28.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11463)
  call void @llvm.experimental.noalias.scope.decl(metadata !11464)
  call void @llvm.experimental.noalias.scope.decl(metadata !11465)
  %i.fd = load ptr, ptr %i.g, align 8, !alias.scope !11466, !noalias !11447, !nonnull !13, !noundef !13
  %i.fe = atomicrmw sub ptr %i.fd, i64 1 release, align 8, !noalias !11467
  %i.ff = icmp eq i64 %i.fe, 1
  br i1 %i.ff, label %bb.cc, label %"_ZN4core3ptr117drop_in_place$LT$axum..extract..state..State$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$17hed7ace6e1f7888a1E.exit31.i"

bb.cc:                                            ; preds = %bb.cb
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8ab38290a8048373E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %"_ZN4core3ptr117drop_in_place$LT$axum..extract..state..State$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$17hed7ace6e1f7888a1E.exit31.i" unwind label %bb.bg, !noalias !11452

bb.cd:                                            ; preds = %bb.bo, %bb.bn
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body56

bb.ce:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11447
  store i8 3, ptr %i.ef, align 8, !noalias !11447
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.446.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.884)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.985)
  store i64 3, ptr %0, align 8
  br label %common.ret

bb.cf:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$anki..sync..http_server..routes..media_begin_post$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17ha7d636d7987c42b6E.exit.i", %"_ZN4core3ptr117drop_in_place$LT$axum..extract..state..State$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$17hed7ace6e1f7888a1E.exit.i"
  %i.fh = phi ptr [ %i.cw, %"_ZN4core3ptr117drop_in_place$LT$axum..extract..state..State$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$17hed7ace6e1f7888a1E.exit.i" ], [ %i.ef, %"_ZN4core3ptr168drop_in_place$LT$anki..sync..http_server..routes..media_begin_post$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17ha7d636d7987c42b6E.exit.i" ]
  %i.fi = phi ptr [ %i.cx, %"_ZN4core3ptr117drop_in_place$LT$axum..extract..state..State$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$17hed7ace6e1f7888a1E.exit.i" ], [ %i.eg, %"_ZN4core3ptr168drop_in_place$LT$anki..sync..http_server..routes..media_begin_post$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17ha7d636d7987c42b6E.exit.i" ]
  %.sroa.043.0.i = phi i64 [ 3, %"_ZN4core3ptr117drop_in_place$LT$axum..extract..state..State$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$17hed7ace6e1f7888a1E.exit.i" ], [ %i.ej, %"_ZN4core3ptr168drop_in_place$LT$anki..sync..http_server..routes..media_begin_post$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17ha7d636d7987c42b6E.exit.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11447
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.884, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.i, i64 48, i1 false), !noalias !11468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.985, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.446.i, i64 72, i1 false), !noalias !11468
  store i8 1, ptr %i.fh, align 8, !noalias !11447
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.446.i)
  store i64 %.sroa.043.0.i, ptr %i.j, align 8
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.884.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.884, i64 48, i1 false)
  %.sroa.985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.985.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.985, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.884)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.985)
  invoke fastcc void @"_ZN4core3ptr167drop_in_place$LT$anki..sync..http_server..routes..media_begin_get$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h853b5f075277421dE"(ptr noundef nonnull align 8 %i.fi)
          to label %bb.ch unwind label %bb.cg

bb.cg:                                            ; preds = %bb.ch, %bb.cf
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.ch:                                            ; preds = %bb.cf
  invoke void @"_ZN102_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$axum_core..response..into_response..IntoResponse$GT$13into_response17h1ad6aea27ed2d7c0E"(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(128) %i.j)
          to label %bb.ci unwind label %bb.cg

bb.ci:                                            ; preds = %bb.ch
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11469)
  call void @llvm.experimental.noalias.scope.decl(metadata !11470)
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !11471, !nonnull !13, !noundef !13
  %i.fm = atomicrmw sub ptr %i.fl, i64 1 release, align 8, !noalias !11471
  %i.fn = icmp eq i64 %i.fm, 1
  br i1 %i.fn, label %bb.cj, label %"_ZN4core3ptr42drop_in_place$LT$axum_core..body..Body$GT$17hb4611f3f595d4e54E.exit"

bb.cj:                                            ; preds = %bb.ci
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8ab38290a8048373E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %"_ZN4core3ptr42drop_in_place$LT$axum_core..body..Body$GT$17hb4611f3f595d4e54E.exit" unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body48

.body56:                                          ; preds = %bb.cd, %"_ZN4core3ptr117drop_in_place$LT$axum..extract..state..State$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$17hed7ace6e1f7888a1E.exit31.i"
  %i.fp = phi ptr [ %i.dx, %"_ZN4core3ptr117drop_in_place$LT$axum..extract..state..State$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$17hed7ace6e1f7888a1E.exit31.i" ], [ %i.cu, %bb.cd ]
  %.pn23 = phi { ptr, i32 } [ %.pn20.i, %"_ZN4core3ptr117drop_in_place$LT$axum..extract..state..State$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$$GT$17hed7ace6e1f7888a1E.exit31.i" ], [ %i.fg, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.884)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.985)
  invoke fastcc void @"_ZN4core3ptr167drop_in_place$LT$anki..sync..http_server..routes..media_begin_get$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h853b5f075277421dE"(ptr noundef nonnull align 8 %i.fp) #42
          to label %bb.t unwind label %bb.s

bb.cl:                                            ; preds = %bb.cn, %bb.t
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11472)
  call void @llvm.experimental.noalias.scope.decl(metadata !11473)
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !11474, !nonnull !13, !noundef !13
  %i.fs = atomicrmw sub ptr %i.fr, i64 1 release, align 8, !noalias !11474
  %i.ft = icmp eq i64 %i.fs, 1
  br i1 %i.ft, label %bb.cm, label %"_ZN4core3ptr82drop_in_place$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$17h12adae57e13bed72E.exit63"

bb.cm:                                            ; preds = %bb.cl
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8ab38290a8048373E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fq)
          to label %"_ZN4core3ptr82drop_in_place$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$17h12adae57e13bed72E.exit63" unwind label %bb.s

bb.cn:                                            ; preds = %bb.t
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$http..request..Parts$GT$17hb3e712335f975df0E"(ptr noalias noundef align 8 dereferenceable(224) %1) #42
          to label %bb.cl unwind label %bb.s

"_ZN4core3ptr82drop_in_place$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$17h12adae57e13bed72E.exit63": ; preds = %bb.cl, %bb.cm
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 249
  %i.fv = load i8, ptr %i.fu, align 1, !range !19, !noundef !13
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.co, label %.body48

bb.co:                                            ; preds = %"_ZN4core3ptr82drop_in_place$LT$alloc..sync..Arc$LT$anki..sync..http_server..SimpleServer$GT$$GT$17h12adae57e13bed72E.exit63"
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.val = load ptr, ptr %i.fx, align 8
  %i.fy = getelementptr i8, ptr %1, i64 240
  %.val34 = load ptr, ptr %i.fy, align 8, !nonnull !13, !align !14, !noundef !13
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$axum_core..body..Body$GT$17hb4611f3f595d4e54E"(ptr %.val, ptr nonnull %.val34) #42
          to label %.body48 unwind label %bb.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @"_ZN75_$LT$anki..error..search..SearchErrorKind$u20$as$u20$core..error..Error$GT$11description17h2cbbe99bc63fe02fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #6 {
switch.lookup:
  %i.a = load i64, ptr %0, align 8, !range !79, !noundef !13 ; 2 uses
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN75_$LT$anki..error..search..SearchErrorKind$u20$as$u20$core..error..Error$GT$11description17h2cbbe99bc63fe02fE", i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN75_$LT$anki..error..search..SearchErrorKind$u20$as$u20$core..error..Error$GT$11description17h2cbbe99bc63fe02fE.588", i64 %i.a
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.b = insertvalue { ptr, i64 } poison, ptr %switch.load3, 0
  %i.c = insertvalue { ptr, i64 } %i.b, i64 %switch.ext, 1
  ret { ptr, i64 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN75_$LT$anki..error..search..SearchErrorKind$u20$as$u20$core..error..Error$GT$5cause17h4b92584cee52a325E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN75_$LT$anki..error..search..SearchErrorKind$u20$as$u20$core..error..Error$GT$6source17h5b62d8f01d38e734E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$anki..error..filtered..CustomStudyError$u20$as$u20$core..fmt..Debug$GT$3fmt17he0ea218cc9c1662cE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !19, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 12, i64 15
  %.1 = select i1 %i.b, ptr @1358, ptr @1357
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN76_$LT$anki..error..not_found..NotFoundError$u20$as$u20$core..error..Error$GT$11description17h537fb763b5906e34E"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @1309, i64 13 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN76_$LT$anki..error..not_found..NotFoundError$u20$as$u20$core..error..Error$GT$5cause17h82ae9efcb04b3bd2E"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN76_$LT$anki..error..not_found..NotFoundError$u20$as$u20$core..error..Error$GT$6source17h728c9f80d0614dd0E"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$rusqlite..types..from_sql..FromSqlError$u20$as$u20$core..fmt..Debug$GT$3fmt17h9e93361db7e292a7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !31, !noundef !13
  switch i64 %i.d, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1359, i64 noundef 11)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.c, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1360, i64 noundef 10, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1005)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.b, align 8
  %i.j = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1361, i64 noundef 15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1362, i64 noundef 13, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1001, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1363, i64 noundef 9, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @972)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.a, align 8
  %i.l = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1281, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1003)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.l, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$tracing_subscriber..fmt..format..Writer$u20$as$u20$core..fmt..Write$GT$10write_char17he53b825591b1ca28E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !align !22, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !13, !align !14, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !13, !nonnull !13
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %i.a, i32 noundef %1)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$tracing_subscriber..fmt..format..Writer$u20$as$u20$core..fmt..Write$GT$9write_fmt17hf091709e93b290c1E"(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN18tracing_subscriber3fmt6format6Writer9write_fmt17hf980c5c1d7603ccfE(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$tracing_subscriber..fmt..format..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17h55be97b817b9cf01E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !align !22, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !13, !align !14, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !13, !nonnull !13
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN77_$LT$anki..error..filtered..FilteredDeckError$u20$as$u20$core..fmt..Debug$GT$3fmt17h65910abff5b46278E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !24, !noundef !13 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN77_$LT$anki..error..filtered..FilteredDeckError$u20$as$u20$core..fmt..Debug$GT$3fmt17h65910abff5b46278E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN77_$LT$anki..error..filtered..FilteredDeckError$u20$as$u20$core..fmt..Debug$GT$3fmt17h65910abff5b46278E.589", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN77_$LT$axum..extract..multipart..MultipartError$u20$as$u20$core..fmt..Debug$GT$3fmt17h37591fed22a7057cE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1369, i64 noundef 14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @883, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1368)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hd4b42ec04b0eb9d1E"(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [256 x i8], align 8               ; 38 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !13
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr inttoptr (i64 1 to ptr), ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr inttoptr (i64 1 to ptr), ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr inttoptr (i64 1 to ptr), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr inttoptr (i64 1 to ptr), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr inttoptr (i64 1 to ptr), ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store i64 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store ptr inttoptr (i64 1 to ptr), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store ptr inttoptr (i64 1 to ptr), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store i64 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store ptr inttoptr (i64 1 to ptr), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store ptr inttoptr (i64 1 to ptr), ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store ptr inttoptr (i64 1 to ptr), ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store i64 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store ptr inttoptr (i64 1 to ptr), ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store i64 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store ptr inttoptr (i64 1 to ptr), ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  store i64 0, ptr %i.ak, align 8
end_hunk_6
begin_hunk_7_@"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hdb68350004c2018fE":bb.a
  %.sroa.0.0 = phi i64 [ %1, %bb.a ], [ %i.ak, %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17he81f30e0a0cdf188E.exit" ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11842)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !11842, !noundef !13 ; 3 uses
  %i.p = icmp ult i64 %i.o, %.sroa.0.0
  br i1 %i.p, label %bb.c, label %"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE.exit", !prof !15

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11842
  store i64 %.sroa.0.0, ptr %i.i, align 8, !noalias !11842
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.o, ptr %i.q, align 8, !noalias !11842
  call void @_ZN5bytes13panic_advance17h799a24a1f73a1f12E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i) #44, !noalias !11842
  unreachable

"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE.exit": ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !11842, !nonnull !13, !align !22, !noundef !13
  %i.t = sub nuw i64 %i.o, %.sroa.0.0
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0
  store ptr %i.u, ptr %i.r, align 8, !alias.scope !11842
  store i64 %i.t, ptr %i.n, align 8, !alias.scope !11842
  br label %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17he81f30e0a0cdf188E.exit15"

bb.d:                                             ; preds = %bb.a
  %.not = icmp ult i64 %i.l, %1
  %i.v = icmp eq i64 %.val, 0                     ; 2 uses
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11843)
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE.exit.i", %bb.e
  %.sroa.0.0.i = phi i64 [ %i.l, %bb.e ], [ %i.ah, %"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE.exit.i" ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11844)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11843
  store i64 %.sroa.0.0.i, ptr %i.h, align 8, !noalias !11845
  %.not.i.i = icmp ugt i64 %.sroa.0.0.i, %.val5
  br i1 %.not.i.i, label %bb.g, label %"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hbf9f5a157d8eea25E.exit.i", !prof !15

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11845
  store i64 %.val5, ptr %i.f, align 8, !noalias !11845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11845
  store ptr %i.h, ptr %i.e, align 8, !noalias !11845
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !11845
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.w, align 8, !noalias !11845
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !11845
  store ptr @1190, ptr %i.g, align 8, !noalias !11845
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.x, align 8, !noalias !11845
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.y, align 8, !noalias !11845
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.z, align 8, !noalias !11845
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %i.aa, align 8, !noalias !11845
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1192) #44, !noalias !11845
  unreachable

"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hbf9f5a157d8eea25E.exit.i": ; preds = %bb.f
  %i.ab = sub nuw i64 %.val5, %.sroa.0.0.i
  store i64 %i.ab, ptr %i.k, align 8, !alias.scope !11845
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !11845, !noundef !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sroa.0.0.i
  store ptr %i.ae, ptr %i.ac, align 8, !alias.scope !11845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11843
  br label %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17he81f30e0a0cdf188E.exit"

bb.h:                                             ; preds = %bb.e
  %.not.i = icmp ult i64 %.val, %i.l
  %i.af = load ptr, ptr %0, align 8, !alias.scope !11843, !nonnull !13, !align !22, !noundef !13 ; 2 uses
  br i1 %.not.i, label %"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE.exit.i", label %"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE.exit5.i"

"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE.exit.i": ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.val
  store ptr %i.ag, ptr %0, align 8, !alias.scope !11846
  store i64 0, ptr %i.j, align 8, !alias.scope !11846
  %i.ah = sub nuw i64 %i.l, %.val
  br label %bb.f

"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE.exit5.i": ; preds = %bb.h
  %i.ai = sub nuw i64 %.val, %i.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.l
  store ptr %i.aj, ptr %0, align 8, !alias.scope !11847
  store i64 %i.ai, ptr %i.j, align 8, !alias.scope !11847
  br label %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17he81f30e0a0cdf188E.exit"

"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17he81f30e0a0cdf188E.exit": ; preds = %"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hbf9f5a157d8eea25E.exit.i", %"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE.exit5.i"
  %i.ak = sub nuw i64 %1, %i.l
  br label %bb.b

bb.i:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11848)
  br i1 %i.v, label %bb.j, label %bb.l

bb.j:                                             ; preds = %"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE.exit.i9", %bb.i
  %.sroa.0.0.i10 = phi i64 [ %1, %bb.i ], [ %i.aw, %"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE.exit.i9" ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11849)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11848
  store i64 %.sroa.0.0.i10, ptr %i.d, align 8, !noalias !11850
  %.not.i.i11 = icmp ugt i64 %.sroa.0.0.i10, %.val5
  br i1 %.not.i.i11, label %bb.k, label %"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hbf9f5a157d8eea25E.exit.i12", !prof !15

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11850
  store i64 %.val5, ptr %i.b, align 8, !noalias !11850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11850
  store ptr %i.d, ptr %i.a, align 8, !noalias !11850
  %.sroa.42.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.42.0..sroa_idx.i.i13, align 8, !noalias !11850
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.al, align 8, !noalias !11850
  %.sroa.46.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.46.0..sroa_idx.i.i14, align 8, !noalias !11850
  store ptr @1190, ptr %i.c, align 8, !noalias !11850
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %i.am, align 8, !noalias !11850
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.an, align 8, !noalias !11850
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.ao, align 8, !noalias !11850
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %i.ap, align 8, !noalias !11850
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1192) #44, !noalias !11850
  unreachable

"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hbf9f5a157d8eea25E.exit.i12": ; preds = %bb.j
  %i.aq = sub nuw i64 %.val5, %.sroa.0.0.i10
  store i64 %i.aq, ptr %i.k, align 8, !alias.scope !11850
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !11850, !noundef !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.0.0.i10
  store ptr %i.at, ptr %i.ar, align 8, !alias.scope !11850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11848
  br label %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17he81f30e0a0cdf188E.exit15"

bb.l:                                             ; preds = %bb.i
  %.not.i7 = icmp ult i64 %.val, %1
  %i.au = load ptr, ptr %0, align 8, !alias.scope !11848, !nonnull !13, !align !22, !noundef !13 ; 2 uses
  br i1 %.not.i7, label %"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE.exit.i9", label %"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE.exit5.i8"

"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE.exit.i9": ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.val
  store ptr %i.av, ptr %0, align 8, !alias.scope !11851
  store i64 0, ptr %i.j, align 8, !alias.scope !11851
  %i.aw = sub nuw i64 %1, %.val
  br label %bb.j

"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE.exit5.i8": ; preds = %bb.l
  %i.ax = sub nuw i64 %.val, %1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %1
  store ptr %i.ay, ptr %0, align 8, !alias.scope !11852
  store i64 %i.ax, ptr %i.j, align 8, !alias.scope !11852
  br label %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17he81f30e0a0cdf188E.exit15"

"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17he81f30e0a0cdf188E.exit15": ; preds = %"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE.exit5.i8", %"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hbf9f5a157d8eea25E.exit.i12", %"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE.exit"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17h0ffb7de87730b792E"(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !13
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val2 = load i64, ptr %i.b, align 8, !noundef !13
  %i.c = tail call noundef i64 @llvm.uadd.sat.i64(i64 %.val1, i64 %.val2)
  %i.d = getelementptr i8, ptr %0, i64 56
  %.val = load i64, ptr %i.d, align 8, !noundef !13
  %i.e = tail call i64 @llvm.uadd.sat.i64(i64 %i.c, i64 %.val)
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17h3000069405f7a9a8E"(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 50
  %.val1.i = load i8, ptr %i.a, align 2, !noundef !13
  %i.b = getelementptr i8, ptr %0, i64 51
  %.val2.i = load i8, ptr %i.b, align 1, !noundef !13
  %i.c = sub i8 %.val2.i, %.val1.i
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.e, align 8, !noundef !13
  %i.f = tail call noundef i64 @llvm.uadd.sat.i64(i64 %i.d, i64 %.val.i)
  %i.g = getelementptr i8, ptr %0, i64 64
  %.val = load i64, ptr %i.g, align 8, !noundef !13
  %i.h = tail call i64 @llvm.uadd.sat.i64(i64 %i.f, i64 %.val)
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN84_$LT$anki..error..invalid_input..InvalidInputError$u20$as$u20$core..error..Error$GT$11description17h2303edeb7b1ef94aE"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @1448, i64 17 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN84_$LT$anki..error..invalid_input..InvalidInputError$u20$as$u20$core..error..Error$GT$5cause17h4dfd087de5172615E"(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !align !22, !noundef !13 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !13, !align !14, !noundef !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.d, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN84_$LT$anki..error..invalid_input..InvalidInputError$u20$as$u20$core..error..Error$GT$6source17h9d6749dfb21eea7aE"(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !align !22, !noundef !13 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !13, !align !14, !noundef !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.d, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN84_$LT$anki..sync..collection..changes..DecksAndConfig$u20$as$u20$core..fmt..Debug$GT$3fmt17h6a05fdc063239960E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @406, i64 noundef 14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @181, i64 noundef 5, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1472, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @407, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1473)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN84_$LT$anki_proto..config..preferences..Editing$u20$as$u20$prost..message..Message$GT$10encode_raw17h31307c1d5c3f7b0eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !19, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !19, !noundef !13
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.b

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.h = load i8, ptr %i.g, align 2, !range !19, !noundef !13
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.f:                                             ; preds = %bb.g, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.j, align 8, !noundef !13
  %.not.i = icmp eq i64 %.val1, 0
  br i1 %.not.i, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h62f3a8afe6e61b44E.exit", label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h62f3a8afe6e61b44E.exit.thread"

bb.g:                                             ; preds = %bb.d
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h62f3a8afe6e61b44E.exit.thread": ; preds = %bb.f
  tail call void @_ZN5prost8encoding6string6encode17h7895341a049ed767E(i32 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h62f3a8afe6e61b44E.exit"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h62f3a8afe6e61b44E.exit": ; preds = %bb.f, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h62f3a8afe6e61b44E.exit.thread"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !range !19, !noundef !13
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h62f3a8afe6e61b44E.exit"
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !range !19, !noundef !13
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.k, label %bb.j

bb.i:                                             ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h62f3a8afe6e61b44E.exit"
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.h

bb.j:                                             ; preds = %bb.k, %bb.h
  ret void

bb.k:                                             ; preds = %bb.h
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN84_$LT$anki_proto..config..preferences..Editing$u20$as$u20$prost..message..Message$GT$11merge_field17hebe51de7a60520e5E"(ptr noalias noundef align 8 dereferenceable(32) %0, i32 noundef %1, i8 noundef range(i8 0, 6) %2, ptr noalias noundef align 8 dereferenceable(8) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  switch i32 %1, label %bb.b [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef align 8 ptr @_ZN5prost8encoding10skip_field17h8f54248659b417e9E(i8 noundef %2, i32 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = tail call noundef align 8 ptr @_ZN5prost8encoding4bool5merge17h140466d6e2863e23E(i8 noundef %2, ptr noalias noundef nonnull align 1 dereferenceable(1) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not17 = icmp eq ptr %i.i, null
  br i1 %.not17, label %bb.l, label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.k = tail call noundef align 8 ptr @_ZN5prost8encoding4bool5merge17h140466d6e2863e23E(i8 noundef %2, ptr noalias noundef nonnull align 1 dereferenceable(1) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not16 = icmp eq ptr %i.k, null
  br i1 %.not16, label %bb.l, label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.m = tail call noundef align 8 ptr @_ZN5prost8encoding4bool5merge17h140466d6e2863e23E(i8 noundef %2, ptr noalias noundef nonnull align 1 dereferenceable(1) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not15 = icmp eq ptr %i.m, null
  br i1 %.not15, label %bb.l, label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.n = tail call noundef align 8 ptr @_ZN5prost8encoding6string5merge17h6e6058124d6ec337E(i8 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not14 = icmp eq ptr %i.n, null
  br i1 %.not14, label %bb.l, label %bb.s

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.p = tail call noundef align 8 ptr @_ZN5prost8encoding4bool5merge17h140466d6e2863e23E(i8 noundef %2, ptr noalias noundef nonnull align 1 dereferenceable(1) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not13 = icmp eq ptr %i.p, null
  br i1 %.not13, label %bb.l, label %bb.v

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = tail call noundef align 8 ptr @_ZN5prost8encoding4bool5merge17h140466d6e2863e23E(i8 noundef %2, ptr noalias noundef nonnull align 1 dereferenceable(1) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.l, label %bb.y

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.i, ptr %i.f, align 8, !noalias !11865
  invoke void @_ZN5prost5error11DecodeError4push17hd7e04dac3a3d13bfE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1474, i64 noundef 7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1479, i64 noundef 31)
          to label %"_ZN84_$LT$anki_proto..config..preferences..Editing$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17ha4e4a9f58c7740e6E.exit" unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !11865, !nonnull !13, !noundef !13
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$prost..error..DecodeError$GT$17h0db662563dbe9a43E"(ptr nonnull %.val.i) #42
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

common.resume:                                    ; preds = %bb.z, %bb.w, %bb.t, %bb.q, %bb.n, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.w ], [ %i.s, %bb.j ], [ %i.v, %bb.n ], [ %i.y, %bb.q ], [ %i.ab, %bb.t ], [ %i.ah, %bb.z ]
end_hunk_7
