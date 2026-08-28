Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.02?download=true
inline.NumInlined: 351
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZN105_$LT$regex_automata..dfa..dense..StateIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e6c50f87f0f52daE":bb.a
  br i1 %i.v, label %"_ZN14regex_automata3dfa5dense24TransitionTable$LT$T$GT$8is_valid17ha3128d540dec2782E.exit.i", label %"_ZN14regex_automata3dfa5dense24TransitionTable$LT$T$GT$8is_valid17ha3128d540dec2782E.exit.thread.i", !prof !21

"_ZN14regex_automata3dfa5dense24TransitionTable$LT$T$GT$8is_valid17ha3128d540dec2782E.exit.i": ; preds = %bb.b
  %i.w = load i64, ptr %i.n, align 8, !alias.scope !22, !noalias !18, !noundef !3 ; 2 uses
  %i.x = and i64 %i.w, 63
  %notmask.i.i = shl nsw i64 -1, %i.x
  %i.y = xor i64 %notmask.i.i, -1
  %i.z = and i64 %i.s, %i.y
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.c, label %"_ZN14regex_automata3dfa5dense24TransitionTable$LT$T$GT$8is_valid17ha3128d540dec2782E.exit.thread.i", !prof !26

"_ZN14regex_automata3dfa5dense24TransitionTable$LT$T$GT$8is_valid17ha3128d540dec2782E.exit.thread.i": ; preds = %"_ZN14regex_automata3dfa5dense24TransitionTable$LT$T$GT$8is_valid17ha3128d540dec2782E.exit.i", %bb.b
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @51, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #15, !noalias !18
  unreachable

bb.c:                                             ; preds = %"_ZN14regex_automata3dfa5dense24TransitionTable$LT$T$GT$8is_valid17ha3128d540dec2782E.exit.i"
  %i.ab = tail call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %i.m), !noalias !18 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 1      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 279
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !27, !noalias !18, !noundef !3
  %i.af = zext i8 %i.ae to i64
  %i.ag = add nuw nsw i64 %i.af, 2                ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, %i.s             ; 2 uses
  %.not.i = icmp ugt i64 %i.ah, %i.ac
  br i1 %.not.i, label %bb.d, label %"_ZN14regex_automata3dfa5dense24TransitionTable$LT$T$GT$5state17hf1319b4afbc80ceeE.exit", !prof !28

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.s, i64 noundef %i.ah, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #15, !noalias !18
  unreachable

"_ZN14regex_automata3dfa5dense24TransitionTable$LT$T$GT$5state17hf1319b4afbc80ceeE.exit": ; preds = %bb.c
  %i.ai = extractvalue { ptr, i64 } %i.ab, 0
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.s
  store ptr %i.aj, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.r, ptr %.sroa.63.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %"_ZN14regex_automata3dfa5dense24TransitionTable$LT$T$GT$5state17hf1319b4afbc80ceeE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define i64 @"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = load ptr, ptr %0, align 8, !alias.scope !29, !nonnull !3, !noundef !3 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !29, !nonnull !3, !noundef !3
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h73c68f232ebfa66bE.exit.thread", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.f, ptr %0, align 8, !alias.scope !29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !34, !noundef !3 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.j, align 8, !noundef !3
  %.val7 = load i32, ptr %i.b, align 4, !noundef !3
  %i.k = icmp eq i64 %i.i, %.val
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ugt i64 %i.h, 255
  br i1 %i.l, label %bb.d, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i", !prof !28

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4, i64 noundef 35, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i": ; preds = %bb.c
  %.sroa.4.0.insert.ext.i = trunc nuw nsw i64 %i.h to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 8
  br label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hfaee99dae691f4bdE.exit"

bb.e:                                             ; preds = %bb.b
  %i.m = tail call i32 @_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE(i64 noundef %i.h)
  br label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hfaee99dae691f4bdE.exit"

