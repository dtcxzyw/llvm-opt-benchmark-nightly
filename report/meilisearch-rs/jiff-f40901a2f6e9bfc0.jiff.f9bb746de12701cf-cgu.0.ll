Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4054
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E:bb.a
  %i.k = add nuw nsw i32 %i.j, 393206
  %i.l = add nuw nsw i32 %i.j, 524188
  %i.m = and i32 %i.k, %i.l
  %i.n = add nuw nsw i32 %i.j, 916504
  %i.o = add nuw nsw i32 %i.j, 514288
  %i.p = and i32 %i.n, %i.o
  %i.q = xor i32 %i.m, %i.p
  %i.r = lshr i32 %i.q, 17
  %i.s = add nuw nsw i32 %i.r, %.sroa.05.1.i
  %i.t = trunc nuw nsw i32 %i.s to i8
  %i.u = add nuw nsw i8 %i.t, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit
  %.sroa.0.0 = phi i8 [ %i.u, %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit ], [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4jiff3fmt6offset6Parser13parse_seconds17h4d050dfe4e92ed85E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2590 {
bb.a:
  %i.a = icmp ult i64 %2, 2
  br i1 %i.a, label %bb.c, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = add i64 %2, -2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2592)
  %i.d = load i8, ptr %1, align 1, !alias.scope !2593, !noundef !30 ; 2 uses
  %i.e = add i8 %i.d, -48                         ; 2 uses
  %or.cond.i.i.i = icmp ult i8 %i.e, 10
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i.1, label %.loopexit

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.preheader.i.i.i
  %.sroa.013.018.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %.sroa.013.018.i.i.i.ptr.1, align 1, !alias.scope !2593, !noundef !30 ; 2 uses
  %i.g = add i8 %i.f, -48                         ; 2 uses
  %or.cond.i.i.i.1 = icmp ult i8 %i.g, 10
  br i1 %or.cond.i.i.i.1, label %_ZN4jiff4util5parse3i6417he15214fedb7b0284E.exit.i.i, label %.loopexit

_ZN4jiff4util5parse3i6417he15214fedb7b0284E.exit.i.i: ; preds = %.lr.ph.i.i.i.1
  %narrow = mul nuw nsw i8 %i.e, 10
  %narrow26 = add nuw i8 %narrow, %i.g            ; 2 uses
  %i.h = icmp ugt i8 %narrow26, 59
  br i1 %i.h, label %bb.b, label %bb.f

.loopexit:                                        ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i.1
  %.lcssa = phi i8 [ %i.d, %.lr.ph.preheader.i.i.i ], [ %i.f, %.lr.ph.i.i.i.1 ]
  %i.i = tail call noundef ptr @"_ZN4jiff5error4util108_$LT$impl$u20$core..convert..From$LT$jiff..error..util..ParseIntError$GT$$u20$for$u20$jiff..error..Error$GT$4from17h5532020adfe71edeE"(i8 noundef 1, i8 %.lcssa), !noalias !2594
  br label %bb.e

bb.b:                                             ; preds = %_ZN4jiff4util5parse3i6417he15214fedb7b0284E.exit.i.i
  %i.j = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 20), !noalias !2594
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @"_ZN4jiff5error3fmt6offset107_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h187c6a80edac9b5aE"(i8 noundef 5, i8 undef)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %.loopexit, %bb.b
  %.sroa.65.0.ph = phi ptr [ %i.j, %bb.b ], [ %i.i, %.loopexit ]
  %i.m = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h18a7634b9e96b580E"(i8 noundef 17, ptr noundef nonnull %.sroa.65.0.ph)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %_ZN4jiff4util5parse3i6417he15214fedb7b0284E.exit.i.i
  store ptr %i.b, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %narrow26, ptr %.sroa.515.0..sroa_idx, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4jiff3fmt6offset6Parser5parse17h1c57978d4377f68dE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 1 captures(none) dereferenceable(6) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2650 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @"_ZN4jiff5error3fmt6offset107_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h187c6a80edac9b5aE"(i8 noundef 1, i8 undef)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i32 3, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.as, %bb.at, %_ZN4jiff3fmt6offset6Parser13parse_numeric17hfbc5b5a7a58674fcE.exit, %bb.au, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.g = load i8, ptr %2, align 1, !noundef !30   ; 3 uses
  switch i8 %i.g, label %bb.f [
    i8 90, label %bb.e
    i8 122, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.h = load i8, ptr %1, align 1, !range !40, !noundef !30
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.at, label %bb.as

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  switch i8 %i.g, label %bb.h [
    i8 43, label %bb.i
    i8 45, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.j = tail call noundef ptr @"_ZN4jiff5error3fmt6offset107_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h187c6a80edac9b5aE"(i8 noundef 11, i8 undef), !noalias !2653
  %i.k = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h607dcf683a74cbd0E"(ptr noundef nonnull %i.j)
  br label %bb.au

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.07.0.i.i = phi i64 [ 1095216660480, %bb.g ], [ 4294967296, %bb.f ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2654)
  %i.l = icmp ult i64 %3, 3
  br i1 %i.l, label %bb.k, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 5 uses
  %i.o = add i64 %3, -3                           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  %i.p = load i8, ptr %i.m, align 1, !alias.scope !2657, !noundef !30 ; 2 uses
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %or.cond.i.i.i.i.i = icmp ult i8 %i.q, 10
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.i.i.i.1.i.i, label %.loopexit.i.i

.lr.ph.i.i.i.1.i.i:                               ; preds = %.lr.ph.preheader.i.i.i.i.i
  %.sroa.013.018.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.r = load i8, ptr %.sroa.013.018.i.i.i.ptr.1.i.i, align 1, !alias.scope !2657, !noundef !30 ; 2 uses
  %i.s = add i8 %i.r, -48                         ; 2 uses
  %or.cond.i.i.i.1.i.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i.i.i.1.i.i, label %_ZN4jiff4util5parse3i6417he15214fedb7b0284E.exit.i.i.i.i, label %.loopexit.i.i

_ZN4jiff4util5parse3i6417he15214fedb7b0284E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.1.i.i
  %narrow.i.i = mul nuw nsw i8 %i.q, 10
  %narrow26.i.i = add nuw nsw i8 %i.s, %narrow.i.i ; 6 uses
  %i.t = icmp samesign ugt i8 %narrow26.i.i, 25
  br i1 %i.t, label %bb.j, label %bb.n

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.1.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.lcssa.i.i = phi i8 [ %i.p, %.lr.ph.preheader.i.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.1.i.i ]
  %i.u = tail call noundef ptr @"_ZN4jiff5error4util108_$LT$impl$u20$core..convert..From$LT$jiff..error..util..ParseIntError$GT$$u20$for$u20$jiff..error..Error$GT$4from17h5532020adfe71edeE"(i8 noundef 1, i8 %.lcssa.i.i), !noalias !2658
  br label %bb.l

bb.j:                                             ; preds = %_ZN4jiff4util5parse3i6417he15214fedb7b0284E.exit.i.i.i.i
  %i.v = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 18), !noalias !2658
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.w = tail call noundef ptr @"_ZN4jiff5error3fmt6offset107_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h187c6a80edac9b5aE"(i8 noundef 2, i8 undef), !noalias !2659
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %.loopexit.i.i
  %.sroa.65.0.ph.i.i = phi ptr [ %i.v, %bb.j ], [ %i.u, %.loopexit.i.i ]
  %i.x = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h18a7634b9e96b580E"(i8 noundef 15, ptr noundef nonnull %.sroa.65.0.ph.i.i)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.7259.0.ph.in.i = phi ptr [ %i.x, %bb.l ], [ %i.w, %bb.k ]
  %i.y = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h7ef1dde93d838633E"(i8 noundef 6, ptr noundef nonnull %.sroa.7259.0.ph.in.i)
  br label %bb.au

bb.n:                                             ; preds = %_ZN4jiff4util5parse3i6417he15214fedb7b0284E.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !range !41, !alias.scope !2651, !noundef !30
  %.not.i.i = icmp eq i64 %i.o, 0                 ; 3 uses
  switch i8 %i.aa, label %default.unreachable [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
  ]

default.unreachable:                              ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  br i1 %.not.i.i, label %.thread334.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE.exit.i"

bb.p:                                             ; preds = %bb.n
  br i1 %.not.i.i, label %.thread334.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE.exit214.i.a"

bb.q:                                             ; preds = %bb.n
  br i1 %.not.i.i, label %.thread334.i, label %bb.t

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE.exit.i": ; preds = %bb.o
  %rhsc.i.i = load i8, ptr %i.n, align 1, !alias.scope !2660 ; 2 uses
  %i.ab = icmp eq i8 %rhsc.i.i, 58
  br i1 %i.ab, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hea0e99d3ba232460E.exit.i.i", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE.exit.thread.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE.exit.thread.i": ; preds = %bb.t, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE.exit.i"
  %.val.i18.i.i = phi i8 [ %.val.i18.1.i.i, %bb.t ], [ %rhsc.i.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE.exit.i" ]
  %i.ac = icmp ugt i64 %i.o, 1
  br i1 %i.ac, label %.preheader.preheader.i.i, label %.thread334.i

.preheader.preheader.i.i:                         ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE.exit.thread.i"
  %i.ad = add i8 %.val.i18.i.i, -48               ; 2 uses
  %.sroa.0.0.i.i.i.i.i = icmp ult i8 %i.ad, 10
  br i1 %.sroa.0.0.i.i.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE.exit210.i.a", label %.thread334.i

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE.exit210.i.a": ; preds = %.preheader.preheader.i.i
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %rhsc.i208.i.a = load i8, ptr %.ptr.1.i.i, align 1, !alias.scope !2661, !noalias !2662, !noundef !30
  %4 = add i8 %rhsc.i208.i.a, -58
  %.sroa.0.0.i.i.i.1.i.i = icmp ult i8 %4, -10
  br i1 %.sroa.0.0.i.i.i.1.i.i, label %.thread334.i, label %bb.r

bb.r:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE.exit210.i.a"
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %6 = add i64 %3, -5
  br label %.lr.ph.i.i.i.1.i220.i

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE.exit214.i.a": ; preds = %bb.p
  %rhsc.i212.i.a = load i8, ptr %i.n, align 1, !alias.scope !2663
  %i.ae = icmp eq i8 %rhsc.i212.i.a, 58
  br i1 %i.ae, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hea0e99d3ba232460E.exit.i.i", label %bb.s

bb.s:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE.exit214.i.a"
  %i.af = tail call noundef ptr @"_ZN4jiff5error3fmt6offset107_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h187c6a80edac9b5aE"(i8 noundef 14, i8 undef), !noalias !2664
  br label %bb.au

bb.t:                                             ; preds = %bb.q
  %.val.i18.1.i.i = load i8, ptr %i.n, align 1, !alias.scope !2665 ; 2 uses
  %7 = icmp eq i8 %.val.i18.1.i.i, 58
  br i1 %7, label %.lr.ph.preheader.i.i.i.i215.thread.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE.exit.thread.i"

.lr.ph.preheader.i.i.i.i215.thread.i:             ; preds = %bb.t
  %8 = tail call noundef ptr @"_ZN4jiff5error3fmt6offset107_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h187c6a80edac9b5aE"(i8 noundef 0, i8 undef), !noalias !2664
  br label %bb.au

.thread334.i:                                     ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE.exit210.i.a", %.preheader.preheader.i.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE.exit.thread.i", %bb.q, %bb.p, %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !range !40, !alias.scope !2651, !noundef !30
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.y, label %bb.x

"_ZN4core6option15Option$LT$T$GT$6map_or17hea0e99d3ba232460E.exit.i.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE.exit214.i.a", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE.exit.i"
  %i.aj = add i64 %3, -4                          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  %i.ak = icmp ult i64 %i.aj, 2
  br i1 %i.ak, label %bb.v, label %.lr.ph.preheader.i.i.i.i215.i

.lr.ph.preheader.i.i.i.i215.i:                    ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hea0e99d3ba232460E.exit.i.i"
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.pre.i = load i8, ptr %i.al, align 1, !alias.scope !2667 ; 2 uses
  %.pre408.i = add i8 %.pre.i, -48                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.an = add i64 %3, -6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2669)
  %or.cond.i.i.i.i216.i = icmp ult i8 %.pre408.i, 10
  br i1 %or.cond.i.i.i.i216.i, label %.lr.ph.i.i.i.1.i220.i, label %.loopexit.i217.i

.lr.ph.i.i.i.1.i220.i:                            ; preds = %.lr.ph.preheader.i.i.i.i215.i, %bb.r
  %i.ao = phi i64 [ %6, %bb.r ], [ %i.an, %.lr.ph.preheader.i.i.i.i215.i ] ; 6 uses
  %i.ap = phi ptr [ %5, %bb.r ], [ %i.am, %.lr.ph.preheader.i.i.i.i215.i ] ; 6 uses
  %.sroa.8.0.sink.i348353427.i = phi i64 [ %i.o, %bb.r ], [ %i.aj, %.lr.ph.preheader.i.i.i.i215.i ]
  %.sroa.0.0.sink.i347354426.i = phi ptr [ %i.n, %bb.r ], [ %i.al, %.lr.ph.preheader.i.i.i.i215.i ] ; 3 uses
  %.sroa.09.0319346356425.i = phi i1 [ false, %bb.r ], [ true, %.lr.ph.preheader.i.i.i.i215.i ]
  %.pre-phi424.i = phi i8 [ %i.ad, %bb.r ], [ %.pre408.i, %.lr.ph.preheader.i.i.i.i215.i ]
  %.sroa.013.018.i.i.i.ptr.1.i221.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.sink.i347354426.i, i64 1
  %i.aq = load i8, ptr %.sroa.013.018.i.i.i.ptr.1.i221.i, align 1, !alias.scope !2667, !noundef !30 ; 2 uses
  %i.ar = add i8 %i.aq, -48                       ; 2 uses
  %or.cond.i.i.i.1.i222.i = icmp ult i8 %i.ar, 10
  br i1 %or.cond.i.i.i.1.i222.i, label %_ZN4jiff4util5parse3i6417he15214fedb7b0284E.exit.i.i.i223.i, label %.loopexit.i217.i

_ZN4jiff4util5parse3i6417he15214fedb7b0284E.exit.i.i.i223.i: ; preds = %.lr.ph.i.i.i.1.i220.i
  %narrow.i224.i = mul nuw nsw i8 %.pre-phi424.i, 10
  %narrow26.i225.i = add nuw nsw i8 %i.ar, %narrow.i224.i ; 5 uses
  %i.as = icmp samesign ugt i8 %narrow26.i225.i, 59
  br i1 %i.as, label %bb.u, label %bb.ab

.loopexit.i217.i:                                 ; preds = %.lr.ph.i.i.i.1.i220.i, %.lr.ph.preheader.i.i.i.i215.i
  %.lcssa.i218.i = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i.i.i215.i ], [ %i.aq, %.lr.ph.i.i.i.1.i220.i ]
  %i.at = tail call noundef ptr @"_ZN4jiff5error4util108_$LT$impl$u20$core..convert..From$LT$jiff..error..util..ParseIntError$GT$$u20$for$u20$jiff..error..Error$GT$4from17h5532020adfe71edeE"(i8 noundef 1, i8 %.lcssa.i218.i), !noalias !2670
  br label %bb.w

