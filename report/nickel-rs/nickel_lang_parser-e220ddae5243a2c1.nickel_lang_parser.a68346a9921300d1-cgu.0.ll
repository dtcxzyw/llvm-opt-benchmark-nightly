Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_parser-e220ddae5243a2c1.nickel_lang_parser.a68346a9921300d1-cgu.0?download=true
inline.NumInlined: 76566
inline.NumDeleted: 6766
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZN194_$LT$nickel_lang_parser..ast..typ..iter..RecordRowsIter$LT$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h69888e202dea2883E":bb.a
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !552706, !noalias !552705, !nonnull !19, !align !24, !noundef !19
  br label %"_ZN194_$LT$nickel_lang_parser..ast..typ..iter..RecordRowsIter$LT$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h50bcf3bd11eb254cE.exit"

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %"_ZN194_$LT$nickel_lang_parser..ast..typ..iter..RecordRowsIter$LT$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h50bcf3bd11eb254cE.exit"

bb.f:                                             ; preds = %bb.b
  br label %"_ZN194_$LT$nickel_lang_parser..ast..typ..iter..RecordRowsIter$LT$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h50bcf3bd11eb254cE.exit"

"_ZN194_$LT$nickel_lang_parser..ast..typ..iter..RecordRowsIter$LT$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h50bcf3bd11eb254cE.exit": ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.sink.i = phi ptr [ null, %bb.f ], [ null, %bb.e ], [ %i.h, %bb.d ], [ null, %bb.b ]
  %.sroa.5.0.i = phi ptr [ undef, %bb.f ], [ %i.i, %bb.e ], [ %i.a, %bb.d ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.f ], [ 1, %bb.e ], [ 2, %bb.d ], [ 3, %bb.b ]
  store ptr %.sink.i, ptr %0, align 8, !alias.scope !552705, !noalias !552706
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %"_ZN194_$LT$nickel_lang_parser..ast..typ..iter..RecordRowsIter$LT$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h50bcf3bd11eb254cE.exit"
  %.sroa.3.0 = phi ptr [ %.sroa.5.0.i, %"_ZN194_$LT$nickel_lang_parser..ast..typ..iter..RecordRowsIter$LT$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h50bcf3bd11eb254cE.exit" ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i, %"_ZN194_$LT$nickel_lang_parser..ast..typ..iter..RecordRowsIter$LT$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h50bcf3bd11eb254cE.exit" ], [ 3, %bb.a ]
  %i.j = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, ptr } %i.j, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.k
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha9c0e7b7136c19eaE"(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(16) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !21, !noundef !19
  %trunc = trunc nuw i8 %i.c to i1
  br i1 %trunc, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %1, align 8, !range !35, !noundef !19
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  store i64 0, ptr %1, align 8
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = atomicrmw add ptr @_ZN14regex_automata4util4pool5inner7COUNTER17h1032928c53d5055eE, i64 1 monotonic, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f, !prof !20

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @90, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.m, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #52
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.d
  %.sroa.03.0 = phi i64 [ %i.f, %bb.c ], [ %i.h, %bb.d ]
  store i64 %.sroa.03.0, ptr %0, align 8
  store i8 1, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN3std4sync6poison4once4Once15call_once_force28_$u7b$$u7b$closure$u7d$$u7d$17h49e48be63ae70538E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !24, !noundef !19 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !21, !noundef !19
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %"_ZN3std4sync9lazy_lock21LazyLock$LT$T$C$F$GT$5force28_$u7b$$u7b$closure$u7d$$u7d$17hbdac273cd2136cf4E.exit", !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3std4sync9lazy_lock14panic_poisoned17h75c251aab0eeacc1E() #52
  unreachable

"_ZN3std4sync9lazy_lock21LazyLock$LT$T$C$F$GT$5force28_$u7b$$u7b$closure$u7d$$u7d$17hbdac273cd2136cf4E.exit": ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a), !inline_history !552707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10195) #52
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN3std4sync6poison4once4Once15call_once_force28_$u7b$$u7b$closure$u7d$$u7d$17hb4f8b26e823b95fbE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !24, !noundef !19 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !21, !noundef !19
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %"_ZN3std4sync9lazy_lock21LazyLock$LT$T$C$F$GT$5force28_$u7b$$u7b$closure$u7d$$u7d$17heb06fb78592f5c03E.exit", !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3std4sync9lazy_lock14panic_poisoned17h75c251aab0eeacc1E() #52
  unreachable

"_ZN3std4sync9lazy_lock21LazyLock$LT$T$C$F$GT$5force28_$u7b$$u7b$closure$u7d$$u7d$17heb06fb78592f5c03E.exit": ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.a), !inline_history !552708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10195) #52
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h448779b84ba2e789E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !552712
  store ptr %i.b, ptr %i.a, align 8, !noalias !552712
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10327, i64 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10328, i64 noundef 11, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10234)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !552712
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5e3a1aee3727d09bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19
  %i.b = tail call noundef zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h62ceb23194058131E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h661452e599a1c26fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !552725, !noalias !552726, !noundef !19 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.split5.i

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.split.i, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit.i"

.split5.i:                                        ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.h, label %"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c6eeb17064ae70dE.exit", label %.split6.i

.split.i:                                         ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.i, label %"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c6eeb17064ae70dE.exit", label %.split6.i

"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit.i": ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.j, label %"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c6eeb17064ae70dE.exit", label %.split6.i

.split6.i:                                        ; preds = %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit.i", %.split.i, %.split5.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !552727, !noalias !552728, !nonnull !19, !noundef !19
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !552727, !noalias !552728, !nonnull !19, !noundef !19
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !19, !noalias !552729, !nonnull !19
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 2), !noalias !552729, !inline_history !552721
  br i1 %i.n, label %"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c6eeb17064ae70dE.exit", label %bb.c

bb.c:                                             ; preds = %.split6.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.b, align 8, !alias.scope !552730, !noalias !552731, !noundef !19 ; 2 uses
  %i.q = and i32 %i.p, 33554432
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = and i32 %i.p, 67108864
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.u = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c6eeb17064ae70dE.exit"

bb.f:                                             ; preds = %bb.d
  %i.v = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c6eeb17064ae70dE.exit"

bb.g:                                             ; preds = %bb.d
  %i.w = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c6eeb17064ae70dE.exit"

"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c6eeb17064ae70dE.exit": ; preds = %.split5.i, %.split.i, %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit.i", %.split6.i, %bb.e, %bb.f, %bb.g
  %.sroa.0.0.i = phi i1 [ %i.u, %bb.e ], [ true, %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit.i" ], [ true, %.split6.i ], [ true, %.split.i ], [ true, %.split5.i ], [ %i.v, %bb.f ], [ %i.w, %bb.g ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9708df942c68fcffE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552735)
  %i.d = load i64, ptr %i.c, align 8, !range !33, !alias.scope !552735, !noalias !552736, !noundef !19
  switch i64 %i.d, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @164, i64 noundef 6), !noalias !552735
  br label %"_ZN68_$LT$nickel_lang_parser..lexer..Mode$u20$as$u20$core..fmt..Debug$GT$3fmt17h7f51983b39b43a7bE.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !552737
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !noalias !552737
  %i.g = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10229, i64 noundef 11, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10228)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !552737
  br label %"_ZN68_$LT$nickel_lang_parser..lexer..Mode$u20$as$u20$core..fmt..Debug$GT$3fmt17h7f51983b39b43a7bE.exit"

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !552737
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.a, align 8, !noalias !552737
  %i.i = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10231, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10230)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !552737
  br label %"_ZN68_$LT$nickel_lang_parser..lexer..Mode$u20$as$u20$core..fmt..Debug$GT$3fmt17h7f51983b39b43a7bE.exit"

