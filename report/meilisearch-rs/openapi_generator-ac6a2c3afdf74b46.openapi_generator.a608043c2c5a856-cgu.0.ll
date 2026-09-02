Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/openapi_generator-ac6a2c3afdf74b46.openapi_generator.a608043c2c5a856-cgu.0?download=true
inline.NumInlined: 4415
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 78
begin_hunk_0_@"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h784aefc55df2ae25E":bb.a

bb.c:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i", %bb.b, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i"
  %i.an = phi ptr [ %i.u, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i" ], [ %i.ae, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i" ], [ %i.l, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i" ], [ %i.f, %bb.b ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ab, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i" ], [ %i.am, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i" ], [ %i.q, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i" ], [ %i.s, %bb.b ] ; 8 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.c, %i.e
  %i.ar = add i64 %i.aq, %i.ap
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i"
    i32 13, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i"
    i32 12, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i"
    i32 11, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i"
    i32 10, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i"
    i32 9, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i"
  ]

bb.d:                                             ; preds = %bb.c
  %i.as = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i.i, 127
  br i1 %i.as, label %bb.e, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h8ca409a5f64ed479E.exit"

bb.e:                                             ; preds = %bb.d
  %i.at = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.at, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h8ca409a5f64ed479E.exit" [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.au = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.av = zext i1 %i.au to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h2b66030e469a66e5E.exit.i.i.i"

bb.g:                                             ; preds = %bb.e
  %i.aw = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.ax = zext i1 %i.aw to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h2b66030e469a66e5E.exit.i.i.i"

bb.h:                                             ; preds = %bb.e
  %i.ay = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !9507, !noundef !16
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h2b66030e469a66e5E.exit.i.i.i"

bb.i:                                             ; preds = %bb.e
  %i.bc = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !9507, !noundef !16
  %i.bg = lshr i8 %i.bf, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h2b66030e469a66e5E.exit.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h2b66030e469a66e5E.exit.i.i.i": ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.ax, %bb.g ], [ %i.bb, %bb.h ], [ %i.av, %bb.f ], [ %i.bg, %bb.i ]
  %i.bh = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bh, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i", label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h8ca409a5f64ed479E.exit"

"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i": ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h2b66030e469a66e5E.exit.i.i.i", %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bi = icmp eq ptr %i.an, %i.a
  br i1 %i.bi, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h8ca409a5f64ed479E.exit", label %.lr.ph.i.i

"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h8ca409a5f64ed479E.exit": ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i", %bb.e, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h2b66030e469a66e5E.exit.i.i.i", %bb.d, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %1, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i" ], [ %i.c, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h2b66030e469a66e5E.exit.i.i.i" ], [ %i.c, %bb.d ], [ %i.c, %bb.e ] ; 2 uses
  %i.bj = sub nuw i64 %1, %.sroa.0.0
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0
  %i.bl = insertvalue { ptr, i64 } poison, ptr %i.bk, 0
  %i.bm = insertvalue { ptr, i64 } %i.bl, i64 %i.bj, 1
  ret { ptr, i64 } %i.bm
}

; Function Attrs: cold inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17hcb1c8e7b01e56be1E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  br i1 %3, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.preheader16

.preheader16:                                     ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !align !19, !noundef !16
  %i.b = getelementptr i8, ptr %i.a, i64 %1       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !16 ; 6 uses
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !16, !align !19, !noundef !16 ; 5 uses
  %i.g = icmp ult i64 %i.e, 4
  %i.h = getelementptr i8, ptr %i.f, i64 %i.e
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  br i1 %i.g, label %.preheader.us.preheader, label %.preheader16.split