bb.u:                                             ; preds = %_ZN4jiff4util5parse3i6417he15214fedb7b0284E.exit.i.i.i223.i
  %i.au = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 19), !noalias !2670
  br label %bb.w

bb.v:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hea0e99d3ba232460E.exit.i.i"
  %i.av = tail call noundef ptr @"_ZN4jiff5error3fmt6offset107_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h187c6a80edac9b5aE"(i8 noundef 3, i8 undef), !noalias !2671
  br label %bb.aa

bb.w:                                             ; preds = %bb.u, %.loopexit.i217.i
  %.sroa.65.0.ph.i219.i = phi ptr [ %i.au, %bb.u ], [ %i.at, %.loopexit.i217.i ]
  %i.aw = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h18a7634b9e96b580E"(i8 noundef 16, ptr noundef nonnull %.sroa.65.0.ph.i219.i)
  br label %bb.aa

bb.x:                                             ; preds = %.thread334.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !range !40, !alias.scope !2651, !noundef !30
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !range !40, !alias.scope !2651
  %i.bc = trunc nuw i8 %i.bb to i1
  %or.cond.i = select i1 %i.az, i1 %i.bc, i1 false
  br i1 %or.cond.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %.thread334.i
  %i.bd = tail call noundef ptr @"_ZN4jiff5error3fmt6offset107_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h187c6a80edac9b5aE"(i8 noundef 12, i8 undef), !noalias !2664
  br label %bb.au

bb.z:                                             ; preds = %bb.x
  %.sroa.22.13.insert.ext = zext nneg i8 %narrow26.i.i to i64
  %.sroa.22.13.insert.shift = shl nuw nsw i64 %.sroa.22.13.insert.ext, 40
  %.sroa.22.13.insert.insert = or disjoint i64 %.sroa.22.13.insert.shift, %.sroa.07.0.i.i
  br label %_ZN4jiff3fmt6offset6Parser13parse_numeric17hfbc5b5a7a58674fcE.exit

bb.aa:                                            ; preds = %bb.w, %bb.v
  %.sroa.7274.0.ph.in.i = phi ptr [ %i.aw, %bb.w ], [ %i.av, %bb.v ]
  %i.be = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h7ef1dde93d838633E"(i8 noundef 7, ptr noundef nonnull %.sroa.7274.0.ph.in.i)
  br label %bb.au

bb.ab:                                            ; preds = %_ZN4jiff4util5parse3i6417he15214fedb7b0284E.exit.i.i.i223.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !range !40, !alias.scope !2651, !noundef !30
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7b68e3087f5867b8E.exit.thread.i", label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7b68e3087f5867b8E.exit.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h7b68e3087f5867b8E.exit.i": ; preds = %bb.ac
  %.val.i.i = load i8, ptr %i.ap, align 1, !alias.scope !2672, !noundef !30
  %i.bi = icmp eq i8 %.val.i.i, 58
  br i1 %i.bi, label %bb.ag, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7b68e3087f5867b8E.exit.thread.i"

bb.ad:                                            ; preds = %bb.ab
  br i1 %.sroa.09.0319346356425.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bj = icmp ugt i64 %i.ao, 1
  br i1 %i.bj, label %.preheader.preheader.i235.i, label %.thread373.i

.preheader.preheader.i235.i:                      ; preds = %bb.ae
  %.val.i18.i236.i = load i8, ptr %i.ap, align 1, !alias.scope !2673, !noalias !2674, !noundef !30
  %i.bk = add i8 %.val.i18.i236.i, -48
  %.sroa.0.0.i.i.i.i237.i = icmp ult i8 %i.bk, 10
  br i1 %.sroa.0.0.i.i.i.i237.i, label %9, label %.thread373.i

bb.af:                                            ; preds = %bb.ad
  %.not.i243.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i243.i, label %.thread373.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hea0e99d3ba232460E.exit.i244.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17hea0e99d3ba232460E.exit.i244.i": ; preds = %bb.af
  %.val.i.i245.i = load i8, ptr %i.ap, align 1, !alias.scope !2675, !noundef !30
  %i.bl = icmp eq i8 %.val.i.i245.i, 58
  br i1 %i.bl, label %.thread380.i, label %.thread373.i

.thread380.i:                                     ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hea0e99d3ba232460E.exit.i244.i"
  %i.bm = add i64 %.sroa.8.0.sink.i348353427.i, -3
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.sink.i347354426.i, i64 3
  br label %bb.ah

9:                                                ; preds = %.preheader.preheader.i235.i
  %.ptr.1.i239.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.sink.i347354426.i, i64 3
  %.val.i18.1.i240.i = load i8, ptr %.ptr.1.i239.i, align 1, !alias.scope !2673, !noalias !2674, !noundef !30
  %10 = add i8 %.val.i18.1.i240.i, -58
  %.sroa.0.0.i.i.i.1.i241.i = icmp ult i8 %10, -10
  br i1 %.sroa.0.0.i.i.i.1.i241.i, label %.thread373.i, label %bb.ah

"_ZN4core6option15Option$LT$T$GT$6map_or17h7b68e3087f5867b8E.exit.thread.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7b68e3087f5867b8E.exit.i", %bb.ac
  %.sroa.22.9.insert.ext = zext nneg i8 %narrow26.i225.i to i64
  %.sroa.22.9.insert.shift = shl nuw nsw i64 %.sroa.22.9.insert.ext, 8
  %.sroa.22.13.insert.ext112 = zext nneg i8 %narrow26.i.i to i64
  %.sroa.22.13.insert.shift113 = shl nuw nsw i64 %.sroa.22.13.insert.ext112, 40
  %i.bo = or disjoint i64 %.sroa.22.9.insert.shift, %.sroa.22.13.insert.shift113
  %.sroa.22.12.insert.insert95 = or disjoint i64 %i.bo, %.sroa.07.0.i.i
  %.sroa.22.13.insert.insert115 = or disjoint i64 %.sroa.22.12.insert.insert95, 1
  br label %_ZN4jiff3fmt6offset6Parser13parse_numeric17hfbc5b5a7a58674fcE.exit