"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hfaee99dae691f4bdE.exit": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i", %bb.e
  %.sroa.01.0.i = phi i32 [ %i.m, %bb.e ], [ %.sroa.4.0.insert.shift.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i" ]
  %.sroa.2.0.insert.ext.i = zext i32 %.val7 to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.01.0.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h73c68f232ebfa66bE.exit.thread"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h73c68f232ebfa66bE.exit.thread": ; preds = %bb.a, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hfaee99dae691f4bdE.exit"
  %.sroa.0.0.insert.insert = phi i64 [ %.sroa.0.0.insert.insert.i, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hfaee99dae691f4bdE.exit" ], [ 2, %bb.a ]
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E"(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !35, !nonnull !3, !noundef !3 ; 2 uses
  %.promoted = load ptr, ptr %1, align 8, !alias.scope !35 ; 2 uses
  %i.d = icmp eq ptr %.promoted, %i.c
  br i1 %i.d, label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load i64, ptr %i.f, align 8, !alias.scope !42, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 37
  %.promoted74.a = load i64, ptr %i.e, align 8, !alias.scope !43
  %.promoted75 = load i32, ptr %i.i, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.j = phi i32 [ %.promoted75, %.lr.ph ], [ %i.aa, %.backedge ] ; 4 uses
  %i.k = phi i64 [ %.promoted74.a, %.lr.ph ], [ %i.n, %.backedge ] ; 4 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %.backedge ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 3 uses
  store ptr %i.m, ptr %1, align 8, !alias.scope !35
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !43
  %.val7.i = load i32, ptr %i.l, align 4, !noalias !42, !noundef !3 ; 5 uses
  %i.o = icmp eq i64 %i.n, %.val.i
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %i.k, 255
  br i1 %i.p, label %bb.d, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i.i", !prof !28

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4, i64 noundef 35, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15, !noalias !42
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i.i": ; preds = %bb.c
  %.sroa.4.0.insert.ext.i.i = trunc nuw nsw i64 %i.k to i32
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i, 8
  br label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit"

bb.e:                                             ; preds = %bb.b
  %i.q = tail call i32 @_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE(i64 noundef %i.k), !noalias !42
  br label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit"

"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i.i", %bb.e
  %.sroa.01.0.i.i = phi i32 [ %i.q, %bb.e ], [ %.sroa.4.0.insert.shift.i.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i.i" ] ; 7 uses
  %i.r = lshr i32 %.sroa.01.0.i.i, 8
  %.sroa.454.0.extract.trunc = trunc nuw i32 %i.r to i24
  %i.s = and i32 %.sroa.01.0.i.i, 255
  %.not = icmp eq i32 %i.s, 2
  br i1 %.not, label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread", label %bb.f

bb.f:                                             ; preds = %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit"
  %i.t = load i8, ptr %i.g, align 8, !range !44, !noundef !3
  %.not63.a = icmp eq i8 %i.t, 2
  br i1 %.not63.a, label %bb.h, label %bb.g

"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread": ; preds = %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit", %.backedge, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.u, i64 12, i1 false)
  store i8 2, ptr %i.u, align 8
  %i.v = load i8, ptr %0, align 4, !range !44, !noundef !3 ; 2 uses
  %.not61.a = icmp eq i8 %i.v, 2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 4
  %.not62 = icmp eq i32 %i.x, 0
  %or.cond66 = select i1 %.not61.a, i1 true, i1 %.not62
  %spec.store.select = select i1 %or.cond66, i8 2, i8 %i.v
  store i8 %spec.store.select, ptr %0, align 4
  br label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.y = icmp ne i32 %i.j, %.val7.i
  %i.z = trunc i32 %.sroa.01.0.i.i to i1
  %or.cond = or i1 %i.y, %i.z
  br i1 %or.cond, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  store i32 %.sroa.01.0.i.i, ptr %i.g, align 8
  store i32 %.sroa.01.0.i.i, ptr %i.h, align 4
  store i32 %.val7.i, ptr %i.i, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.j, %bb.i, %bb.h
  %i.aa = phi i32 [ %.val7.i, %bb.h ], [ %.val7.i, %bb.i ], [ %i.j, %bb.j ]
  %i.ab = icmp eq ptr %i.m, %i.c
  br i1 %i.ab, label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread", label %bb.b

bb.i:                                             ; preds = %bb.g
  %2 = load <2 x i32>, ptr %i.g, align 8
  store i32 %.sroa.01.0.i.i, ptr %i.g, align 8
  store i32 %.sroa.01.0.i.i, ptr %i.h, align 4
  store i32 %.val7.i, ptr %i.i, align 8
  %.not64 = icmp eq i32 %i.j, 0
  br i1 %.not64, label %.backedge, label %bb.k

bb.j:                                             ; preds = %bb.g
  store i8 0, ptr %i.h, align 4
  store i24 %.sroa.454.0.extract.trunc, ptr %.sroa.529.0..sroa_idx, align 1
  br label %.backedge

bb.k:                                             ; preds = %bb.i
  store <2 x i32> %2, ptr %0, align 4
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %.sroa.542.0..sroa_idx, align 4
  br label %bb.l

bb.l:                                             ; preds = %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread", %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, -3) i64 @"_ZN14regex_automata3dfa5dense12DFA$LT$T$GT$12memory_usage17hcc315169b552be34E"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = tail call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  %i.c = extractvalue { ptr, i64 } %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.e = tail call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
  %i.f = extractvalue { ptr, i64 } %i.e, 1
  %i.g = add i64 %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.i = tail call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h)
  %i.j = extractvalue { ptr, i64 } %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.l = tail call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  %i.m = extractvalue { ptr, i64 } %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.o = tail call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
  %i.p = extractvalue { ptr, i64 } %i.o, 1
  %i.q = add i64 %i.g, %i.j
  %i.r = add i64 %i.q, %i.m
  %i.s = add i64 %i.r, %i.p
  %i.t = shl i64 %i.s, 2
  ret i64 %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN14regex_automata3dfa5dense12DFA$LT$T$GT$16pattern_id_slice17h53daf968cf09056aE"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not = icmp ugt i32 %i.c, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4
  %.not1 = icmp ugt i32 %1, %i.e
  %or.cond = select i1 %.not, i1 true, i1 %.not1, !prof !45
  br i1 %or.cond, label %bb.c, label %bb.d, !prof !45

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @12, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.g = sub nuw i32 %1, %i.c
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.j = load i64, ptr %i.i, align 8, !noundef !3
  %i.k = and i64 %i.j, 63
  %i.l = lshr i64 %i.h, %i.k
  %i.m = tail call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.f) ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 1        ; 2 uses
  %i.o = shl nuw nsw i64 %i.l, 1                  ; 4 uses
  %i.p = icmp ult i64 %i.o, %i.n
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = extractvalue { ptr, i64 } %i.m, 0
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  %i.s = load i32, ptr %i.r, align 4, !noundef !3
  %i.t = zext i32 %i.s to i64                     ; 3 uses
  %i.u = tail call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.f) ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 1        ; 2 uses
  %i.w = or disjoint i64 %i.o, 1                  ; 3 uses
  %i.x = icmp ult i64 %i.w, %i.v
  br i1 %i.x, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.o, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.y = extractvalue { ptr, i64 } %i.u, 0
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.w
  %i.aa = load i32, ptr %i.z, align 4, !noundef !3
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ad = tail call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac) ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 1      ; 2 uses
  %i.af = add nuw nsw i64 %i.ab, %i.t             ; 2 uses
  %.not.i = icmp ugt i64 %i.af, %i.ae
  br i1 %.not.i, label %bb.i, label %"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$16pattern_id_slice17h4777e4e3c59b9c7fE.exit", !prof !28

