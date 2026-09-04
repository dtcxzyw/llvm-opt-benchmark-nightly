Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/cookie-84685c1c06e17ab0.cookie.812c9487578305d5-cgu.0?download=true
inline.NumInlined: 677
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZN4core3ptr35drop_in_place$LT$cookie..Cookie$GT$17h847c2d0f7fbc3d51E":bb.a

"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit29": ; preds = %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit25", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i28"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val19 = load i64, ptr %i.f, align 8, !range !8, !noundef !5 ; 2 uses
  %switch34 = icmp sgt i64 %.val19, 0
  br i1 %switch34, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i", label %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i": ; preds = %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit29"
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val20 = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20, i64 noundef %.val19, i64 noundef range(i64 1, -9223372036854775807) 1) #30
  br label %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit"

"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit": ; preds = %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit29", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val15 = load i64, ptr %i.h, align 8, !range !8, !noundef !5 ; 2 uses
  %switch35 = icmp sgt i64 %.val15, 0
  br i1 %switch35, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i30", label %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit31"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i30": ; preds = %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val16 = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16, i64 noundef %.val15, i64 noundef range(i64 1, -9223372036854775807) 1) #30
  br label %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit31"

"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit31": ; preds = %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i30"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr39drop_in_place$LT$time..error..Error$GT$17h40561b753aada673E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !119, !noundef !5 ; 4 uses
  %i.b = icmp ne i64 %i.a, 13
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -7
  %i.d = icmp samesign ugt i64 %i.a, 6
  %i.e = select i1 %i.d, i64 %i.c, i64 6
  switch i64 %i.e, label %"_ZN4core3ptr86drop_in_place$LT$time..error..invalid_format_description..InvalidFormatDescription$GT$17hdd31f2417cd421dfE.exit" [
    i64 2, label %bb.b
    i64 6, label %bb.c
  ]