.preheader.us.preheader:                          ; preds = %.preheader16
  %exitcond.not.i.us30 = icmp eq i64 %i.e, 0      ; 3 uses
  %exitcond.not.i.us = icmp eq i64 %i.e, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %exitcond.not.i.us.1 = icmp eq i64 %i.e, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us
  %.sroa.01.018.us = phi i16 [ %i.z, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us ], [ %2, %.preheader.us.preheader ] ; 2 uses
  %i.l = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.018.us, i1 true) ; 2 uses
  %i.m = zext nneg i16 %i.l to i64
  %i.n = getelementptr i8, ptr %i.b, i64 %i.m     ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9512)
  br i1 %exitcond.not.i.us30, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  br i1 %exitcond.not.i.us, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.n, i64 2
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !9511, !noalias !9512, !noundef !16
  %i.r = load i8, ptr %i.j, align 1, !alias.scope !9512, !noalias !9511, !noundef !16
  %.not13.i.us.1 = icmp eq i8 %i.q, %i.r
  br i1 %.not13.i.us.1, label %bb.c, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us

bb.c:                                             ; preds = %.lr.ph.1
  br i1 %exitcond.not.i.us.1, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.n, i64 3
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !9511, !noalias !9512, !noundef !16
  %i.u = load i8, ptr %i.k, align 1, !alias.scope !9512, !noalias !9511, !noundef !16
  %.not13.i.us.2 = icmp eq i8 %i.t, %i.u
  br i1 %.not13.i.us.2, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us

.lr.ph:                                           ; preds = %.preheader.us
  %i.v = load i8, ptr %i.o, align 1, !alias.scope !9511, !noalias !9512, !noundef !16
  %i.w = load i8, ptr %i.f, align 1, !alias.scope !9512, !noalias !9511, !noundef !16
  %.not13.i.us = icmp eq i8 %i.v, %i.w
  br i1 %.not13.i.us, label %bb.b, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us: ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %i.x = shl nuw i16 1, %i.l
  %i.y = xor i16 %i.x, -1
  %i.z = and i16 %.sroa.01.018.us, %i.y           ; 2 uses
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.preheader.us

.preheader16.split:                               ; preds = %.preheader16, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread
  %.sroa.01.018 = phi i16 [ %i.ao, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread ], [ %2, %.preheader16 ] ; 2 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.018, i1 true) ; 2 uses
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = getelementptr i8, ptr %i.b, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9512)
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.e
  %i.ag = getelementptr i8, ptr %i.af, i64 -4     ; 3 uses
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit

.lr.ph.i:                                         ; preds = %.preheader16.split, %bb.d
  %.sroa.04.024.i = phi ptr [ %i.ai, %bb.d ], [ %i.ae, %.preheader16.split ] ; 2 uses
  %.sroa.08.023.i = phi ptr [ %i.aj, %bb.d ], [ %i.f, %.preheader16.split ] ; 2 uses
  %.sroa.04.0.val.i = load i32, ptr %.sroa.04.024.i, align 1, !alias.scope !9511, !noalias !9512
  %.sroa.08.0.val.i = load i32, ptr %.sroa.08.023.i, align 1, !alias.scope !9512, !noalias !9511
  %.not.i = icmp eq i32 %.sroa.04.0.val.i, %.sroa.08.0.val.i
  br i1 %.not.i, label %bb.d, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread

bb.d:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.024.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.023.i, i64 4
  %i.ak = icmp ult ptr %i.ai, %i.ag
  br i1 %i.ak, label %.lr.ph.i, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit: ; preds = %bb.d, %.preheader16.split
  %.val14.i = load i32, ptr %i.ag, align 1, !alias.scope !9511, !noalias !9512
  %.val.i = load i32, ptr %i.i, align 1, !alias.scope !9512, !noalias !9511
  %i.al = icmp eq i32 %.val14.i, %.val.i
  br i1 %i.al, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13: ; preds = %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us, %.preheader.us, %.lr.ph.2, %bb.b, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ true, %.lr.ph.2 ], [ false, %bb.a ], [ %exitcond.not.i.us30, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us ], [ true, %bb.c ], [ true, %bb.b ], [ %exitcond.not.i.us30, %.preheader.us ], [ false, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread ], [ true, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit ]
  ret i1 %.sroa.0.0

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread: ; preds = %.lr.ph.i, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit
  %i.am = shl nuw i16 1, %i.ab
  %i.an = xor i16 %i.am, -1
  %i.ao = and i16 %.sroa.01.018, %i.an            ; 2 uses
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.preheader16.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3str7pattern14TwoWaySearcher4next17h33251aae195f93b4E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(none) %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.b = add i64 %5, -1                           ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.c = add i64 %i.b, %.promoted                 ; 2 uses
  %i.d = icmp ult i64 %i.c, %3
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !16
  %7 = load i64, ptr %1, align 8                  ; 5 uses
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = sub i64 %5, %i.h
  %.promoted36 = load i64, ptr %8, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 %3, ptr %i.a, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.j = phi i64 [ %.promoted36, %.lr.ph ], [ %i.r, %bb.f ] ; 5 uses
  %i.k = phi i64 [ %i.c, %.lr.ph ], [ %i.t, %bb.f ]
  %i.l = phi i64 [ %.promoted, %.lr.ph ], [ %i.s, %bb.f ] ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.k
  %i.n = load i8, ptr %i.m, align 1, !noundef !16
  %i.o = and i8 %i.n, 63
  %i.p = zext nneg i8 %i.o to i64
  %9 = shl nuw i64 1, %i.p
  %10 = and i64 %9, %i.f
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.j, %._crit_edge
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %bb.j ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.q = add i64 %i.l, %5                         ; 3 uses
  store i64 %i.q, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %7)
  %.sroa.01.0 = select i1 %6, i64 %7, i64 %.sroa.0.0.i ; 4 uses
  %umax50 = tail call i64 @llvm.umax.i64(i64 %.sroa.01.0, i64 %5)
  %exitcond.not87.not = icmp ult i64 %.sroa.01.0, %5
  br i1 %exitcond.not87.not, label %.lr.ph90, label %._crit_edge91

.sink.split:                                      ; preds = %bb.d, %bb.r, %bb.o
  %.sink = phi i64 [ %i.i, %bb.o ], [ 0, %bb.r ], [ 0, %bb.d ] ; 2 uses
  %.ph72 = phi i64 [ %i.al, %bb.o ], [ %i.at, %bb.r ], [ %i.q, %bb.d ]
  store i64 %.sink, ptr %8, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.r, %bb.o, %bb.d
  %i.r = phi i64 [ %i.j, %bb.r ], [ %i.j, %bb.o ], [ %i.j, %bb.d ], [ %.sink, %.sink.split ]
  %i.s = phi i64 [ %i.at, %bb.r ], [ %i.al, %bb.o ], [ %i.q, %bb.d ], [ %.ph72, %.sink.split ] ; 2 uses
  %i.t = add i64 %i.b, %i.s                       ; 2 uses
  %i.u = icmp ult i64 %i.t, %3
  br i1 %i.u, label %bb.b, label %._crit_edge

bb.g:                                             ; preds = %bb.p
  %i.v = add i64 %.sroa.02.088, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %umax50
  br i1 %exitcond.not, label %._crit_edge91, label %.lr.ph90

._crit_edge91:                                    ; preds = %bb.g, %bb.e
  %.sroa.05.0 = select i1 %6, i64 0, i64 %i.j     ; 2 uses
  %i.w = icmp ult i64 %.sroa.05.0, %7
  br i1 %i.w, label %.lr.ph94, label %._crit_edge95

.lr.ph90:                                         ; preds = %bb.e, %bb.g
  %.sroa.02.088 = phi i64 [ %i.v, %bb.g ], [ %.sroa.01.0, %bb.e ] ; 4 uses
  %i.x = add i64 %.sroa.02.088, %i.l              ; 2 uses
  %i.y = icmp ult i64 %i.x, %3
  br i1 %i.y, label %bb.p, label %bb.q