bb.ag:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7b68e3087f5867b8E.exit.i"
  %i.bp = tail call noundef ptr @"_ZN4jiff5error3fmt6offset107_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h187c6a80edac9b5aE"(i8 noundef 21, i8 undef), !noalias !2664
  br label %bb.au

.thread373.i:                                     ; preds = %9, %"_ZN4core6option15Option$LT$T$GT$6map_or17hea0e99d3ba232460E.exit.i244.i", %bb.af, %.preheader.preheader.i235.i, %bb.ae
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.br = load i8, ptr %i.bq, align 1, !range !40, !alias.scope !2651, !noundef !30
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %9, %.thread380.i
  %.sroa.7116.0386.i = phi i64 [ %i.bm, %.thread380.i ], [ %i.ao, %9 ]
  %.sroa.0.0.sink.i230385.i = phi ptr [ %i.bn, %.thread380.i ], [ %i.ap, %9 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2664
  call fastcc void @_ZN4jiff3fmt6offset6Parser13parse_seconds17h4d050dfe4e92ed85E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.sink.i230385.i, i64 noundef %.sroa.7116.0386.i), !noalias !2676
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2677)
  %i.bt = load ptr, ptr %i.c, align 8, !alias.scope !2678, !noalias !2664, !noundef !30 ; 4 uses
  %i.bu = icmp eq ptr %i.bt, null
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.ak, label %bb.al

bb.ai:                                            ; preds = %.thread373.i
  %.sroa.22.9.insert.ext60 = zext nneg i8 %narrow26.i225.i to i64
  %.sroa.22.9.insert.shift61 = shl nuw nsw i64 %.sroa.22.9.insert.ext60, 8
  %.sroa.22.13.insert.ext117 = zext nneg i8 %narrow26.i.i to i64
  %.sroa.22.13.insert.shift118 = shl nuw nsw i64 %.sroa.22.13.insert.ext117, 40
  %i.bw = or disjoint i64 %.sroa.22.9.insert.shift61, %.sroa.22.13.insert.shift118
  %.sroa.22.12.insert.insert100 = or disjoint i64 %i.bw, %.sroa.07.0.i.i
  %.sroa.22.13.insert.insert120 = or disjoint i64 %.sroa.22.12.insert.insert100, 1
  br label %_ZN4jiff3fmt6offset6Parser13parse_numeric17hfbc5b5a7a58674fcE.exit

bb.aj:                                            ; preds = %.thread373.i
  %i.bx = tail call noundef ptr @"_ZN4jiff5error3fmt6offset107_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h187c6a80edac9b5aE"(i8 noundef 13, i8 undef), !noalias !2664
  br label %bb.au

bb.ak:                                            ; preds = %bb.ah
  %i.by = load ptr, ptr %i.bv, align 8, !alias.scope !2678, !noalias !2664, !noundef !30
  %i.bz = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h7ef1dde93d838633E"(i8 noundef 8, ptr noundef %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2664
  br label %bb.au

bb.al:                                            ; preds = %bb.ah
  %.sroa.5287.0.copyload.i = load i64, ptr %i.bv, align 8, !alias.scope !2679, !noalias !2664 ; 3 uses
  %.sroa.8288.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.8288.0.copyload.i = load i8, ptr %.sroa.8288.0..sroa_idx.i, align 8, !alias.scope !2679, !noalias !2664 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2664
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cb = load i8, ptr %i.ca, align 1, !range !40, !alias.scope !2651, !noundef !30
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not205.i = icmp eq i64 %.sroa.5287.0.copyload.i, 0
  br i1 %.not205.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h3d12fe051ed54e3eE.exit.thread.i", label %"_ZN4core6option15Option$LT$T$GT$6map_or17h3d12fe051ed54e3eE.exit.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h3d12fe051ed54e3eE.exit.i": ; preds = %bb.am
  %.val.i250.i = load i8, ptr %i.bt, align 1, !alias.scope !2680, !noalias !2676, !noundef !30
  %i.cd = and i8 %.val.i250.i, -3
  %.sroa.0.0.i.i.i = icmp eq i8 %i.cd, 44
  br i1 %.sroa.0.0.i.i.i, label %bb.ao, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h3d12fe051ed54e3eE.exit.thread.i"

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2664
  call fastcc void @_ZN4jiff3fmt4util23parse_temporal_fraction17hb827c766925c883aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bt, i64 noundef %.sroa.5287.0.copyload.i), !noalias !2676
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2681)
  %i.ce = load i32, ptr %i.b, align 8, !range !66, !alias.scope !2682, !noalias !2664, !noundef !30 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 2
  br i1 %i.cf, label %bb.ap, label %bb.aq

"_ZN4core6option15Option$LT$T$GT$6map_or17h3d12fe051ed54e3eE.exit.thread.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h3d12fe051ed54e3eE.exit.i", %bb.am
  %.sroa.22.9.insert.ext65 = zext nneg i8 %narrow26.i225.i to i64
  %.sroa.22.9.insert.shift66 = shl nuw nsw i64 %.sroa.22.9.insert.ext65, 8
  %.sroa.22.11.insert.ext = zext i8 %.sroa.8288.0.copyload.i to i64
  %.sroa.22.11.insert.shift = shl nuw nsw i64 %.sroa.22.11.insert.ext, 24
  %.sroa.22.10.insert.insert82 = or disjoint i64 %.sroa.22.11.insert.shift, %.sroa.22.9.insert.shift66
  %.sroa.22.13.insert.ext122 = zext nneg i8 %narrow26.i.i to i64
  %.sroa.22.13.insert.shift123 = shl nuw nsw i64 %.sroa.22.13.insert.ext122, 40
  %i.cg = or disjoint i64 %.sroa.22.10.insert.insert82, %.sroa.22.13.insert.shift123
  %.sroa.22.12.insert.insert105 = or disjoint i64 %i.cg, %.sroa.07.0.i.i
  %.sroa.22.13.insert.insert125 = or disjoint i64 %.sroa.22.12.insert.insert105, 65537
  br label %_ZN4jiff3fmt6offset6Parser13parse_numeric17hfbc5b5a7a58674fcE.exit

bb.ao:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h3d12fe051ed54e3eE.exit.i"
  %i.ch = tail call noundef ptr @"_ZN4jiff5error3fmt6offset107_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h187c6a80edac9b5aE"(i8 noundef 22, i8 undef), !noalias !2676
  br label %bb.au

bb.ap:                                            ; preds = %bb.an
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !2682, !noalias !2664, !noundef !30
  %i.ck = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h2fe3eb631d8fbb9aE"(ptr noundef %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2664
  br label %bb.au

bb.aq:                                            ; preds = %bb.an
  %.sroa.5291.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.5291.0.copyload.i = load i32, ptr %.sroa.5291.0..sroa_idx.i, align 4, !alias.scope !2683, !noalias !2664 ; 2 uses
  %.sroa.6292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6292.0.copyload.i = load ptr, ptr %.sroa.6292.0..sroa_idx.i, align 8, !alias.scope !2683, !noalias !2664, !nonnull !30, !noundef !30
  %.sroa.9293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.9293.0.copyload.i = load i64, ptr %.sroa.9293.0..sroa_idx.i, align 8, !alias.scope !2683, !noalias !2664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2664
  %i.cl = trunc nuw i32 %i.ce to i1
  br i1 %i.cl, label %bb.ar, label %.split204.i

bb.ar:                                            ; preds = %bb.aq
  %i.cm = icmp slt i32 %.sroa.5291.0.copyload.i, 0
  br i1 %i.cm, label %.split.i, label %.split204.i

.split204.i:                                      ; preds = %bb.ar, %bb.aq
  %.sroa.0157.0.i = phi i32 [ 0, %bb.aq ], [ 1, %bb.ar ]
  %.sroa.5158.0.i = phi i32 [ undef, %bb.aq ], [ %.sroa.5291.0.copyload.i, %bb.ar ]
  %.sroa.22.9.insert.ext70 = zext nneg i8 %narrow26.i225.i to i64
  %.sroa.22.9.insert.shift71 = shl nuw nsw i64 %.sroa.22.9.insert.ext70, 8
  %.sroa.22.11.insert.ext87 = zext i8 %.sroa.8288.0.copyload.i to i64
  %.sroa.22.11.insert.shift88 = shl nuw nsw i64 %.sroa.22.11.insert.ext87, 24
  %.sroa.22.10.insert.insert85 = or disjoint i64 %.sroa.22.11.insert.shift88, %.sroa.22.9.insert.shift71
  %.sroa.22.13.insert.ext127 = zext nneg i8 %narrow26.i.i to i64
  %.sroa.22.13.insert.shift128 = shl nuw nsw i64 %.sroa.22.13.insert.ext127, 40
  %i.cn = or disjoint i64 %.sroa.22.10.insert.insert85, %.sroa.22.13.insert.shift128
  %.sroa.22.12.insert.insert110 = or disjoint i64 %i.cn, %.sroa.07.0.i.i
  %.sroa.22.13.insert.insert130 = or disjoint i64 %.sroa.22.12.insert.insert110, 65537
  br label %_ZN4jiff3fmt6offset6Parser13parse_numeric17hfbc5b5a7a58674fcE.exit

.split.i:                                         ; preds = %bb.ar
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @52, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #45, !noalias !2676
  unreachable

bb.as:                                            ; preds = %bb.e
  %i.co = tail call noundef ptr @"_ZN4jiff5error3fmt6offset107_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h187c6a80edac9b5aE"(i8 noundef 23, i8 %i.g)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.cp, align 8
  store i32 3, ptr %0, align 8
  br label %bb.c

bb.at:                                            ; preds = %bb.e
  %i.cq = add i64 %3, -1
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i32 2, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cq, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.c

