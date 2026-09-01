Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.12?download=true
inline.NumInlined: 7127
inline.NumDeleted: 3581
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 18
begin_hunk_0_@"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf948a7ff68f7fbe5E":bb.a
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he194c4ee4c8c4c41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr114drop_in_place$LT$alloc..vec..Vec$LT$$LP$anki..card..CardId$C$anki..notes..NoteId$C$anki..decks..DeckId$RP$$GT$$GT$17h368fe6a778db9e18E.exit7.i" unwind label %bb.c

"_ZN4core3ptr114drop_in_place$LT$alloc..vec..Vec$LT$$LP$anki..card..CardId$C$anki..notes..NoteId$C$anki..decks..DeckId$RP$$GT$$GT$17h368fe6a778db9e18E.exit7.i._crit_edge": ; preds = %"_ZN4core3ptr114drop_in_place$LT$alloc..vec..Vec$LT$$LP$anki..card..CardId$C$anki..notes..NoteId$C$anki..decks..DeckId$RP$$GT$$GT$17h368fe6a778db9e18E.exit7.i", %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

"_ZN4core3ptr124drop_in_place$LT$$u5b$alloc..vec..Vec$LT$$LP$anki..card..CardId$C$anki..notes..NoteId$C$anki..decks..DeckId$RP$$GT$$u5d$$GT$17had19c402c73fdb84E.exit": ; preds = %"_ZN4core3ptr114drop_in_place$LT$alloc..vec..Vec$LT$$LP$anki..card..CardId$C$anki..notes..NoteId$C$anki..decks..DeckId$RP$$GT$$GT$17h368fe6a778db9e18E.exit.i", %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf9750d99160565faE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  tail call fastcc void @"_ZN4core3ptr55drop_in_place$LT$$u5b$serde_json..value..Value$u5d$$GT$17hb0f0bae7e49c56d7E"(ptr noalias noundef nonnull align 8 %i.b, i64 noundef %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe9dc18425126275E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN4core3ptr95drop_in_place$LT$$u5b$$LP$anki..notetype..NotetypeId$C$alloc..string..String$C$u32$RP$$u5d$$GT$17h0b8cb7359b5b7362E.exit", label %.lr.ph

"_ZN4core3ptr85drop_in_place$LT$$LP$anki..notetype..NotetypeId$C$alloc..string..String$C$u32$RP$$GT$17hba015634f8fa529eE.exit.i": ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %"_ZN4core3ptr95drop_in_place$LT$$u5b$$LP$anki..notetype..NotetypeId$C$alloc..string..String$C$u32$RP$$u5d$$GT$17h0b8cb7359b5b7362E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4core3ptr85drop_in_place$LT$$LP$anki..notetype..NotetypeId$C$alloc..string..String$C$u32$RP$$GT$17hba015634f8fa529eE.exit.i"
  %.sroa.0.0.i1 = phi i64 [ %i.h, %"_ZN4core3ptr85drop_in_place$LT$$LP$anki..notetype..NotetypeId$C$alloc..string..String$C$u32$RP$$GT$17hba015634f8fa529eE.exit.i" ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %"_ZN4core3ptr85drop_in_place$LT$$LP$anki..notetype..NotetypeId$C$alloc..string..String$C$u32$RP$$GT$17hba015634f8fa529eE.exit.i" unwind label %bb.b

"_ZN4core3ptr85drop_in_place$LT$$LP$anki..notetype..NotetypeId$C$alloc..string..String$C$u32$RP$$GT$17hba015634f8fa529eE.exit7.i": ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %"_ZN4core3ptr85drop_in_place$LT$$LP$anki..notetype..NotetypeId$C$alloc..string..String$C$u32$RP$$GT$17hba015634f8fa529eE.exit7.i._crit_edge", label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %"_ZN4core3ptr85drop_in_place$LT$$LP$anki..notetype..NotetypeId$C$alloc..string..String$C$u32$RP$$GT$17hba015634f8fa529eE.exit7.i._crit_edge", label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %"_ZN4core3ptr85drop_in_place$LT$$LP$anki..notetype..NotetypeId$C$alloc..string..String$C$u32$RP$$GT$17hba015634f8fa529eE.exit7.i"
  %.sroa.0.1.i2 = phi i64 [ %i.i, %"_ZN4core3ptr85drop_in_place$LT$$LP$anki..notetype..NotetypeId$C$alloc..string..String$C$u32$RP$$GT$17hba015634f8fa529eE.exit7.i" ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.m)
          to label %"_ZN4core3ptr85drop_in_place$LT$$LP$anki..notetype..NotetypeId$C$alloc..string..String$C$u32$RP$$GT$17hba015634f8fa529eE.exit7.i" unwind label %bb.c

"_ZN4core3ptr85drop_in_place$LT$$LP$anki..notetype..NotetypeId$C$alloc..string..String$C$u32$RP$$GT$17hba015634f8fa529eE.exit7.i._crit_edge": ; preds = %"_ZN4core3ptr85drop_in_place$LT$$LP$anki..notetype..NotetypeId$C$alloc..string..String$C$u32$RP$$GT$17hba015634f8fa529eE.exit7.i", %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

"_ZN4core3ptr95drop_in_place$LT$$u5b$$LP$anki..notetype..NotetypeId$C$alloc..string..String$C$u32$RP$$u5d$$GT$17h0b8cb7359b5b7362E.exit": ; preds = %"_ZN4core3ptr85drop_in_place$LT$$LP$anki..notetype..NotetypeId$C$alloc..string..String$C$u32$RP$$GT$17hba015634f8fa529eE.exit.i", %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hff85b00d65e64c2eE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN4core3ptr48drop_in_place$LT$$u5b$anki..notes..Note$u5d$$GT$17h2c0bc88f9fbc595eE.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %"_ZN4core3ptr48drop_in_place$LT$$u5b$anki..notes..Note$u5d$$GT$17h2c0bc88f9fbc595eE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [136 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..notes..Note$GT$17h908338ab8d65b1f3E"(ptr noalias noundef align 8 dereferenceable(136) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [136 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..notes..Note$GT$17h908338ab8d65b1f3E"(ptr noalias noundef align 8 dereferenceable(136) %i.m) #35
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

"_ZN4core3ptr48drop_in_place$LT$$u5b$anki..notes..Note$u5d$$GT$17h2c0bc88f9fbc595eE.exit": ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN74_$LT$alloc..vec..Vec$LT$i64$GT$$u20$as$u20$anki..types..IntoNewtypeVec$GT$12into_newtype17h3d83c4cea9afb89aE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.f = icmp ult i64 %i.e, 1152921504606846976
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %i.h = load i64, ptr %1, align 8, !range !133, !noundef !3
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h622305e407a0ba63E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN74_$LT$alloc..vec..Vec$LT$i64$GT$$u20$as$u20$anki..types..IntoNewtypeVec$GT$12into_newtype17h939934aa7be4b5ffE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.f = icmp ult i64 %i.e, 1152921504606846976
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %i.h = load i64, ptr %1, align 8, !range !133, !noundef !3
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h7207a9dec45a715bE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN76_$LT$thread_local..ThreadLocal$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1582f2243d1f05dbE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(512) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.backedge
  %.sroa.0.0.idx16 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add, %.backedge ] ; 2 uses
  %.sroa.7.015 = phi i64 [ 0, %bb.a ], [ %i.a, %.backedge ] ; 4 uses
  %.sroa.0.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx16
  %.sroa.0.0.add = add nuw nsw i64 %.sroa.0.0.idx16, 8 ; 2 uses
  %i.a = add nuw nsw i64 %.sroa.7.015, 1
  %i.b = load ptr, ptr %.sroa.0.0.ptr, align 8, !noundef !3 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.backedge, label %bb.d

bb.c:                                             ; preds = %.backedge
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = shl nuw i64 1, %.sroa.7.015              ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h14e98f2669731bb3E.exit.i.i"
  %.sroa.0.09.i.i = phi i64 [ %i.f, %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h14e98f2669731bb3E.exit.i.i" ], [ 0, %bb.d ] ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.09.i.i ; 2 uses
  %i.f = add nuw i64 %.sroa.0.09.i.i, 1           ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load i8, ptr %i.g, align 1, !range !322, !alias.scope !11423, !noundef !3
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h14e98f2669731bb3E.exit.i.i"

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hefdd7e9991492e1aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h14e98f2669731bb3E.exit.i.i" unwind label %bb.f

"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h14e98f2669731bb3E.exit.i.i": ; preds = %bb.e, %.lr.ph.i.i
  %i.k = icmp eq i64 %i.f, %i.d
  br i1 %i.k, label %"_ZN4core3ptr156drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$u5d$$GT$$GT$17h86d30e47ad8d2839E.exit", label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.f, %i.d
  br i1 %i.m, label %.loopexit.i, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.f, %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h14e98f2669731bb3E.exit8.i.i"
  %.sroa.0.110.i.i = phi i64 [ %i.o, %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h14e98f2669731bb3E.exit8.i.i" ], [ %i.f, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.110.i.i ; 2 uses
  %i.o = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.q = load i8, ptr %i.p, align 1, !range !322, !alias.scope !11430, !noundef !3
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h14e98f2669731bb3E.exit8.i.i"

bb.g:                                             ; preds = %.lr.ph12.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hefdd7e9991492e1aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h14e98f2669731bb3E.exit8.i.i" unwind label %bb.h

"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h14e98f2669731bb3E.exit8.i.i": ; preds = %bb.g, %.lr.ph12.i.i
  %i.t = icmp eq i64 %i.o, %i.d
  br i1 %i.t, label %.loopexit.i, label %.lr.ph12.i.i

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

.loopexit.i:                                      ; preds = %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h14e98f2669731bb3E.exit8.i.i", %bb.f
  %i.v = shl nuw i64 40, %.sroa.7.015
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef range(i64 1, 0) %i.v, i64 noundef 8) #26
  resume { ptr, i32 } %i.l

"_ZN4core3ptr156drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$u5d$$GT$$GT$17h86d30e47ad8d2839E.exit": ; preds = %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h14e98f2669731bb3E.exit.i.i"
  %i.w = shl nuw i64 40, %.sroa.7.015
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef range(i64 1, 0) %i.w, i64 noundef 8) #26
  br label %.backedge

.backedge:                                        ; preds = %"_ZN4core3ptr156drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$u5d$$GT$$GT$17h86d30e47ad8d2839E.exit", %bb.b
  %i.x = icmp eq i64 %.sroa.0.0.add, 504
  br i1 %i.x, label %bb.c, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN76_$LT$thread_local..ThreadLocal$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h79f834e58b5cc5b2E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(512) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.backedge
  %.sroa.0.0.idx12 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add, %.backedge ] ; 2 uses
  %.sroa.7.011 = phi i64 [ 0, %bb.a ], [ %i.a, %.backedge ] ; 2 uses
  %.sroa.0.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx12
  %.sroa.0.0.add = add nuw nsw i64 %.sroa.0.0.idx12, 8 ; 2 uses
  %i.a = add nuw nsw i64 %.sroa.7.011, 1
  %i.b = load ptr, ptr %.sroa.0.0.ptr, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.backedge, label %bb.d

bb.c:                                             ; preds = %.backedge
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = shl nuw i64 1, %.sroa.7.011
  tail call fastcc void @"_ZN4core3ptr168drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$tracing_core..metadata..LevelFilter$GT$$GT$$GT$$u5d$$GT$$GT$17h7ba365859efa8b08E"(ptr nonnull %i.b, i64 %i.d)
  br label %.backedge

.backedge:                                        ; preds = %bb.d, %bb.b
  %i.e = icmp eq i64 %.sroa.0.0.add, 504
  br i1 %i.e, label %bb.c, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN78_$LT$sharded_slab..pool..Ref$LT$T$C$C$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c20aafbb3190cedE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef zeroext i1 @"_ZN12sharded_slab4page4slot17Slot$LT$T$C$C$GT$7release17h4a5a3b8b4b22ef8eE"(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !50, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  tail call fastcc void @"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$19clear_after_release17hcfce8b6514c923aeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d, i64 noundef %i.f)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN79_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$std..io..copy..BufferedWriterSpec$GT$9copy_from17h1f76e5bff4265b3cE"(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(240) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN61_$LT$zip..read..ZipFile$LT$R$GT$$u20$as$u20$std..io..Read$GT$11read_to_end17hd4fb7175ee6c1ff7E"(ptr noalias noundef nonnull align 8 dereferenceable(240) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN81_$LT$sharded_slab..shard..Array$LT$T$C$C$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cd2d69d236c6281E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph.preheader, label %bb.b, !prof !77

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %i.b, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200) #37, !noalias !11435
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %.sroa.0.04 = phi ptr [ %i.h, %.backedge ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 8
  %i.i = load atomic ptr, ptr %.sroa.0.04 acquire, align 8 ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.backedge, label %bb.c

._crit_edge:                                      ; preds = %.backedge
  ret void

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11441)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val5.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !11444, !noundef !3 ; 2 uses
  %i.l = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.l, label %"_ZN4core3ptr81drop_in_place$LT$alloc..boxed..Box$LT$$u5b$sharded_slab..page..Local$u5d$$GT$$GT$17h6bf377c2d49271e8E.exit.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val4.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !11444, !nonnull !3, !noundef !3
  %i.m = shl nuw nsw i64 %.val5.i.i.i, 3
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef range(i64 1, 0) %i.m, i64 noundef 8) #26, !noalias !11444
  br label %"_ZN4core3ptr81drop_in_place$LT$alloc..boxed..Box$LT$$u5b$sharded_slab..page..Local$u5d$$GT$$GT$17h6bf377c2d49271e8E.exit.i.i.i"

"_ZN4core3ptr81drop_in_place$LT$alloc..boxed..Box$LT$$u5b$sharded_slab..page..Local$u5d$$GT$$GT$17h6bf377c2d49271e8E.exit.i.i.i": ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !11444, !nonnull !3, !noundef !3 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.val1.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !11444, !noundef !3 ; 5 uses
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$$u5b$sharded_slab..page..Shared$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$u5d$$GT$17h9277142f683a841dE"(ptr noalias noundef nonnull align 8 %.val.i.i.i, i64 noundef %.val1.i.i.i)
          to label %bb.g unwind label %bb.e, !noalias !11444

bb.e:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..boxed..Box$LT$$u5b$sharded_slab..page..Local$u5d$$GT$$GT$17h6bf377c2d49271e8E.exit.i.i.i"
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.q, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = mul nuw nsw i64 %.val1.i.i.i, 40
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.r, i64 noundef 8) #26, !noalias !11444
  br label %bb.i

bb.g:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..boxed..Box$LT$$u5b$sharded_slab..page..Local$u5d$$GT$$GT$17h6bf377c2d49271e8E.exit.i.i.i"
  %i.s = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.s, label %"_ZN4core3ptr210drop_in_place$LT$alloc..boxed..Box$LT$sharded_slab..sync..inner..alloc..Track$LT$sharded_slab..shard..Shard$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$$GT$$GT$17h342b9e585a56cabbE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = mul nuw nsw i64 %.val1.i.i.i, 40
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.t, i64 noundef 8) #26, !noalias !11444
  br label %"_ZN4core3ptr210drop_in_place$LT$alloc..boxed..Box$LT$sharded_slab..sync..inner..alloc..Track$LT$sharded_slab..shard..Shard$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$$GT$$GT$17h342b9e585a56cabbE.exit"

bb.i:                                             ; preds = %bb.f, %bb.e
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 40, i64 noundef 8) #26
  resume { ptr, i32 } %i.p

"_ZN4core3ptr210drop_in_place$LT$alloc..boxed..Box$LT$sharded_slab..sync..inner..alloc..Track$LT$sharded_slab..shard..Shard$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$$GT$$GT$17h342b9e585a56cabbE.exit": ; preds = %bb.g, %bb.h
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 40, i64 noundef 8) #26
  br label %.backedge

.backedge:                                        ; preds = %"_ZN4core3ptr210drop_in_place$LT$alloc..boxed..Box$LT$sharded_slab..sync..inner..alloc..Track$LT$sharded_slab..shard..Shard$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$$GT$$GT$17h342b9e585a56cabbE.exit", %.lr.ph
  %i.u = icmp eq ptr %.sroa.0.04, %i.g
  br i1 %i.u, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN82_$LT$snowflake..process_unique_id..ProcessUniqueId$u20$as$u20$core..fmt..Debug$GT$3fmt17h999bf59d3af01720E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
end_hunk_0
