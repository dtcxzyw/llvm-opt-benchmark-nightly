Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.10?download=true
inline.NumInlined: 5637
inline.NumDeleted: 1815
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h711739981a98d5a1E":"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17h4303de9fa9a6df51E.exit"
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.m = load i8, ptr %i.e, align 1, !noalias !10157, !noundef !13
  %i.n = shl nuw nsw i32 %i.i, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.f, -33
  br i1 %i.r, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i", label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h41ffa342c77486abE.exit.i"

bb.c:                                             ; preds = %bb.b
  %i.s = zext nneg i8 %i.f to i32
  br label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h41ffa342c77486abE.exit.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i"
  %i.t = add nuw nsw i64 %.reass5.i, 2
  %i.u = icmp samesign ne i64 %i.t, %1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.w = load i8, ptr %i.l, align 1, !noalias !10157, !noundef !13
  %i.x = shl nuw nsw i32 %i.p, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %i.ab = shl nuw nsw i32 %i.i, 12
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = icmp samesign ugt i8 %i.f, -17
  br i1 %i.ad, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i", label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h41ffa342c77486abE.exit.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i"
  %i.ae = add nuw nsw i64 %.reass5.i, 3
  %i.af = icmp samesign ne i64 %i.ae, %1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ah = load i8, ptr %i.v, align 1, !noalias !10157, !noundef !13
  %i.ai = shl nuw nsw i32 %i.i, 18
  %i.aj = and i32 %i.ai, 1835008
  %i.ak = shl nuw nsw i32 %i.aa, 6
  %i.al = and i8 %i.ah, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am
  %i.ao = or disjoint i32 %i.an, %i.aj
  br label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h41ffa342c77486abE.exit.i"

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h41ffa342c77486abE.exit.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i", %bb.c, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i"
  %.sroa.0.0.ph.i.i = phi ptr [ %i.l, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i" ], [ %i.v, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i" ], [ %i.ag, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i" ], [ %i.e, %bb.c ]
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.q, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i" ], [ %i.ac, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i" ], [ %i.ao, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i" ], [ %i.s, %bb.c ] ; 2 uses
  %i.ap = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = ptrtoint ptr %.sroa.0.0.ph.i.i to i64
  %.reass.i = add i64 %invariant.op.i, %i.aq
  %.not.i = icmp eq i32 %.sroa.4.0.i.ph.i.i, %2
  br i1 %.not.i, label %bb.a, label %_ZN4core3str7pattern8Searcher11next_reject17h9a62f176f593540aE.exit

_ZN4core3str7pattern8Searcher11next_reject17h9a62f176f593540aE.exit: ; preds = %bb.a, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h41ffa342c77486abE.exit.i"
  %.sroa.0.0 = phi i64 [ %.reass5.i, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h41ffa342c77486abE.exit.i" ], [ %1, %bb.a ] ; 2 uses
  %i.ar = sub nuw i64 %1, %.sroa.0.0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0
  %i.at = insertvalue { ptr, i64 } poison, ptr %i.as, 0
  %i.au = insertvalue { ptr, i64 } %i.at, i64 %i.ar, 1
  ret { ptr, i64 } %i.au
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17hfb42177d89ab4e7bE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17hae4be1053e217c6fE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h3ae5bed8ca7c8eb6E.exit.i.i"
  %i.c = phi i64 [ %i.ar, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h3ae5bed8ca7c8eb6E.exit.i.i" ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %i.an, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h3ae5bed8ca7c8eb6E.exit.i.i" ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !10171, !noundef !13 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i": ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !10171, !noundef !13
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i", label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i"
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !10171, !noundef !13
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i", label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i"
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !10171, !noundef !13
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
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
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us
  %.sroa.0.016.us = phi i16 [ %i.aa, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.m = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.016.us, i1 true) ; 2 uses
  %i.n = zext nneg i16 %i.m to i64
  %i.o = getelementptr i8, ptr %i.d, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 1        ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10181)
  call void @llvm.experimental.noalias.scope.decl(metadata !10182)
  %i.q = getelementptr i8, ptr %i.p, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10183
  store ptr %i.p, ptr %i.b, align 8, !noalias !10184
  store ptr %i.q, ptr %i.l, align 8, !noalias !10184
  store ptr %i.h, ptr %i.a, align 8, !noalias !10184
  store ptr %i.j, ptr %4, align 8, !noalias !10184
  %i.r = call noundef i64 @_ZN4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4size17h70231c8b4b0fe5b0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !noalias !10185
  %i.s = call noundef i64 @_ZN4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4size17h70231c8b4b0fe5b0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !10185
  %.sroa.0.0.i.i.i.i.us = call noundef i64 @llvm.umin.i64(i64 %i.s, i64 %i.r) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10183
  %exitcond.not.i.us28 = icmp eq i64 %.sroa.0.0.i.i.i.i.us, 0 ; 3 uses
  br i1 %exitcond.not.i.us28, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.t = add i64 %.sroa.9.0.i.us29, 1             ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.t, %.sroa.0.0.i.i.i.i.us
  br i1 %exitcond.not.i.us, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.split.us, %bb.b
  %.sroa.9.0.i.us29 = phi i64 [ %i.t, %bb.b ], [ 0, %.preheader.split.us ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.9.0.i.us29
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.9.0.i.us29
  %i.w = load i8, ptr %i.u, align 1, !alias.scope !10181, !noalias !10182, !noundef !13
  %i.x = load i8, ptr %i.v, align 1, !alias.scope !10182, !noalias !10181, !noundef !13
  %.not13.i.us = icmp eq i8 %i.w, %i.x
  br i1 %.not13.i.us, label %bb.b, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us

_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us: ; preds = %.lr.ph
  %i.y = shl nuw i16 1, %i.m
  %i.z = xor i16 %i.y, -1
  %i.aa = and i16 %.sroa.0.016.us, %i.z           ; 2 uses
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread
  %.sroa.0.016 = phi i16 [ %i.ap, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread ], [ %2, %.preheader ] ; 2 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.016, i1 true) ; 2 uses
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = getelementptr i8, ptr %i.d, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10182)
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.g
  %i.ah = getelementptr i8, ptr %i.ag, i64 -4     ; 3 uses
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.024.i = phi ptr [ %i.aj, %bb.c ], [ %i.af, %.preheader.split ] ; 2 uses
  %.sroa.08.023.i = phi ptr [ %i.ak, %bb.c ], [ %i.h, %.preheader.split ] ; 2 uses
  %.sroa.04.0.val.i = load i32, ptr %.sroa.04.024.i, align 1, !alias.scope !10181, !noalias !10182
  %.sroa.08.0.val.i = load i32, ptr %.sroa.08.023.i, align 1, !alias.scope !10182, !noalias !10181
  %.not.i = icmp eq i32 %.sroa.04.0.val.i, %.sroa.08.0.val.i
  br i1 %.not.i, label %bb.c, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.024.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.023.i, i64 4
  %i.al = icmp ult ptr %i.aj, %i.ah
  br i1 %i.al, label %.lr.ph.i, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit

_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit: ; preds = %bb.c, %.preheader.split
  %.val14.i = load i32, ptr %i.ah, align 1, !alias.scope !10181, !noalias !10182
  %.val.i = load i32, ptr %i.k, align 1, !alias.scope !10182, !noalias !10181
  %i.am = icmp eq i32 %.val14.i, %.val.i
  br i1 %i.am, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread

_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12: ; preds = %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us, %.preheader.split.us, %bb.b, %bb.a
  %.sroa.03.0 = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ %exitcond.not.i.us28, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us ], [ %exitcond.not.i.us28, %.preheader.split.us ], [ false, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread ], [ true, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit ]
  ret i1 %.sroa.03.0

_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread: ; preds = %.lr.ph.i, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit
  %i.an = shl nuw i16 1, %i.ac
  %i.ao = xor i16 %i.an, -1
  %i.ap = and i16 %.sroa.0.016, %i.ao             ; 2 uses
  %i.aq = icmp eq i16 %i.ap, 0
  br i1 %i.aq, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12, label %.preheader.split
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
end_hunk_0