bb.au:                                            ; preds = %bb.h, %bb.m, %bb.y, %bb.aa, %bb.aj, %bb.ak, %bb.ap, %bb.ao, %bb.ag, %bb.s, %.lr.ph.preheader.i.i.i.i215.thread.i
  %.sroa.22.0.ph = phi ptr [ %8, %.lr.ph.preheader.i.i.i.i215.thread.i ], [ %i.af, %bb.s ], [ %i.bp, %bb.ag ], [ %i.ch, %bb.ao ], [ %i.ck, %bb.ap ], [ %i.bz, %bb.ak ], [ %i.bx, %bb.aj ], [ %i.be, %bb.aa ], [ %i.bd, %bb.y ], [ %i.y, %bb.m ], [ %i.k, %bb.h ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.22.0.ph, ptr %i.cs, align 8
  store i32 3, ptr %0, align 8
  br label %bb.c

_ZN4jiff3fmt6offset6Parser13parse_numeric17hfbc5b5a7a58674fcE.exit: ; preds = %.split204.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17h3d12fe051ed54e3eE.exit.thread.i", %bb.ai, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7b68e3087f5867b8E.exit.thread.i", %bb.z
  %.sroa.67.0 = phi i64 [ %.sroa.9293.0.copyload.i, %.split204.i ], [ %i.ao, %bb.ai ], [ %.sroa.5287.0.copyload.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17h3d12fe051ed54e3eE.exit.thread.i" ], [ %i.o, %bb.z ], [ %i.ao, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7b68e3087f5867b8E.exit.thread.i" ]
  %.sroa.61.0 = phi ptr [ %.sroa.6292.0.copyload.i, %.split204.i ], [ %i.ap, %bb.ai ], [ %i.bt, %"_ZN4core6option15Option$LT$T$GT$6map_or17h3d12fe051ed54e3eE.exit.thread.i" ], [ %i.n, %bb.z ], [ %i.ap, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7b68e3087f5867b8E.exit.thread.i" ]
  %.sroa.22.0.in = phi i64 [ %.sroa.22.13.insert.insert130, %.split204.i ], [ %.sroa.22.13.insert.insert120, %bb.ai ], [ %.sroa.22.13.insert.insert125, %"_ZN4core6option15Option$LT$T$GT$6map_or17h3d12fe051ed54e3eE.exit.thread.i" ], [ %.sroa.22.13.insert.insert, %bb.z ], [ %.sroa.22.13.insert.insert115, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7b68e3087f5867b8E.exit.thread.i" ]
  %.sroa.20.0 = phi i32 [ %.sroa.5158.0.i, %.split204.i ], [ undef, %bb.ai ], [ undef, %"_ZN4core6option15Option$LT$T$GT$6map_or17h3d12fe051ed54e3eE.exit.thread.i" ], [ undef, %bb.z ], [ undef, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7b68e3087f5867b8E.exit.thread.i" ]
  %.sroa.0.0 = phi i32 [ %.sroa.0157.0.i, %.split204.i ], [ 0, %bb.ai ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h3d12fe051ed54e3eE.exit.thread.i" ], [ 0, %bb.z ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7b68e3087f5867b8E.exit.thread.i" ]
  %.sroa.22.0 = inttoptr i64 %.sroa.22.0.in to ptr
  store i32 %.sroa.0.0, ptr %0, align 8
  %.sroa.031.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.20.0, ptr %.sroa.031.sroa.4.0..sroa_idx, align 4
  %.sroa.031.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.22.0, ptr %.sroa.031.sroa.5.0..sroa_idx, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.61.0, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.67.0, ptr %.sroa.533.0..sroa_idx, align 8
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4jiff3fmt7rfc282214DateTimeParser12parse_second17h4f7c4c77e60ec55bE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2695 {
bb.a:
  %i.a = icmp ult i64 %2, 2
  br i1 %i.a, label %bb.c, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = add i64 %2, -2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2697)
  %i.d = load i8, ptr %1, align 1, !alias.scope !2698, !noundef !30 ; 2 uses
  %i.e = add i8 %i.d, -48                         ; 2 uses
  %or.cond.i.i.i = icmp ult i8 %i.e, 10
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i.1, label %.loopexit

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.preheader.i.i.i
  %.sroa.013.018.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %.sroa.013.018.i.i.i.ptr.1, align 1, !alias.scope !2698, !noundef !30 ; 2 uses
  %i.g = add i8 %i.f, -48                         ; 2 uses
  %or.cond.i.i.i.1 = icmp ult i8 %i.g, 10
  br i1 %or.cond.i.i.i.1, label %_ZN4jiff4util5parse3i6417he15214fedb7b0284E.exit.i.i, label %.loopexit

_ZN4jiff4util5parse3i6417he15214fedb7b0284E.exit.i.i: ; preds = %.lr.ph.i.i.i.1
  %narrow = mul nuw nsw i8 %i.e, 10
  %narrow27 = add nuw i8 %narrow, %i.g            ; 3 uses
  %or.cond.i8.i.i = icmp ugt i8 %narrow27, 60
  br i1 %or.cond.i8.i.i, label %bb.b, label %bb.f

.loopexit:                                        ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i.1
  %.lcssa = phi i8 [ %i.d, %.lr.ph.preheader.i.i.i ], [ %i.f, %.lr.ph.i.i.i.1 ]
  %i.h = tail call noundef ptr @"_ZN4jiff5error4util108_$LT$impl$u20$core..convert..From$LT$jiff..error..util..ParseIntError$GT$$u20$for$u20$jiff..error..Error$GT$4from17h5532020adfe71edeE"(i8 noundef 1, i8 %.lcssa), !noalias !2699
  br label %bb.e

bb.b:                                             ; preds = %_ZN4jiff4util5parse3i6417he15214fedb7b0284E.exit.i.i
  %i.i = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 11), !noalias !2699
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @"_ZN4jiff5error3fmt7rfc2822108_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..rfc2822..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h01c43893d75df668E"(i24 11)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %.loopexit, %bb.b
  %.sroa.65.0.ph = phi ptr [ %i.i, %bb.b ], [ %i.h, %.loopexit ]
  %i.l = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h0dd8f6c89bebf2eaE"(i24 26, ptr noundef nonnull %.sroa.65.0.ph), !noalias !2700
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %_ZN4jiff4util5parse3i6417he15214fedb7b0284E.exit.i.i
  %i.n = icmp eq i8 %narrow27, 60
  %spec.store.select = select i1 %i.n, i8 59, i8 %narrow27
  store ptr %i.b, ptr %0, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %spec.store.select, ptr %.sroa.521.0..sroa_idx, align 8
  br label %bb.d
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN4jiff3fmt7rfc282214DateTimeParser12skip_comment17ha44821655ffdb31bE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #15 personality ptr @rust_eh_personality !guid !2707 {
bb.a:
  %rhsc.i = load i8, ptr %1, align 1, !alias.scope !2708
  %i.a = icmp eq i8 %rhsc.i, 40
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E.exit, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 %2
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.e = add i64 %2, -1
  %.sroa.083.125 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %scevgep = getelementptr i8, ptr %1, i64 %2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.sroa.083.131 = phi ptr [ %.sroa.083.1, %bb.l ], [ %.sroa.083.125, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.030 = phi ptr [ %i.j, %bb.l ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %.sroa.9.029 = phi i64 [ %i.i, %bb.l ], [ %i.e, %.lr.ph.preheader ] ; 4 uses
  %.sroa.011.028 = phi i8 [ %.sroa.011.2, %bb.l ], [ 1, %.lr.ph.preheader ] ; 7 uses
  %.sroa.015.027 = phi i1 [ %.sroa.015.1, %bb.l ], [ false, %.lr.ph.preheader ]
  %.sroa.083.026 = phi ptr [ %.sroa.083.131, %bb.l ], [ %i.d, %.lr.ph.preheader ]
  %i.f = load i8, ptr %.sroa.083.026, align 1, !noundef !30
  %i.g = icmp eq i64 %.sroa.9.029, 0
  br i1 %i.g, label %bb.f, label %bb.e, !prof !42

._crit_edge:                                      ; preds = %bb.l
  %i.h = icmp eq i8 %.sroa.011.2, 0
  br i1 %i.h, label %_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E.exit, label %._crit_edge.thread

bb.e:                                             ; preds = %.lr.ph
  %i.i = add i64 %.sroa.9.029, -1                 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.030, i64 1 ; 5 uses
  br i1 %.sroa.015.027, label %bb.l, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #45
  unreachable

bb.g:                                             ; preds = %bb.e
  switch i8 %i.f, label %bb.l [
    i8 92, label %bb.h
    i8 41, label %bb.i
    i8 40, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not92.not = icmp eq i8 %.sroa.011.028, 0
  br i1 %.not92.not, label %._crit_edge.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = add i8 %.sroa.011.028, -1                ; 2 uses
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.j
  %.not2.i = icmp eq i64 %i.i, 0
  br i1 %.not2.i, label %_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.thread
  %scevgep.i = getelementptr i8, ptr %.sroa.0.030, i64 %.sroa.9.029 ; 2 uses
  %.val.i.peel.i = load i8, ptr %i.j, align 1, !alias.scope !2709, !noundef !30
  switch i8 %.val.i.peel.i, label %_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E.exit [
    i8 9, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E.exit.peel.i"
    i8 10, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E.exit.peel.i"
    i8 12, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E.exit.peel.i"
    i8 13, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E.exit.peel.i"
    i8 32, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E.exit.peel.i"
  ]

"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E.exit.peel.i": ; preds = %.lr.ph.preheader.i, %.lr.ph.preheader.i, %.lr.ph.preheader.i, %.lr.ph.preheader.i, %.lr.ph.preheader.i
  %i.m = add i64 %.sroa.9.029, -2                 ; 2 uses
  %.not.peel.i = icmp eq i64 %i.m, 0
  br i1 %.not.peel.i, label %_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E.exit.peel.i", %"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E.exit.i"
  %.sroa.0.05.pn.i = phi ptr [ %.sroa.0.05.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E.exit.i" ], [ %i.j, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E.exit.peel.i" ]
  %.sroa.5.04.i = phi i64 [ %i.n, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E.exit.i" ], [ %i.m, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E.exit.peel.i" ] ; 2 uses
  %.sroa.0.05.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.pn.i, i64 1 ; 3 uses
  %.val.i.i = load i8, ptr %.sroa.0.05.i, align 1, !alias.scope !2709, !noundef !30
  switch i8 %.val.i.i, label %_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E.exit [
    i8 9, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E.exit.i"
    i8 10, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E.exit.i"
    i8 12, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E.exit.i"
    i8 13, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E.exit.i"
    i8 32, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E.exit.i"
  ]

"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E.exit.i": ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.n = add i64 %.sroa.5.04.i, -1                ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E.exit, label %.lr.ph.i, !llvm.loop !6

end_hunk_0
begin_hunk_1_@llvm.scmp.i64.i16
!2415 = distinct !{!2415, !2413, !"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE: argument 2"}
!2416 = distinct !{!2416, !2413, !"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE: argument 1"}
!2417 = distinct !{!2417, !2413, !"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE: argument 0"}
!2418 = distinct !{!2418, i1 true, !"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E"}
!2419 = distinct !{!2419, !2418, !"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E: argument 0"}
!2420 = distinct !{!2420, i1 true, !"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$jiff..error..ErrorInner$GT$$GT$$GT$17h3be3f7959b7aa898E"}
!2421 = distinct !{!2421, !2420, !"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$jiff..error..ErrorInner$GT$$GT$$GT$17h3be3f7959b7aa898E: argument 0"}
!2422 = distinct !{!2422, i1 true, !"_ZN4core3ptr68drop_in_place$LT$alloc..sync..Arc$LT$jiff..error..ErrorInner$GT$$GT$17h7bafd4f3ce2ff47fE"}
!2423 = distinct !{!2423, !2422, !"_ZN4core3ptr68drop_in_place$LT$alloc..sync..Arc$LT$jiff..error..ErrorInner$GT$$GT$17h7bafd4f3ce2ff47fE: argument 0"}
!2424 = distinct !{!2424, i1 true, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5311cd68996ba297E"}
!2425 = distinct !{!2425, !2424, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5311cd68996ba297E: argument 0"}
!2426 = distinct !{!2426, i1 true, !"_ZN4jiff4span4Span15try_nanoseconds17h107f0926ea373cdeE"}
!2427 = distinct !{!2427, !2426, !"_ZN4jiff4span4Span15try_nanoseconds17h107f0926ea373cdeE: argument 1"}
!2428 = distinct !{!2428, !2426, !"_ZN4jiff4span4Span15try_nanoseconds17h107f0926ea373cdeE: argument 0"}
!2429 = distinct !{!2429, i1 true, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h443385ba07f3854bE"}
!2430 = distinct !{!2430, !2429, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h443385ba07f3854bE: argument 1"}
!2431 = distinct !{!2431, !2429, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h443385ba07f3854bE: argument 0"}
!2432 = !{i64 4259784139663526527}
!2433 = !{!2351, !2350}
!2434 = !{!2356, !2355, !2354, !2353}
!2435 = !{!2356, !2355}
!2436 = !{!2358}
!2437 = !{!2360, !2358}
!2438 = !{!2364, !2362, !2358, !2356, !2355}
!2439 = !{!2367, !2366}
!2440 = !{!2372, !2371, !2370, !2369}
!2441 = !{!2372, !2371}
!2442 = !{!2374}
!2443 = !{!2376, !2374}
!2444 = !{!2380, !2378, !2374, !2372, !2371}
!2445 = !{!2385, !2384, !2383, !2382}
!2446 = !{!2385, !2384}
!2447 = !{!2387}
!2448 = !{!2389, !2387}
!2449 = !{!2393, !2391, !2387, !2385, !2384}
!2450 = !{!2396, !2395}
!2451 = !{!2401, !2400, !2399, !2398}
!2452 = !{!2401, !2400}
!2453 = !{!2403}
!2454 = !{!2405, !2403}
!2455 = !{!2409, !2407, !2403, !2401, !2400}
!2456 = !{!2412, !2411}
!2457 = !{!2417, !2416, !2415, !2414}
!2458 = !{!2417, !2416}
!2459 = !{!2419}
!2460 = !{!2421, !2419}
!2461 = !{!2425, !2423, !2419, !2417, !2416}
!2462 = !{!2428, !2427}
!2463 = !{!2431, !2430}
!2464 = !{i64 -5656143698887630772}
!2465 = distinct !{!2465, i1 true, !"_ZN4core6option15Option$LT$T$GT$6map_or17h412d685f2e5b73b7E"}
!2466 = distinct !{!2466, !2465, !"_ZN4core6option15Option$LT$T$GT$6map_or17h412d685f2e5b73b7E: argument 0"}
!2467 = distinct !{!2467, i1 true, !"_ZN4jiff4util5parse8fraction17h66dadfd31b0fe4e3E"}
!2468 = distinct !{!2468, !2467, !"_ZN4jiff4util5parse8fraction17h66dadfd31b0fe4e3E: argument 0"}
!2469 = !{i64 -7199891363671862329}
!2470 = !{!2466}
!2471 = !{!2468}
!2472 = !{!"branch_weights", i32 4001, i32 3995999}
!2473 = distinct !{!2473, i1 true, !"_ZN4jiff3fmt4util19duration_unit_value17ha8838a98c44fe8d0E"}
!2474 = distinct !{!2474, !2473, !"_ZN4jiff3fmt4util19duration_unit_value17ha8838a98c44fe8d0E: argument 0"}
!2475 = !{i64 5703631465842888469}
!2476 = !{!2474}
!2477 = !{i64 2794803431004954413}
!2478 = !{i64 -7086351698710955881}
!2479 = distinct !{!2479, i1 true, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!2480 = distinct !{!2480, !2479, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!2481 = distinct !{!2481, i1 true, !"_ZN70_$LT$jiff..fmt..buffer..BorrowedWriter$u20$as$u20$jiff..fmt..Write$GT$9write_str17h36ba21a64038e4c7E"}
!2482 = distinct !{!2482, !2481, !"_ZN70_$LT$jiff..fmt..buffer..BorrowedWriter$u20$as$u20$jiff..fmt..Write$GT$9write_str17h36ba21a64038e4c7E: argument 0"}
!2483 = distinct !{!2483, i1 true, !"_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E"}
!2484 = distinct !{!2484, !2483, !"_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E: argument 0"}
!2485 = distinct !{!2485, !2481, !"_ZN70_$LT$jiff..fmt..buffer..BorrowedWriter$u20$as$u20$jiff..fmt..Write$GT$9write_str17h36ba21a64038e4c7E: argument 1"}
!2486 = distinct !{!2486, !2483, !"_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E: argument 1"}
!2487 = distinct !{!2487, i1 true, !"_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE"}
!2488 = distinct !{!2488, !2487, !"_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE: argument 0"}
!2489 = distinct !{!2489, i1 true, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h16a124dd31f3bdc4E"}
!2490 = distinct !{!2490, !2489, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h16a124dd31f3bdc4E: argument 1"}
!2491 = distinct !{!2491, !2489, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h16a124dd31f3bdc4E: argument 0"}
!2492 = !{i64 884993448359863995}
!2493 = !{!2480}
!2494 = !{!2482}
!2495 = !{!2484}
!2496 = !{!2484, !2482}
!2497 = !{!2484, !2486, !2482, !2485}
!2498 = !{!2486, !2485}
!2499 = !{!2488}
!2500 = !{!2491, !2490}
!2501 = !{!2488, !2484, !2482}
!2502 = !{ptr @"_ZN70_$LT$jiff..fmt..buffer..BorrowedWriter$u20$as$u20$jiff..fmt..Write$GT$9write_str17h36ba21a64038e4c7E", ptr @_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E}
!2503 = distinct !{!2503, i1 true, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!2504 = distinct !{!2504, !2503, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!2505 = distinct !{!2505, i1 true, !"_ZN68_$LT$jiff..fmt..StdFmtWrite$LT$W$GT$$u20$as$u20$jiff..fmt..Write$GT$9write_str17hf548db9dad3667d0E"}
!2506 = distinct !{!2506, !2505, !"_ZN68_$LT$jiff..fmt..StdFmtWrite$LT$W$GT$$u20$as$u20$jiff..fmt..Write$GT$9write_str17hf548db9dad3667d0E: argument 0"}
!2507 = distinct !{!2507, !2505, !"_ZN68_$LT$jiff..fmt..StdFmtWrite$LT$W$GT$$u20$as$u20$jiff..fmt..Write$GT$9write_str17hf548db9dad3667d0E: argument 1"}
!2508 = !{i64 -8367279549970750938}
!2509 = !{!2504}
!2510 = !{!2506}
!2511 = !{!2506, !2507}
!2512 = distinct !{!2512, i1 true, !"_ZN4jiff3fmt8friendly6parser10SpanParser23parse_unsigned_duration17h355c1a889d4f14ddE"}
!2513 = distinct !{!2513, !2512, !"_ZN4jiff3fmt8friendly6parser10SpanParser23parse_unsigned_duration17h355c1a889d4f14ddE: argument 0"}
!2514 = distinct !{!2514, !2512, !"_ZN4jiff3fmt8friendly6parser10SpanParser23parse_unsigned_duration17h355c1a889d4f14ddE: argument 1"}
!2515 = distinct !{!2515, i1 true, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h8dc94aebd7fc29deE"}
!2516 = distinct !{!2516, !2515, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h8dc94aebd7fc29deE: argument 0"}
!2517 = distinct !{!2517, !2515, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h8dc94aebd7fc29deE: argument 1"}
!2518 = !{i64 -3772602171972124197}
!2519 = !{!2513}
!2520 = !{!2513, !2514}
!2521 = !{!2516}
!2522 = !{!2517}
!2523 = !{!2516, !2513}
!2524 = !{i64 -5681033415928584035}
!2525 = distinct !{!2525, i1 true, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h16a124dd31f3bdc4E"}
!2526 = distinct !{!2526, !2525, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h16a124dd31f3bdc4E: argument 1"}
!2527 = distinct !{!2527, !2525, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h16a124dd31f3bdc4E: argument 0"}
!2528 = !{i64 -3511847293748177974}
!2529 = !{!2527, !2526}
!2530 = !{i64 9154275822784494437}
!2531 = distinct !{!2531, i1 true, !"_ZN149_$LT$jiff..fmt..buffer..BorrowedBuffer$u20$as$u20$core..convert..From$LT$$RF$mut$u20$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$u8$GT$$u5d$$GT$$GT$4from17h9f18c21747555547E"}
!2532 = distinct !{!2532, !2531, !"_ZN149_$LT$jiff..fmt..buffer..BorrowedBuffer$u20$as$u20$core..convert..From$LT$$RF$mut$u20$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$u8$GT$$u5d$$GT$$GT$4from17h9f18c21747555547E: argument 0"}
!2533 = !{i64 6708293730797122222}
!2534 = !{!2532}
!2535 = distinct !{!2535, i1 true, !"_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE"}
!2536 = distinct !{!2536, !2535, !"_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE: argument 0"}
!2537 = distinct !{!2537, i1 true, !"_ZN4jiff3fmt6buffer14BorrowedBuffer10write_char17hb9a8daedfe662af1E"}
!2538 = distinct !{!2538, !2537, !"_ZN4jiff3fmt6buffer14BorrowedBuffer10write_char17hb9a8daedfe662af1E: argument 0"}
!2539 = distinct !{!2539, i1 true, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!2540 = distinct !{!2540, !2539, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!2541 = distinct !{!2541, i1 true, !"_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE"}
!2542 = distinct !{!2542, !2541, !"_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE: argument 0"}
!2543 = distinct !{!2543, !2541, !"_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE: argument 1"}
!2544 = distinct !{!2544, i1 true, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h16a124dd31f3bdc4E"}
!2545 = distinct !{!2545, !2544, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h16a124dd31f3bdc4E: argument 1"}
!2546 = distinct !{!2546, !2544, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h16a124dd31f3bdc4E: argument 0"}
!2547 = !{i64 1933175770855330071}
!2548 = !{!2536}
!2549 = !{!2538}
!2550 = !{!2540}
!2551 = !{!2542}
!2552 = !{!2542, !2538}
!2553 = !{!2542, !2543, !2538}
!2554 = !{!2546, !2545}
!2555 = distinct !{!2555, i1 true, !"_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE"}
!2556 = distinct !{!2556, !2555, !"_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE: argument 0"}
!2557 = !{i64 8810014749248846562}
!2558 = !{!2556}
!2559 = distinct !{!2559, i1 true, !"_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE"}
!2560 = distinct !{!2560, !2559, !"_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE: argument 0"}
!2561 = distinct !{!2561, i1 true, !"_ZN4jiff3fmt6buffer14BorrowedBuffer14write_int_pad217hf3bd839b2bb46728E"}
!2562 = distinct !{!2562, !2561, !"_ZN4jiff3fmt6buffer14BorrowedBuffer14write_int_pad217hf3bd839b2bb46728E: argument 0"}
!2563 = !{i64 1476171099740390294}
!2564 = !{!2560}
!2565 = !{!2562}
!2566 = distinct !{!2566, i1 true, !"_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E"}
!2567 = distinct !{!2567, !2566, !"_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E: argument 0"}
!2568 = !{i64 3636066140486485237}
!2569 = !{!2567}
!2570 = !{i64 -154761873611947077}
!2571 = !{i64 6663585059951087569}
!2572 = !{i64 -1066700262439152483}
!2573 = distinct !{!2573, i1 true, !"_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE"}
!2574 = distinct !{!2574, !2573, !"_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE: argument 0"}
!2575 = distinct !{!2575, i1 true, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h16a124dd31f3bdc4E"}
!2576 = distinct !{!2576, !2575, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h16a124dd31f3bdc4E: argument 1"}
!2577 = distinct !{!2577, !2575, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h16a124dd31f3bdc4E: argument 0"}
!2578 = !{i64 -3837307171115008455}
!2579 = !{!2574}
!2580 = !{!2577, !2576}
!2581 = !{i64 -8338717712652197980}
!2582 = distinct !{!2582, i1 true, !"_ZN4jiff4util1b13OffsetSeconds5parse17h5c6b5bf33a09d994E"}
!2583 = distinct !{!2583, !2582, !"_ZN4jiff4util1b13OffsetSeconds5parse17h5c6b5bf33a09d994E: argument 1"}
!2584 = distinct !{!2584, i1 true, !"_ZN4jiff4util1b6Bounds5parse17hcbce0c98b1a84d0dE"}
!2585 = distinct !{!2585, !2584, !"_ZN4jiff4util1b6Bounds5parse17hcbce0c98b1a84d0dE: argument 1"}
!2586 = distinct !{!2586, i1 true, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E"}
!2587 = distinct !{!2587, !2586, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E: argument 1"}
!2588 = distinct !{!2588, !2582, !"_ZN4jiff4util1b13OffsetSeconds5parse17h5c6b5bf33a09d994E: argument 0"}
!2589 = distinct !{!2589, !2584, !"_ZN4jiff4util1b6Bounds5parse17hcbce0c98b1a84d0dE: argument 0"}
!2590 = !{i64 -4424710964031216194}
!2591 = !{!2583}
!2592 = !{!2585}
!2593 = !{!2587, !2585, !2583}
!2594 = !{!2589, !2585, !2588, !2583}
!2595 = distinct !{!2595, i1 true, !"_ZN4jiff3fmt6offset6Parser13parse_numeric17hfbc5b5a7a58674fcE"}
!2596 = distinct !{!2596, !2595, !"_ZN4jiff3fmt6offset6Parser13parse_numeric17hfbc5b5a7a58674fcE: argument 1"}
!2597 = distinct !{!2597, !2595, !"_ZN4jiff3fmt6offset6Parser13parse_numeric17hfbc5b5a7a58674fcE: argument 2"}
!2598 = distinct !{!2598, !2595, !"_ZN4jiff3fmt6offset6Parser13parse_numeric17hfbc5b5a7a58674fcE: argument 0"}
!2599 = distinct !{!2599, i1 true, !"_ZN4jiff3fmt6offset6Parser10parse_sign17hcc3f696e9287de0eE"}
!2600 = distinct !{!2600, !2599, !"_ZN4jiff3fmt6offset6Parser10parse_sign17hcc3f696e9287de0eE: argument 1"}
!2601 = distinct !{!2601, !2599, !"_ZN4jiff3fmt6offset6Parser10parse_sign17hcc3f696e9287de0eE: argument 0"}
!2602 = distinct !{!2602, i1 true, !"_ZN4jiff3fmt6offset6Parser11parse_hours17h2d96b50ea4849ed3E"}
!2603 = distinct !{!2603, !2602, !"_ZN4jiff3fmt6offset6Parser11parse_hours17h2d96b50ea4849ed3E: argument 1"}
!2604 = distinct !{!2604, i1 true, !"_ZN4jiff4util1b11OffsetHours5parse17hf5fb601a5f5a2d9aE"}
!2605 = distinct !{!2605, !2604, !"_ZN4jiff4util1b11OffsetHours5parse17hf5fb601a5f5a2d9aE: argument 1"}
!2606 = distinct !{!2606, i1 true, !"_ZN4jiff4util1b6Bounds5parse17h618bbe0f8205071dE"}
!2607 = distinct !{!2607, !2606, !"_ZN4jiff4util1b6Bounds5parse17h618bbe0f8205071dE: argument 1"}
!2608 = distinct !{!2608, i1 true, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E"}
!2609 = distinct !{!2609, !2608, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E: argument 1"}
!2610 = distinct !{!2610, !2602, !"_ZN4jiff3fmt6offset6Parser11parse_hours17h2d96b50ea4849ed3E: argument 0"}
!2611 = distinct !{!2611, !2604, !"_ZN4jiff4util1b11OffsetHours5parse17hf5fb601a5f5a2d9aE: argument 0"}
!2612 = distinct !{!2612, !2606, !"_ZN4jiff4util1b6Bounds5parse17h618bbe0f8205071dE: argument 0"}
!2613 = distinct !{!2613, i1 true, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE"}
!2614 = distinct !{!2614, !2613, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE: argument 0"}
!2615 = distinct !{!2615, i1 true, !"_ZN4jiff3fmt6offset6Parser15parse_separator17h8022d725403d741cE"}
!2616 = distinct !{!2616, !2615, !"_ZN4jiff3fmt6offset6Parser15parse_separator17h8022d725403d741cE: argument 1"}
!2617 = distinct !{!2617, i1 true, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h94c5d6f7f391321dE"}
!2618 = distinct !{!2618, !2617, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h94c5d6f7f391321dE: argument 0"}
!2619 = distinct !{!2619, i1 true, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE"}
!2620 = distinct !{!2620, !2619, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE: argument 0"}
!2621 = distinct !{!2621, i1 true, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE"}
!2622 = distinct !{!2622, !2621, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE: argument 0"}
!2623 = distinct !{!2623, i1 true, !"_ZN4jiff3fmt6offset6Parser13parse_minutes17h5758c5441ed07c50E"}
!2624 = distinct !{!2624, !2623, !"_ZN4jiff3fmt6offset6Parser13parse_minutes17h5758c5441ed07c50E: argument 1"}
!2625 = distinct !{!2625, i1 true, !"_ZN4jiff4util1b13OffsetMinutes5parse17h14cf1454d632431eE"}
!2626 = distinct !{!2626, !2625, !"_ZN4jiff4util1b13OffsetMinutes5parse17h14cf1454d632431eE: argument 1"}
!2627 = distinct !{!2627, i1 true, !"_ZN4jiff4util1b6Bounds5parse17hb91667b6e4c81859E"}
!2628 = distinct !{!2628, !2627, !"_ZN4jiff4util1b6Bounds5parse17hb91667b6e4c81859E: argument 1"}
!2629 = distinct !{!2629, i1 true, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E"}
!2630 = distinct !{!2630, !2629, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E: argument 1"}
!2631 = distinct !{!2631, !2623, !"_ZN4jiff3fmt6offset6Parser13parse_minutes17h5758c5441ed07c50E: argument 0"}
!2632 = distinct !{!2632, !2625, !"_ZN4jiff4util1b13OffsetMinutes5parse17h14cf1454d632431eE: argument 0"}
!2633 = distinct !{!2633, !2627, !"_ZN4jiff4util1b6Bounds5parse17hb91667b6e4c81859E: argument 0"}
!2634 = distinct !{!2634, i1 true, !"_ZN4core6option15Option$LT$T$GT$6map_or17h7b68e3087f5867b8E"}
!2635 = distinct !{!2635, !2634, !"_ZN4core6option15Option$LT$T$GT$6map_or17h7b68e3087f5867b8E: argument 0"}
!2636 = distinct !{!2636, i1 true, !"_ZN4jiff3fmt6offset6Parser15parse_separator17h8022d725403d741cE"}
!2637 = distinct !{!2637, !2636, !"_ZN4jiff3fmt6offset6Parser15parse_separator17h8022d725403d741cE: argument 1"}
!2638 = distinct !{!2638, i1 true, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h94c5d6f7f391321dE"}
!2639 = distinct !{!2639, !2638, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h94c5d6f7f391321dE: argument 0"}
!2640 = distinct !{!2640, i1 true, !"_ZN4core6option15Option$LT$T$GT$6map_or17hea0e99d3ba232460E"}
!2641 = distinct !{!2641, !2640, !"_ZN4core6option15Option$LT$T$GT$6map_or17hea0e99d3ba232460E: argument 0"}
!2642 = distinct !{!2642, i1 true, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h564c375dcfb5934eE"}
!2643 = distinct !{!2643, !2642, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h564c375dcfb5934eE: argument 0"}
!2644 = distinct !{!2644, !2642, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h564c375dcfb5934eE: argument 1"}
!2645 = distinct !{!2645, i1 true, !"_ZN4core6option15Option$LT$T$GT$6map_or17h3d12fe051ed54e3eE"}
!2646 = distinct !{!2646, !2645, !"_ZN4core6option15Option$LT$T$GT$6map_or17h3d12fe051ed54e3eE: argument 0"}
!2647 = distinct !{!2647, i1 true, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h173cf7c30a746a7aE"}
!2648 = distinct !{!2648, !2647, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h173cf7c30a746a7aE: argument 0"}
!2649 = distinct !{!2649, !2647, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h173cf7c30a746a7aE: argument 1"}
!2650 = !{i64 2339252184912554068}
!2651 = !{!2596}
!2652 = !{!2597}
!2653 = !{!2601, !2600, !2598, !2596, !2597}
!2654 = !{!2603}
!2655 = !{!2605}
!2656 = !{!2607}
!2657 = !{!2609, !2607, !2605, !2603, !2597}
!2658 = !{!2612, !2607, !2611, !2605, !2610, !2603, !2598, !2596, !2597}
!2659 = !{!2610, !2603, !2598, !2596, !2597}
!2660 = !{!2614, !2597}
!2661 = !{!2616, !2597}
!2662 = !{!2618}
!2663 = !{!2620, !2597}
!2664 = !{!2598, !2596, !2597}
!2665 = !{!2622, !2597}
!2666 = !{!2624}
!2667 = !{!2630, !2628, !2626, !2624, !2597}
!2668 = !{!2626}
!2669 = !{!2628}
!2670 = !{!2633, !2628, !2632, !2626, !2631, !2624, !2598, !2596, !2597}
!2671 = !{!2631, !2624, !2598, !2596, !2597}
!2672 = !{!2635, !2597}
!2673 = !{!2637, !2597}
!2674 = !{!2639}
!2675 = !{!2641, !2637, !2597}
!2676 = !{!2598, !2596}
!2677 = !{!2643}
!2678 = !{!2644}
!2679 = !{!2643, !2644}
!2680 = !{!2646}
!2681 = !{!2648}
!2682 = !{!2649}
!2683 = !{!2648, !2649}
!2684 = distinct !{!2684, i1 true, !"_ZN4jiff4util1b10LeapSecond5parse17h87f05ebd34eba8cbE"}
!2685 = distinct !{!2685, !2684, !"_ZN4jiff4util1b10LeapSecond5parse17h87f05ebd34eba8cbE: argument 1"}
!2686 = distinct !{!2686, i1 true, !"_ZN4jiff4util1b6Bounds5parse17h9e51f76f91308878E"}
!2687 = distinct !{!2687, !2686, !"_ZN4jiff4util1b6Bounds5parse17h9e51f76f91308878E: argument 1"}
!2688 = distinct !{!2688, i1 true, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E"}
!2689 = distinct !{!2689, !2688, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E: argument 1"}
!2690 = distinct !{!2690, !2684, !"_ZN4jiff4util1b10LeapSecond5parse17h87f05ebd34eba8cbE: argument 0"}
!2691 = distinct !{!2691, !2686, !"_ZN4jiff4util1b6Bounds5parse17h9e51f76f91308878E: argument 0"}
!2692 = distinct !{!2692, i1 true, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbf86537a58f80df6E"}
!2693 = distinct !{!2693, !2692, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbf86537a58f80df6E: argument 1"}
!2694 = distinct !{!2694, !2692, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbf86537a58f80df6E: argument 0"}
!2695 = !{i64 -4353582576331761880}
!2696 = !{!2685}
!2697 = !{!2687}
!2698 = !{!2689, !2687, !2685}
!2699 = !{!2691, !2687, !2690, !2685}
!2700 = !{!2694, !2693}
!2701 = distinct !{!2701, i1 true, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE"}
!2702 = distinct !{!2702, !2701, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha826984d24ba572cE: argument 0"}
!2703 = distinct !{!2703, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E"}
!2704 = distinct !{!2704, !2703, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E: argument 1"}
!2705 = distinct !{!2705, i1 true, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E"}
!2706 = distinct !{!2706, !2705, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E: argument 0"}
!2707 = !{i64 7450477390119682445}
!2708 = !{!2702}
!2709 = !{!2706, !2704}
!2710 = distinct !{!2710, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E"}
!2711 = distinct !{!2711, !2710, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E: argument 1"}
!2712 = distinct !{!2712, i1 true, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E"}
!2713 = distinct !{!2713, !2712, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E: argument 0"}
!2714 = !{i64 3100951832348164627}
!2715 = !{!2713, !2711}
!2716 = !{i64 3353646469272007979}
!2717 = distinct !{!2717, i1 true, !"_ZN4jiff5zoned5Zoned3new17h7b7fe6f14eb4f8a4E"}
!2718 = distinct !{!2718, !2717, !"_ZN4jiff5zoned5Zoned3new17h7b7fe6f14eb4f8a4E: argument 0"}
!2719 = !{i64 3304702465109629232}
!2720 = !{!2718}
!2721 = distinct !{!2721, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser14parse_datetime17hd51d2bacf57f1e9eE"}
!2722 = distinct !{!2722, !2721, !"_ZN4jiff3fmt7rfc282214DateTimeParser14parse_datetime17hd51d2bacf57f1e9eE: argument 1"}
!2723 = distinct !{!2723, !2721, !"_ZN4jiff3fmt7rfc282214DateTimeParser14parse_datetime17hd51d2bacf57f1e9eE: argument 0"}
!2724 = distinct !{!2724, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E"}
!2725 = distinct !{!2725, !2724, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E: argument 1"}
!2726 = distinct !{!2726, i1 true, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E"}
!2727 = distinct !{!2727, !2726, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E: argument 0"}
!2728 = distinct !{!2728, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser13parse_weekday17h9f292ac775e54817E"}
!2729 = distinct !{!2729, !2728, !"_ZN4jiff3fmt7rfc282214DateTimeParser13parse_weekday17h9f292ac775e54817E: argument 1"}
!2730 = distinct !{!2730, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E"}
!2731 = distinct !{!2731, !2730, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E: argument 1"}
!2732 = distinct !{!2732, i1 true, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E"}
!2733 = distinct !{!2733, !2732, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E: argument 0"}
!2734 = distinct !{!2734, !2728, !"_ZN4jiff3fmt7rfc282214DateTimeParser13parse_weekday17h9f292ac775e54817E: argument 0"}
!2735 = distinct !{!2735, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser9parse_day17he2934eb369f0ba70E"}
!2736 = distinct !{!2736, !2735, !"_ZN4jiff3fmt7rfc282214DateTimeParser9parse_day17he2934eb369f0ba70E: argument 1"}
!2737 = distinct !{!2737, !2735, !"_ZN4jiff3fmt7rfc282214DateTimeParser9parse_day17he2934eb369f0ba70E: argument 0"}
!2738 = distinct !{!2738, i1 true, !"_ZN4jiff4util1b3Day5parse17h25d186f3e69b8eddE"}
!2739 = distinct !{!2739, !2738, !"_ZN4jiff4util1b3Day5parse17h25d186f3e69b8eddE: argument 1"}
!2740 = distinct !{!2740, i1 true, !"_ZN4jiff4util1b6Bounds5parse17h9f52d8a0486dfa1eE"}
!2741 = distinct !{!2741, !2740, !"_ZN4jiff4util1b6Bounds5parse17h9f52d8a0486dfa1eE: argument 1"}
!2742 = distinct !{!2742, i1 true, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E"}
!2743 = distinct !{!2743, !2742, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E: argument 0"}
!2744 = distinct !{!2744, !2742, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E: argument 1"}
!2745 = distinct !{!2745, !2738, !"_ZN4jiff4util1b3Day5parse17h25d186f3e69b8eddE: argument 0"}
!2746 = distinct !{!2746, !2740, !"_ZN4jiff4util1b6Bounds5parse17h9f52d8a0486dfa1eE: argument 0"}
!2747 = distinct !{!2747, i1 true, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbf86537a58f80df6E"}
!2748 = distinct !{!2748, !2747, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbf86537a58f80df6E: argument 1"}
!2749 = distinct !{!2749, !2747, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbf86537a58f80df6E: argument 0"}
!2750 = distinct !{!2750, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser16parse_whitespace17h2e440a72e38ca30bE"}
!2751 = distinct !{!2751, !2750, !"_ZN4jiff3fmt7rfc282214DateTimeParser16parse_whitespace17h2e440a72e38ca30bE: argument 1"}
!2752 = distinct !{!2752, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E"}
!2753 = distinct !{!2753, !2752, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E: argument 1"}
!2754 = distinct !{!2754, i1 true, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E"}
!2755 = distinct !{!2755, !2754, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E: argument 0"}
!2756 = distinct !{!2756, !2750, !"_ZN4jiff3fmt7rfc282214DateTimeParser16parse_whitespace17h2e440a72e38ca30bE: argument 0"}
!2757 = distinct !{!2757, i1 true, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hb77129e49722a06bE"}
!2758 = distinct !{!2758, !2757, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hb77129e49722a06bE: argument 1"}
!2759 = distinct !{!2759, !2757, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hb77129e49722a06bE: argument 0"}
!2760 = distinct !{!2760, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser11parse_month17h55ddaa2a93f8a488E"}
!2761 = distinct !{!2761, !2760, !"_ZN4jiff3fmt7rfc282214DateTimeParser11parse_month17h55ddaa2a93f8a488E: argument 1"}
!2762 = distinct !{!2762, !2760, !"_ZN4jiff3fmt7rfc282214DateTimeParser11parse_month17h55ddaa2a93f8a488E: argument 0"}
!2763 = distinct !{!2763, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser16parse_whitespace17h2e440a72e38ca30bE"}
!2764 = distinct !{!2764, !2763, !"_ZN4jiff3fmt7rfc282214DateTimeParser16parse_whitespace17h2e440a72e38ca30bE: argument 1"}
!2765 = distinct !{!2765, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E"}
!2766 = distinct !{!2766, !2765, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E: argument 1"}
!2767 = distinct !{!2767, i1 true, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E"}
!2768 = distinct !{!2768, !2767, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E: argument 0"}
!2769 = distinct !{!2769, !2763, !"_ZN4jiff3fmt7rfc282214DateTimeParser16parse_whitespace17h2e440a72e38ca30bE: argument 0"}
!2770 = distinct !{!2770, i1 true, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hb77129e49722a06bE"}
!2771 = distinct !{!2771, !2770, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hb77129e49722a06bE: argument 1"}
!2772 = distinct !{!2772, !2770, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hb77129e49722a06bE: argument 0"}
!2773 = distinct !{!2773, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser10parse_year17h3e4462b3bac9e250E"}
!2774 = distinct !{!2774, !2773, !"_ZN4jiff3fmt7rfc282214DateTimeParser10parse_year17h3e4462b3bac9e250E: argument 1"}
!2775 = distinct !{!2775, !2773, !"_ZN4jiff3fmt7rfc282214DateTimeParser10parse_year17h3e4462b3bac9e250E: argument 0"}
!2776 = distinct !{!2776, i1 true, !"_ZN4jiff4util1b4Year5parse17ha87ed8f6a218fa47E"}
!2777 = distinct !{!2777, !2776, !"_ZN4jiff4util1b4Year5parse17ha87ed8f6a218fa47E: argument 1"}
!2778 = distinct !{!2778, i1 true, !"_ZN4jiff4util1b6Bounds5parse17h196464902d31dfecE"}
!2779 = distinct !{!2779, !2778, !"_ZN4jiff4util1b6Bounds5parse17h196464902d31dfecE: argument 1"}
!2780 = distinct !{!2780, i1 true, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E"}
!2781 = distinct !{!2781, !2780, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E: argument 0"}
!2782 = distinct !{!2782, !2780, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E: argument 1"}
!2783 = distinct !{!2783, !2776, !"_ZN4jiff4util1b4Year5parse17ha87ed8f6a218fa47E: argument 0"}
!2784 = distinct !{!2784, !2778, !"_ZN4jiff4util1b6Bounds5parse17h196464902d31dfecE: argument 0"}
!2785 = distinct !{!2785, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser16parse_whitespace17h2e440a72e38ca30bE"}
!2786 = distinct !{!2786, !2785, !"_ZN4jiff3fmt7rfc282214DateTimeParser16parse_whitespace17h2e440a72e38ca30bE: argument 1"}
!2787 = distinct !{!2787, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E"}
!2788 = distinct !{!2788, !2787, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E: argument 1"}
!2789 = distinct !{!2789, i1 true, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E"}
!2790 = distinct !{!2790, !2789, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E: argument 0"}
!2791 = distinct !{!2791, !2785, !"_ZN4jiff3fmt7rfc282214DateTimeParser16parse_whitespace17h2e440a72e38ca30bE: argument 0"}
!2792 = distinct !{!2792, i1 true, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hb77129e49722a06bE"}
!2793 = distinct !{!2793, !2792, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hb77129e49722a06bE: argument 1"}
!2794 = distinct !{!2794, !2792, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hb77129e49722a06bE: argument 0"}
!2795 = distinct !{!2795, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser10parse_hour17hde2bb1eeb4a01418E"}
!2796 = distinct !{!2796, !2795, !"_ZN4jiff3fmt7rfc282214DateTimeParser10parse_hour17hde2bb1eeb4a01418E: argument 1"}
!2797 = distinct !{!2797, i1 true, !"_ZN4jiff4util1b4Hour5parse17h7cbefb70748aa036E"}
!2798 = distinct !{!2798, !2797, !"_ZN4jiff4util1b4Hour5parse17h7cbefb70748aa036E: argument 1"}
!2799 = distinct !{!2799, i1 true, !"_ZN4jiff4util1b6Bounds5parse17hb309420eedf70e05E"}
!2800 = distinct !{!2800, !2799, !"_ZN4jiff4util1b6Bounds5parse17hb309420eedf70e05E: argument 1"}
!2801 = distinct !{!2801, i1 true, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E"}
!2802 = distinct !{!2802, !2801, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E: argument 1"}
!2803 = distinct !{!2803, !2795, !"_ZN4jiff3fmt7rfc282214DateTimeParser10parse_hour17hde2bb1eeb4a01418E: argument 0"}
!2804 = distinct !{!2804, !2797, !"_ZN4jiff4util1b4Hour5parse17h7cbefb70748aa036E: argument 0"}
!2805 = distinct !{!2805, !2799, !"_ZN4jiff4util1b6Bounds5parse17hb309420eedf70e05E: argument 0"}
!2806 = distinct !{!2806, i1 true, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbf86537a58f80df6E"}
!2807 = distinct !{!2807, !2806, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbf86537a58f80df6E: argument 1"}
!2808 = distinct !{!2808, !2806, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbf86537a58f80df6E: argument 0"}
!2809 = distinct !{!2809, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser20parse_time_separator17h2e2732220b48e804E"}
!2810 = distinct !{!2810, !2809, !"_ZN4jiff3fmt7rfc282214DateTimeParser20parse_time_separator17h2e2732220b48e804E: argument 1"}
!2811 = distinct !{!2811, !2809, !"_ZN4jiff3fmt7rfc282214DateTimeParser20parse_time_separator17h2e2732220b48e804E: argument 0"}
!2812 = distinct !{!2812, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E"}
!2813 = distinct !{!2813, !2812, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E: argument 1"}
!2814 = distinct !{!2814, i1 true, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E"}
!2815 = distinct !{!2815, !2814, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E: argument 0"}
!2816 = distinct !{!2816, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser12parse_minute17hd6ada3f4c8eae4eaE"}
!2817 = distinct !{!2817, !2816, !"_ZN4jiff3fmt7rfc282214DateTimeParser12parse_minute17hd6ada3f4c8eae4eaE: argument 1"}
!2818 = distinct !{!2818, i1 true, !"_ZN4jiff4util1b6Minute5parse17ha2b9288599c48858E"}
!2819 = distinct !{!2819, !2818, !"_ZN4jiff4util1b6Minute5parse17ha2b9288599c48858E: argument 1"}
!2820 = distinct !{!2820, i1 true, !"_ZN4jiff4util1b6Bounds5parse17ha33217d9f4fa1040E"}
!2821 = distinct !{!2821, !2820, !"_ZN4jiff4util1b6Bounds5parse17ha33217d9f4fa1040E: argument 1"}
!2822 = distinct !{!2822, i1 true, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E"}
!2823 = distinct !{!2823, !2822, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E: argument 1"}
!2824 = distinct !{!2824, !2816, !"_ZN4jiff3fmt7rfc282214DateTimeParser12parse_minute17hd6ada3f4c8eae4eaE: argument 0"}
!2825 = distinct !{!2825, !2818, !"_ZN4jiff4util1b6Minute5parse17ha2b9288599c48858E: argument 0"}
!2826 = distinct !{!2826, !2820, !"_ZN4jiff4util1b6Bounds5parse17ha33217d9f4fa1040E: argument 0"}
!2827 = distinct !{!2827, i1 true, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbf86537a58f80df6E"}
!2828 = distinct !{!2828, !2827, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbf86537a58f80df6E: argument 1"}
!2829 = distinct !{!2829, !2827, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbf86537a58f80df6E: argument 0"}
!2830 = distinct !{!2830, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E"}
!2831 = distinct !{!2831, !2830, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E: argument 1"}
!2832 = distinct !{!2832, i1 true, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E"}
!2833 = distinct !{!2833, !2832, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E: argument 0"}
!2834 = distinct !{!2834, i1 true, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h0f1b0068896d75ddE"}
!2835 = distinct !{!2835, !2834, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h0f1b0068896d75ddE: argument 1"}
!2836 = distinct !{!2836, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E"}
!2837 = distinct !{!2837, !2836, !"_ZN4jiff3fmt7rfc282214DateTimeParser15skip_whitespace17hbec4b10ec2819441E: argument 1"}
!2838 = distinct !{!2838, i1 true, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E"}
!2839 = distinct !{!2839, !2838, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd6df4762b88e3bd3E: argument 0"}
!2840 = distinct !{!2840, i1 true, !"_ZN4jiff5civil4time4Time3new17h0c192f97c149b936E"}
!2841 = distinct !{!2841, !2840, !"_ZN4jiff5civil4time4Time3new17h0c192f97c149b936E: argument 0"}
!2842 = distinct !{!2842, i1 true, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2b5963508cb75f92E"}
!2843 = distinct !{!2843, !2842, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2b5963508cb75f92E: argument 1"}
!2844 = distinct !{!2844, !2842, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2b5963508cb75f92E: argument 0"}
!2845 = distinct !{!2845, i1 true, !"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E"}
!2846 = distinct !{!2846, !2845, !"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E: argument 0"}
!2847 = distinct !{!2847, i1 true, !"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$jiff..error..ErrorInner$GT$$GT$$GT$17h3be3f7959b7aa898E"}
!2848 = distinct !{!2848, !2847, !"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$jiff..error..ErrorInner$GT$$GT$$GT$17h3be3f7959b7aa898E: argument 0"}
!2849 = distinct !{!2849, i1 true, !"_ZN4core3ptr68drop_in_place$LT$alloc..sync..Arc$LT$jiff..error..ErrorInner$GT$$GT$17h7bafd4f3ce2ff47fE"}
!2850 = distinct !{!2850, !2849, !"_ZN4core3ptr68drop_in_place$LT$alloc..sync..Arc$LT$jiff..error..ErrorInner$GT$$GT$17h7bafd4f3ce2ff47fE: argument 0"}
!2851 = distinct !{!2851, i1 true, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5311cd68996ba297E"}
!2852 = distinct !{!2852, !2851, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5311cd68996ba297E: argument 0"}
!2853 = distinct !{!2853, i1 true, !"_ZN4jiff3fmt7rfc282214DateTimeParser12parse_offset17h676f8af67599d10aE"}
!2854 = distinct !{!2854, !2853, !"_ZN4jiff3fmt7rfc282214DateTimeParser12parse_offset17h676f8af67599d10aE: argument 0"}
!2855 = distinct !{!2855, !2853, !"_ZN4jiff3fmt7rfc282214DateTimeParser12parse_offset17h676f8af67599d10aE: argument 1"}
!2856 = distinct !{!2856, i1 true, !"_ZN4jiff4util1b11OffsetHours5parse17hf5fb601a5f5a2d9aE"}
!2857 = distinct !{!2857, !2856, !"_ZN4jiff4util1b11OffsetHours5parse17hf5fb601a5f5a2d9aE: argument 1"}
!2858 = distinct !{!2858, i1 true, !"_ZN4jiff4util1b6Bounds5parse17h618bbe0f8205071dE"}
!2859 = distinct !{!2859, !2858, !"_ZN4jiff4util1b6Bounds5parse17h618bbe0f8205071dE: argument 1"}
!2860 = distinct !{!2860, i1 true, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E"}
!2861 = distinct !{!2861, !2860, !"_ZN4jiff4util5parse3i6417he15214fedb7b0284E: argument 1"}
!2862 = distinct !{!2862, !2856, !"_ZN4jiff4util1b11OffsetHours5parse17hf5fb601a5f5a2d9aE: argument 0"}
!2863 = distinct !{!2863, !2858, !"_ZN4jiff4util1b6Bounds5parse17h618bbe0f8205071dE: argument 0"}
!2864 = distinct !{!2864, i1 true, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbf86537a58f80df6E"}
!2865 = distinct !{!2865, !2864, !"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbf86537a58f80df6E: argument 1"}
end_hunk_1