"_ZN68_$LT$nickel_lang_parser..lexer..Mode$u20$as$u20$core..fmt..Debug$GT$3fmt17h7f51983b39b43a7bE.exit": ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ %i.i, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd4018a201c0b21d0E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !552741, !noalias !552742, !noundef !19 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit"

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit"

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit"

"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit": ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf6e1850248b76eb6E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !552746
  store ptr %i.b, ptr %i.a, align 8, !noalias !552746
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10332, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10333, i64 noundef 13, ptr noundef nonnull readonly align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10233, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10334, i64 noundef 17, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10331)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !552746
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0213871888640cc3E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552756)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !552755, !noalias !552756, !nonnull !19, !align !42, !noundef !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552757)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !552758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !552758
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f), !noalias !552759 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  store ptr %i.h, ptr %i.b, align 8, !noalias !552758
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.i, ptr %i.j, align 8, !noalias !552758
  store ptr %i.b, ptr %i.c, align 8, !noalias !552758
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1597c5e36024d8d6E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !552758
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i.i = load ptr, ptr %i.k, align 8, !alias.scope !552760, !noalias !552761, !nonnull !19, !noundef !19
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !552760, !noalias !552761, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !552762
  store ptr @122, ptr %i.a, align 8, !noalias !552758
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !552758
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !552758
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !552758
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !552758
  %i.l = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !552762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !552762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !552758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !552758
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1597c5e36024d8d6E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !18, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h230f75e5c2206f95E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !19, !align !42, !noundef !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552768)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !552769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !552769
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e), !noalias !552768 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  store ptr %i.g, ptr %i.b, align 8, !noalias !552769
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.i, align 8, !noalias !552769
  store ptr %i.b, ptr %i.c, align 8, !noalias !552769
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1597c5e36024d8d6E", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !552769
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.j, align 8, !alias.scope !552768, !noalias !552770, !nonnull !19, !noundef !19
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !552768, !noalias !552770, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !552771
  store ptr @122, ptr %i.a, align 8, !noalias !552769
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !552769
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !552769
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !552769
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !552769
  %i.k = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !552771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !552771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !552769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !552769
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h49e7ec6e7d9347f2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !19, !align !42, !noundef !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552777)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !552778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !552778
  %i.e = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d), !noalias !552777 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  store ptr %i.f, ptr %i.b, align 8, !noalias !552778
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.g, ptr %i.h, align 8, !noalias !552778
  store ptr %i.b, ptr %i.c, align 8, !noalias !552778
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1597c5e36024d8d6E", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !552778
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.i, align 8, !alias.scope !552777, !noalias !552779, !nonnull !19, !noundef !19
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !552777, !noalias !552779, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !552780
  store ptr @122, ptr %i.a, align 8, !noalias !552778
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !552778
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !552778
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !552778
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !552778
  %i.j = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !552780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !552780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !552778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !552778
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h592c4de9ca8a54e0E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !18, !noundef !19
  %i.b = tail call noundef zeroext i1 @"_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17ha9a489cf5bee443fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6726965e24af3ba1E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19
  %i.b = tail call noundef zeroext i1 @"_ZN11malachite_q10conversion6string9to_string70_$LT$impl$u20$core..fmt..Display$u20$for$u20$malachite_q..Rational$GT$3fmt17h984ae9456eb7aad9E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h90db9489f77c70deE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !42, !noundef !19
  %i.b = tail call noundef zeroext i1 @"_ZN78_$LT$nickel_lang_parser..ast..primop..PrimOp$u20$as$u20$core..fmt..Display$GT$3fmt17h27c70d2cd9ca64ebE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3cmp3Ord3max17hdbe3c6887c959879E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(56) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke noundef range(i8 -1, 2) i8 @"_ZN73_$LT$nickel_lang_parser..ast..MergePriority$u20$as$u20$core..cmp..Ord$GT$3cmp17h77b7f06e195c5807E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17hf904b19bb6479bd0E"(ptr noalias noundef align 8 dereferenceable(56) %2) #53
  tail call fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17hf904b19bb6479bd0E"(ptr noalias noundef align 8 dereferenceable(56) %1) #53
  resume { ptr, i32 } %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = icmp slt i8 %i.a, 0
  br i1 %i.c, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552789)
  %i.d = load i64, ptr %1, align 8, !range !41, !alias.scope !552789, !noundef !19 ; 4 uses
  %i.e = icmp ne i64 %i.d, -9223372036854775805
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ult i64 %i.d, -9223372036854775807
  br i1 %i.f, label %bb.e, label %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17hf904b19bb6479bd0E.exit"

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552790)
  %switch.i.i = icmp sgt i64 %i.d, 0
  br i1 %switch.i.i, label %bb.f, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i"

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.i.i = load ptr, ptr %i.g, align 8, !alias.scope !552791, !nonnull !19, !noundef !19
  %i.h = shl nuw i64 %i.d, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !552791
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i"

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i": ; preds = %bb.f, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i = load i64, ptr %i.i, align 8, !range !52, !alias.scope !552791, !noundef !19 ; 2 uses
  %switch8.i.i = icmp sgt i64 %.val.i.i, 0
  br i1 %switch8.i.i, label %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17hf904b19bb6479bd0E.exit.sink.split", label %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17hf904b19bb6479bd0E.exit"

bb.g:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552792)
  %i.j = load i64, ptr %2, align 8, !range !41, !alias.scope !552792, !noundef !19 ; 4 uses
  %i.k = icmp ne i64 %i.j, -9223372036854775805
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp ult i64 %i.j, -9223372036854775807
  br i1 %i.l, label %bb.h, label %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17hf904b19bb6479bd0E.exit"

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552793)
  %switch.i.i4 = icmp sgt i64 %i.j, 0
  br i1 %switch.i.i4, label %bb.i, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i5"

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val5.i.i9 = load ptr, ptr %i.m, align 8, !alias.scope !552794, !nonnull !19, !noundef !19
  %i.n = shl nuw i64 %i.j, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i9, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !552794
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i5"

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i5": ; preds = %bb.i, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val.i.i6 = load i64, ptr %i.o, align 8, !range !52, !alias.scope !552794, !noundef !19 ; 2 uses
  %switch8.i.i7 = icmp sgt i64 %.val.i.i6, 0
  br i1 %switch8.i.i7, label %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17hf904b19bb6479bd0E.exit.sink.split", label %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17hf904b19bb6479bd0E.exit"