bb.h:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.w, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #15
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.t, i64 noundef %i.af, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #15
  unreachable

"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$16pattern_id_slice17h4777e4e3c59b9c7fE.exit": ; preds = %bb.g
  %i.ag = extractvalue { ptr, i64 } %i.ad, 0
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.t
  %i.ai = insertvalue { ptr, i64 } poison, ptr %i.ah, 0
  %i.aj = insertvalue { ptr, i64 } %i.ai, i64 %i.ab, 1
  ret { ptr, i64 } %i.aj
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, 4294967296) i64 @"_ZN14regex_automata3dfa5dense12DFA$LT$T$GT$17match_pattern_len17h71276444dd096b0fE"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not = icmp ugt i32 %i.c, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4
  %.not3 = icmp ugt i32 %1, %i.e
  %or.cond = select i1 %.not, i1 true, i1 %.not3, !prof !45
  br i1 %or.cond, label %bb.c, label %bb.d, !prof !45

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @12, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = sub nuw i32 %1, %i.c
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  %i.j = and i64 %i.i, 63
  %i.k = lshr i64 %i.g, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.m = tail call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l) ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 1        ; 2 uses
  %i.o = shl nuw nsw i64 %i.k, 1
  %i.p = or disjoint i64 %i.o, 1                  ; 3 uses
  %i.q = icmp ult i64 %i.p, %i.n
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = extractvalue { ptr, i64 } %i.m, 0
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  %i.t = load i32, ptr %i.s, align 4, !noundef !3
  %i.u = zext i32 %i.t to i64
  ret i64 %i.u

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.p, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 1, 2147483647) i32 @"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$14match_state_id17h324a25385811ea4cE"(ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(800) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @31, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.i, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 3 uses
  %i.l = icmp ugt i64 %i.k, 4294967295
  br i1 %i.l, label %.split, label %.split8

.split8:                                          ; preds = %bb.c
  %i.m = icmp samesign ult i64 %i.k, 64
  br i1 %i.m, label %bb.e, label %bb.d, !prof !46

.split:                                           ; preds = %bb.c
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @170, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #15
  unreachable

bb.d:                                             ; preds = %.split8
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #15
  unreachable
end_hunk_0
begin_hunk_1_@"_ZN4core3ptr98drop_in_place$LT$core..cell..RefCell$LT$regex_automata..nfa..thompson..compiler..Utf8State$GT$$GT$17h6db445899b31b621E":bb.a
          to label %"_ZN4core3ptr101drop_in_place$LT$core..cell..UnsafeCell$LT$regex_automata..nfa..thompson..compiler..Utf8State$GT$$GT$17h5587f439d04a4d28E.exit" unwind label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr71drop_in_place$LT$regex_automata..nfa..thompson..map..Utf8BoundedMap$GT$17h4bad98f0fcec5f06E.exit.i.i"
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he753f62ffc5896b4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

common.resume.i.i:                                ; preds = %bb.e, %.body.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.g, %bb.e ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.g:                                             ; preds = %.body.i.i
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

"_ZN4core3ptr101drop_in_place$LT$core..cell..UnsafeCell$LT$regex_automata..nfa..thompson..compiler..Utf8State$GT$$GT$17h5587f439d04a4d28E.exit": ; preds = %"_ZN4core3ptr71drop_in_place$LT$regex_automata..nfa..thompson..map..Utf8BoundedMap$GT$17h4bad98f0fcec5f06E.exit.i.i"
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he753f62ffc5896b4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr98drop_in_place$LT$regex_automata..dfa..dense..TransitionTable$LT$alloc..vec..Vec$LT$u32$GT$$GT$$GT$17h324f1d746736e5ebE"(ptr noalias noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb7bc9eae4c99a99E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h14eaae8d65a24263E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf6691c71ca218ea5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u32$GT$$GT$17h2420a4138c0f9ce1E.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u32$GT$$GT$17h2420a4138c0f9ce1E.exit.i": ; preds = %bb.b
  resume { ptr, i32 } %i.a

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h14eaae8d65a24263E.exit": ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf6691c71ca218ea5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5fe665725fe47f2cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !699, !noundef !3
  %i.b = tail call noundef zeroext i1 @"_ZN77_$LT$regex_automata..dfa..dense..DFA$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h61958c5321ead2afE"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$core..num..error..TryFromIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17h800be8c82c92677eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @175, i64 noundef 15, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @174)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$regex_automata..dfa..dense..Flags$u20$as$u20$core..fmt..Debug$GT$3fmt17h856d3ebecb1eb9c4E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(3) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @178, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @179, i64 noundef 9, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @180, i64 noundef 7, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @181, i64 noundef 24, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @177)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN70_$LT$regex_automata..dfa..dense..State$u20$as$u20$core..fmt..Debug$GT$3fmt17h7aea9b2bb1ba693bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 8 uses
  %i.h = alloca [4 x i8], align 4                 ; 9 uses
  %i.i = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 8388608
  %i.p = icmp eq i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, 63
  %i.t = select i1 %i.p, i64 %i.s, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val38 = load ptr, ptr %i.u, align 8           ; 3 uses
  %.val37 = load ptr, ptr %1, align 8             ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val38, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %.sroa.16.sroa.0.sroa.10.sroa.0.0 = phi i24 [ undef, %bb.a ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.4, %bb.n ] ; 2 uses
  %.sroa.16.sroa.0.sroa.0.0 = phi i8 [ 2, %bb.a ], [ %.sroa.16.sroa.0.sroa.0.4, %bb.n ] ; 2 uses
  %.sroa.16.sroa.10.sroa.8.0 = phi i24 [ undef, %bb.a ], [ %.sroa.16.sroa.10.sroa.8.4, %bb.n ] ; 2 uses
  %.sroa.16.sroa.10.sroa.0.0 = phi i8 [ undef, %bb.a ], [ %.sroa.16.sroa.10.sroa.0.4, %bb.n ] ; 2 uses
  %.sroa.27.0 = phi i32 [ undef, %bb.a ], [ %.sroa.27.4, %bb.n ] ; 3 uses
  %.sroa.11.0 = phi i64 [ 0, %bb.a ], [ %.sroa.11.2, %bb.n ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.i, %bb.a ], [ %.sroa.6.2, %bb.n ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.ba, %bb.n ] ; 2 uses
  %i.al = icmp eq ptr %.sroa.6.0, %i.l
  br i1 %i.al, label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.backedge.i
  %.sroa.16.sroa.0.sroa.10.sroa.0.1 = phi i24 [ %.sroa.16.sroa.0.sroa.10.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.0, %bb.b ] ; 3 uses
  %.sroa.16.sroa.0.sroa.0.1 = phi i8 [ %.sroa.16.sroa.0.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.0.sroa.0.0, %bb.b ] ; 4 uses
  %.sroa.16.sroa.10.sroa.8.1 = phi i24 [ %.sroa.454.0.extract.trunc.i, %.backedge.i ], [ %.sroa.16.sroa.10.sroa.8.0, %bb.b ] ; 2 uses
  %.sroa.16.sroa.10.sroa.0.1 = phi i8 [ %.sroa.16.sroa.10.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.10.sroa.0.0, %bb.b ] ; 2 uses
  %.sroa.27.1 = phi i32 [ %.sroa.27.2, %.backedge.i ], [ %.sroa.27.0, %bb.b ] ; 2 uses
  %i.am = phi i32 [ %i.ay, %.backedge.i ], [ %.sroa.27.0, %bb.b ] ; 4 uses
  %i.an = phi i64 [ %i.aq, %.backedge.i ], [ %.sroa.11.0, %bb.b ] ; 4 uses
  %i.ao = phi ptr [ %i.ap, %.backedge.i ], [ %.sroa.6.0, %bb.b ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 4 uses
  %i.aq = add i64 %i.an, 1                        ; 5 uses
  %.val7.i.i = load i32, ptr %i.ao, align 4, !noalias !782, !noundef !3 ; 6 uses
  %i.ar = icmp eq i64 %i.aq, %i.k
  br i1 %i.ar, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.as = icmp ugt i64 %i.an, 255
  br i1 %i.as, label %bb.d, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i.i.i", !prof !28

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4, i64 noundef 35, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15, !noalias !782
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i.i.i": ; preds = %bb.c
  %.sroa.4.0.insert.ext.i.i.i = trunc nuw nsw i64 %i.an to i32
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i.i, 8
  br label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i"

bb.e:                                             ; preds = %.lr.ph.i
  %i.at = call i32 @_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE(i64 noundef %i.an), !noalias !782
  br label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i"

"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i": ; preds = %bb.e, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i.i.i"
  %.sroa.01.0.i.i.i = phi i32 [ %i.at, %bb.e ], [ %.sroa.4.0.insert.shift.i.i.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i.i.i" ] ; 5 uses
  %i.au = lshr i32 %.sroa.01.0.i.i.i, 8
  %.sroa.454.0.extract.trunc.i = trunc nuw i32 %i.au to i24 ; 6 uses
  %i.av = and i32 %.sroa.01.0.i.i.i, 255
  %.not.i49 = icmp eq i32 %i.av, 2
  br i1 %.not.i49, label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i", label %bb.f

bb.f:                                             ; preds = %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i"
  %.not63.i.a = icmp eq i8 %.sroa.16.sroa.0.sroa.0.1, 2
  br i1 %.not63.i.a, label %bb.h, label %bb.g

"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i": ; preds = %.backedge.i, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i", %bb.b
  %.sroa.16.sroa.0.sroa.10.sroa.0.3 = phi i24 [ %.sroa.16.sroa.0.sroa.10.sroa.0.0, %bb.b ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ] ; 2 uses
  %.sroa.16.sroa.0.sroa.0.3 = phi i8 [ %.sroa.16.sroa.0.sroa.0.0, %bb.b ], [ %.sroa.16.sroa.0.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.0.sroa.0.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ] ; 2 uses
  %.sroa.16.sroa.10.sroa.8.3 = phi i24 [ %.sroa.16.sroa.10.sroa.8.0, %bb.b ], [ %.sroa.454.0.extract.trunc.i, %.backedge.i ], [ %.sroa.16.sroa.10.sroa.8.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ] ; 2 uses
  %.sroa.16.sroa.10.sroa.0.3 = phi i8 [ %.sroa.16.sroa.10.sroa.0.0, %bb.b ], [ %.sroa.16.sroa.10.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.10.sroa.0.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ] ; 2 uses
  %.sroa.27.3 = phi i32 [ %.sroa.27.0, %bb.b ], [ %.sroa.27.2, %.backedge.i ], [ %.sroa.27.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ] ; 3 uses
  %.sroa.11.1 = phi i64 [ %.sroa.11.0, %bb.b ], [ %i.aq, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ], [ %i.aq, %.backedge.i ]
  %.sroa.6.1 = phi ptr [ %i.l, %bb.b ], [ %i.l, %.backedge.i ], [ %i.ap, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ]
  %.sroa.16.sroa.10.0.insert.ext66 = zext i24 %.sroa.16.sroa.0.sroa.10.sroa.0.3 to i32
  %.sroa.16.sroa.10.0.insert.shift67 = shl nuw i32 %.sroa.16.sroa.10.0.insert.ext66, 8
  %.sroa.23.sroa.8.0.insert.ext = zext i24 %.sroa.16.sroa.10.sroa.8.3 to i32
  %.sroa.23.sroa.8.0.insert.shift = shl nuw i32 %.sroa.23.sroa.8.0.insert.ext, 8
  %.sroa.23.sroa.0.0.insert.ext = zext i8 %.sroa.16.sroa.10.sroa.0.3 to i32
  %.sroa.23.sroa.0.0.insert.insert = or disjoint i32 %.sroa.23.sroa.8.0.insert.shift, %.sroa.23.sroa.0.0.insert.ext
  %.not61.i.a = icmp eq i8 %.sroa.16.sroa.0.sroa.0.3, 2
  %.not62.i = icmp eq i32 %.sroa.27.3, 0
  %or.cond66.i = select i1 %.not61.i.a, i1 true, i1 %.not62.i
  %2 = zext i8 %.sroa.16.sroa.0.sroa.0.3 to i32
  %.sroa.075.0.insert.ext = select i1 %or.cond66.i, i32 2, i32 %2
  %.sroa.075.0.insert.insert = or disjoint i32 %.sroa.075.0.insert.ext, %.sroa.16.sroa.10.0.insert.shift67
  br label %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit"

bb.g:                                             ; preds = %bb.f
  %i.aw = icmp ne i32 %i.am, %.val7.i.i
  %i.ax = trunc i32 %.sroa.01.0.i.i.i to i1
  %or.cond.i = or i1 %i.aw, %i.ax
  br i1 %or.cond.i, label %bb.i, label %.backedge.i

bb.h:                                             ; preds = %bb.f
  %.sroa.16.sroa.0.sroa.0.0.extract.trunc69 = trunc i32 %.sroa.01.0.i.i.i to i8 ; 2 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.g, %bb.i, %bb.h
  %.sroa.16.sroa.0.sroa.10.sroa.0.2 = phi i24 [ %.sroa.454.0.extract.trunc.i, %bb.h ], [ %.sroa.454.0.extract.trunc.i, %bb.i ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.1, %bb.g ] ; 2 uses
  %.sroa.16.sroa.0.sroa.0.2 = phi i8 [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc69, %bb.h ], [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc, %bb.i ], [ %.sroa.16.sroa.0.sroa.0.1, %bb.g ] ; 2 uses
  %.sroa.16.sroa.10.sroa.0.2 = phi i8 [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc69, %bb.h ], [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %.sroa.27.2 = phi i32 [ %.val7.i.i, %bb.h ], [ %.val7.i.i, %bb.i ], [ %.sroa.27.1, %bb.g ] ; 2 uses
  %i.ay = phi i32 [ %.val7.i.i, %bb.h ], [ %.val7.i.i, %bb.i ], [ %i.am, %bb.g ]
  %i.az = icmp eq ptr %i.ap, %i.l
  br i1 %i.az, label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i", label %.lr.ph.i

bb.i:                                             ; preds = %bb.g
  %.sroa.16.sroa.0.sroa.0.0.extract.trunc = trunc i32 %.sroa.01.0.i.i.i to i8 ; 4 uses
  %.not64.i = icmp eq i32 %i.am, 0
  br i1 %.not64.i, label %.backedge.i, label %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit"

"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit": ; preds = %bb.i
  %.sroa.23.sroa.8.0.insert.ext54.le = zext i24 %.sroa.16.sroa.10.sroa.8.1 to i32
  %.sroa.23.sroa.8.0.insert.shift55.le = shl nuw i32 %.sroa.23.sroa.8.0.insert.ext54.le, 8
  %.sroa.23.sroa.0.0.insert.ext50.le = zext i8 %.sroa.16.sroa.10.sroa.0.1 to i32
  %.sroa.23.sroa.0.0.insert.insert52.le = or disjoint i32 %.sroa.23.sroa.8.0.insert.shift55.le, %.sroa.23.sroa.0.0.insert.ext50.le
  %.sroa.16.sroa.10.0.insert.ext.le = zext i24 %.sroa.16.sroa.0.sroa.10.sroa.0.1 to i32
  %.sroa.16.sroa.10.0.insert.shift.le = shl nuw i32 %.sroa.16.sroa.10.0.insert.ext.le, 8
  %.sroa.16.sroa.0.0.insert.ext.le = zext i8 %.sroa.16.sroa.0.sroa.0.1 to i32
  %.sroa.16.sroa.0.0.insert.insert.le = or disjoint i32 %.sroa.16.sroa.10.0.insert.shift.le, %.sroa.16.sroa.0.0.insert.ext.le
  br label %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit"

"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit": ; preds = %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit", %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i"
  %.sroa.075.0 = phi i32 [ %.sroa.075.0.insert.insert, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %.sroa.16.sroa.0.0.insert.insert.le, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ] ; 3 uses
  %.sroa.979.0 = phi i32 [ %.sroa.23.sroa.0.0.insert.insert, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %.sroa.23.sroa.0.0.insert.insert52.le, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ] ; 2 uses
  %.sroa.16.sroa.0.sroa.10.sroa.0.4 = phi i24 [ %.sroa.16.sroa.0.sroa.10.sroa.0.3, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %.sroa.454.0.extract.trunc.i, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.16.sroa.0.sroa.0.4 = phi i8 [ 2, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.16.sroa.10.sroa.8.4 = phi i24 [ %.sroa.16.sroa.10.sroa.8.3, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %.sroa.454.0.extract.trunc.i, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.16.sroa.10.sroa.0.4 = phi i8 [ %.sroa.16.sroa.10.sroa.0.3, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.1089.0 = phi i32 [ %.sroa.27.3, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %i.am, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.27.4 = phi i32 [ %.sroa.27.3, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %.val7.i.i, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.11.2 = phi i64 [ %.sroa.11.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %i.aq, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.6.2 = phi ptr [ %.sroa.6.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %i.ap, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %3 = and i32 %.sroa.075.0, 255
  %.not.i.not.not.not = icmp ne i32 %3, 2         ; 2 uses
  br i1 %.not.i.not.not.not, label %bb.j, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb81af6ad9b316625E.exit.thread"

bb.j:                                             ; preds = %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit"
  %i.ba = add i64 %.sroa.0.0, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %.sroa.075.0, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %.sroa.979.0, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bb = zext i32 %.sroa.1089.0 to i64
  %storemerge = lshr i64 %i.bb, %i.t
  store i64 %storemerge, ptr %i.f, align 8
  %.not33 = icmp eq i64 %.sroa.0.0, 0
  %i.bc = trunc i32 %.sroa.075.0 to i8
  %i.bd = trunc i32 %.sroa.979.0 to i8
  br i1 %.not33, label %bb.k, label %.split

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb81af6ad9b316625E.exit.thread": ; preds = %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit", %.loopexit
  ret i1 %.not.i.not.not.not

bb.k:                                             ; preds = %.split._crit_edge, %bb.j
  %i.be = phi i8 [ %.pre134, %.split._crit_edge ], [ %i.bd, %bb.j ] ; 2 uses
  %i.bf = phi i8 [ %.pre, %.split._crit_edge ], [ %i.bc, %bb.j ]
  %i.bg = icmp eq i8 %i.bf, %i.be
  br i1 %i.bg, label %bb.l, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43

.split:                                           ; preds = %bb.j
  %i.bh = load ptr, ptr %i.v, align 8, !invariant.load !3, !noalias !790, !nonnull !3
  %i.bi = call noundef zeroext i1 %i.bh(ptr noundef nonnull align 1 %.val37, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @182, i64 noundef 2), !noalias !790, !inline_history !793
  br i1 %i.bi, label %.loopexit, label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split
  %.pre = load i8, ptr %i.h, align 4, !range !413
  %.pre134 = load i8, ptr %i.g, align 4, !range !413
  br label %bb.k

bb.l:                                             ; preds = %bb.k
  %i.bj = trunc nuw i8 %i.be to i1
  br i1 %i.bj, label %.split101, label %bb.m

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43: ; preds = %.split101, %bb.k, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  store ptr @"_ZN73_$LT$regex_automata..util..alphabet..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h0734a59f82b81a2bE", ptr %.sroa.424.0..sroa_idx, align 8
  store ptr %i.g, ptr %i.aa, align 8
  store ptr @"_ZN73_$LT$regex_automata..util..alphabet..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h0734a59f82b81a2bE", ptr %.sroa.428.0..sroa_idx, align 8
  store ptr %i.f, ptr %i.ab, align 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.432.0..sroa_idx, align 8
  store ptr @185, ptr %i.c, align 8
  store i64 3, ptr %i.ac, align 8
  store ptr null, ptr %i.ad, align 8
  store ptr %i.b, ptr %i.ae, align 8
  store i64 3, ptr %i.af, align 8
  %i.bk = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val37, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val38, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.bk, label %.loopexit, label %bb.n

.split101:                                        ; preds = %bb.l
  %i.bl = load i16, ptr %i.y, align 2, !noundef !3
  %i.bm = load i16, ptr %i.z, align 2, !noundef !3
  %i.bn = icmp eq i16 %i.bl, %i.bm
  br i1 %i.bn, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43

bb.m:                                             ; preds = %bb.l
  %i.bo = load i8, ptr %i.w, align 1, !noundef !3
  %i.bp = load i8, ptr %i.x, align 1, !noundef !3
  %i.bq = icmp eq i8 %i.bo, %i.bp
  br i1 %i.bq, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48: ; preds = %.split101, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.d, align 8
  store ptr @"_ZN73_$LT$regex_automata..util..alphabet..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h0734a59f82b81a2bE", ptr %.sroa.416.0..sroa_idx, align 8
  store ptr %i.f, ptr %i.ag, align 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.420.0..sroa_idx, align 8
  store ptr @186, ptr %i.e, align 8
  store i64 2, ptr %i.ah, align 8
  store ptr null, ptr %i.ai, align 8
  store ptr %i.d, ptr %i.aj, align 8
  store i64 2, ptr %i.ak, align 8
  %i.br = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val37, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val38, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.br, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.b

.loopexit:                                        ; preds = %.split, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb81af6ad9b316625E.exit.thread"
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN71_$LT$regex_automata..util..start..Start$u20$as$u20$core..fmt..Debug$GT$3fmt17ha89dee872c8a144bE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !688, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN71_$LT$regex_automata..util..start..Start$u20$as$u20$core..fmt..Debug$GT$3fmt17ha89dee872c8a144bE", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN71_$LT$regex_automata..util..start..Start$u20$as$u20$core..fmt..Debug$GT$3fmt17ha89dee872c8a144bE.42", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN75_$LT$regex_automata..dfa..dense..BuildError$u20$as$u20$core..fmt..Debug$GT$3fmt17h53be7675f216f3b2E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @194, i64 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @195, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @193)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$regex_automata..dfa..dense..BuildError$u20$as$u20$core..fmt..Display$GT$3fmt17h83625ae712b34767E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = load i64, ptr %0, align 8, !range !703, !noundef !3
  %i.r = tail call i64 @llvm.usub.sat.i64(i64 %i.q, i64 -9223372036854775801)
  switch i64 %i.r, label %default.unreachable [
    i64 0, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit41
    i64 2, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit46
    i64 3, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit51
    i64 4, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit56
    i64 5, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit61
    i64 6, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit66
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val36 = load ptr, ptr %i.s, align 8
  %.val35 = load ptr, ptr %1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.val36, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !3, !noalias !794, !nonnull !3
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 1 %.val35, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @196, i64 noundef 18), !noalias !794, !inline_history !793
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit41: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.p, ptr %i.n, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7e3eea522b74381aE", ptr %.sroa.419.0..sroa_idx, align 8
  store ptr @198, ptr %i.o, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.n, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 1, ptr %i.aa, align 8
  %.val33 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val34 = load ptr, ptr %i.ab, align 8, !nonnull !3, !noundef !3
  %i.ac = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val33, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val34, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit46: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @199, ptr %i.l, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.415.0..sroa_idx, align 8
  store ptr @201, ptr %i.m, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.l, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 1, ptr %i.ag, align 8
  %.val31 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val32 = load ptr, ptr %i.ah, align 8, !nonnull !3, !noundef !3
end_hunk_1