bb.h:                                             ; preds = %bb.m
  %i.z = icmp ult i64 %.sroa.05.0, %i.ab
  br i1 %i.z, label %.lr.ph94, label %._crit_edge95

._crit_edge95:                                    ; preds = %._crit_edge91, %bb.h
  %i.aa = add i64 %i.l, %5                        ; 2 uses
  store i64 %i.aa, ptr %i.a, align 8
  br i1 %6, label %bb.j, label %bb.i

.lr.ph94:                                         ; preds = %._crit_edge91, %bb.h
  %.sroa.57.092 = phi i64 [ %i.ab, %bb.h ], [ %7, %._crit_edge91 ]
  %i.ab = add i64 %.sroa.57.092, -1               ; 6 uses
  %i.ac = icmp ult i64 %i.ab, %5
  br i1 %i.ac, label %bb.k, label %bb.l

bb.i:                                             ; preds = %._crit_edge95
  store i64 0, ptr %8, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge95
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.ad, align 8, !alias.scope !9515
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aa, ptr %i.ae, align 8, !alias.scope !9515
  br label %bb.c

bb.k:                                             ; preds = %.lr.ph94
  %i.af = add i64 %i.ab, %i.l                     ; 3 uses
  %i.ag = icmp ult i64 %i.af, %3
  br i1 %i.ag, label %bb.m, label %bb.n

bb.l:                                             ; preds = %.lr.ph94
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ab, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #38
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 %i.ab
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %i.af
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !16
  %.not = icmp eq i8 %i.ai, %i.ak
  br i1 %.not, label %bb.h, label %bb.o

bb.n:                                             ; preds = %bb.k
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.af, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #38
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.al = add i64 %i.h, %i.l                      ; 3 uses
  store i64 %i.al, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.p:                                             ; preds = %.lr.ph90
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.02.088
  %i.an = load i8, ptr %i.am, align 1, !noundef !16
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !16
  %.not22 = icmp eq i8 %i.an, %i.ap
  br i1 %.not22, label %bb.g, label %bb.r