"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17hf904b19bb6479bd0E.exit.sink.split": ; preds = %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i5", %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i"
  %.sink16 = phi ptr [ %1, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i" ], [ %2, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i5" ]
  %.val.i.i6.sink = phi i64 [ %.val.i.i, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i" ], [ %.val.i.i6, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i5" ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sink16, i64 32
  %.val1.i.i8 = load ptr, ptr %i.p, align 8, !nonnull !19, !noundef !19
  %i.q = shl nuw i64 %.val.i.i6.sink, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i8, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !19
  br label %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17hf904b19bb6479bd0E.exit"

"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17hf904b19bb6479bd0E.exit": ; preds = %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..ast..MergePriority$GT$17hf904b19bb6479bd0E.exit.sink.split", %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i5", %bb.g, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i", %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !19 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write10write_char17h96c711dcc632c924E(ptr noalias noundef align 8 dereferenceable(32) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !552797
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !552797
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !552797
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@"_ZN76_$LT$nickel_lang_parser..error..ParseError$u20$as$u20$core..clone..Clone$GT$5clone17h3e614a7f7db1bc7cE":bb.a
  store i64 %.val13, ptr %.sroa.517.0..sroa_idx, align 8
  store i32 9, ptr %0, align 8
  br label %bb.ac

bb.n:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !range !562454, !noundef !19
  %i.ad = trunc nuw i32 %i.ac to i1
  br i1 %i.ad, label %bb.ah, label %bb.ai

bb.o:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.q:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.r:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.s:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10330)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ah, ptr noundef nonnull align 4 dereferenceable(12) %i.ag, i64 12, i1 false)
  store i32 15, ptr %0, align 8
  br label %bb.ac

bb.t:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.u:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.v:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10330)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, i64 12, i1 false)
  store i32 18, ptr %0, align 8
  br label %bb.ac

bb.w:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.x:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.y:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.z:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10330)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ap, ptr noundef nonnull align 4 dereferenceable(12) %i.ao, i64 12, i1 false)
  store i32 22, ptr %0, align 8
  br label %bb.ac

bb.aa:                                            ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10330)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10330)
          to label %bb.ak unwind label %bb.aj

bb.ab:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ak, %bb.ai, %bb.ag, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h43b4a2d74ac7045aE.exit", %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void

bb.ad:                                            ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !562455 ; 2 uses
  %i.at = icmp eq i64 %.val.i, 0
  br i1 %i.at, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.sink.split"

bb.ae:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = load i32, ptr %i.au, align 4, !range !562454, !noundef !19
  %i.aw = trunc nuw i32 %i.av to i1
  br i1 %i.aw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.0..sroa_idx, i64 12, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.sroa.0.0 = phi i32 [ 1, %bb.af ], [ 0, %bb.ae ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.0, ptr %i.az, align 4
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, i64 12, i1 false)
  store i32 8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ac

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.sink.split": ; preds = %bb.ad, %bb.aj
  %.sink20.sroa.phi = phi ptr [ %.sink20.sroa.gep, %bb.aj ], [ %.sink20.sroa.gep21, %bb.ad ]
  %.val.i14.sink = phi i64 [ %.val.i14, %bb.aj ], [ %.val.i, %bb.ad ]
  %.pn.ph = phi { ptr, i32 } [ %i.be, %bb.aj ], [ %i.as, %bb.ad ]
  %.val1.i15 = load ptr, ptr %.sink20.sroa.phi, align 8, !nonnull !19, !noundef !19
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i15, i64 noundef %.val.i14.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !19
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.sink.split", %bb.aj, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.be, %bb.aj ], [ %i.as, %bb.ad ], [ %.pn.ph, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.sink.split" ]
  resume { ptr, i32 } %.pn

bb.ah:                                            ; preds = %bb.n
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.55, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.55.0..sroa_idx, i64 12, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.n, %bb.ah
  %.sroa.03.0 = phi i32 [ 1, %bb.ah ], [ 0, %bb.n ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bb, ptr noundef nonnull align 8 dereferenceable(28) %i.ba, i64 28, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bc, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.03.0, ptr %i.bd, align 4
  %.sroa.55.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.55.0..sroa_idx6, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.55, i64 12, i1 false)
  store i32 10, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55)
  br label %bb.ac

bb.aj:                                            ; preds = %bb.aa
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i14 = load i64, ptr %i.b, align 8, !alias.scope !562456 ; 2 uses
  %i.bf = icmp eq i64 %.val.i14, 0
  br i1 %i.bf, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.sink.split"

bb.ak:                                            ; preds = %bb.aa
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bh, ptr noundef nonnull align 4 dereferenceable(12) %i.bg, i64 12, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i32 23, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN76_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..fmt..Display$GT$3fmt17hbc9c1c42002a29c9E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  store ptr %i.e, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.f, ptr %i.g, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1597c5e36024d8d6E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.h, align 8, !nonnull !19, !noundef !19
  %.val = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !562459
  store ptr @122, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.i = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !562459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !562459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex11_get_action17hfc2329aa9cc03c16E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i8 noundef range(i8 0, 8) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  switch i8 %3, label %default.unreachable [
    i8 7, label %bb.b
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.k
    i8 4, label %bb.n
    i8 5, label %bb.o
    i8 6, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !19
  %i.c = add i64 %i.b, 1
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %2) ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !19 ; 3 uses
  %i.g = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.g, label %.split._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.sroa.02.030 = phi i64 [ %i.m, %bb.d ], [ %.sroa.0.0.i, %bb.b ] ; 5 uses
  %.not14 = icmp ult i64 %.sroa.02.030, %i.f
  br i1 %.not14, label %bb.c, label %.split

.split._crit_edge:                                ; preds = %bb.c, %bb.d, %.split, %bb.b
  %.sroa.02.0.lcssa = phi i64 [ 0, %bb.b ], [ %i.f, %.split ], [ 0, %bb.d ], [ %.sroa.02.030, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.02.0.lcssa, ptr %i.h, align 8
  store i64 -9223372036854775801, ptr %0, align 8
  br label %bb.e

.split:                                           ; preds = %.lr.ph
  %i.i = icmp eq i64 %.sroa.02.030, %i.f
  br i1 %i.i, label %.split._crit_edge, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.02.030
  %i.k = load i8, ptr %i.j, align 1, !noundef !19
  %i.l = icmp sgt i8 %i.k, -65
  br i1 %i.l, label %.split._crit_edge, label %bb.d

bb.d:                                             ; preds = %.split, %bb.c
  %i.m = add i64 %.sroa.02.030, 1                 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.split._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.p, %bb.o, %bb.n, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit20", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit", %bb.g, %bb.f, %.split._crit_edge
  ret void

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.g:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !19 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !noundef !19
  %i.t = sub nuw i64 %i.s, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  tail call fastcc void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17hfd249acd81853ca9E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.u, i64 noundef %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @264, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @69, i64 noundef 1)
  br label %bb.e

bb.h:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !19 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !19 ; 2 uses
  %i.aa = sub nuw i64 %i.z, %i.x                  ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  %i.ac = icmp slt i64 %i.aa, 0
  br i1 %i.ac, label %bb.j, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.h
  %i.ad = icmp eq i64 %i.z, %i.x
  br i1 %i.ad, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit", label %bb.i

bb.i:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !562480
  %i.ae = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.aa, i64 noundef range(i64 1, 9) 1) #54, !noalias !562480 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit"

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.i ], [ 0, %bb.h ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !562481
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.ae, %bb.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.ab, i64 %i.aa, i1 false), !noalias !562482
  store i64 %i.aa, ptr %0, align 8, !alias.scope !562483
  %.sroa.2.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.2.0..sroa_idx22, align 8, !alias.scope !562483
  %.sroa.3.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aa, ptr %.sroa.3.0..sroa_idx23, align 8, !alias.scope !562483
  br label %bb.e