"_ZN4core3ptr86drop_in_place$LT$time..error..invalid_format_description..InvalidFormatDescription$GT$17hdd31f2417cd421dfE.exit": ; preds = %bb.e, %bb.d, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i", %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.f, align 8, !range !9, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.g, align 8
  tail call fastcc void @"_ZN4core3ptr48drop_in_place$LT$time..error..format..Format$GT$17h9e3ed27b33238eedE"(i64 %.val, ptr %.val1)
  br label %"_ZN4core3ptr86drop_in_place$LT$time..error..invalid_format_description..InvalidFormatDescription$GT$17hdd31f2417cd421dfE.exit"

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  switch i64 %i.a, label %"_ZN4core3ptr86drop_in_place$LT$time..error..invalid_format_description..InvalidFormatDescription$GT$17hdd31f2417cd421dfE.exit" [
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i": ; preds = %bb.e, %bb.d
  %.val.sink.i = phi i64 [ %.val2.i, %bb.d ], [ %.val.i, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !120, !nonnull !5, !noundef !5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !120
  br label %"_ZN4core3ptr86drop_in_place$LT$time..error..invalid_format_description..InvalidFormatDescription$GT$17hdd31f2417cd421dfE.exit"

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.i, align 8, !alias.scope !120 ; 2 uses
  %i.j = icmp eq i64 %.val2.i, 0
  br i1 %i.j, label %"_ZN4core3ptr86drop_in_place$LT$time..error..invalid_format_description..InvalidFormatDescription$GT$17hdd31f2417cd421dfE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i"

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.k, align 8, !alias.scope !120 ; 2 uses
  %i.l = icmp eq i64 %.val.i, 0
  br i1 %i.l, label %"_ZN4core3ptr86drop_in_place$LT$time..error..invalid_format_description..InvalidFormatDescription$GT$17hdd31f2417cd421dfE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr48drop_in_place$LT$time..error..format..Format$GT$17h9e3ed27b33238eedE"(i64 %.0.val, ptr %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %.0.val, label %default.unreachable [
    i64 0, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h1c00e17c3fd695b8E.exit"
    i64 1, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h1c00e17c3fd695b8E.exit"
    i64 2, label %bb.i
    i64 3, label %bb.b
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = ptrtoint ptr %.8.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable3 [
    i64 2, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h1c00e17c3fd695b8E.exit"
    i64 3, label %bb.c
    i64 0, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h1c00e17c3fd695b8E.exit"
    i64 1, label %bb.d
  ], !prof !121

default.unreachable3:                             ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult ptr %.8.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h1c00e17c3fd695b8E.exit"

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %.8.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i.i = load ptr, ptr %i.d, align 8   ; 5 uses
  %i.e = getelementptr i8, ptr %.8.val, i64 7
  %.val1.i.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !5, !align !10, !noundef !5 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !11, !invariant.load !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !122, !invariant.load !5 ; 2 uses
  %i.k = icmp ult i64 %i.j, -9223372036854775807
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17ha57f1fb506be6b0fE.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.j) #30
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17ha57f1fb506be6b0fE.exit.i.i.i.i"

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !11, !invariant.load !5 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !122, !invariant.load !5 ; 2 uses
  %i.r = icmp ult i64 %i.q, -9223372036854775807
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %bb.h, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i": ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.q) #30
  br label %bb.h

bb.h:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i", %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #30
  resume { ptr, i32 } %i.m

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17ha57f1fb506be6b0fE.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #30
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h1c00e17c3fd695b8E.exit"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h1c00e17c3fd695b8E.exit": ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17ha57f1fb506be6b0fE.exit.i.i.i.i", %bb.c, %bb.b, %bb.b, %bb.a, %bb.a, %bb.i
  ret void

bb.i:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 24, i64 noundef 8) #30
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h1c00e17c3fd695b8E.exit"
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E"(i64 %.0.val, ptr %.8.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %.0.val, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i" [
    i64 -9223372036854775806, label %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit"
    i64 -9223372036854775807, label %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit"
    i64 -9223372036854775808, label %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit"
    i64 0, label %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit"
  ]

"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit": ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i"
  ret void

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i": ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.0.val, i64 noundef range(i64 1, -9223372036854775807) 1) #30
  br label %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hd2a6a64c3ab7c2a9E.exit"
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hd80e8504149a2e96E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2658175e6c2606deE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9da4697cde790be4E.exit.i.i"
  %i.c = phi i64 [ %i.aq, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9da4697cde790be4E.exit.i.i" ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9da4697cde790be4E.exit.i.i" ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !149, !noundef !5 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit12.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit12.i.i.i.i.i": ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !149, !noundef !5
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit14.i.i.i.i.i", label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit14.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit12.i.i.i.i.i"
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !149, !noundef !5
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit16.i.i.i.i.i", label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit16.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit14.i.i.i.i.i"
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !149, !noundef !5
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit16.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit14.i.i.i.i.i", %bb.b, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit12.i.i.i.i.i"
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit16.i.i.i.i.i" ], [ %i.u, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit14.i.i.i.i.i" ], [ %i.l, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit12.i.i.i.i.i" ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit16.i.i.i.i.i" ], [ %i.ab, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit14.i.i.i.i.i" ], [ %i.q, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit12.i.i.i.i.i" ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9da4697cde790be4E.exit.i.i"
    i32 13, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9da4697cde790be4E.exit.i.i"
    i32 12, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9da4697cde790be4E.exit.i.i"
    i32 11, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9da4697cde790be4E.exit.i.i"
    i32 10, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9da4697cde790be4E.exit.i.i"
    i32 9, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9da4697cde790be4E.exit.i.i"
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i.i, 127
  br i1 %i.ar, label %bb.e, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2658175e6c2606deE.exit"

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2658175e6c2606deE.exit" [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.au = zext i1 %i.at to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h9d79c9c752c8cebfE.exit.i.i.i"

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.aw = zext i1 %i.av to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h9d79c9c752c8cebfE.exit.i.i.i"

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !150, !noundef !5
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h9d79c9c752c8cebfE.exit.i.i.i"

bb.i:                                             ; preds = %bb.e
  %i.bb = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !150, !noundef !5
  %i.bf = lshr i8 %i.be, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h9d79c9c752c8cebfE.exit.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h9d79c9c752c8cebfE.exit.i.i.i": ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ]
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bg, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9da4697cde790be4E.exit.i.i", label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2658175e6c2606deE.exit"

"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9da4697cde790be4E.exit.i.i": ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h9d79c9c752c8cebfE.exit.i.i.i", %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2658175e6c2606deE.exit": ; preds = %bb.e, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h9d79c9c752c8cebfE.exit.i.i.i", %bb.d, %bb.a
  %.sroa.4.121 = phi ptr [ %0, %bb.a ], [ %.sroa.4.0, %bb.d ], [ %.sroa.4.0, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h9d79c9c752c8cebfE.exit.i.i.i" ], [ %.sroa.4.0, %bb.e ] ; 6 uses
  %.sroa.18.019 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.d ], [ %i.aq, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h9d79c9c752c8cebfE.exit.i.i.i" ], [ %i.aq, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h9d79c9c752c8cebfE.exit.i.i.i" ], [ %i.c, %bb.e ] ; 3 uses
  %i.bi = icmp eq ptr %.sroa.4.121, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2658175e6c2606deE.exit", %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2658175e6c2606deE.exit" ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !151, !noundef !5 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h26856080b6c79d00E.exit17.i.i.i.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h26856080b6c79d00E.exit17.i.i.i.i.i": ; preds = %.lr.ph.i.i4
  %i.bn = icmp ne ptr %.sroa.4.121, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !151, !noundef !5 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h26856080b6c79d00E.exit19.i.i.i.i.i", label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h26856080b6c79d00E.exit19.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h26856080b6c79d00E.exit17.i.i.i.i.i"
  %i.bu = icmp ne ptr %.sroa.4.121, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !151, !noundef !5 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h26856080b6c79d00E.exit21.i.i.i.i.i", label %bb.l

bb.k:                                             ; preds = %bb.l, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h26856080b6c79d00E.exit17.i.i.i.i.i"
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h26856080b6c79d00E.exit17.i.i.i.i.i" ]
  %.sroa.04.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h26856080b6c79d00E.exit17.i.i.i.i.i" ]
  %i.cb = shl nuw nsw i32 %.sroa.04.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h26856080b6c79d00E.exit21.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h26856080b6c79d00E.exit19.i.i.i.i.i"
  %i.cf = icmp ne ptr %.sroa.4.121, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !151, !noundef !5
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h26856080b6c79d00E.exit21.i.i.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h26856080b6c79d00E.exit19.i.i.i.i.i"
  %i.co = phi ptr [ %i.cg, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h26856080b6c79d00E.exit21.i.i.i.i.i" ], [ %i.bv, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h26856080b6c79d00E.exit19.i.i.i.i.i" ]
  %.sroa.04.1.i.i.i.i.i = phi i32 [ %i.cn, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h26856080b6c79d00E.exit21.i.i.i.i.i" ], [ %i.by, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h26856080b6c79d00E.exit19.i.i.i.i.i" ]
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
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h9d79c9c752c8cebfE.exit.i.i.i6"

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h9d79c9c752c8cebfE.exit.i.i.i6"

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !152, !noundef !5
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h9d79c9c752c8cebfE.exit.i.i.i6"

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !152, !noundef !5
  %i.dj = lshr i8 %i.di, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h9d79c9c752c8cebfE.exit.i.i.i6"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h9d79c9c752c8cebfE.exit.i.i.i6": ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h9d79c9c752c8cebfE.exit.i.i.i6", %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.121, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h9d79c9c752c8cebfE.exit.i.i.i6", %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.121 to i64
  %i.do = sub i64 %.sroa.18.019, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9da4697cde790be4E.exit.i.i", %bb.t, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2658175e6c2606deE.exit", %bb.u
  %.sroa.0.042 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2658175e6c2606deE.exit" ], [ %.sroa.0.0, %bb.t ], [ 0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9da4697cde790be4E.exit.i.i" ] ; 2 uses
  %.sroa.01.1 = phi i64 [ %i.dp, %bb.u ], [ %.sroa.18.019, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h2658175e6c2606deE.exit" ], [ %.sroa.18.019, %bb.t ], [ 0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9da4697cde790be4E.exit.i.i" ]
  %i.dq = sub nuw i64 %.sroa.01.1, %.sroa.0.042
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.042
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h60662d48bfc71a04E(i64 %.0.val, i64 %.8.val, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !175
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !175
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !175
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !175
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !175
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !175
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.g = load i64, ptr %0, align 8, !range !7, !alias.scope !176, !noalias !177, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.i = load i64, ptr %i.h, align 8, !range !7, !alias.scope !180, !noalias !181, !noundef !5
  %cond.i.i.i = icmp eq i64 %i.i, -9223372036854775807
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !180, !noalias !181, !noundef !5 ; 8 uses
  br i1 %cond.i.i.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.g, -9223372036854775807
  %i.m = load i64, ptr %i.j, align 8, !alias.scope !180, !noalias !181, !noundef !5 ; 8 uses
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @86, i64 noundef 95, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #31, !noalias !182
  unreachable

bb.d:                                             ; preds = %bb.b
  %.sroa.05.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.05.0.i.i.i = load ptr, ptr %.sroa.05.0.in.i.i.i, align 8, !alias.scope !183, !noalias !184, !nonnull !5, !noundef !5 ; 4 uses
  %.sroa.56.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.56.0.i.i.i = load i64, ptr %.sroa.56.0.in.i.i.i, align 8, !alias.scope !183, !noalias !184, !noundef !5 ; 5 uses
  %.not.i.i.i.i = icmp ugt i64 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not5.i.i.i.i = icmp ult i64 %i.m, %.sroa.56.0.i.i.i
  br i1 %.not5.i.i.i.i, label %bb.h, label %.split.i.i.i.i

bb.g:                                             ; preds = %bb.h, %.split.i.i.i.i, %bb.e
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i", label %bb.i

.split.i.i.i.i:                                   ; preds = %bb.f
  %i.p = icmp eq i64 %i.m, %.sroa.56.0.i.i.i
  br i1 %i.p, label %bb.g, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 %i.m
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !185, !noalias !182, !noundef !5
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.g, label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not6.i.i.i.i = icmp ult i64 %i.l, %.sroa.56.0.i.i.i
  br i1 %.not6.i.i.i.i, label %bb.j, label %.split7.i.i.i.i

.split7.i.i.i.i:                                  ; preds = %bb.i
  %i.t = icmp eq i64 %i.l, %.sroa.56.0.i.i.i
  br i1 %i.t, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i", label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 %i.l
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !185, !noalias !182, !noundef !5
  %i.w = icmp sgt i8 %i.v, -65
  br i1 %i.w, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i", label %bb.k

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i": ; preds = %bb.j, %.split7.i.i.i.i, %bb.g
  %i.x = sub nuw i64 %i.l, %i.m
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 %i.m
  br label %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h2440b2d9050a933bE.exit"

bb.k:                                             ; preds = %bb.j, %.split7.i.i.i.i, %bb.h, %.split.i.i.i.i, %bb.d
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.05.0.i.i.i, i64 noundef %.sroa.56.0.i.i.i, i64 noundef %i.m, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #31, !noalias !182
  unreachable

bb.l:                                             ; preds = %bb.a
  %.sroa.03.0.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !180, !noalias !181, !nonnull !5, !noundef !5
  br label %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h2440b2d9050a933bE.exit"

"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h2440b2d9050a933bE.exit": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i", %bb.l
  %.sroa.03.0.pn.i.i.i = phi ptr [ %.sroa.03.0.i.i.i, %bb.l ], [ %i.y, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i" ]
  %.sroa.54.0.pn.i.i.i = phi i64 [ %i.l, %bb.l ], [ %i.x, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i" ]
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h82890d9d82872bf2E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.03.0.pn.i.i.i, i64 noundef %.sroa.54.0.pn.i.i.i), !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !186
  store i8 -1, ptr %i.a, align 1, !noalias !186
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h82890d9d82872bf2E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !186
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !188
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !188
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !188 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !188
  %i.z = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !188, !noundef !5
  %i.aa = shl i64 %i.z, 56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !188, !noundef !5
  %i.ad = or i64 %i.aa, %i.ac                     ; 2 uses
  %i.ae = xor i64 %i.ad, %.sroa.22.0.copyload.i.i ; 3 uses
  %i.af = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.ag = add i64 %i.ae, %.sroa.10.0.copyload.i.i ; 2 uses
  %i.ah = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.ai = xor i64 %i.ah, %i.af                    ; 3 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 16)
  %i.ak = xor i64 %i.aj, %i.ag                    ; 3 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 32)
  %i.am = add i64 %i.ag, %i.ai                    ; 3 uses
  %i.an = add i64 %i.ak, %i.al                    ; 2 uses
  %i.ao = tail call i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 17)
  %i.ap = xor i64 %i.am, %i.ao                    ; 3 uses
  %i.aq = tail call i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 21)
  %i.ar = xor i64 %i.aq, %i.an                    ; 3 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32)
  %i.at = xor i64 %i.an, %i.ad
  %i.au = xor i64 %i.as, 255
  %i.av = add i64 %i.at, %i.ap                    ; 3 uses
  %i.aw = add i64 %i.ar, %i.au                    ; 2 uses
  %i.ax = tail call i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 13)
  %i.ay = xor i64 %i.av, %i.ax                    ; 3 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 16)
  %i.ba = xor i64 %i.az, %i.aw                    ; 3 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 32)
  %i.bc = add i64 %i.ay, %i.aw                    ; 3 uses
  %i.bd = add i64 %i.ba, %i.bb                    ; 2 uses
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 17)
  %i.bf = xor i64 %i.bc, %i.be                    ; 3 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 21)
  %i.bh = xor i64 %i.bg, %i.bd                    ; 3 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 32)
  %i.bj = add i64 %i.bf, %i.bd                    ; 3 uses
  %i.bk = add i64 %i.bh, %i.bi                    ; 2 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 13)
  %i.bm = xor i64 %i.bl, %i.bj                    ; 3 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 16)
  %i.bo = xor i64 %i.bn, %i.bk                    ; 3 uses
  %i.bp = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 32)
  %i.bq = add i64 %i.bm, %i.bk                    ; 3 uses
  %i.br = add i64 %i.bo, %i.bp                    ; 2 uses
  %i.bs = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 17)
  %i.bt = xor i64 %i.bs, %i.bq                    ; 3 uses
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 21)
  %i.bv = xor i64 %i.bu, %i.br                    ; 3 uses
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 32)
  %i.bx = add i64 %i.bt, %i.br
  %i.by = add i64 %i.bv, %i.bw                    ; 2 uses
  %i.bz = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 13)
  %i.ca = xor i64 %i.bz, %i.bx                    ; 3 uses
  %i.cb = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 16)
  %i.cc = xor i64 %i.cb, %i.by                    ; 2 uses
  %i.cd = add i64 %i.ca, %i.by                    ; 3 uses
  %i.ce = tail call i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 17)
  %i.cf = tail call i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 21)
  %i.cg = tail call i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 32)
  %i.ch = xor i64 %i.cf, %i.ce
  %i.ci = xor i64 %i.ch, %i.cg
  %i.cj = xor i64 %i.ci, %i.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.cj
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h72b89cf391d96e10E(i64 %.0.val, i64 %.8.val, ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !206
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !206
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !206
end_hunk_0