bb.q:                                             ; preds = %.lr.ph90
  %i.aq = add i64 %.sroa.01.0, %i.l
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.aq)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #38
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ar = add i64 %i.l, 1
  %i.as = add i64 %i.ar, %.sroa.02.088
  %i.at = sub i64 %i.as, %7                       ; 3 uses
  store i64 %i.at, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h9a0cf704dcdc809bE(i64 %.0.val, i64 %.8.val, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !9532
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !9532
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !9532
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !9532
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !9532
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !9532
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !9532
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !noalias !9533, !nonnull !16, !noundef !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.h, align 8, !noalias !9533, !noundef !16
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9534
  store i8 -1, ptr %i.a, align 1, !noalias !9534
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !9535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9534
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !9536
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !9536
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !9536 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !9536
  %i.i = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !9536, !noundef !16
  %i.j = shl i64 %i.i, 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !9536, !noundef !16
  %i.m = or i64 %i.j, %i.l                        ; 2 uses
  %i.n = xor i64 %i.m, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.o = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.p = add i64 %i.n, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.r = xor i64 %i.q, %i.o                       ; 3 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 16)
  %i.t = xor i64 %i.s, %i.p                       ; 3 uses
  %i.u = tail call i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 32)
  %i.v = add i64 %i.p, %i.r                       ; 3 uses
  %i.w = add i64 %i.t, %i.u                       ; 2 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 17)
  %i.y = xor i64 %i.v, %i.x                       ; 3 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 21)
  %i.aa = xor i64 %i.z, %i.w                      ; 3 uses
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 32)
  %i.ac = xor i64 %i.w, %i.m
  %i.ad = xor i64 %i.ab, 255
  %i.ae = add i64 %i.ac, %i.y                     ; 3 uses
  %i.af = add i64 %i.aa, %i.ad                    ; 2 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 13)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 16)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = add i64 %i.ah, %i.af                    ; 3 uses
  %i.am = add i64 %i.aj, %i.ak                    ; 2 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 17)
  %i.ao = xor i64 %i.al, %i.an                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 21)
  %i.aq = xor i64 %i.ap, %i.am                    ; 3 uses
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.as = add i64 %i.ao, %i.am                    ; 3 uses
  %i.at = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 13)
  %i.av = xor i64 %i.au, %i.as                    ; 3 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 16)
  %i.ax = xor i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.az = add i64 %i.av, %i.at                    ; 3 uses
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 17)
  %i.bc = xor i64 %i.bb, %i.az                    ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 21)
  %i.be = xor i64 %i.bd, %i.ba                    ; 3 uses
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 13)
  %i.bj = xor i64 %i.bi, %i.bg                    ; 3 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 16)
  %i.bl = xor i64 %i.bk, %i.bh                    ; 2 uses
  %i.bm = add i64 %i.bj, %i.bh                    ; 3 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 17)
  %i.bo = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 21)
  %i.bp = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 32)
  %i.bq = xor i64 %i.bo, %i.bn
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = xor i64 %i.br, %i.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bs
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter8adapters7flatten17and_then_or_clear17h5b51a8096d301cfbE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 8      ; 5 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.e = load ptr, ptr %1, align 8, !noundef !16  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9564)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9566)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !9567, !noalias !9568, !nonnull !16, !noundef !16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.49.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.413.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h8cbac3bbdecad510E.exit.i.i.i", %bb.b
  %i.n = phi ptr [ %i.p, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h8cbac3bbdecad510E.exit.i.i.i" ], [ %i.e, %bb.b ] ; 4 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store ptr %i.p, ptr %1, align 8, !alias.scope !9567, !noalias !9568
  %.val4.i.i.i = load ptr, ptr %i.n, align 8, !noalias !9569, !nonnull !16, !align !19, !noundef !16 ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %.val5.i.i.i = load i64, ptr %i.q, align 8, !noalias !9569, !noundef !16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9570)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9571
  %i.r = load ptr, ptr %i.f, align 8, !alias.scope !9572, !noalias !9573, !nonnull !16, !align !22, !noundef !16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9574)
  %i.s = call fastcc { i64, i64 } @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hb959e6ee67c7adb7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val4.i.i.i, i64 noundef %.val5.i.i.i), !noalias !9575 ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0
  %i.u = extractvalue { i64, i64 } %i.s, 1        ; 3 uses
  %i.v = trunc nuw i64 %i.t to i1
  br i1 %i.v, label %bb.e, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h8cbac3bbdecad510E.exit.i.i.i"

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !9574, !noalias !9576, !noundef !16 ; 2 uses
  %i.y = icmp ult i64 %i.u, %i.x
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.u, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @495) #38, !noalias !9577
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !9574, !noalias !9576, !nonnull !16, !noundef !16
  %i.ab = getelementptr inbounds nuw [104 x i8], ptr %i.aa, i64 %i.u
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.i, align 8, !alias.scope !9572, !noalias !9573, !nonnull !16, !align !19, !noundef !16
  %i.ae = load i64, ptr %i.j, align 8, !alias.scope !9572, !noalias !9573, !noundef !16
  %i.af = call noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ad, i64 noundef %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ac), !noalias !9575 ; 4 uses
  %.not16.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not16.i.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load i64, ptr %i.af, align 8, !range !38, !noalias !9575, !noundef !16
  %i.ah = icmp eq i64 %i.ag, -9223372036854775805
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !9575, !nonnull !16, !noundef !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !noalias !9575, !noundef !16
  %i.am = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h6197f76d203b4248E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aj, i64 noundef %i.al), !noalias !9575
  %i.an = extractvalue { ptr, i64 } %i.am, 1
  %.not17.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not17.i.i.i.i.i, label %bb.j, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h8cbac3bbdecad510E.exit.i.i.i"
end_hunk_0