bb.k:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !19 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !19 ; 2 uses
  %i.al = sub nuw i64 %i.ak, %i.ai                ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.an = icmp slt i64 %i.al, 0
  br i1 %i.an, label %bb.m, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i15, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i15: ; preds = %bb.k
  %i.ao = icmp eq i64 %i.ak, %i.ai
  br i1 %i.ao, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit20", label %bb.l

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i15
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !562484
  %i.ap = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, 9) 1) #54, !noalias !562484 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.m, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit20"

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.4.0.ph.i.i19 = phi i64 [ 1, %bb.l ], [ 0, %bb.k ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i19, i64 %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !562485
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit20": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i15, %bb.l
  %.sroa.10.0.i.i16 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i15 ], [ %i.ap, %bb.l ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i16, ptr nonnull readonly align 1 %i.am, i64 %i.al, i1 false), !noalias !562486
  store i64 %i.al, ptr %0, align 8, !alias.scope !562487
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i16, ptr %.sroa.228.0..sroa_idx, align 8, !alias.scope !562487
  %.sroa.329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %.sroa.329.0..sroa_idx, align 8, !alias.scope !562487
  br label %bb.e

bb.n:                                             ; preds = %bb.a
  %i.ar = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noundef !19 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load i64, ptr %i.au, align 8, !noundef !19
  %i.aw = sub nuw i64 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aw, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.e

bb.o:                                             ; preds = %bb.a
  %i.ay = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noundef !19 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !19
  %i.bd = sub nuw i64 %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bd, ptr %.sroa.39.0..sroa_idx, align 8
  br label %bb.e

bb.p:                                             ; preds = %bb.a
  %i.bf = load ptr, ptr %1, align 8, !nonnull !19, !align !18, !noundef !19
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !19 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !19
  %i.bk = sub nuw i64 %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
end_hunk_1
begin_hunk_2_@"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state2117h9a40c1cf469d0242E":bb.a
bb.cb:                                            ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !562897
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !562898, !noalias !562899, !noundef !19 ; 2 uses
  %i.gj = sub nuw i64 %i.h, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.gi
  call fastcc void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17hfd249acd81853ca9E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gk, i64 noundef %i.gj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @264, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @69, i64 noundef 1)
  %i.gl = load i64, ptr %i.a, align 8, !range !100, !noalias !562897, !noundef !19
  %i.gm = tail call i64 @llvm.usub.sat.i64(i64 %i.gl, i64 -9223372036854775802)
  switch i64 %i.gm, label %default.unreachable [
    i64 0, label %bb.cm
    i64 1, label %bb.cn
    i64 2, label %bb.co
    i64 3, label %bb.cp
  ]

bb.cc:                                            ; preds = %bb.ca
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state417h4d302f0f0ac55c82E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.gb)
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state017h9e2e1a1d4144e194E.exit"

bb.cd:                                            ; preds = %bb.ca
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state517h07d1d5c18dbf83d4E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.gb)
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state017h9e2e1a1d4144e194E.exit"

bb.ce:                                            ; preds = %bb.ca
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562901)
  store i64 %i.gb, ptr %i.fz, align 8, !alias.scope !562901, !noalias !562900
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !562900, !noalias !562901
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state017h9e2e1a1d4144e194E.exit"

bb.cf:                                            ; preds = %bb.ca
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state717h09ec7f483f192f2dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.gb)
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state017h9e2e1a1d4144e194E.exit"

bb.cg:                                            ; preds = %bb.ca
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state817hf01c20a29e70d118E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.gb)
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state017h9e2e1a1d4144e194E.exit"

bb.ch:                                            ; preds = %bb.ca
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state917h6302620d4cffb596E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.gb)
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state017h9e2e1a1d4144e194E.exit"

bb.ci:                                            ; preds = %bb.ca
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state1017hec92b2a1f8a72ce7E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.gb)
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state017h9e2e1a1d4144e194E.exit"

bb.cj:                                            ; preds = %bb.ca
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state1117h5b8ca1c055be973fE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.gb)
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state017h9e2e1a1d4144e194E.exit"

bb.ck:                                            ; preds = %bb.ca
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state1217h322502682421b239E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.gb)
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state017h9e2e1a1d4144e194E.exit"

bb.cl:                                            ; preds = %bb.ca
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state1317h2f0ed1969fde1fafE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.gb)
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state017h9e2e1a1d4144e194E.exit"

bb.cm:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !562896
  br label %bb.cq

bb.cn:                                            ; preds = %bb.cb
  store i64 -9223372036854775801, ptr %0, align 8, !alias.scope !562895, !noalias !562896
  br label %bb.cq

bb.co:                                            ; preds = %bb.cb
  store i64 -9223372036854775801, ptr %0, align 8, !alias.scope !562895, !noalias !562896
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cb
  store i64 %i.h, ptr %i.gh, align 8, !alias.scope !562896, !noalias !562895
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex7state2117h9a40c1cf469d0242E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !562897
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state017h9e2e1a1d4144e194E.exit"

bb.cr:                                            ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562902)
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.h, ptr %i.gn, align 8, !alias.scope !562902, !noalias !562903
  %i.go = icmp ult i64 %i.h, %i.c
  br i1 %i.go, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.gp = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.gq = load i8, ptr %i.gp, align 1, !noalias !562904, !noundef !19
  %i.gr = icmp eq i8 %i.gq, 37
  br i1 %i.gr, label %bb.cw, label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562905)
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !562905, !noalias !562906, !noundef !19 ; 3 uses
  %i.gu = sub nuw i64 %i.h, %i.gt                 ; 6 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.gt
  %i.gw = icmp slt i64 %i.gu, 0
  br i1 %i.gw, label %bb.cv, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.ct
  %i.gx = icmp eq i64 %i.h, %i.gt
  br i1 %i.gx, label %bb.cx, label %bb.cu

bb.cu:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !562907
  %i.gy = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.gu, i64 noundef range(i64 1, 9) 1) #54, !noalias !562907 ; 2 uses
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.cu ], [ 0, %bb.ct ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.gu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !562908
  unreachable

bb.cw:                                            ; preds = %bb.cs
  %i.ha = add nuw i64 %2, 2
  tail call fastcc void @"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state217h47037940b6862730E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ha)
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state017h9e2e1a1d4144e194E.exit"

bb.cx:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %bb.cu
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.gy, %bb.cu ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.gv, i64 %i.gu, i1 false), !noalias !562909
  store i64 %i.gu, ptr %0, align 8, !noalias !562902
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4151.0..sroa_idx, align 8, !noalias !562902
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gu, ptr %.sroa.5152.0..sroa_idx, align 8, !noalias !562902
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state017h9e2e1a1d4144e194E.exit"

.loopexit:                                        ; preds = %.split.i, %bb.f, %bb.g, %bb.e
  %.sroa.02.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.c, %.split.i ], [ 0, %bb.g ], [ %.sroa.02.030.i, %bb.f ]
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.02.0.lcssa.i, ptr %i.hb, align 8, !alias.scope !562837, !noalias !562838
  store i64 -9223372036854775801, ptr %0, align 8
  br label %"_ZN76_$LT$nickel_lang_parser..lexer..MultiStringToken$u20$as$u20$logos..Logos$GT$3lex6state017h9e2e1a1d4144e194E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h2ef0100889cdc88aE"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10339, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h59fd85efca564341E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10339, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17he7509cb5fb070cc2E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10339, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$nickel_lang_parser..ast..MergePriority$u20$as$u20$core..fmt..Display$GT$3fmt17h1cb78e8eed233146E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = load i64, ptr %0, align 8, !range !41, !noundef !19 ; 3 uses
  %i.h = icmp ne i64 %i.g, -9223372036854775805
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nsw i64 %i.g, 9223372036854775807
  %i.j = icmp ugt i64 %i.g, -9223372036854775808
  %i.k = select i1 %i.j, i64 %i.i, i64 2
  switch i64 %i.k, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit27
    i64 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val16 = load ptr, ptr %i.l, align 8, !nonnull !19, !noundef !19
  %.val15 = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.m = getelementptr inbounds nuw i8, ptr %.val16, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !19, !noalias !562920, !nonnull !19
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 1 %.val15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @168, i64 noundef 7), !noalias !562920, !inline_history !102
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) @327, i64 56, i1 false)
  store ptr %i.e, ptr %i.f, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN11malachite_q10conversion6string9to_string70_$LT$impl$u20$core..fmt..Display$u20$for$u20$malachite_q..Rational$GT$3fmt17h984ae9456eb7aad9E", ptr %.sroa.47.0..sroa_idx, align 8
  %.val13 = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val14 = load ptr, ptr %i.p, align 8, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !562921
  store ptr @122, ptr %i.b, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %.sroa.735.0..sroa_idx, align 8
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.836.0..sroa_idx, align 8
  %.sroa.1037.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1037.0..sroa_idx, align 8
  %i.q = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val14, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit22 unwind label %bb.f

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit27: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6726965e24af3ba1E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val11 = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.r, align 8, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !562922
  store ptr @122, ptr %i.a, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.741.0..sroa_idx, align 8
  %.sroa.842.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.842.0..sroa_idx, align 8
  %.sroa.1043.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1043.0..sroa_idx, align 8
  %i.s = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val12, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !562922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !562922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.t, align 8, !nonnull !19, !noundef !19
  %.val = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.u = getelementptr inbounds nuw i8, ptr %.val10, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !19, !noalias !562923, !nonnull !19
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @172, i64 noundef 5), !noalias !562923, !inline_history !102
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.e, %bb.c, %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h80af4524bd6993baE.exit", %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit27
  %.sroa.0.0.in = phi i1 [ %i.w, %bb.e ], [ %i.q, %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h80af4524bd6993baE.exit" ], [ %i.s, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit27 ], [ %i.o, %bb.c ]
  ret i1 %.sroa.0.0.in

bb.f:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h80af4524bd6993baE"(ptr noalias noundef align 8 dereferenceable(56) %i.e) #53
  resume { ptr, i32 } %i.x

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit22: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !562921
  call void @llvm.experimental.noalias.scope.decl(metadata !562924)
  %.val4.i = load i64, ptr %i.e, align 8, !range !52, !alias.scope !562924, !noundef !19 ; 2 uses
  %switch.i = icmp sgt i64 %.val4.i, 0
  br i1 %switch.i, label %bb.g, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i"

bb.g:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit22
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val5.i = load ptr, ptr %i.y, align 8, !alias.scope !562924, !nonnull !19, !noundef !19
  %i.z = shl nuw i64 %.val4.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !562924
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i"

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i": ; preds = %bb.g, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val.i = load i64, ptr %i.aa, align 8, !range !52, !alias.scope !562924, !noundef !19 ; 2 uses
  %switch8.i = icmp sgt i64 %.val.i, 0
  br i1 %switch8.i, label %bb.h, label %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h80af4524bd6993baE.exit"

bb.h:                                             ; preds = %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i"
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.val1.i = load ptr, ptr %i.ab, align 8, !alias.scope !562924, !nonnull !19, !noundef !19
  %i.ac = shl nuw i64 %.val.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !562924
  br label %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h80af4524bd6993baE.exit"

"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h80af4524bd6993baE.exit": ; preds = %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i", %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$nickel_lang_parser..ast..alloc..AstAlloc$u20$as$u20$core..fmt..Debug$GT$3fmt17heaa4b94f16e84859E"(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19
  %.val = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !19, !noalias !562927, !nonnull !19
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10341, i64 noundef 8), !noalias !562927, !inline_history !102
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$nickel_lang_parser..ast..typ..EnumRows$u20$as$u20$core..fmt..Display$GT$3fmt17he5a521712ba58f6bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !562938
  store i64 0, ptr %i.b, align 8, !noalias !562938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !562938
  call void @"_ZN18nickel_lang_parser3ast6pretty137_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..typ..EnumRows$GT$6pretty17h30c084513de3a9c7E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noundef nonnull align 8 %i.b), !noalias !562938
  %i.c = load i8, ptr %i.a, align 8, !range !67, !noalias !562938, !noundef !19
  %.not.i = icmp eq i8 %i.c, 15                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noalias !562938, !nonnull !19 ; 4 uses
  %.sroa.01.0.i = select i1 %.not.i, ptr %i.e, ptr %i.a
  %i.f = invoke fastcc noundef zeroext i1 @_ZN6pretty6render4best17hbf081fd1a04c1842E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.01.0.i, ptr nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$GT$17hd042ef62d824be5dE"(ptr noalias noundef align 8 dereferenceable(32) %i.a) #53
          to label %common.resume.i unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$17h55c17926cb1cc05eE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #56
          to label %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i.i" unwind label %bb.e, !noalias !562939, !inline_history !4

common.resume.i:                                  ; preds = %bb.e, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8) #54, !noalias !562939, !inline_history !68
  br label %common.resume.i

"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i.i": ; preds = %bb.d
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8) #54, !noalias !562939, !inline_history !68
  br label %_ZN18nickel_lang_parser3ast6pretty10fmt_pretty17h0d8ef114a7eab882E.exit

bb.f:                                             ; preds = %bb.c
  call fastcc void @"_ZN4core3ptr54drop_in_place$LT$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$17h55c17926cb1cc05eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.a)
  br label %_ZN18nickel_lang_parser3ast6pretty10fmt_pretty17h0d8ef114a7eab882E.exit

bb.g:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

_ZN18nickel_lang_parser3ast6pretty10fmt_pretty17h0d8ef114a7eab882E.exit: ; preds = %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i.i", %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !562938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !562938
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$nickel_lang_parser..ast..primop..PrimOp$u20$as$u20$core..fmt..Display$GT$3fmt17h27c70d2cd9ca64ebE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [48 x i8], align 8                ; 8 uses
  %i.q = alloca [48 x i8], align 8                ; 8 uses
  %i.r = alloca [48 x i8], align 8                ; 8 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [48 x i8], align 8                ; 8 uses
  %i.u = alloca [48 x i8], align 8                ; 8 uses
  %i.v = alloca [48 x i8], align 8                ; 8 uses
  %i.w = alloca [48 x i8], align 8                ; 8 uses
  %i.x = alloca [48 x i8], align 8                ; 8 uses
  %i.y = alloca [48 x i8], align 8                ; 8 uses
  %i.z = alloca [48 x i8], align 8                ; 8 uses
  %i.aa = alloca [48 x i8], align 8               ; 8 uses
  %i.ab = alloca [48 x i8], align 8               ; 8 uses
  %i.ac = alloca [48 x i8], align 8               ; 8 uses
  %i.ad = alloca [48 x i8], align 8               ; 8 uses
  %i.ae = alloca [48 x i8], align 8               ; 8 uses
  %i.af = alloca [48 x i8], align 8               ; 8 uses
  %i.ag = alloca [48 x i8], align 8               ; 8 uses
  %i.ah = alloca [48 x i8], align 8               ; 8 uses
  %i.ai = alloca [48 x i8], align 8               ; 8 uses
  %i.aj = alloca [48 x i8], align 8               ; 8 uses
  %i.ak = alloca [48 x i8], align 8               ; 8 uses
  %i.al = alloca [48 x i8], align 8               ; 8 uses
  %i.am = alloca [48 x i8], align 8               ; 8 uses
  %i.an = alloca [48 x i8], align 8               ; 8 uses
  %i.ao = alloca [48 x i8], align 8               ; 8 uses
  %i.ap = alloca [48 x i8], align 8               ; 8 uses
  %i.aq = alloca [48 x i8], align 8               ; 8 uses
  %i.ar = alloca [48 x i8], align 8               ; 8 uses
  %i.as = alloca [48 x i8], align 8               ; 8 uses
  %i.at = alloca [48 x i8], align 8               ; 8 uses
  %i.au = alloca [48 x i8], align 8               ; 8 uses
  %i.av = alloca [48 x i8], align 8               ; 8 uses
  %i.aw = alloca [48 x i8], align 8               ; 8 uses
  %i.ax = alloca [48 x i8], align 8               ; 8 uses
  %i.ay = alloca [48 x i8], align 8               ; 8 uses
  %i.az = alloca [48 x i8], align 8               ; 8 uses
  %i.ba = alloca [48 x i8], align 8               ; 8 uses
  %i.bb = alloca [48 x i8], align 8               ; 8 uses
  %i.bc = alloca [48 x i8], align 8               ; 8 uses
  %i.bd = alloca [48 x i8], align 8               ; 8 uses
  %i.be = alloca [48 x i8], align 8               ; 8 uses
  %i.bf = alloca [48 x i8], align 8               ; 8 uses
  %i.bg = alloca [48 x i8], align 8               ; 8 uses
  %i.bh = alloca [48 x i8], align 8               ; 8 uses
  %i.bi = alloca [48 x i8], align 8               ; 8 uses
  %i.bj = alloca [48 x i8], align 8               ; 8 uses
  %i.bk = alloca [48 x i8], align 8               ; 8 uses
  %i.bl = alloca [48 x i8], align 8               ; 8 uses
  %i.bm = alloca [48 x i8], align 8               ; 8 uses
  %i.bn = alloca [48 x i8], align 8               ; 8 uses
  %i.bo = alloca [48 x i8], align 8               ; 8 uses
  %i.bp = alloca [48 x i8], align 8               ; 8 uses
  %i.bq = alloca [48 x i8], align 8               ; 8 uses
  %i.br = alloca [48 x i8], align 8               ; 8 uses
  %i.bs = alloca [48 x i8], align 8               ; 8 uses
  %i.bt = alloca [48 x i8], align 8               ; 8 uses
  %i.bu = alloca [48 x i8], align 8               ; 8 uses
  %i.bv = alloca [48 x i8], align 8               ; 8 uses
  %i.bw = alloca [48 x i8], align 8               ; 8 uses
  %i.bx = alloca [48 x i8], align 8               ; 8 uses
  %i.by = alloca [48 x i8], align 8               ; 8 uses
  %i.bz = alloca [48 x i8], align 8               ; 8 uses
  %i.ca = alloca [48 x i8], align 8               ; 8 uses
  %i.cb = alloca [48 x i8], align 8               ; 8 uses
  %i.cc = alloca [48 x i8], align 8               ; 8 uses
  %i.cd = alloca [48 x i8], align 8               ; 8 uses
  %i.ce = alloca [48 x i8], align 8               ; 8 uses
  %i.cf = alloca [48 x i8], align 8               ; 8 uses
  %i.cg = alloca [48 x i8], align 8               ; 8 uses
  %i.ch = alloca [48 x i8], align 8               ; 8 uses
  %i.ci = alloca [48 x i8], align 8               ; 8 uses
  %i.cj = alloca [48 x i8], align 8               ; 8 uses
  %i.ck = alloca [48 x i8], align 8               ; 8 uses
  %i.cl = alloca [48 x i8], align 8               ; 8 uses
  %i.cm = alloca [48 x i8], align 8               ; 8 uses
  %i.cn = alloca [48 x i8], align 8               ; 8 uses
  %i.co = alloca [48 x i8], align 8               ; 8 uses
  %i.cp = alloca [48 x i8], align 8               ; 8 uses
  %i.cq = alloca [48 x i8], align 8               ; 8 uses
  %i.cr = alloca [48 x i8], align 8               ; 8 uses
  %i.cs = alloca [48 x i8], align 8               ; 8 uses
  %i.ct = alloca [48 x i8], align 8               ; 8 uses
  %i.cu = alloca [48 x i8], align 8               ; 8 uses
  %i.cv = alloca [48 x i8], align 8               ; 8 uses
  %i.cw = alloca [48 x i8], align 8               ; 8 uses
  %i.cx = alloca [48 x i8], align 8               ; 8 uses
  %i.cy = alloca [48 x i8], align 8               ; 8 uses
  %i.cz = alloca [48 x i8], align 8               ; 8 uses
  %i.da = alloca [48 x i8], align 8               ; 8 uses
  %i.db = alloca [48 x i8], align 8               ; 8 uses
  %i.dc = load i8, ptr %0, align 4, !range !43, !noundef !19
  switch i8 %i.dc, label %default.unreachable212 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
end_hunk_2
begin_hunk_3_@"_ZN79_$LT$nickel_lang_parser..ast..MergePriority$u20$as$u20$core..cmp..PartialEq$GT$2eq17h115affa3fe6d8e65E":bb.a
  %i.ai = load i64, ptr %i.ah, align 8, !range !52
  %i.aj = icmp eq i64 %i.ai, -9223372036854775808
  %or.cond57 = select i1 %i.ag, i1 %i.aj, i1 false
  br i1 %or.cond57, label %bb.k, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit43"

bb.k:                                             ; preds = %.split.i10
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !562957, !noalias !562958, !noundef !19
  %i.am = icmp eq i64 %i.al, 1
  br label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit43"

bb.l:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562960)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i8, ptr %i.an, align 8, !range !21, !alias.scope !562959, !noalias !562960, !noundef !19
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load i8, ptr %i.ap, align 8, !range !21, !alias.scope !562960, !noalias !562959, !noundef !19
  %i.ar = icmp eq i8 %i.ao, %i.aq
  br i1 %i.ar, label %bb.m, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit43"

bb.m:                                             ; preds = %bb.l
  %i.as = icmp ne i64 %i.a, -9223372036854775808  ; 2 uses
  %i.at = icmp eq i64 %i.f, -9223372036854775808  ; 3 uses
  %not..i27 = xor i1 %i.at, true
  %i.au = xor i1 %i.as, %i.at
  br i1 %i.au, label %bb.n, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit43"

bb.n:                                             ; preds = %bb.m
  br i1 %i.as, label %bb.o, label %.split.i28

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.assume(i1 %not..i27)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val11.i36 = load i64, ptr %i.av, align 8, !alias.scope !562959, !noalias !562960, !noundef !19 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val13.i37 = load i64, ptr %i.aw, align 8, !alias.scope !562960, !noalias !562959, !noundef !19
  %.not.i.i.i38 = icmp eq i64 %.val11.i36, %.val13.i37
  br i1 %.not.i.i.i38, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h901e06393577e671E.exit.i39", label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit43"

.split.i28:                                       ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.at)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !562959, !noalias !562960, !noundef !19
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !562960, !noalias !562959, !noundef !19
  %i.bb = icmp eq i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.p, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit43"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h901e06393577e671E.exit.i39": ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12.i40 = load ptr, ptr %i.bc, align 8, !alias.scope !562960, !noalias !562959, !nonnull !19, !noundef !19
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10.i41 = load ptr, ptr %i.bd, align 8, !alias.scope !562959, !noalias !562960, !nonnull !19, !noundef !19
  %i.be = shl nuw nsw i64 %.val11.i36, 3
  %bcmp.i.i.i42 = tail call i32 @bcmp(ptr nonnull readonly align 8 %.val10.i41, ptr nonnull readonly align 8 %.val12.i40, i64 %i.be), !alias.scope !562961, !noalias !562962
  %i.bf = icmp eq i32 %bcmp.i.i.i42, 0
  br i1 %i.bf, label %bb.p, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit43"

bb.p:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h901e06393577e671E.exit.i39", %.split.i28
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !range !52, !alias.scope !562959, !noalias !562960, !noundef !19
  %i.bi = icmp ne i64 %i.bh, -9223372036854775808 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !range !52, !alias.scope !562960, !noalias !562959, !noundef !19
  %i.bl = icmp eq i64 %i.bk, -9223372036854775808 ; 3 uses
  %not.6.i29 = xor i1 %i.bl, true
  %i.bm = xor i1 %i.bi, %i.bl
  br i1 %i.bm, label %bb.q, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit43"

bb.q:                                             ; preds = %bb.p
  br i1 %i.bi, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.assume(i1 %not.6.i29)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val7.i30 = load i64, ptr %i.bn, align 8, !alias.scope !562959, !noalias !562960, !noundef !19 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val9.i31 = load i64, ptr %i.bo, align 8, !alias.scope !562960, !noalias !562959, !noundef !19
  %.not.i.i14.i32 = icmp eq i64 %.val7.i30, %.val9.i31
  br i1 %.not.i.i14.i32, label %bb.s, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit43"

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val8.i33 = load ptr, ptr %i.bp, align 8, !alias.scope !562960, !noalias !562959, !nonnull !19, !noundef !19
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i34 = load ptr, ptr %i.bq, align 8, !alias.scope !562959, !noalias !562960, !nonnull !19, !noundef !19
  %i.br = shl nuw nsw i64 %.val7.i30, 3
  %bcmp.i.i16.i35 = tail call i32 @bcmp(ptr nonnull readonly align 8 %.val.i34, ptr nonnull readonly align 8 %.val8.i33, i64 %i.br), !alias.scope !562963, !noalias !562962
  %i.bs = icmp eq i32 %bcmp.i.i16.i35, 0
  br label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit43"

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.assume(i1 %i.bl)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !562959, !noalias !562960, !noundef !19
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !562960, !noalias !562959, !noundef !19
  %i.bx = icmp eq i64 %i.bu, %i.bw
  br label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit43"
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN79_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$core..fmt..Display$GT$3fmt17h2d2d787f19b359adE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !562974
  store i64 0, ptr %i.b, align 8, !noalias !562974
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !562974
  call void @"_ZN18nickel_lang_parser3ast6pretty139_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..typ..RecordRows$GT$6pretty17h65f410a160d3c365E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noundef nonnull align 8 %i.b), !noalias !562974
  %i.c = load i8, ptr %i.a, align 8, !range !67, !noalias !562974, !noundef !19
  %.not.i = icmp eq i8 %i.c, 15                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noalias !562974, !nonnull !19 ; 4 uses
  %.sroa.01.0.i = select i1 %.not.i, ptr %i.e, ptr %i.a
  %i.f = invoke fastcc noundef zeroext i1 @_ZN6pretty6render4best17hbf081fd1a04c1842E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.01.0.i, ptr nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$GT$17hd042ef62d824be5dE"(ptr noalias noundef align 8 dereferenceable(32) %i.a) #53
          to label %common.resume.i unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$17h55c17926cb1cc05eE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #56
          to label %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i.i" unwind label %bb.e, !noalias !562975, !inline_history !4

common.resume.i:                                  ; preds = %bb.e, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8) #54, !noalias !562975, !inline_history !68
  br label %common.resume.i

"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i.i": ; preds = %bb.d
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8) #54, !noalias !562975, !inline_history !68
  br label %_ZN18nickel_lang_parser3ast6pretty10fmt_pretty17h153da241330dcc2aE.exit

bb.f:                                             ; preds = %bb.c
  call fastcc void @"_ZN4core3ptr54drop_in_place$LT$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$17h55c17926cb1cc05eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.a)
  br label %_ZN18nickel_lang_parser3ast6pretty10fmt_pretty17h153da241330dcc2aE.exit

bb.g:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

_ZN18nickel_lang_parser3ast6pretty10fmt_pretty17h153da241330dcc2aE.exit: ; preds = %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i.i", %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !562974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !562974
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0), !noalias !562979 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  %i.c = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1), !noalias !562980 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.d)
  %i.e = sub i64 %i.b, %i.d
  %i.f = extractvalue { ptr, i64 } %i.c, 0
  %i.g = extractvalue { ptr, i64 } %i.a, 0
  %i.h = tail call i32 @memcmp(ptr %i.g, ptr %i.f, i64 %..i), !noalias !562981 ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = icmp eq i32 %i.h, 0
  %spec.store.select.i = select i1 %i.j, i64 %i.e, i64 %i.i
  %i.k = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i, i64 0)
  ret i8 %i.k
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN79_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..fmt..Display$GT$3fmt17hb3e33a24e8926132E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(20) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  store ptr %i.f, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.g, ptr %i.h, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1597c5e36024d8d6E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.i, align 8, !nonnull !19, !noundef !19
  %.val = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !562984
  store ptr @122, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.j = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !562984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !562984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.j
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !35, !noundef !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noundef !19 ; 2 uses
  %i.i = icmp ule i64 %i.h, %i.d                  ; 2 uses
  %i.j = sub nuw i64 %i.d, %i.h
  %spec.select = select i1 %i.i, i64 %i.j, i64 undef
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.k = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.b ] ; 3 uses
  %.sroa.7.0 = phi i64 [ undef, %._crit_edge ], [ %spec.select, %bb.b ]
  %.sroa.024.0 = phi i1 [ false, %._crit_edge ], [ %i.i, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !19
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %2, i64 448) ; 2 uses
  %i.o = add i64 %i.n, -48                        ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit", label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.q = shl nuw i64 %i.o, 1
  %.sroa.0.0.i22 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.q)
  %invariant.op = add i64 %2, -1
  %.sroa.0.0.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 range(i64 1, -9223372036854775807) %1, i64 16) ; 5 uses
  %.reass = add i64 %.sroa.0.0.i.i.i.i.i, %invariant.op ; 2 uses
  %i.r = icmp ult i64 %.reass, %2
  %i.s = sub i64 0, %.sroa.0.0.i.i.i.i.i
  %i.t = and i64 %.reass, %i.s
  br label %bb.e

bb.e:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h7a02229a0aae9bbbE.exit.thread.i", %bb.d
  %i.u = phi i64 [ %i.a, %bb.d ], [ %.pre40, %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h7a02229a0aae9bbbE.exit.thread.i" ]
  %.sroa.027.0 = phi i64 [ %.sroa.0.0.i22, %bb.d ], [ %i.ae, %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h7a02229a0aae9bbbE.exit.thread.i" ] ; 5 uses
  %i.v = load i64, ptr %i.b, align 8, !noalias !563005 ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1
  %i.x = icmp ult i64 %2, %i.v
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e, %bb.f
  %.not.i.i.i.old = icmp ult i64 %.sroa.027.0, %.sroa.0.0.i
  br i1 %.not.i.i.i.old, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit", label %._crit_edge.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.y = icmp uge i64 %.sroa.027.0, %2
  %i.z = icmp ult i64 %i.v, 448
  %or.cond.i.i.i = and i1 %i.y, %i.z
  br i1 %or.cond.i.i.i, label %bb.g, label %._crit_edge.i

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.l, align 8, !noalias !563005, !nonnull !19, !noundef !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !563005, !noundef !19
  %i.ad = icmp ne i64 %i.ac, 0
  %.not.i.i.i = icmp ult i64 %.sroa.027.0, 448
  %or.cond37 = select i1 %i.ad, i1 %.not.i.i.i, i1 false
  br i1 %or.cond37, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit", label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g, %._crit_edge.i
  %i.ae = lshr i64 %.sroa.027.0, 1
  br i1 %i.r, label %bb.h, label %bb.i, !prof !20

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.af = tail call noundef i64 @_ZN7bumpalo24allocation_size_overflow17he37753b0ea3e9ab5E(), !noalias !563006
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i, %bb.h
  %.sroa.08.0.i.i.i.i = phi i64 [ %i.af, %bb.h ], [ %i.t, %._crit_edge.i.i.i ]
  %.sroa.0.0.i24.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.08.0.i.i.i.i, i64 %.sroa.027.0) ; 4 uses
  %i.ag = icmp ult i64 %.sroa.0.0.i24.i.i.i.i, 4096
  br i1 %i.ag, label %.thread.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = add i64 %.sroa.0.0.i24.i.i.i.i, 64
  %i.ai = add i64 %.sroa.0.0.i24.i.i.i.i, 4159    ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  br i1 %i.aj, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit", label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.ak = and i64 %i.ai, -4096
  %i.al = add i64 %i.ak, -64
  br label %bb.l

.thread.i.i.i.i:                                  ; preds = %bb.i
  %i.am = add nuw nsw i64 %.sroa.0.0.i24.i.i.i.i, 63
  %i.an = tail call range(i64 51, 65) i64 @llvm.ctlz.i64(i64 %i.am, i1 true)
  %i.ao = lshr i64 -1, %i.an
  %i.ap = add nsw i64 %i.ao, -63
  br label %bb.l

bb.l:                                             ; preds = %.thread.i.i.i.i, %bb.k
  %.sroa.02.126.i.i.i.i = phi i64 [ %i.ap, %.thread.i.i.i.i ], [ %i.al, %bb.k ] ; 7 uses
  %i.aq = add i64 %.sroa.02.126.i.i.i.i, 48       ; 3 uses
  %i.ar = icmp ult i64 %.sroa.7.0, %.sroa.02.126.i.i.i.i
  %or.cond.not.i.i.i.i = select i1 %.sroa.024.0, i1 %i.ar, i1 false
  br i1 %or.cond.not.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h7a02229a0aae9bbbE.exit.thread.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.aq, i64 noundef %.sroa.0.0.i.i.i.i.i), !noalias !563007
  br i1 %i.as, label %bb.n, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h7a02229a0aae9bbbE.exit.thread.i"

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !563007
  %i.at = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.aq, i64 noundef %.sroa.0.0.i.i.i.i.i) #54, !noalias !563007 ; 4 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h7a02229a0aae9bbbE.exit.thread.i", label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hd7b25994e78d4637E.exit

"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h7a02229a0aae9bbbE.exit.thread.i": ; preds = %bb.n, %bb.m, %bb.l
  %.pre40 = load i64, ptr %0, align 8, !range !35, !noalias !563005
  br label %bb.e

_ZN4core4iter6traits8iterator8Iterator8try_fold17hd7b25994e78d4637E.exit: ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.02.126.i.i.i.i ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !563007, !noundef !19
  %i.ay = add i64 %i.ax, %.sroa.02.126.i.i.i.i
  store ptr %i.at, ptr %i.av, align 8, !noalias !563007
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !563007
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %i.aq, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !563007
  %.sroa.617.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.k, ptr %.sroa.617.0..sroa_idx.i.i.i.i.i, align 8, !noalias !563007
  %.sroa.718.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  store ptr %i.av, ptr %.sroa.718.0..sroa_idx.i.i.i.i.i, align 8, !noalias !563007
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i64 %i.ay, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !563007
  store ptr %i.av, ptr %i.l, align 8
  %i.az = tail call i8 @llvm.ucmp.i8.i64(i64 range(i64 1, -9223372036854775807) %1, i64 1)
  switch i8 %i.az, label %bb.o [
    i8 -1, label %bb.r
    i8 0, label %bb.p
    i8 1, label %bb.q
  ]

bb.o:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17hd7b25994e78d4637E.exit
  unreachable

bb.p:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17hd7b25994e78d4637E.exit
  %i.ba = add i64 %1, -1
  %i.bb = add i64 %i.ba, %2                       ; 2 uses
  %i.bc = icmp uge i64 %i.bb, %2
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = sub i64 0, %1
  %i.be = and i64 %i.bb, %i.bd                    ; 2 uses
  %i.bf = icmp ugt i64 %i.be, %.sroa.02.126.i.i.i.i
  br i1 %i.bf, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit", label %bb.s

bb.q:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17hd7b25994e78d4637E.exit
  %i.bg = add i64 %1, -1                          ; 2 uses
  %i.bh = add i64 %2, %i.bg                       ; 2 uses
  %i.bi = icmp uge i64 %i.bh, %2
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = sub i64 0, %1
  %i.bk = and i64 %i.bh, %i.bj                    ; 2 uses
  %i.bl = ptrtoint ptr %i.av to i64
  %i.bm = and i64 %i.bg, %i.bl                    ; 2 uses
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr i8, ptr %i.av, i64 %i.bn  ; 2 uses
  %i.bp = sub i64 %.sroa.02.126.i.i.i.i, %i.bm
  %i.bq = icmp ult ptr %i.bo, %i.at
  %i.br = icmp ugt i64 %i.bk, %i.bp
  %or.cond.i = or i1 %i.bq, %i.br
  br i1 %or.cond.i, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit", label %bb.s

bb.r:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17hd7b25994e78d4637E.exit
end_hunk_3
