Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_web-0c8e37cb5d35d0c0.actix_web.c3fc4f4c49456d5e-cgu.0?download=true
inline.NumInlined: 5794
inline.NumDeleted: 2637
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 48
begin_hunk_0_@"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$9put_value17hc1254bf6f6f07e01E":bb.a
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.9

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.9: ; preds = %bb.ch, %.noexc26.9, %bb.cf, %bb.ce
  %i.ie = atomicrmw xchg ptr %i.ho, i32 0 release, align 4, !noalias !2778
  %i.if = icmp eq i32 %i.ie, 2
  br i1 %i.if, label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h7c61f83c47737781E.exit.sink.split.i22.9", label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h554fa374ba162c79E.exit28.9", !prof !33

"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h7c61f83c47737781E.exit.sink.split.i22.9": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.9
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.ho)
          to label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h554fa374ba162c79E.exit28.9" unwind label %.loopexit

"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h554fa374ba162c79E.exit28.9": ; preds = %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h7c61f83c47737781E.exit.sink.split.i22.9", %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.9, %bb.cb
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17hb1eb98b5ef001ac2E"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %1)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h6148a319184bffcdE.exit" unwind label %bb.f

.loopexit:                                        ; preds = %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h7c61f83c47737781E.exit.sink.split.i22.9", %bb.cg, %bb.cd, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h7c61f83c47737781E.exit.sink.split.i22.8", %bb.bz, %bb.bw, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h7c61f83c47737781E.exit.sink.split.i22.7", %bb.bs, %bb.bp, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h7c61f83c47737781E.exit.sink.split.i22.6", %bb.bl, %bb.bi, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h7c61f83c47737781E.exit.sink.split.i22.5", %bb.be, %bb.bb, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h7c61f83c47737781E.exit.sink.split.i22.4", %bb.ax, %bb.au, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h7c61f83c47737781E.exit.sink.split.i22.3", %bb.aq, %bb.an, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h7c61f83c47737781E.exit.sink.split.i22.2", %bb.aj, %bb.ag, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h7c61f83c47737781E.exit.sink.split.i22.1", %bb.ac, %bb.z, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h7c61f83c47737781E.exit.sink.split.i22", %bb.i, %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.loopexit.split-lp:                               ; preds = %bb.d, %bb.j, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ci:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h6148a319184bffcdE"(ptr %1) #53
          to label %common.resume unwind label %bb.s
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN19brotli_decompressor5state47BrotliState$LT$AllocU8$C$AllocU32$C$AllocHC$GT$32BrotliStateCleanupAfterMetablock17h0a85e0dffdf81d81E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(2600) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1840 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !25, !align !35, !noundef !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1848 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !25 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8
  store i64 0, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h236c64835e689ca2E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.b, i64 noundef %i.d, i64 noundef 1) #46
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h236c64835e689ca2E.exit"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h236c64835e689ca2E.exit": ; preds = %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1856 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !25, !align !35, !noundef !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1864 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !25 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8
  store i64 0, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h236c64835e689ca2E.exit2", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h236c64835e689ca2E.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.g, i64 noundef %i.i, i64 noundef 1) #46
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h236c64835e689ca2E.exit2"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h236c64835e689ca2E.exit2": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h236c64835e689ca2E.exit", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1792 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !25, !align !35, !noundef !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1800 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !25 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.k, align 8
  store i64 0, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h236c64835e689ca2E.exit4", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i3"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i3": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h236c64835e689ca2E.exit2"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.l, i64 noundef %i.n, i64 noundef 1) #46
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h236c64835e689ca2E.exit4"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h236c64835e689ca2E.exit4": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h236c64835e689ca2E.exit2", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i3"
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1952 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2785)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2785, !nonnull !25, !align !54, !noundef !25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !2785, !noundef !25 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.p, align 8, !alias.scope !2785
  store i64 0, ptr %i.r, align 8, !alias.scope !2785
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h563a3ff32b032f40E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h236c64835e689ca2E.exit4"
  %i.u = shl nuw nsw i64 %i.s, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.q, i64 noundef %i.u, i64 noundef 4) #46, !noalias !2785
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h563a3ff32b032f40E.exit.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h563a3ff32b032f40E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h236c64835e689ca2E.exit4"
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !2785, !nonnull !25, !align !55, !noundef !25
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1976 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !2785, !noundef !25 ; 2 uses
  store ptr inttoptr (i64 2 to ptr), ptr %i.v, align 8, !alias.scope !2785
  store i64 0, ptr %i.x, align 8, !alias.scope !2785
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h027d72b8aaf400aaE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h563a3ff32b032f40E.exit.i"
  %i.aa = shl nuw nsw i64 %i.y, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 2 %i.w, i64 noundef %i.aa, i64 noundef 2) #46, !noalias !2785
  br label %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h027d72b8aaf400aaE.exit"

"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h027d72b8aaf400aaE.exit": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h563a3ff32b032f40E.exit.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i"
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1992 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2786)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !2786, !nonnull !25, !align !54, !noundef !25
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2000 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !2786, !noundef !25 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ab, align 8, !alias.scope !2786
  store i64 0, ptr %i.ad, align 8, !alias.scope !2786
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h563a3ff32b032f40E.exit.i6", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i5"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i5": ; preds = %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h027d72b8aaf400aaE.exit"
  %i.ag = shl nuw nsw i64 %i.ae, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.ac, i64 noundef %i.ag, i64 noundef 4) #46, !noalias !2786
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h563a3ff32b032f40E.exit.i6"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h563a3ff32b032f40E.exit.i6": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i5", %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h027d72b8aaf400aaE.exit"
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2008 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !2786, !nonnull !25, !align !55, !noundef !25
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2016 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !2786, !noundef !25 ; 2 uses
  store ptr inttoptr (i64 2 to ptr), ptr %i.ah, align 8, !alias.scope !2786
  store i64 0, ptr %i.aj, align 8, !alias.scope !2786
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h027d72b8aaf400aaE.exit8", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i7"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i7": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h563a3ff32b032f40E.exit.i6"
  %i.am = shl nuw nsw i64 %i.ak, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 2 %i.ai, i64 noundef %i.am, i64 noundef 2) #46, !noalias !2786
  br label %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h027d72b8aaf400aaE.exit8"

"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h027d72b8aaf400aaE.exit8": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h563a3ff32b032f40E.exit.i6", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i7"
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2032 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2787)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !2787, !nonnull !25, !align !54, !noundef !25
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2040 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !2787, !noundef !25 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.an, align 8, !alias.scope !2787
  store i64 0, ptr %i.ap, align 8, !alias.scope !2787
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h563a3ff32b032f40E.exit.i10", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i9"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i9": ; preds = %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h027d72b8aaf400aaE.exit8"
  %i.as = shl nuw nsw i64 %i.aq, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.ao, i64 noundef %i.as, i64 noundef 4) #46, !noalias !2787
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h563a3ff32b032f40E.exit.i10"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h563a3ff32b032f40E.exit.i10": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i9", %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h027d72b8aaf400aaE.exit8"
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !2787, !nonnull !25, !align !55, !noundef !25
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !2787, !noundef !25 ; 2 uses
  store ptr inttoptr (i64 2 to ptr), ptr %i.at, align 8, !alias.scope !2787
  store i64 0, ptr %i.av, align 8, !alias.scope !2787
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h027d72b8aaf400aaE.exit12", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i11"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i11": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h563a3ff32b032f40E.exit.i10"
  %i.ay = shl nuw nsw i64 %i.aw, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 2 %i.au, i64 noundef %i.ay, i64 noundef 2) #46, !noalias !2787
  br label %"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h027d72b8aaf400aaE.exit12"

"_ZN19brotli_decompressor7huffman42HuffmanTreeGroup$LT$AllocU32$C$AllocHC$GT$5reset17h027d72b8aaf400aaE.exit12": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h563a3ff32b032f40E.exit.i10", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i11"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 -7, 3) i32 @_ZN19brotli_decompressor6decode15ReadHuffmanCode17h4fa6924e811541b3E(i32 noundef %0, i32 noundef %1, ptr noalias noundef nonnull align 2 %2, i64 noundef %3, i64 noundef range(i64 -2147483648, 4294967296) %4, ptr noalias nofree noundef writeonly align 4 captures(address_is_null) dereferenceable_or_null(4) %5, ptr noalias noundef nonnull align 8 dereferenceable(2600) %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7, i64 noundef range(i64 0, 9) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [4 x i8], align 4                 ; 8 uses
  %i.d = alloca [4 x i8], align 4                 ; 8 uses
  %i.e = alloca [4 x i8], align 4                 ; 8 uses
  %i.f = alloca [4 x i8], align 4                 ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 6 uses
  %i.h = alloca [4 x i8], align 4                 ; 6 uses
  %i.i = and i32 %0, 2047
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 2328 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 2256 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 2260 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 2204 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 1872 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 1880 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 2302 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 1696 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 1936 ; 21 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 27 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 2252 ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 2240 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 2236 ; 4 uses
  %i.w = add nsw i32 %i.i, -1
  %i.x = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.w, i1 false)
  %i.y = sub nuw nsw i32 32, %i.x
  %.sroa.016.144.i = getelementptr inbounds nuw i8, ptr %6, i64 258
  %.pre = load i8, ptr %i.j, align 8, !range !56
  switch i8 %.pre, label %default.unreachable245 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.s
    i8 4, label %bb.t
    i8 5, label %bb.af
  ]

bb.b:                                             ; preds = %.preheader64.15
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.id
  store i16 -1, ptr %i.z, align 2
  store i32 0, ptr %i.t, align 4
  store i32 8, ptr %i.u, align 8
  store i32 0, ptr %i.k, align 8
  store i32 0, ptr %i.v, align 4
  store i32 32768, ptr %i.l, align 4
  store i8 5, ptr %i.j, align 8
  br label %bb.af

.loopexit63.loopexit:                             ; preds = %._crit_edge, %._crit_edge42.i
  store i8 3, ptr %i.j, align 8
  br label %bb.s

bb.c:                                             ; preds = %bb.g
  store i32 0, ptr %i.m, align 4
  store i8 2, ptr %i.j, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.ak
  store i32 32, ptr %i.l, align 4
  store i32 0, ptr %i.k, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.q, i8 0, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.p, i8 0, i64 18, i1 false)
  store i8 4, ptr %i.j, align 8
  br label %bb.t

bb.e:                                             ; preds = %bb.ak
  store i8 1, ptr %i.j, align 8
  br label %bb.g

default.unreachable245:                           ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_ZN19brotli_decompressor10bit_reader18BrotliSafeReadBits17h7a2d02b9c7a27b35E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i32 noundef 2, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7, i64 noundef %8)
  br i1 %i.aa, label %bb.ak, label %_ZN19brotli_decompressor6decode24ReadSimpleHuffmanSymbols17he7a1f56d5a835b87E.exit

bb.g:                                             ; preds = %bb.e, %bb.a
  %i.ab = tail call noundef zeroext i1 @_ZN19brotli_decompressor10bit_reader18BrotliSafeReadBits17h7a2d02b9c7a27b35E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i32 noundef 2, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7, i64 noundef %8)
  br i1 %i.ab, label %bb.c, label %bb.al

bb.h:                                             ; preds = %bb.c, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2800)
  %i.ac = load i32, ptr %i.m, align 4, !alias.scope !2800, !noalias !2801, !noundef !25 ; 2 uses
  %i.ad = load i32, ptr %i.t, align 4, !alias.scope !2800, !noalias !2801, !noundef !25 ; 3 uses
  %i.ae = zext i32 %i.ac to i64                   ; 4 uses
  %i.af = zext i32 %i.ad to i64                   ; 3 uses
  %i.ag = add nuw nsw i64 %i.af, 1                ; 6 uses
  %i.ah = icmp samesign uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i32 %i.ad, 720
  %or.cond.i = and i1 %i.ai, %i.ah
  br i1 %or.cond.i, label %bb.j, label %bb.i, !prof !2802

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ae, i64 noundef %i.ag, i64 noundef 720, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #52, !noalias !2803
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ag
  %i.ak = icmp samesign eq i64 %i.ag, %i.ae
  br i1 %i.ak, label %._crit_edge42.i, label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %bb.j
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ae ; 2 uses
  %.sroa.015.136.i = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.r, %.lr.ph41.i
  %.sroa.015.139.i = phi ptr [ %.sroa.015.136.i, %.lr.ph41.i ], [ %.sroa.015.1.i, %bb.r ] ; 3 uses
  %.sroa.03.038.i = phi i32 [ %i.ac, %.lr.ph41.i ], [ %i.bd, %bb.r ] ; 2 uses
  %.sroa.015.037.i = phi ptr [ %i.al, %.lr.ph41.i ], [ %.sroa.015.139.i, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2803
  store i32 0, ptr %i.g, align 4, !noalias !2803
  %i.am = call noundef zeroext i1 @_ZN19brotli_decompressor10bit_reader18BrotliSafeReadBits17h7a2d02b9c7a27b35E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i32 noundef %i.y, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7, i64 noundef range(i64 0, 9) %8)
  br i1 %i.am, label %bb.q, label %bb.p, !prof !29

._crit_edge42.i:                                  ; preds = %bb.r, %bb.j
  %.idx.i = shl nuw nsw i64 %i.af, 1              ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i
  %i.ao = icmp eq i32 %i.ad, 0
  br i1 %i.ao, label %.loopexit63.loopexit, label %.lr.ph49.i.preheader

.lr.ph49.i.preheader:                             ; preds = %._crit_edge42.i
  %9 = getelementptr i8, ptr %6, i64 %.idx.i
  %scevgep178 = getelementptr i8, ptr %9, i64 258
  %i.ap = add nsw i64 %.idx.i, -2
  %i.aq = lshr exact i64 %i.ap, 1
  %i.ar = add nuw nsw i64 %.idx.i, 2
  br label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %._crit_edge, %.lr.ph49.i.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph49.i.preheader ], [ %i.as, %._crit_edge ] ; 3 uses
  %.sroa.016.147.i = phi ptr [ %.sroa.016.144.i, %.lr.ph49.i.preheader ], [ %.sroa.016.1.i, %._crit_edge ] ; 3 uses
  %.sroa.016.045.i = phi ptr [ %i.s, %.lr.ph49.i.preheader ], [ %.sroa.016.147.i, %._crit_edge ]
  %i.as = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv, %i.ag
  br i1 %exitcond, label %bb.l, label %bb.m, !prof !33

bb.l:                                             ; preds = %.lr.ph49.i
  %i.at = add nuw nsw i64 %i.af, 2
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.at, i64 noundef %i.ag, i64 noundef 720, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #52
  unreachable

bb.m:                                             ; preds = %.lr.ph49.i
  %.idx = shl nuw nsw i64 %i.as, 1                ; 2 uses
  %i.au = icmp eq i64 %.idx, %i.ar
  br i1 %i.au, label %._crit_edge, label %.lr.ph285

.lr.ph285:                                        ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %i.aw = load i16, ptr %.sroa.016.045.i, align 2, !alias.scope !2800, !noalias !2801, !noundef !25
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i284, i64 2 ; 2 uses
  %i.ax = icmp eq ptr %.sroa.017.1.i, %scevgep178
  br i1 %i.ax, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %.lr.ph285, %bb.n
  %.sroa.017.0.i284 = phi ptr [ %i.av, %.lr.ph285 ], [ %.sroa.017.1.i, %bb.n ] ; 2 uses
  %i.ay = load i16, ptr %.sroa.017.0.i284, align 2, !alias.scope !2800, !noalias !2801, !noundef !25
  %i.az = icmp eq i16 %i.aw, %i.ay
  br i1 %i.az, label %_ZN19brotli_decompressor6decode24ReadSimpleHuffmanSymbols17he7a1f56d5a835b87E.exit, label %bb.n

._crit_edge:                                      ; preds = %bb.n, %bb.m
  %i.ba = icmp eq ptr %.sroa.016.147.i, %i.an
  %.sroa.016.1.idx.i = select i1 %i.ba, i64 0, i64 2
  %.sroa.016.1.i = getelementptr inbounds nuw i8, ptr %.sroa.016.147.i, i64 %.sroa.016.1.idx.i
  %exitcond180 = icmp eq i64 %indvars.iv, %i.aq
  br i1 %exitcond180, label %.loopexit63.loopexit, label %.lr.ph49.i

bb.p:                                             ; preds = %bb.k
  store i32 %.sroa.03.038.i, ptr %i.m, align 4, !alias.scope !2800, !noalias !2801
  store i8 2, ptr %i.j, align 8, !alias.scope !2800, !noalias !2801
  br label %.loopexit29.i

bb.q:                                             ; preds = %bb.k
  %i.bb = load i32, ptr %i.g, align 4, !noalias !2803, !noundef !25 ; 2 uses
  %.not24.i = icmp ult i32 %i.bb, %1
  br i1 %.not24.i, label %bb.r, label %.loopexit29.i

.loopexit29.i:                                    ; preds = %bb.q, %bb.p
  %.sroa.0.2.i = phi i32 [ 2, %bb.p ], [ -4, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2803
  br label %_ZN19brotli_decompressor6decode24ReadSimpleHuffmanSymbols17he7a1f56d5a835b87E.exit

bb.r:                                             ; preds = %bb.q
  %i.bc = trunc i32 %i.bb to i16
  store i16 %i.bc, ptr %.sroa.015.037.i, align 2, !alias.scope !2800, !noalias !2801
  %i.bd = add i32 %.sroa.03.038.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2803
  %i.be = icmp eq ptr %.sroa.015.139.i, %i.aj     ; 2 uses
  %.sroa.015.1.idx.i = select i1 %i.be, i64 0, i64 2
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.139.i, i64 %.sroa.015.1.idx.i
  br i1 %i.be, label %._crit_edge42.i, label %bb.k

bb.s:                                             ; preds = %.loopexit63.loopexit, %bb.a
  %i.bf = load i32, ptr %i.t, align 4, !noundef !25 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 3
  br i1 %i.bg, label %bb.am, label %bb.ap

bb.t:                                             ; preds = %bb.d, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2804)
  %i.bh = load i32, ptr %i.m, align 4, !alias.scope !2804, !noalias !2805, !noundef !25 ; 3 uses
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = icmp ugt i32 %i.bh, 18
  br i1 %i.bj, label %bb.v, label %bb.u, !prof !33

bb.u:                                             ; preds = %bb.t
  %i.bk = load i32, ptr %i.l, align 4, !alias.scope !2804, !noalias !2805, !noundef !25 ; 2 uses
  %i.bl = load i32, ptr %i.k, align 8, !alias.scope !2804, !noalias !2805, !noundef !25 ; 2 uses
  %i.bm = icmp eq i32 %i.bh, 18
  br i1 %i.bm, label %.loopexit.i, label %.lr.ph.i

bb.v:                                             ; preds = %bb.t
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.bi, i64 noundef 18, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @244) #52, !noalias !2806
  unreachable

.lr.ph.i:                                         ; preds = %bb.u, %bb.ac
  %.sroa.02.040.i = phi i32 [ %.sroa.02.1.i, %bb.ac ], [ %i.bl, %bb.u ] ; 3 uses
  %.sroa.05.039.i = phi i32 [ %.sroa.05.1.i, %bb.ac ], [ %i.bk, %bb.u ] ; 3 uses
  %.sroa.012.0.idx37.i = phi i64 [ %.sroa.012.0.add.i, %bb.ac ], [ %i.bi, %bb.u ] ; 3 uses
  %.sroa.012.0.ptr.i = getelementptr inbounds nuw i8, ptr @240, i64 %.sroa.012.0.idx37.i
  %.sroa.012.0.add.i = add nuw nsw i64 %.sroa.012.0.idx37.i, 1 ; 2 uses
  %i.bn = load i8, ptr %.sroa.012.0.ptr.i, align 1, !noalias !2806, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2806
  store i32 0, ptr %i.f, align 4, !noalias !2806
  %i.bo = call noundef zeroext i1 @_ZN19brotli_decompressor10bit_reader17BrotliSafeGetBits17hf10373635963314dE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i32 noundef 4, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7, i64 noundef range(i64 0, 9) %8)
  br i1 %i.bo, label %bb.x, label %bb.w, !prof !29

bb.w:                                             ; preds = %.lr.ph.i
  %i.bp = load i32, ptr %i.o, align 8, !alias.scope !2804, !noalias !2805, !noundef !25 ; 4 uses
  %i.bq = sub i32 64, %i.bp
  %i.br = icmp eq i32 %i.bp, 64
  br i1 %i.br, label %bb.z, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.f, align 4, !noalias !2806 ; 2 uses
  %.pre56.i = zext i32 %.pre.i to i64             ; 3 uses
  %i.bs = icmp ult i32 %.pre.i, 16
  br i1 %i.bs, label %..thread.i_crit_edge, label %bb.ab

..thread.i_crit_edge:                             ; preds = %bb.x
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr @241, i64 %.pre56.i
  %.pre183 = load i8, ptr %.phi.trans.insert, align 1, !noalias !2806
  %.pre184 = load i32, ptr %i.o, align 8, !alias.scope !2804, !noalias !2805
  %.pre185 = zext i8 %.pre183 to i32
  br label %.thread.i

bb.y:                                             ; preds = %bb.w
  %i.bt = load i64, ptr %i.n, align 8, !alias.scope !2804, !noalias !2805, !noundef !25
  %i.bu = and i32 %i.bp, 63
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = lshr i64 %i.bt, %i.bv
  %i.bx = and i64 %i.bw, 15
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %storemerge.i = phi i64 [ %i.bx, %bb.y ], [ 0, %bb.w ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr @241, i64 %storemerge.i
  %i.bz = load i8, ptr %i.by, align 1, !noalias !2806, !noundef !25
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %i.cb = icmp ult i32 %i.bq, %i.ca
  br i1 %i.cb, label %bb.aa, label %.thread.i

bb.aa:                                            ; preds = %bb.z
  %indvars55.le.i = trunc i64 %.sroa.012.0.idx37.i to i32
  store i32 %indvars55.le.i, ptr %i.m, align 4, !alias.scope !2804, !noalias !2805
  store i32 %.sroa.02.040.i, ptr %i.k, align 8, !alias.scope !2804, !noalias !2805
  store i32 %.sroa.05.039.i, ptr %i.l, align 4, !alias.scope !2804, !noalias !2805
  store i8 4, ptr %i.j, align 8, !alias.scope !2804, !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2806
  br label %_ZN19brotli_decompressor6decode24ReadSimpleHuffmanSymbols17he7a1f56d5a835b87E.exit

bb.ab:                                            ; preds = %bb.x
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.pre56.i, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #52
  unreachable

.thread.i:                                        ; preds = %..thread.i_crit_edge, %bb.z
  %.pre-phi = phi i32 [ %.pre185, %..thread.i_crit_edge ], [ %i.ca, %bb.z ]
  %i.cc = phi i32 [ %.pre184, %..thread.i_crit_edge ], [ %i.bp, %bb.z ]
  %.pre-phi59.i = phi i64 [ %.pre56.i, %..thread.i_crit_edge ], [ %storemerge.i, %bb.z ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr @242, i64 %.pre-phi59.i
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !2806, !noundef !25 ; 3 uses
  %i.cf = add i32 %i.cc, %.pre-phi
  store i32 %i.cf, ptr %i.o, align 8, !alias.scope !2804, !noalias !2805
  %i.cg = zext i8 %i.bn to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.cg
  store i8 %i.ce, ptr %i.ch, align 1, !alias.scope !2804, !noalias !2805
  %i.ci = shl nuw nsw i64 1, %.pre-phi59.i
  %i.cj = and i64 %i.ci, 4369
  %.not.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.thread.i
  %.sroa.05.1.i = phi i32 [ %.sroa.05.039.i, %.thread.i ], [ %i.co, %bb.ad ] ; 2 uses
  %.sroa.02.1.i = phi i32 [ %.sroa.02.040.i, %.thread.i ], [ %i.cp, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2806
  %i.ck = icmp eq i64 %.sroa.012.0.add.i, 18
  br i1 %i.ck, label %.loopexit.i, label %.lr.ph.i

bb.ad:                                            ; preds = %.thread.i
  %i.cl = and i8 %i.ce, 31
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = lshr i32 32, %i.cm
  %i.co = sub i32 %.sroa.05.039.i, %i.cn          ; 3 uses
  %i.cp = add i32 %.sroa.02.040.i, 1              ; 2 uses
  %i.cq = zext i8 %i.ce to i64
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cq ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2, !alias.scope !2804, !noalias !2805, !noundef !25
  %i.ct = add i16 %i.cs, 1
  store i16 %i.ct, ptr %i.cr, align 2, !alias.scope !2804, !noalias !2805
  %i.cu = add i32 %i.co, -33
  %i.cv = icmp ult i32 %i.cu, -32
  br i1 %i.cv, label %bb.ae, label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2806
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ac, %bb.ae, %bb.u
  %.sroa.05.2.i = phi i32 [ %i.co, %bb.ae ], [ %i.bk, %bb.u ], [ %.sroa.05.1.i, %bb.ac ]
  %.sroa.02.2.i = phi i32 [ %i.cp, %bb.ae ], [ %i.bl, %bb.u ], [ %.sroa.02.1.i, %bb.ac ]
  %i.cw = icmp eq i32 %.sroa.02.2.i, 1
  %i.cx = icmp eq i32 %.sroa.05.2.i, 0
  %or.cond.i39 = select i1 %i.cw, i1 true, i1 %i.cx
  br i1 %or.cond.i39, label %_ZN19brotli_decompressor6decode25ReadCodeLengthCodeLengths17hbd66dbc29e89ee4fE.exit, label %_ZN19brotli_decompressor6decode24ReadSimpleHuffmanSymbols17he7a1f56d5a835b87E.exit

bb.af:                                            ; preds = %bb.b, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2807)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2808
end_hunk_0
begin_hunk_1_@_ZN4core3ops8function6FnOnce9call_once17hd6b1f9856e6f97b4E:bb.a
  store i16 8236, ptr %i.av, align 1, !alias.scope !3487, !noalias !3480
  %.not81.i.1.i = icmp ugt i64 %.val86.i.1.i, %i.ay
  br i1 %.not81.i.1.i, label %bb.t, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h6dd7d96f9656c905E.exit93.i.1.i", !prof !33

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h6dd7d96f9656c905E.exit93.i.1.i": ; preds = %bb.u
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull readonly align 1 %.val85.i.1.i, i64 %.val86.i.1.i, i1 false), !alias.scope !3488, !noalias !3480
  %i.ba = sub i64 %i.y, %i.aw
  %.neg.i = add i64 %i.ba, 9
  %i.bb = add i64 %.neg.i, %.val86.i.1.i
  store i64 %i.bb, ptr %i.ai, align 8, !noalias !3480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3480
  %.val.i = load i64, ptr %i.d, align 8, !noalias !3465 ; 2 uses
  %i.bc = icmp eq i64 %.val.i, 0
  br i1 %i.bc, label %"_ZN9actix_web10middleware8compress26SUPPORTED_ENCODINGS_STRING28_$u7b$$u7b$closure$u7d$$u7d$17h7933084673414e00E.exit", label %bb.v

bb.v:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h6dd7d96f9656c905E.exit93.i.1.i"
  %i.bd = shl nuw i64 %.val.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3465
  br label %"_ZN9actix_web10middleware8compress26SUPPORTED_ENCODINGS_STRING28_$u7b$$u7b$closure$u7d$$u7d$17h7933084673414e00E.exit"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h389a52e23dd74ea8E.exit.i": ; preds = %bb.c, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN9actix_web10middleware8compress26SUPPORTED_ENCODINGS_STRING28_$u7b$$u7b$closure$u7d$$u7d$17h7933084673414e00E.exit": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h6dd7d96f9656c905E.exit93.i.1.i", %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3465
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr100drop_in_place$LT$actix_http..message..MessagePool$LT$actix_http..requests..head..RequestHead$GT$$GT$17h2bbd33dc289bf009E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3505)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3507)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !3508, !nonnull !25, !noundef !25 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !3508, !noundef !25 ; 4 uses
  %i.d = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdde228642f548eeaE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit.i.i.i.i.i"
  %.sroa.0.09.i.i.i.i.i = phi i64 [ %i.f, %"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit.i.i.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.0.09.i.i.i.i.i ; 2 uses
  %i.f = add nuw i64 %.sroa.0.09.i.i.i.i.i, 1     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3510)
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !3511, !noalias !3508, !nonnull !25, !noundef !25 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noalias !3512, !noundef !25
  %i.i = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !noalias !3512
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit.i.i.i.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h23a34c237464c3ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit.i.i.i.i.i" unwind label %bb.c, !noalias !3508

"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit.i.i.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.k = icmp eq i64 %i.f, %.val1.i.i.i
  br i1 %i.k, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdde228642f548eeaE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.f, %.val1.i.i.i
  br i1 %i.m, label %.body.i.i.i, label %.lr.ph12.i.i.i.i.i

.lr.ph12.i.i.i.i.i:                               ; preds = %bb.c, %"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit8.i.i.i.i.i"
  %.sroa.0.110.i.i.i.i.i = phi i64 [ %i.o, %"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit8.i.i.i.i.i" ], [ %i.f, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.0.110.i.i.i.i.i ; 2 uses
  %i.o = add i64 %.sroa.0.110.i.i.i.i.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3514)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !3515, !noalias !3508, !nonnull !25, !noundef !25 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !3516, !noundef !25
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !noalias !3516
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit8.i.i.i.i.i"

bb.d:                                             ; preds = %.lr.ph12.i.i.i.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h23a34c237464c3ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit8.i.i.i.i.i" unwind label %bb.e, !noalias !3508

"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit8.i.i.i.i.i": ; preds = %bb.d, %.lr.ph12.i.i.i.i.i
  %i.t = icmp eq i64 %i.o, %.val1.i.i.i
  br i1 %i.t, label %.body.i.i.i, label %.lr.ph12.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !3508
  unreachable

.body.i.i.i:                                      ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit8.i.i.i.i.i", %bb.c
  %.val4.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !3508 ; 2 uses
  %i.v = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.v, label %"_ZN4core3ptr111drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$$GT$17h8a68113053d6208eE.exit.i.i.i", label %bb.f

bb.f:                                             ; preds = %.body.i.i.i
  %i.w = shl nuw i64 %.val4.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3508
  br label %"_ZN4core3ptr111drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$$GT$17h8a68113053d6208eE.exit.i.i.i"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdde228642f548eeaE.exit.i.i.i": ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit.i.i.i.i.i", %bb.a
  %.val2.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !3508 ; 2 uses
  %i.x = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.x, label %"_ZN4core3ptr131drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$$GT$$GT$17h3cd35f4df863a31aE.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdde228642f548eeaE.exit.i.i.i"
  %i.y = shl nuw i64 %.val2.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3508
  br label %"_ZN4core3ptr131drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$$GT$$GT$17h3cd35f4df863a31aE.exit"

"_ZN4core3ptr111drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$$GT$17h8a68113053d6208eE.exit.i.i.i": ; preds = %bb.f, %.body.i.i.i
  resume { ptr, i32 } %i.l

"_ZN4core3ptr131drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$$GT$$GT$17h3cd35f4df863a31aE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdde228642f548eeaE.exit.i.i.i", %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !25, !noundef !25 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !25
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$u5d$$GT$17h6e97d55e1865f9a8E"(ptr noalias noundef nonnull readonly align 8 %.val, i64 noundef %.val1)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val4 = load i64, ptr %0, align 8              ; 2 uses
  %i.d = icmp eq i64 %.val4, 0
  br i1 %i.d, label %"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %.val4, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit": ; preds = %bb.a
  %.val2 = load i64, ptr %0, align 8              ; 2 uses
  %i.f = icmp eq i64 %.val2, 0
  br i1 %i.f, label %"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit6", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit"
  %i.g = shl nuw i64 %.val2, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit6"

"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit", %bb.d
  ret void

"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr100drop_in_place$LT$smallvec..SmallVec$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$GT$17hb5bcd170c236083eE"(ptr noalias noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3549)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3549, !noundef !25 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 4
  br i1 %i.c, label %bb.d, label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.preheader"

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.preheader": ; preds = %bb.a
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h96dd655d76dcf6b6E.exit", label %.lr.ph

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i": ; preds = %.lr.ph
  %i.e = icmp eq i64 %i.g, %i.b
  br i1 %i.e, label %"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h96dd655d76dcf6b6E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.preheader", %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i"
  %.sroa.0.0.i.i6 = phi i64 [ %i.g, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i" ], [ 0, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.preheader" ] ; 2 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.0.i.i6 ; 4 uses
  %i.g = add nuw nsw i64 %.sroa.0.0.i.i6, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3552)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !3553, !nonnull !25, !align !36, !noundef !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !3554, !nonnull !25, !noundef !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !3553, !noundef !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !3553, !noundef !25
  invoke void %i.j(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.m, i64 noundef %i.o)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i" unwind label %bb.b, !inline_history !4

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i": ; preds = %.lr.ph8
  %i.p = add nuw nsw i64 %.sroa.0.1.i.i7, 1       ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.b
  br i1 %i.q, label %common.resume.i, label %.lr.ph8

bb.b:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = icmp eq i64 %i.g, %i.b
  br i1 %i.s, label %common.resume.i, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.b, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i"
  %.sroa.0.1.i.i7 = phi i64 [ %i.p, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i" ], [ %i.g, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.1.i.i7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3557)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !3558, !nonnull !25, !align !36, !noundef !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !noalias !3559, !nonnull !25, !noundef !25
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !3558, !noundef !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !3558, !noundef !25
  invoke void %i.w(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.z, i64 noundef %i.ab)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i" unwind label %bb.c, !inline_history !4

common.resume.i:                                  ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i", %bb.b, %"_ZN4core3ptr83drop_in_place$LT$alloc..raw_vec..RawVec$LT$http..header..value..HeaderValue$GT$$GT$17h013869506c4cdf8dE.exit.i.i"
  %common.resume.op.i = phi { ptr, i32 } [ %i.au, %"_ZN4core3ptr83drop_in_place$LT$alloc..raw_vec..RawVec$LT$http..header..value..HeaderValue$GT$$GT$17h013869506c4cdf8dE.exit.i.i" ], [ %i.r, %bb.b ], [ %i.r, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i" ]
  resume { ptr, i32 } %common.resume.op.i

bb.c:                                             ; preds = %.lr.ph8
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !3549, !nonnull !25, !noundef !25 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !3549, !noundef !25 ; 4 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17hb1afa31d549dce58E.exit.i", label %.lr.ph10

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.i.i": ; preds = %.lr.ph10
  %i.ah = icmp eq i64 %i.aj, %i.af
  br i1 %i.ah, label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17hb1afa31d549dce58E.exit.i", label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.i.i"
  %.sroa.0.0.i.i.i.i9 = phi i64 [ %i.aj, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.i.i" ], [ 0, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %.sroa.0.0.i.i.i.i9 ; 4 uses
  %i.aj = add i64 %.sroa.0.0.i.i.i.i9, 1          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3562)
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !3563, !noalias !3564, !nonnull !25, !align !36, !noundef !25
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !3565, !nonnull !25, !noundef !25
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !3563, !noalias !3564, !noundef !25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !3563, !noalias !3564, !noundef !25
  invoke void %i.am(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.i.i" unwind label %bb.e, !noalias !3564, !inline_history !4

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i.i.i": ; preds = %.lr.ph12
  %i.as = add i64 %.sroa.0.1.i.i.i.i11, 1         ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.af
  br i1 %i.at, label %"_ZN4core3ptr83drop_in_place$LT$alloc..raw_vec..RawVec$LT$http..header..value..HeaderValue$GT$$GT$17h013869506c4cdf8dE.exit.i.i", label %.lr.ph12

bb.e:                                             ; preds = %.lr.ph10
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = icmp eq i64 %i.aj, %i.af
  br i1 %i.av, label %"_ZN4core3ptr83drop_in_place$LT$alloc..raw_vec..RawVec$LT$http..header..value..HeaderValue$GT$$GT$17h013869506c4cdf8dE.exit.i.i", label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.e, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i.i.i"
  %.sroa.0.1.i.i.i.i11 = phi i64 [ %i.as, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i.i.i" ], [ %i.aj, %bb.e ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %.sroa.0.1.i.i.i.i11 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3568)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !3569, !noalias !3564, !nonnull !25, !align !36, !noundef !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !3570, !nonnull !25, !noundef !25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !3569, !noalias !3564, !noundef !25
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !3569, !noalias !3564, !noundef !25
  invoke void %i.az(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef %i.bc, i64 noundef %i.be)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i.i.i" unwind label %bb.f, !noalias !3564, !inline_history !4

bb.f:                                             ; preds = %.lr.ph12
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !3564
  unreachable

"_ZN4core3ptr83drop_in_place$LT$alloc..raw_vec..RawVec$LT$http..header..value..HeaderValue$GT$$GT$17h013869506c4cdf8dE.exit.i.i": ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i.i.i", %bb.e
  %i.bg = mul nuw i64 %i.b, 40
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3564
  br label %common.resume.i

"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17hb1afa31d549dce58E.exit.i": ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.i.i", %bb.d
  %i.bh = mul nuw i64 %i.b, 40
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3564
  br label %"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h96dd655d76dcf6b6E.exit"

"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h96dd655d76dcf6b6E.exit": ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i", %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.preheader", %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17hb1afa31d549dce58E.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr102drop_in_place$LT$actix_http..responses..response..Response$LT$actix_http..body..boxed..BoxBody$GT$$GT$17hf84e508ecd354de2E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @"_ZN88_$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..drop..Drop$GT$4drop17h492f1b14454eebceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val1.i = load ptr, ptr %i.a, align 8, !alias.scope !3581, !align !36, !noundef !25
  invoke fastcc void @"_ZN4core3ptr115drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$$GT$17h4d23901d290bb6dbE"(ptr %.val1.i) #53
          to label %.body unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !3581, !align !36, !noundef !25 ; 4 uses
  %i.c = icmp eq ptr %.val.i, null
  br i1 %i.c, label %"_ZN4core3ptr67drop_in_place$LT$actix_http..responses..head..BoxedResponseHead$GT$17hc8d578fce76a4571E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..header..map..HeaderMap$GT$17hcb507e043a1063feE"(ptr noalias noundef readonly align 8 dereferenceable(40) %i.d)
          to label %"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$17hfbb0f908de4d6b51E.exit.i.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 64, i64 noundef 8) #46
  br label %.body

"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$17hfbb0f908de4d6b51E.exit.i.i": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 64, i64 noundef 8) #46
  br label %"_ZN4core3ptr67drop_in_place$LT$actix_http..responses..head..BoxedResponseHead$GT$17hc8d578fce76a4571E.exit"

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.e, %bb.e ]
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h90d10699e2023d49E"(ptr noalias noundef align 8 dereferenceable(40) %0) #53
          to label %.body2 unwind label %bb.m

"_ZN4core3ptr67drop_in_place$LT$actix_http..responses..head..BoxedResponseHead$GT$17hc8d578fce76a4571E.exit": ; preds = %"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$17hfbb0f908de4d6b51E.exit.i.i", %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3583)
  %i.g = load i64, ptr %0, align 8, !range !42, !alias.scope !3584, !noundef !25
  switch i64 %i.g, label %bb.g [
    i64 0, label %"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h90d10699e2023d49E.exit"
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %"_ZN4core3ptr67drop_in_place$LT$actix_http..responses..head..BoxedResponseHead$GT$17hc8d578fce76a4571E.exit"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.h, align 8, !alias.scope !3584 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.i, align 8, !alias.scope !3584, !nonnull !25, !align !36, !noundef !25 ; 5 uses
  %i.j = load ptr, ptr %.val1.i.i, align 8, !invariant.load !25, !noalias !3584 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.j(ptr noundef nonnull %.val.i.i)
          to label %bb.i unwind label %bb.j, !noalias !3584

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !40, !invariant.load !25, !noalias !3584 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !41, !invariant.load !25, !noalias !3584 ; 2 uses
  %i.o = icmp ult i64 %i.n, -9223372036854775807
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h90d10699e2023d49E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.n) #46, !noalias !3584
  br label %"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h90d10699e2023d49E.exit"

bb.j:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
end_hunk_1
begin_hunk_2_@"_ZN4core3ptr116drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h5471e69f612b1ab5E":bb.a

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !alias.scope !3801, !nonnull !25, !noundef !25
  %i.m = shl nuw i64 %i.j, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3801
  br label %"_ZN4core3ptr210drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$C$alloc..alloc..Global$GT$$GT$17h7ead71ca19bead81E.exit.i"

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !3801, !noundef !25 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9466523c6fc37befE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !alias.scope !3801, !nonnull !25, !noundef !25
  %i.r = shl nuw i64 %i.o, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3801
  br label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9466523c6fc37befE.exit"

"_ZN4core3ptr210drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$C$alloc..alloc..Global$GT$$GT$17h7ead71ca19bead81E.exit.i": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.h

"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9466523c6fc37befE.exit": ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr120drop_in_place$LT$core..result..Result$LT$actix_web..http..header..accept..Accept$C$actix_http..error..ParseError$GT$$GT$17h2a748ea4736026b3E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !30, !noundef !25 ; 3 uses
  %.not = icmp eq i64 %i.a, -9223372036854775808
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3817)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !3818, !nonnull !25, !noundef !25 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.c, align 8, !alias.scope !3818, !noundef !25 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3819)
  %i.d = icmp eq i64 %.val1.i.i, 0
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fb81217a625be3dE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i"
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.f, %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i" ], [ 0, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %.val.i.i, i64 %.sroa.0.07.i.i.i.i ; 5 uses
  %i.f = add nuw i64 %.sroa.0.07.i.i.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3821)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3822)
  %i.h = load i8, ptr %i.g, align 8, !range !31, !alias.scope !3823, !noalias !3818, !noundef !25
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3824)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !3825, !noalias !3818 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !3825, !noalias !3818, !nonnull !25, !noundef !25
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !3826
  br label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i"

"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i": ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !range !24, !alias.scope !3827, !noalias !3818, !noundef !25 ; 3 uses
  %i.n = icmp ne i64 %.val.i.i.i.i.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.n)
  %or.cond.i4.i.i.i.i.i.i = icmp slt i64 %.val.i.i.i.i.i.i, 1
  br i1 %or.cond.i4.i.i.i.i.i.i, label %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i"
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !3827, !noalias !3818, !nonnull !25, !noundef !25
  %i.p = shl nuw i64 %.val.i.i.i.i.i.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3828
  br label %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i"

"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i": ; preds = %bb.e, %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i"
  %i.q = icmp eq i64 %i.f, %.val1.i.i
  br i1 %i.q, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fb81217a625be3dE.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fb81217a625be3dE.exit.i.i": ; preds = %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i", %bb.b
  %i.r = icmp eq i64 %i.a, 0
  br i1 %i.r, label %"_ZN4core3ptr60drop_in_place$LT$actix_web..http..header..accept..Accept$GT$17hcdf93e5c421de2a9E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fb81217a625be3dE.exit.i.i"
  %i.s = mul nuw i64 %i.a, 96
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3818
  br label %"_ZN4core3ptr60drop_in_place$LT$actix_web..http..header..accept..Accept$GT$17hcdf93e5c421de2a9E.exit"

bb.g:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i8, ptr %i.t, align 8, !range !45, !noundef !25
  %i.u = icmp eq i8 %.val1, 10
  br i1 %i.u, label %bb.h, label %"_ZN4core3ptr60drop_in_place$LT$actix_web..http..header..accept..Accept$GT$17hcdf93e5c421de2a9E.exit"

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.v, align 8, !nonnull !25, !noundef !25
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb517c81c0da2007eE"(ptr nonnull %.val)
  br label %"_ZN4core3ptr60drop_in_place$LT$actix_web..http..header..accept..Accept$GT$17hcdf93e5c421de2a9E.exit"

"_ZN4core3ptr60drop_in_place$LT$actix_web..http..header..accept..Accept$GT$17hcdf93e5c421de2a9E.exit": ; preds = %bb.h, %bb.g, %bb.f, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fb81217a625be3dE.exit.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$$LP$usize$C$regex_lite..string..Captures$RP$$GT$$GT$$GT$17h0ed1703d3055b0afE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !37, !noundef !25 ; 4 uses
  %i.c = icmp eq i64 %i.b, -9223372036854775807
  br i1 %i.c, label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$$LP$usize$C$regex_lite..string..Captures$RP$$GT$$GT$17hb546577af91d8ab6E.exit", label %bb.b

"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$$LP$usize$C$regex_lite..string..Captures$RP$$GT$$GT$17hb546577af91d8ab6E.exit": ; preds = %bb.e, %"_ZN4core3ptr57drop_in_place$LT$regex_lite..string..CaptureLocations$GT$17hc229b9be4f62ffefE.exit.i.i.i", %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3839)
  %i.d = icmp eq i64 %i.b, -9223372036854775808
  br i1 %i.d, label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$$LP$usize$C$regex_lite..string..Captures$RP$$GT$$GT$17hb546577af91d8ab6E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3841)
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %"_ZN4core3ptr57drop_in_place$LT$regex_lite..string..CaptureLocations$GT$17hc229b9be4f62ffefE.exit.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !3842, !nonnull !25, !noundef !25
  %i.g = shl nuw i64 %i.b, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3842
  br label %"_ZN4core3ptr57drop_in_place$LT$regex_lite..string..CaptureLocations$GT$17hc229b9be4f62ffefE.exit.i.i.i"

"_ZN4core3ptr57drop_in_place$LT$regex_lite..string..CaptureLocations$GT$17hc229b9be4f62ffefE.exit.i.i.i": ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3844)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !3845, !nonnull !25, !noundef !25
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !3845
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$$LP$usize$C$regex_lite..string..Captures$RP$$GT$$GT$17hb546577af91d8ab6E.exit"

bb.e:                                             ; preds = %"_ZN4core3ptr57drop_in_place$LT$regex_lite..string..CaptureLocations$GT$17hc229b9be4f62ffefE.exit.i.i.i"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc59de82033cb534eE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$$LP$usize$C$regex_lite..string..Captures$RP$$GT$$GT$17hb546577af91d8ab6E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr123drop_in_place$LT$smallvec..SmallVec$LT$$u5b$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$u3b$$u20$4$u5d$$GT$$GT$17h3e278a4d134c0b1fE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3870)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3870, !noundef !25 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 4
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fefc52bdb8342c9E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit.i.i"
  %.sroa.0.09.i.i = phi i64 [ %i.f, %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit.i.i" ], [ 0, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.09.i.i ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3872)
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !3873, !nonnull !25, !noundef !25 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noalias !3874, !noundef !25
  %i.i = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !noalias !3874
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit.i.i" unwind label %bb.d

"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit.i.i": ; preds = %bb.c, %.lr.ph.i.i
  %i.k = icmp eq i64 %i.f, %i.b
  br i1 %i.k, label %"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fefc52bdb8342c9E.exit", label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = icmp eq i64 %i.f, %i.b
  br i1 %i.m, label %common.resume.i, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.d, %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit8.i.i"
  %.sroa.0.110.i.i = phi i64 [ %i.o, %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit8.i.i" ], [ %i.f, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.110.i.i ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.0.110.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3876)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !3877, !nonnull !25, !noundef !25 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !3878, !noundef !25
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !noalias !3878
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.e, label %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit8.i.i"

bb.e:                                             ; preds = %.lr.ph12.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit8.i.i" unwind label %bb.f

"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit8.i.i": ; preds = %bb.e, %.lr.ph12.i.i
  %i.t = icmp eq i64 %i.o, %i.b
  br i1 %i.t, label %common.resume.i, label %.lr.ph12.i.i

common.resume.i:                                  ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit8.i.i", %"_ZN4core3ptr106drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h86b2a8e939fb5fa4E.exit.i.i", %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.ag, %"_ZN4core3ptr106drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h86b2a8e939fb5fa4E.exit.i.i" ], [ %i.l, %bb.d ], [ %i.l, %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit8.i.i" ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %0, align 8, !alias.scope !3870, !nonnull !25, !noundef !25 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !3870, !noundef !25 ; 4 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %"_ZN4core3ptr99drop_in_place$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17hfdaae455380a616cE.exit.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit.i.i.i.i"
  %.sroa.0.09.i.i.i.i = phi i64 [ %i.aa, %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit.i.i.i.i" ], [ 0, %bb.g ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.0.09.i.i.i.i ; 2 uses
  %i.aa = add nuw i64 %.sroa.0.09.i.i.i.i, 1      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3880)
  %i.ab = load ptr, ptr %i.z, align 8, !alias.scope !3881, !noalias !3882, !nonnull !25, !noundef !25 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !3883, !noundef !25
  %i.ad = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ad, ptr %i.ab, align 8, !noalias !3883
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit.i.i.i.i"

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit.i.i.i.i" unwind label %bb.i, !noalias !3882

"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit.i.i.i.i": ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.af = icmp eq i64 %i.aa, %i.x
  br i1 %i.af, label %"_ZN4core3ptr99drop_in_place$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17hfdaae455380a616cE.exit.i", label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = icmp eq i64 %i.aa, %i.x
  br i1 %i.ah, label %"_ZN4core3ptr106drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h86b2a8e939fb5fa4E.exit.i.i", label %.lr.ph12.i.i.i.i

.lr.ph12.i.i.i.i:                                 ; preds = %bb.i, %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit8.i.i.i.i"
  %.sroa.0.110.i.i.i.i = phi i64 [ %i.aj, %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit8.i.i.i.i" ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.0.110.i.i.i.i ; 2 uses
  %i.aj = add i64 %.sroa.0.110.i.i.i.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3885)
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !3886, !noalias !3882, !nonnull !25, !noundef !25 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !noalias !3887, !noundef !25
  %i.am = add i64 %i.al, -1                       ; 2 uses
  store i64 %i.am, ptr %i.ak, align 8, !noalias !3887
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.j, label %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit8.i.i.i.i"

bb.j:                                             ; preds = %.lr.ph12.i.i.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit8.i.i.i.i" unwind label %bb.k, !noalias !3882

"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit8.i.i.i.i": ; preds = %bb.j, %.lr.ph12.i.i.i.i
  %i.ao = icmp eq i64 %i.aj, %i.x
  br i1 %i.ao, label %"_ZN4core3ptr106drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h86b2a8e939fb5fa4E.exit.i.i", label %.lr.ph12.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !3882
  unreachable

"_ZN4core3ptr106drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h86b2a8e939fb5fa4E.exit.i.i": ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit8.i.i.i.i", %bb.i
  %i.aq = shl nuw i64 %i.b, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3882
  br label %common.resume.i

"_ZN4core3ptr99drop_in_place$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17hfdaae455380a616cE.exit.i": ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit.i.i.i.i", %bb.g
  %i.ar = shl nuw i64 %i.b, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3882
  br label %"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fefc52bdb8342c9E.exit"

"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fefc52bdb8342c9E.exit": ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit.i.i", %bb.b, %"_ZN4core3ptr99drop_in_place$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17hfdaae455380a616cE.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr124drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$bytes..buf..writer..Writer$LT$bytes..bytes_mut..BytesMut$GT$$GT$$GT$17hf12c5366d2b608ebE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !25 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h30edf51303593c6fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb517c81c0da2007eE"(ptr nonnull %.val)
  br label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h30edf51303593c6fE.exit"

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h30edf51303593c6fE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$mime..Mime$GT$$C$actix_http..error..ContentTypeError$GT$$GT$17hfad9d4e4c5aca77dE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !44, !noundef !25 ; 2 uses
  %.not = icmp eq i64 %i.a, 3
  br i1 %.not, label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3896)
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3897)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3898)
  %i.d = load i8, ptr %i.c, align 8, !range !31, !alias.scope !3899, !noundef !25
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3900)
  %.val.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !3901 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.g, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !3901, !nonnull !25, !noundef !25
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !3901
  br label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i"

"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i": ; preds = %bb.e, %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load i64, ptr %i.i, align 8, !range !24, !alias.scope !3902, !noundef !25 ; 3 uses
  %i.j = icmp ne i64 %.val.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.j)
  %or.cond.i4.i.i = icmp slt i64 %.val.i.i, 1
  br i1 %or.cond.i4.i.i, label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !3902, !nonnull !25, !noundef !25
  %i.l = shl nuw i64 %.val.i.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3902
  br label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit"

"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit": ; preds = %bb.f, %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i", %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr126drop_in_place$LT$alloc..rc..RcInner$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17h7f81e99372e4b282E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3905)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !3905, !nonnull !25, !noundef !25 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !3905, !noundef !25
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$u5d$$GT$17h6e97d55e1865f9a8E"(ptr noalias noundef nonnull readonly align 8 %.val.i, i64 noundef %.val1.i)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i" unwind label %bb.b, !noalias !3905

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val4.i = load i64, ptr %i.a, align 8, !alias.scope !3905 ; 2 uses
  %i.e = icmp eq i64 %.val4.i, 0
  br i1 %i.e, label %"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %.val4.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3905
  br label %"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit.i"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i": ; preds = %bb.a
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !3905 ; 2 uses
  %i.g = icmp eq i64 %.val2.i, 0
  br i1 %i.g, label %"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i"
end_hunk_2
begin_hunk_3_@_ZN4core5slice4sort6stable5drift4sort17h04db14e187c5b612E:bb.a
  store <2 x i64> %i.aq, ptr %i.an, align 8, !alias.scope !7115, !noalias !7112
  store <2 x i64> %i.ap, ptr %i.ao, align 8, !alias.scope !7116, !noalias !7114
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !7117, !noalias !7112
  %i.au = load <2 x i64>, ptr %i.as, align 8, !alias.scope !7118, !noalias !7114
  store <2 x i64> %i.au, ptr %i.ar, align 8, !alias.scope !7117, !noalias !7112
  store <2 x i64> %i.at, ptr %i.as, align 8, !alias.scope !7118, !noalias !7114
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.ax = load <2 x i64>, ptr %i.av, align 8, !alias.scope !7119, !noalias !7112
  %i.ay = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !7120, !noalias !7114
  store <2 x i64> %i.ay, ptr %i.av, align 8, !alias.scope !7119, !noalias !7112
  store <2 x i64> %i.ax, ptr %i.aw, align 8, !alias.scope !7120, !noalias !7114
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 2 uses
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !alias.scope !7121, !noalias !7112
  %i.bc = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !7122, !noalias !7114
  store <2 x i64> %i.bc, ptr %i.az, align 8, !alias.scope !7121, !noalias !7112
  store <2 x i64> %i.bb, ptr %i.ba, align 8, !alias.scope !7122, !noalias !7114
  %i.bd = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.ag
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8ae4ef892252429fE.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h56275a2330d02c6bE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8ae4ef892252429fE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ae, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8ae4ef892252429fE.exit" ], [ %i.ac, %bb.n ], [ %i.aa, %bb.m ] ; 2 uses
  %i.be = lshr i64 %.sroa.018.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bg = sub i64 %factor, %i.be
  %i.bh = add i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h56275a2330d02c6bE.exit
  %.sroa.026.0 = phi i8 [ %i.bm, %_ZN4core5slice4sort6stable5drift10create_run17h56275a2330d02c6bE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h56275a2330d02c6bE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bn = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bn, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph65, %_ZN4core5slice4sort6stable5drift13logical_merge17hfc198c9c41949f21E.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.bp, %_ZN4core5slice4sort6stable5drift13logical_merge17hfc198c9c41949f21E.exit ] ; 2 uses
  %.sroa.018.163 = phi i64 [ %.sroa.018.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hfc198c9c41949f21E.exit ] ; 4 uses
  %i.bp = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noundef !25
  %.not29 = icmp ult i8 %i.br, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hfc198c9c41949f21E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.163, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hfc198c9c41949f21E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.164, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hfc198c9c41949f21E.exit ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bt, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bp
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !25 ; 3 uses
  %i.bw = lshr i64 %i.bv, 1                       ; 8 uses
  %i.bx = lshr i64 %.sroa.018.163, 1              ; 6 uses
  %i.by = add nuw i64 %i.bw, %i.bx                ; 4 uses
  %i.bz = sub i64 %.sroa.09.0, %i.by
  %i.ca = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.bz ; 6 uses
  %i.cb = icmp ugt i64 %i.by, %3
  %i.cc = trunc i64 %.sroa.018.163 to i1
  %i.cd = or i64 %i.bv, %.sroa.018.163
  %i.ce = trunc i64 %i.cd to i1
  %or.cond3.i = or i1 %i.cb, %i.ce
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cf = trunc i64 %i.bv to i1
  br i1 %i.cf, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cg = shl i64 %i.by, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hfc198c9c41949f21E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cc, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8c0eaaa980aa594aE.exit35"

bb.v:                                             ; preds = %bb.s
  %i.ch = or i64 %i.bw, 1
  %i.ci = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h74c4a75aa347e4b3E(ptr noalias noundef nonnull align 8 %i.ca, i64 noundef %i.bw, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7095
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8c0eaaa980aa594aE.exit35": ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw [80 x i8], ptr %i.ca, i64 %i.bw
  %i.cn = or i64 %i.bx, 1
  %i.co = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 1
  %i.cr = xor i32 %i.cq, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h74c4a75aa347e4b3E(ptr noalias noundef nonnull align 8 %i.cm, i64 noundef %i.bx, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7095
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8c0eaaa980aa594aE.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7124)
  %i.cs = icmp eq i64 %i.bw, 0
  %i.ct = icmp eq i64 %i.bx, 0
  %or.cond.i = or i1 %i.ct, %i.cs
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h0202e1fd916b2b56E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 range(i64 0, -9223372036854775808) %i.bw) ; 2 uses
  %i.cu = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cu, label %_ZN4core5slice4sort6stable5merge5merge17h0202e1fd916b2b56E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw [80 x i8], ptr %i.ca, i64 %i.bw ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bw, %i.bx  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cv, ptr %i.ca
  %i.cw = mul i64 %.sroa.0.0.i.i36, 80            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.cw, i1 false), !alias.scope !7125
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 %i.cw ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.cy = phi ptr [ %i.dk, %.preheader.i ], [ %i.cx, %bb.y ] ; 2 uses
  %i.cz = phi ptr [ %i.di, %.preheader.i ], [ %i.cv, %bb.y ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dc, %.preheader.i ], [ %i.bo, %bb.y ]
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -80 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.cy, i64 -80 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -80 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cy, i64 -8
  %.val.i.i = load i16, ptr %i.dd, align 8, !alias.scope !7124, !noalias !7126, !noundef !25
  %i.de = getelementptr i8, ptr %i.cz, i64 -8
  %.val10.i.i = load i16, ptr %i.de, align 8, !alias.scope !7123, !noalias !7127, !noundef !25
  %i.df = icmp ult i16 %.val10.i.i, %.val.i.i     ; 3 uses
  %..i.i = select i1 %i.df, ptr %i.da, ptr %i.db
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dc, ptr noundef nonnull align 8 dereferenceable(80) %..i.i, i64 80, i1 false), !alias.scope !7125, !noalias !7128
  %i.dg = xor i1 %i.df, true
  %i.dh = zext i1 %i.dg to i64
  %i.di = getelementptr inbounds nuw [80 x i8], ptr %i.da, i64 %i.dh ; 3 uses
  %i.dj = zext i1 %i.df to i64
  %i.dk = getelementptr inbounds nuw [80 x i8], ptr %i.db, i64 %i.dj ; 3 uses
  %i.dl = icmp eq ptr %i.di, %i.ca
  %i.dm = icmp eq ptr %i.dk, %2
  %or.cond.i.i = select i1 %i.dl, i1 true, i1 %i.dm
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2168033e8543e2f3E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.dn = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %i.ca, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %i.cv, %bb.y ] ; 3 uses
  %i.do = phi ptr [ %i.du, %.lr.ph.i.i ], [ %2, %bb.y ] ; 3 uses
  %i.dp = getelementptr i8, ptr %.sroa.0.02.i.i, i64 72
  %.sroa.0.0.val.i.i = load i16, ptr %i.dp, align 8, !alias.scope !7123, !noalias !7129, !noundef !25
  %i.dq = getelementptr i8, ptr %i.do, i64 72
  %.val.i19.i = load i16, ptr %i.dq, align 8, !alias.scope !7124, !noalias !7130, !noundef !25
  %i.dr = icmp ult i16 %.val.i19.i, %.sroa.0.0.val.i.i ; 3 uses
  %i.ds = xor i1 %i.dr, true
  %spec.select.i.i = select i1 %i.dr, ptr %.sroa.0.02.i.i, ptr %i.do
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dn, ptr noundef nonnull align 8 dereferenceable(80) %spec.select.i.i, i64 80, i1 false), !alias.scope !7125, !noalias !7131
  %i.dt = zext i1 %i.ds to i64
  %i.du = getelementptr inbounds nuw [80 x i8], ptr %i.do, i64 %i.dt ; 3 uses
  %i.dv = zext i1 %i.dr to i64
  %i.dw = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.02.i.i, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 80 ; 2 uses
  %i.dy = icmp ne ptr %i.du, %i.cx
  %i.dz = icmp ne ptr %i.dw, %i.bo
  %or.cond.i20.i = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2168033e8543e2f3E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2168033e8543e2f3E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.di, %.preheader.i ], [ %i.dx, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dk, %.preheader.i ], [ %i.cx, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.du, %.lr.ph.i.i ] ; 2 uses
  %i.ea = ptrtoint ptr %.sroa.7.0.i to i64
  %i.eb = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ec = sub nuw i64 %i.ea, %i.eb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ec, i1 false), !alias.scope !7125, !noalias !7132
  br label %_ZN4core5slice4sort6stable5merge5merge17h0202e1fd916b2b56E.exit

_ZN4core5slice4sort6stable5merge5merge17h0202e1fd916b2b56E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2168033e8543e2f3E.exit.i"
  %i.ed = shl i64 %i.by, 1
  %i.ee = or disjoint i64 %i.ed, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hfc198c9c41949f21E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hfc198c9c41949f21E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h0202e1fd916b2b56E.exit
  %.sroa.0.0.i = phi i64 [ %i.ee, %_ZN4core5slice4sort6stable5merge5merge17h0202e1fd916b2b56E.exit ], [ %i.cg, %bb.t ] ; 2 uses
  %i.ef = icmp ugt i64 %i.bp, 1
  br i1 %i.ef, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.eg = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.eh = lshr i64 %.sroa.023.0, 1
  %i.ei = add i64 %i.eh, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.ej = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ej, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ek = or i64 %1, 1
  %i.el = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ek, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 1
  %i.eo = xor i32 %i.en, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h74c4a75aa347e4b3E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7095
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h196ff358816a25ebE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i111 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i116 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eg, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread114, %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1415f4a45f2afac2E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.p = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.m), !noalias !7183, !inline_history !7136 ; 2 uses
  %.not83 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader51

.preheader51:                                     ; preds = %bb.i
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread114, label %.lr.ph70

.lr.ph:                                           ; preds = %.preheader51, %bb.j
  %.sroa.01.0.i.i66 = phi i64 [ %i.u, %bb.j ], [ 2, %.preheader51 ] ; 4 uses
  %i.q = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %.sroa.01.0.i.i66
  %i.r = getelementptr [96 x i8], ptr %i.m, i64 %.sroa.01.0.i.i66
  %i.s = getelementptr i8, ptr %i.r, i64 -96
  %i.t = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.s), !noalias !7183, !inline_history !7136
  br i1 %i.t, label %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i66, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i, label %.lr.ph

.lr.ph70:                                         ; preds = %.preheader, %bb.k
  %.sroa.01.1.i.i69 = phi i64 [ %i.z, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %.sroa.01.1.i.i69
  %i.w = getelementptr [96 x i8], ptr %i.m, i64 %.sroa.01.1.i.i69
  %i.x = getelementptr i8, ptr %i.w, i64 -96
  %i.y = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.x), !noalias !7183, !inline_history !7136
  br i1 %i.y, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i

bb.k:                                             ; preds = %.lr.ph70
  %i.z = add nuw i64 %.sroa.01.1.i.i69, 1         ; 2 uses
  %exitcond96.not = icmp eq i64 %i.z, %i.l
  br i1 %exitcond96.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i, label %.lr.ph70

_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph70
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i69, %.lr.ph70 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i66, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.aa = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread114: ; preds = %.preheader
  br i1 %.not5.i116, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread: ; preds = %.preheader51
  br i1 %.not5.i111, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1415f4a45f2afac2E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i
  br i1 %i.p, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1415f4a45f2afac2E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i41 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.ab = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he333fed14cbe7c34E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2f1a2d8607cb203cE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7136
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he333fed14cbe7c34E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1415f4a45f2afac2E.exit": ; preds = %.lr.ph.i.i39, %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4649 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread ], [ %.sroa.0.0.i.i112119123, %.lr.ph.i.i39 ]
  %i.ae = shl i64 %.sroa.0.0.i.i4649, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he333fed14cbe7c34E.exit

bb.o:                                             ; preds = %bb.l
  %i.ag = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7184), !noalias !7183
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7185), !noalias !7183
  %.not15.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1415f4a45f2afac2E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread114, %bb.o
  %i.ah = phi i64 [ %i.ag, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread114 ]
  %.sroa.0.0.i.i112119123 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread114 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %.sroa.0.0.i.i112119123
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.bi, %.lr.ph.i.i39 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.aj = xor i64 %.sroa.0.014.i.i, -1
  %i.ak = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 7 uses
  %i.al = getelementptr [96 x i8], ptr %i.ai, i64 %i.aj ; 7 uses
  %i.am = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !7186, !noalias !7187
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !7188, !noalias !7189
  store <2 x i64> %i.an, ptr %i.ak, align 8, !alias.scope !7186, !noalias !7187
  store <2 x i64> %i.am, ptr %i.al, align 8, !alias.scope !7188, !noalias !7189
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !7190, !noalias !7187
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !7191, !noalias !7189
  store <2 x i64> %i.ar, ptr %i.ao, align 8, !alias.scope !7190, !noalias !7187
  store <2 x i64> %i.aq, ptr %i.ap, align 8, !alias.scope !7191, !noalias !7189
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.au = load <2 x i64>, ptr %i.as, align 8, !alias.scope !7192, !noalias !7187
  %i.av = load <2 x i64>, ptr %i.at, align 8, !alias.scope !7193, !noalias !7189
  store <2 x i64> %i.av, ptr %i.as, align 8, !alias.scope !7192, !noalias !7187
  store <2 x i64> %i.au, ptr %i.at, align 8, !alias.scope !7193, !noalias !7189
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %i.ay = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !7194, !noalias !7187
  %i.az = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !7195, !noalias !7189
  store <2 x i64> %i.az, ptr %i.aw, align 8, !alias.scope !7194, !noalias !7187
  store <2 x i64> %i.ay, ptr %i.ax, align 8, !alias.scope !7195, !noalias !7189
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 2 uses
  %i.bc = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !7196, !noalias !7187
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !7197, !noalias !7189
  store <2 x i64> %i.bd, ptr %i.ba, align 8, !alias.scope !7196, !noalias !7187
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !alias.scope !7197, !noalias !7189
end_hunk_3
begin_hunk_4_@_ZN4core5slice4sort6stable5drift4sort17h196ff358816a25ebE:bb.a
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !7199, !noalias !7189
  store <2 x i64> %i.bh, ptr %i.be, align 8, !alias.scope !7198, !noalias !7187
  store <2 x i64> %i.bg, ptr %i.bf, align 8, !alias.scope !7199, !noalias !7189
  %i.bi = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bi, %i.ah
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1415f4a45f2afac2E.exit", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17he333fed14cbe7c34E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1415f4a45f2afac2E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.af, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1415f4a45f2afac2E.exit" ], [ %i.ad, %bb.n ], [ %i.ab, %bb.m ] ; 2 uses
  %i.bj = lshr i64 %.sroa.018.0, 1
  %i.bk = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bl = sub i64 %factor, %i.bj
  %i.bm = add i64 %i.bk, %factor
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = mul i64 %i.bm, %.sroa.0.0
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bp, i1 false)
  %i.br = trunc nuw nsw i64 %i.bq to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17he333fed14cbe7c34E.exit
  %.sroa.026.0 = phi i8 [ %i.br, %_ZN4core5slice4sort6stable5drift10create_run17he333fed14cbe7c34E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17he333fed14cbe7c34E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bs = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bs, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph76, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ec8190475693117E.exit
  %.sroa.02.175 = phi i64 [ %.sroa.02.0, %.lr.ph76 ], [ %i.bu, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ec8190475693117E.exit ] ; 2 uses
  %.sroa.018.174 = phi i64 [ %.sroa.018.0, %.lr.ph76 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ec8190475693117E.exit ] ; 4 uses
  %i.bu = add i64 %.sroa.02.175, -1               ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !25
  %.not29 = icmp ult i8 %i.bw, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h6ec8190475693117E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.174, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ec8190475693117E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.175, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ec8190475693117E.exit ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.by, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bu
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !25 ; 3 uses
  %i.cb = lshr i64 %i.ca, 1                       ; 8 uses
  %i.cc = lshr i64 %.sroa.018.174, 1              ; 6 uses
  %i.cd = add nuw i64 %i.cb, %i.cc                ; 4 uses
  %i.ce = sub i64 %.sroa.09.0, %i.cd
  %i.cf = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.ce ; 6 uses
  %i.cg = icmp ugt i64 %i.cd, %3
  %i.ch = trunc i64 %.sroa.018.174 to i1
  %i.ci = or i64 %i.ca, %.sroa.018.174
  %i.cj = trunc i64 %i.ci to i1
  %or.cond3.i = or i1 %i.cg, %i.cj
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ck = trunc i64 %i.ca to i1
  br i1 %i.ck, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cl = shl i64 %i.cd, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6ec8190475693117E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ch, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.cm = or i64 %i.cb, 1
  %i.cn = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2f1a2d8607cb203cE(ptr noalias noundef nonnull align 8 %i.cf, i64 noundef %i.cb, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7167
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit35": ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw [96 x i8], ptr %i.cf, i64 %i.cb
  %i.cs = or i64 %i.cc, 1
  %i.ct = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2f1a2d8607cb203cE(ptr noalias noundef nonnull align 8 %i.cr, i64 noundef %i.cc, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7167
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit35", %bb.u
  %i.cx = icmp eq i64 %i.cb, 0
  %i.cy = icmp eq i64 %i.cc, 0
  %or.cond.i = or i1 %i.cy, %i.cx
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h75ef162df6654f6aE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 range(i64 0, -9223372036854775808) %i.cb) ; 2 uses
  %i.cz = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cz, label %_ZN4core5slice4sort6stable5merge5merge17h75ef162df6654f6aE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = getelementptr inbounds nuw [96 x i8], ptr %i.cf, i64 %i.cb ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.cb, %i.cc  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.da, ptr %i.cf
  %i.db = mul i64 %.sroa.0.0.i.i36, 96            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.db, i1 false), !alias.scope !7200
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 %i.db ; 4 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.dj, %.noexc.i ], [ %i.da, %bb.y ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.dl, %.noexc.i ], [ %i.dc, %bb.y ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dg, %.noexc.i ], [ %i.bt, %bb.y ]
  %i.dd = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -96 ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -96 ; 3 uses
  %i.df = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.dd)
          to label %.noexc.i unwind label %.loopexit.i ; 3 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.dg = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -96 ; 2 uses
  %..i.i = select i1 %i.df, ptr %i.dd, ptr %i.de
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dg, ptr noundef nonnull align 8 dereferenceable(96) %..i.i, i64 96, i1 false), !alias.scope !7200, !noalias !7201
  %i.dh = xor i1 %i.df, true
  %i.di = zext i1 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [96 x i8], ptr %i.dd, i64 %i.di ; 3 uses
  %i.dk = zext i1 %i.df to i64
  %i.dl = getelementptr inbounds nuw [96 x i8], ptr %i.de, i64 %i.dk ; 3 uses
  %i.dm = icmp eq ptr %i.dj, %i.cf
  %i.dn = icmp eq ptr %i.dl, %2
  %or.cond.i.i = select i1 %i.dm, i1 true, i1 %i.dn
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h142b43950af6bf58E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.noexc20.i
  %.sroa.13.1.i = phi ptr [ %i.du, %.noexc20.i ], [ %i.cf, %bb.y ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.dr, %.noexc20.i ], [ %2, %bb.y ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dt, %.noexc20.i ], [ %i.da, %bb.y ] ; 3 uses
  %i.do = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.0.02.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.0.0.i38)
          to label %.noexc20.i unwind label %.loopexit.split-lp.i ; 3 uses

.noexc20.i:                                       ; preds = %.lr.ph.i.i
  %i.dp = xor i1 %i.do, true
  %spec.select.i.i = select i1 %i.do, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(96) %spec.select.i.i, i64 96, i1 false), !alias.scope !7200, !noalias !7202
  %i.dq = zext i1 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.i38, i64 %i.dq ; 3 uses
  %i.ds = zext i1 %i.do to i64
  %i.dt = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.02.i.i, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 96 ; 2 uses
  %i.dv = icmp ne ptr %i.dr, %i.dc
  %i.dw = icmp ne ptr %i.dt, %i.bt
  %or.cond.i19.i = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h142b43950af6bf58E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h142b43950af6bf58E.exit.i": ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.dj, %.noexc.i ], [ %i.du, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.dl, %.noexc.i ], [ %i.dc, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dr, %.noexc20.i ] ; 2 uses
  %i.dx = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dy = ptrtoint ptr %.sroa.0.3.i to i64
  %i.dz = sub nuw i64 %i.dx, %i.dy
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.dz, i1 false), !alias.scope !7200, !noalias !7203
  br label %_ZN4core5slice4sort6stable5merge5merge17h75ef162df6654f6aE.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.dc, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ea = ptrtoint ptr %.sroa.7.1.i to i64
  %i.eb = ptrtoint ptr %.sroa.0.2.i to i64
  %i.ec = sub nuw i64 %i.ea, %i.eb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.ec, i1 false), !alias.scope !7200, !noalias !7204
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17h75ef162df6654f6aE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h142b43950af6bf58E.exit.i"
  %i.ed = shl i64 %i.cd, 1
  %i.ee = or disjoint i64 %i.ed, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6ec8190475693117E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h6ec8190475693117E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h75ef162df6654f6aE.exit
  %.sroa.0.0.i = phi i64 [ %i.ee, %_ZN4core5slice4sort6stable5merge5merge17h75ef162df6654f6aE.exit ], [ %i.cl, %bb.t ] ; 2 uses
  %i.ef = icmp ugt i64 %i.bu, 1
  br i1 %i.ef, label %bb.q, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eg = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.eh = lshr i64 %.sroa.023.0, 1
  %i.ei = add i64 %i.eh, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ej = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ej, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ek = or i64 %1, 1
  %i.el = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ek, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 1
  %i.eo = xor i32 %i.en, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2f1a2d8607cb203cE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7167
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h8eef295c95f2d4f3E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.bc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i115 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i120 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ay, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.ay ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ha, %bb.ay ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gy, %bb.ay ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1aeb14b25db1b2eeE.exit", label %bb.ae

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1aeb14b25db1b2eeE.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 13 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h3acbced17925e372E.exit.i.thread118, %_ZN4core5slice4sort6shared17find_existing_run17h3acbced17925e372E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h3acbced17925e372E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1aeb14b25db1b2eeE.exit"
  br i1 %4, label %bb.ac, label %bb.ab

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1aeb14b25db1b2eeE.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6145b759425de85dE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7267), !noalias !7268
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7269), !noalias !7268
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load i16, ptr %i.p, align 8, !alias.scope !7270, !noalias !7271, !noundef !25 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.s = load i16, ptr %i.r, align 8, !alias.scope !7272, !noalias !7273, !noundef !25 ; 5 uses
  %i.t = icmp eq i16 %i.q, 0
  br i1 %i.t, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load i64, ptr %i.m, align 8, !range !37, !alias.scope !7270, !noalias !7271, !noundef !25
  switch i64 %i.u, label %bb.l [
    i64 -9223372036854775807, label %bb.k
    i64 -9223372036854775808, label %switch.lookup
  ]

bb.k:                                             ; preds = %switch.lookup, %bb.l, %bb.j, %bb.i
  %.sroa.01.0.i.i47 = phi i8 [ 0, %bb.i ], [ 1, %bb.l ], [ 0, %bb.j ], [ %switch.masked, %switch.lookup ]
  %i.v = icmp eq i16 %i.s, 0
  br i1 %i.v, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit50", label %bb.m

bb.l:                                             ; preds = %bb.j
  br label %bb.k

switch.lookup:                                    ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.x = load i8, ptr %i.w, align 8, !range !50, !alias.scope !7270, !noalias !7271, !noundef !25
  %i.y = shl nuw nsw i8 %i.x, 3
  %switch.shiftamt = zext nneg i8 %i.y to i40
  %switch.downshift = lshr i40 17230333184, %switch.shiftamt
  %switch.masked = trunc i40 %switch.downshift to i8
  br label %bb.k

bb.m:                                             ; preds = %bb.k
  %i.z = load i64, ptr %i.o, align 8, !range !37, !alias.scope !7272, !noalias !7273, !noundef !25
  switch i64 %i.z, label %bb.n [
    i64 -9223372036854775807, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit50"
    i64 -9223372036854775808, label %switch.lookup148
  ]

bb.n:                                             ; preds = %bb.m
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit50"

switch.lookup148:                                 ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.ab = load i8, ptr %i.aa, align 8, !range !50, !alias.scope !7272, !noalias !7273, !noundef !25
  %i.ac = shl nuw nsw i8 %i.ab, 3
  %switch.shiftamt150 = zext nneg i8 %i.ac to i40
  %switch.downshift151 = lshr i40 17230333184, %switch.shiftamt150
  %switch.masked152 = trunc i40 %switch.downshift151 to i8
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit50"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit50": ; preds = %switch.lookup148, %bb.k, %bb.m, %bb.n
  %.sroa.02.0.i.i48 = phi i8 [ 0, %bb.k ], [ 1, %bb.n ], [ 0, %bb.m ], [ %switch.masked152, %switch.lookup148 ]
  %i.ad = icmp eq i16 %i.q, %i.s
  %i.ae = icmp samesign ult i8 %.sroa.01.0.i.i47, %.sroa.02.0.i.i48
  %i.af = icmp ult i16 %i.q, %i.s
  %i.ag = select i1 %i.ad, i1 %i.ae, i1 %i.af     ; 2 uses
  %.not87 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.ag, label %.preheader, label %.preheader61

.preheader61:                                     ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit50"
  br i1 %.not87, label %_ZN4core5slice4sort6shared17find_existing_run17h3acbced17925e372E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit50"
  br i1 %.not87, label %_ZN4core5slice4sort6shared17find_existing_run17h3acbced17925e372E.exit.i.thread118, label %.lr.ph75

.lr.ph:                                           ; preds = %.preheader61, %bb.t
  %i.ah = phi i16 [ %i.an, %bb.t ], [ %i.s, %.preheader61 ] ; 3 uses
  %.sroa.01.0.i.i72 = phi i64 [ %i.bc, %bb.t ], [ 2, %.preheader61 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.01.0.i.i72 ; 3 uses
  %i.aj = add i64 %.sroa.01.0.i.i72, -1           ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.l
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.aj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7276), !noalias !7268
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7277), !noalias !7268
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.an = load i16, ptr %i.am, align 8, !alias.scope !7278, !noalias !7279, !noundef !25 ; 4 uses
  %i.ao = icmp eq i16 %i.ah, 0
  br i1 %i.ao, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.ap = load i64, ptr %i.al, align 8, !range !37, !alias.scope !7280, !noalias !7281, !noundef !25
  switch i64 %i.ap, label %bb.q [
    i64 -9223372036854775807, label %bb.p
    i64 -9223372036854775808, label %switch.lookup153
  ]

bb.p:                                             ; preds = %switch.lookup153, %bb.q, %bb.o, %.lr.ph
  %.sroa.01.0.i.i43 = phi i8 [ 0, %.lr.ph ], [ 1, %bb.q ], [ 0, %bb.o ], [ %switch.masked157, %switch.lookup153 ]
  %i.aq = icmp eq i16 %i.an, 0
  br i1 %i.aq, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit46", label %bb.r

bb.q:                                             ; preds = %bb.o
  br label %bb.p

switch.lookup153:                                 ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = load i8, ptr %i.ar, align 8, !range !50, !alias.scope !7280, !noalias !7281, !noundef !25
  %i.at = shl nuw nsw i8 %i.as, 3
  %switch.shiftamt155 = zext nneg i8 %i.at to i40
  %switch.downshift156 = lshr i40 17230333184, %switch.shiftamt155
  %switch.masked157 = trunc i40 %switch.downshift156 to i8
  br label %bb.p

bb.r:                                             ; preds = %bb.p
  %i.au = load i64, ptr %i.ai, align 8, !range !37, !alias.scope !7278, !noalias !7279, !noundef !25
  switch i64 %i.au, label %bb.s [
    i64 -9223372036854775807, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit46"
    i64 -9223372036854775808, label %switch.lookup158
  ]
end_hunk_4
begin_hunk_5_@_ZN4core5slice4sort6stable5drift4sort17h8eef295c95f2d4f3E:bb.a

bb.al:                                            ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1aeb14b25db1b2eeE.exit35", %bb.aj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7299)
  %i.eg = icmp eq i64 %i.dk, 0
  %i.eh = icmp eq i64 %i.dl, 0
  %or.cond.i = or i1 %i.eh, %i.eg
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h5563d59809b1e72dE.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 range(i64 0, -9223372036854775808) %i.dk) ; 2 uses
  %i.ei = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.ei, label %_ZN4core5slice4sort6stable5merge5merge17h5563d59809b1e72dE.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %i.dk ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.dk, %i.dl  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.ej, ptr %i.do
  %i.ek = shl i64 %.sroa.0.0.i.i36, 5             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ek, i1 false), !alias.scope !7300
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %i.ek ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.an, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i"
  %i.em = phi ptr [ %i.fn, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i" ], [ %i.el, %bb.an ] ; 3 uses
  %i.en = phi ptr [ %i.fl, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i" ], [ %i.ej, %bb.an ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.eq, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i" ], [ %i.dc, %bb.an ]
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -32 ; 3 uses
  %i.ep = getelementptr inbounds i8, ptr %i.em, i64 -32 ; 3 uses
  %i.eq = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7304)
  %i.er = getelementptr inbounds i8, ptr %i.en, i64 -8
  %i.es = load i16, ptr %i.er, align 8, !alias.scope !7305, !noalias !7306, !noundef !25 ; 3 uses
  %i.et = getelementptr inbounds i8, ptr %i.em, i64 -8
  %i.eu = load i16, ptr %i.et, align 8, !alias.scope !7307, !noalias !7308, !noundef !25 ; 3 uses
  %i.ev = icmp eq i16 %i.es, 0
  br i1 %i.ev, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.preheader.i
  %i.ew = load i64, ptr %i.eo, align 8, !range !37, !alias.scope !7305, !noalias !7306, !noundef !25
  switch i64 %i.ew, label %bb.aq [
    i64 -9223372036854775807, label %bb.ap
    i64 -9223372036854775808, label %switch.lookup173
  ]

bb.ap:                                            ; preds = %switch.lookup173, %bb.aq, %bb.ao, %.preheader.i
  %.sroa.01.0.i.i.i.i = phi i8 [ 0, %.preheader.i ], [ 1, %bb.aq ], [ 0, %bb.ao ], [ %switch.masked177, %switch.lookup173 ]
  %i.ex = icmp eq i16 %i.eu, 0
  br i1 %i.ex, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i", label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  br label %bb.ap

switch.lookup173:                                 ; preds = %bb.ao
  %i.ey = getelementptr inbounds i8, ptr %i.en, i64 -24
  %i.ez = load i8, ptr %i.ey, align 8, !range !50, !alias.scope !7305, !noalias !7306, !noundef !25
  %i.fa = shl nuw nsw i8 %i.ez, 3
  %switch.shiftamt175 = zext nneg i8 %i.fa to i40
  %switch.downshift176 = lshr i40 17230333184, %switch.shiftamt175
  %switch.masked177 = trunc i40 %switch.downshift176 to i8
  br label %bb.ap

bb.ar:                                            ; preds = %bb.ap
  %i.fb = load i64, ptr %i.ep, align 8, !range !37, !alias.scope !7307, !noalias !7308, !noundef !25
  switch i64 %i.fb, label %bb.as [
    i64 -9223372036854775807, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i"
    i64 -9223372036854775808, label %switch.lookup178
  ]

bb.as:                                            ; preds = %bb.ar
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i"

switch.lookup178:                                 ; preds = %bb.ar
  %i.fc = getelementptr inbounds i8, ptr %i.em, i64 -24
  %i.fd = load i8, ptr %i.fc, align 8, !range !50, !alias.scope !7307, !noalias !7308, !noundef !25
  %i.fe = shl nuw nsw i8 %i.fd, 3
  %switch.shiftamt180 = zext nneg i8 %i.fe to i40
  %switch.downshift181 = lshr i40 17230333184, %switch.shiftamt180
  %switch.masked182 = trunc i40 %switch.downshift181 to i8
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i": ; preds = %switch.lookup178, %bb.as, %bb.ar, %bb.ap
  %.sroa.02.0.i.i.i.i = phi i8 [ 0, %bb.ap ], [ 1, %bb.as ], [ 0, %bb.ar ], [ %switch.masked182, %switch.lookup178 ]
  %i.ff = icmp eq i16 %i.es, %i.eu
  %i.fg = icmp samesign ult i8 %.sroa.01.0.i.i.i.i, %.sroa.02.0.i.i.i.i
  %i.fh = icmp ult i16 %i.es, %i.eu
  %i.fi = select i1 %i.ff, i1 %i.fg, i1 %i.fh     ; 3 uses
  %..i.i = select i1 %i.fi, ptr %i.eo, ptr %i.ep
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !alias.scope !7300, !noalias !7309
  %i.fj = xor i1 %i.fi, true
  %i.fk = zext i1 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %i.fk ; 3 uses
  %i.fm = zext i1 %i.fi to i64
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr %i.ep, i64 %i.fm ; 3 uses
  %i.fo = icmp eq ptr %i.fl, %i.do
  %i.fp = icmp eq ptr %i.fn, %2
  %or.cond.i.i = select i1 %i.fo, i1 true, i1 %i.fp
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h250b8d97a10565a8E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.an, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i20.i"
  %i.fq = phi ptr [ %i.gp, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i20.i" ], [ %i.do, %bb.an ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.go, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i20.i" ], [ %i.ej, %bb.an ] ; 5 uses
  %i.fr = phi ptr [ %i.gm, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i20.i" ], [ %2, %bb.an ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7313)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load i16, ptr %i.fs, align 8, !alias.scope !7314, !noalias !7315, !noundef !25 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 24
  %i.fv = load i16, ptr %i.fu, align 8, !alias.scope !7316, !noalias !7317, !noundef !25 ; 3 uses
  %i.fw = icmp eq i16 %i.ft, 0
  br i1 %i.fw, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i
  %i.fx = load i64, ptr %i.fr, align 8, !range !37, !alias.scope !7314, !noalias !7315, !noundef !25
  switch i64 %i.fx, label %bb.av [
    i64 -9223372036854775807, label %bb.au
    i64 -9223372036854775808, label %switch.lookup183
  ]

bb.au:                                            ; preds = %switch.lookup183, %bb.av, %bb.at, %.lr.ph.i.i
  %.sroa.01.0.i.i.i19.i = phi i8 [ 0, %.lr.ph.i.i ], [ 1, %bb.av ], [ 0, %bb.at ], [ %switch.masked187, %switch.lookup183 ]
  %i.fy = icmp eq i16 %i.fv, 0
  br i1 %i.fy, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i20.i", label %bb.aw

bb.av:                                            ; preds = %bb.at
  br label %bb.au

switch.lookup183:                                 ; preds = %bb.at
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ga = load i8, ptr %i.fz, align 8, !range !50, !alias.scope !7314, !noalias !7315, !noundef !25
  %i.gb = shl nuw nsw i8 %i.ga, 3
  %switch.shiftamt185 = zext nneg i8 %i.gb to i40
  %switch.downshift186 = lshr i40 17230333184, %switch.shiftamt185
  %switch.masked187 = trunc i40 %switch.downshift186 to i8
  br label %bb.au

bb.aw:                                            ; preds = %bb.au
  %i.gc = load i64, ptr %.sroa.0.02.i.i, align 8, !range !37, !alias.scope !7316, !noalias !7317, !noundef !25
  switch i64 %i.gc, label %bb.ax [
    i64 -9223372036854775807, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i20.i"
    i64 -9223372036854775808, label %switch.lookup188
  ]

bb.ax:                                            ; preds = %bb.aw
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i20.i"

switch.lookup188:                                 ; preds = %bb.aw
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 8
  %i.ge = load i8, ptr %i.gd, align 8, !range !50, !alias.scope !7316, !noalias !7317, !noundef !25
  %i.gf = shl nuw nsw i8 %i.ge, 3
  %switch.shiftamt190 = zext nneg i8 %i.gf to i40
  %switch.downshift191 = lshr i40 17230333184, %switch.shiftamt190
  %switch.masked192 = trunc i40 %switch.downshift191 to i8
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i20.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i20.i": ; preds = %switch.lookup188, %bb.ax, %bb.aw, %bb.au
  %.sroa.02.0.i.i.i21.i = phi i8 [ 0, %bb.au ], [ 1, %bb.ax ], [ 0, %bb.aw ], [ %switch.masked192, %switch.lookup188 ]
  %i.gg = icmp eq i16 %i.ft, %i.fv
  %i.gh = icmp samesign ult i8 %.sroa.01.0.i.i.i19.i, %.sroa.02.0.i.i.i21.i
  %i.gi = icmp ult i16 %i.ft, %i.fv
  %i.gj = select i1 %i.gg, i1 %i.gh, i1 %i.gi     ; 3 uses
  %i.gk = xor i1 %i.gj, true
  %spec.select.i.i = select i1 %i.gj, ptr %.sroa.0.02.i.i, ptr %i.fr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fq, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i.i, i64 32, i1 false), !alias.scope !7300, !noalias !7318
  %i.gl = zext i1 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [32 x i8], ptr %i.fr, i64 %i.gl ; 3 uses
  %i.gn = zext i1 %i.gj to i64
  %i.go = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fq, i64 32 ; 2 uses
  %i.gq = icmp ne ptr %i.gm, %i.el
  %i.gr = icmp ne ptr %i.go, %i.dc
  %or.cond.i22.i = select i1 %i.gq, i1 %i.gr, i1 false
  br i1 %or.cond.i22.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h250b8d97a10565a8E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h250b8d97a10565a8E.exit.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i20.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i"
  %.sroa.13.1.i = phi ptr [ %i.fl, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i" ], [ %i.gp, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i20.i" ]
  %.sroa.7.0.i = phi ptr [ %i.fn, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i" ], [ %i.el, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i20.i" ]
  %.sroa.0.1.i = phi ptr [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i" ], [ %i.gm, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i20.i" ] ; 2 uses
  %i.gs = ptrtoint ptr %.sroa.7.0.i to i64
  %i.gt = ptrtoint ptr %.sroa.0.1.i to i64
  %i.gu = sub nuw i64 %i.gs, %i.gt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.gu, i1 false), !alias.scope !7300, !noalias !7319
  br label %_ZN4core5slice4sort6stable5merge5merge17h5563d59809b1e72dE.exit

_ZN4core5slice4sort6stable5merge5merge17h5563d59809b1e72dE.exit: ; preds = %bb.al, %bb.am, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h250b8d97a10565a8E.exit.i"
  %i.gv = shl i64 %i.dm, 1
  %i.gw = or disjoint i64 %i.gv, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h63ab4663e45d3dfbE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h63ab4663e45d3dfbE.exit: ; preds = %bb.ai, %_ZN4core5slice4sort6stable5merge5merge17h5563d59809b1e72dE.exit
  %.sroa.0.0.i = phi i64 [ %i.gw, %_ZN4core5slice4sort6stable5merge5merge17h5563d59809b1e72dE.exit ], [ %i.du, %bb.ai ] ; 2 uses
  %i.gx = icmp ugt i64 %i.dd, 1
  br i1 %i.gx, label %bb.af, label %._crit_edge

bb.ay:                                            ; preds = %._crit_edge
  %i.gy = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.gz = lshr i64 %.sroa.023.0, 1
  %i.ha = add i64 %i.gz, %.sroa.09.0
  br label %bb.f

bb.az:                                            ; preds = %._crit_edge
  %i.hb = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.hb, 0
  br i1 %.not31, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hc = or i64 %1, 1
  %i.hd = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.hc, i1 true)
  %i.he = trunc nuw nsw i64 %i.hd to i32
  %i.hf = shl nuw nsw i32 %i.he, 1
  %i.hg = xor i32 %i.hf, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hda82fa42989470e3E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.hg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7241
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.a, %bb.bb
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2f1a2d8607cb203cE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(96) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 11 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 6 uses
  %i.d = icmp ult i64 %1, 33
  br i1 %i.d, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit"
  %.sroa.0.0.ph98 = phi ptr [ %i.gx, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit" ], [ %0, %bb.a ] ; 21 uses
  %.sroa.15.0.ph97 = phi i64 [ %i.gi, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit" ], [ %1, %bb.a ] ; 2 uses
  %.sroa.023.0.ph96 = phi i32 [ %i.dx, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit" ], [ %4, %bb.a ] ; 2 uses
  %.sroa.026.0.ph95 = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit" ], [ %5, %bb.a ] ; 2 uses
  %i.e = ptrtoint ptr %.sroa.0.0.ph98 to i64
  %.not = icmp eq ptr %.sroa.026.0.ph95, null
  %i.f = icmp eq i32 %.sroa.023.0.ph96, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph249

bb.b:                                             ; preds = %bb.an
  %i.g = icmp eq i32 %i.dx, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph249

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit", %bb.an, %bb.a
  %.sroa.0.0.ph.lcssa89 = phi ptr [ %.sroa.0.0.ph98, %bb.an ], [ %0, %bb.a ], [ %i.gx, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit" ] ; 16 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.an ], [ %1, %bb.a ], [ %i.gi, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit" ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7357)
  call void @llvm.experimental.noalias.scope.decl(metadata !7358)
  %i.h = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.h, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hdcda437c0eb302c8E.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.i = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.j = icmp ult i64 %3, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i64 %.sroa.15.0.lcssa, 1            ; 10 uses
  %i.l = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.l, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa89, i64 96
  %i.n = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.0.0.ph.lcssa89) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa89, i64 288
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa89, i64 192
  %i.q = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.p) ; 2 uses
  %i.r = zext i1 %i.n to i64
  %i.s = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph.lcssa89, i64 %i.r ; 3 uses
  %i.t = xor i1 %i.n, true
  %i.u = zext i1 %i.t to i64
  %i.v = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph.lcssa89, i64 %i.u ; 4 uses
  %i.w = select i1 %i.q, i64 3, i64 2
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph.lcssa89, i64 %i.w ; 4 uses
  %i.y = select i1 %i.q, i64 2, i64 3
  %i.z = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph.lcssa89, i64 %i.y ; 3 uses
  %i.aa = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.s) ; 3 uses
  %i.ab = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.v) ; 3 uses
  %i.ac = select i1 %i.aa, ptr %i.x, ptr %i.s, !unpredictable !25
  %i.ad = select i1 %i.ab, ptr %i.v, ptr %i.z, !unpredictable !25
  %i.ae = select i1 %i.ab, ptr %i.x, ptr %i.v, !unpredictable !25
  %i.af = select i1 %i.aa, ptr %i.s, ptr %i.ae, !unpredictable !25 ; 3 uses
  %i.ag = select i1 %i.aa, ptr %i.v, ptr %i.x, !unpredictable !25
  %i.ah = select i1 %i.ab, ptr %i.z, ptr %i.ag, !unpredictable !25 ; 3 uses
  %i.ai = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.af) ; 2 uses
  %i.aj = select i1 %i.ai, ptr %i.ah, ptr %i.af, !unpredictable !25
  %i.ak = select i1 %i.ai, ptr %i.af, ptr %i.ah, !unpredictable !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.ac, i64 96, i1 false), !alias.scope !7359
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.al, ptr noundef nonnull align 8 dereferenceable(96) %i.aj, i64 96, i1 false), !alias.scope !7359
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.am, ptr noundef nonnull align 8 dereferenceable(96) %i.ak, i64 96, i1 false), !alias.scope !7359
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.an, ptr noundef nonnull align 8 dereferenceable(96) %i.ad, i64 96, i1 false), !alias.scope !7359
  %i.ao = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph.lcssa89, i64 %i.k ; 8 uses
  %i.ap = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %i.k ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.ar = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ao) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 288
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 192
  %i.au = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.at) ; 2 uses
  %i.av = zext i1 %i.ar to i64
  %i.aw = getelementptr inbounds nuw [96 x i8], ptr %i.ao, i64 %i.av ; 3 uses
  %i.ax = xor i1 %i.ar, true
  %i.ay = zext i1 %i.ax to i64
  %i.az = getelementptr inbounds nuw [96 x i8], ptr %i.ao, i64 %i.ay ; 4 uses
  %i.ba = select i1 %i.au, i64 3, i64 2
  %i.bb = getelementptr inbounds nuw [96 x i8], ptr %i.ao, i64 %i.ba ; 4 uses
  %i.bc = select i1 %i.au, i64 2, i64 3
  %i.bd = getelementptr inbounds nuw [96 x i8], ptr %i.ao, i64 %i.bc ; 3 uses
  %i.be = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.aw) ; 3 uses
  %i.bf = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.az) ; 3 uses
  %i.bg = select i1 %i.be, ptr %i.bb, ptr %i.aw, !unpredictable !25
  %i.bh = select i1 %i.bf, ptr %i.az, ptr %i.bd, !unpredictable !25
  %i.bi = select i1 %i.bf, ptr %i.bb, ptr %i.az, !unpredictable !25
  %i.bj = select i1 %i.be, ptr %i.aw, ptr %i.bi, !unpredictable !25 ; 3 uses
  %i.bk = select i1 %i.be, ptr %i.az, ptr %i.bb, !unpredictable !25
  %i.bl = select i1 %i.bf, ptr %i.bd, ptr %i.bk, !unpredictable !25 ; 3 uses
  %i.bm = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bj) ; 2 uses
  %i.bn = select i1 %i.bm, ptr %i.bl, ptr %i.bj, !unpredictable !25
  %i.bo = select i1 %i.bm, ptr %i.bj, ptr %i.bl, !unpredictable !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ap, ptr noundef nonnull align 8 dereferenceable(96) %i.bg, i64 96, i1 false), !alias.scope !7359
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bp, ptr noundef nonnull align 8 dereferenceable(96) %i.bn, i64 96, i1 false), !alias.scope !7359
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bq, ptr noundef nonnull align 8 dereferenceable(96) %i.bo, i64 96, i1 false), !alias.scope !7359
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.br, ptr noundef nonnull align 8 dereferenceable(96) %i.bh, i64 96, i1 false), !alias.scope !7359
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.0.ph.lcssa89, i64 96, i1 false), !alias.scope !7359
  %i.bs = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph.lcssa89, i64 %i.k
  %i.bt = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bt, ptr noundef nonnull align 8 dereferenceable(96) %i.bs, i64 96, i1 false), !alias.scope !7359
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 6 uses
  %i.bu = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.k ; 2 uses
  %i.bv = icmp samesign ult i64 %.sroa.0.0.i, %i.k
  br i1 %i.bv, label %.noexc32.preheader.i, label %.loopexit4.i

.loopexit4.i:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33f5150c56eaa250E.exit.i, %bb.h
  %i.bw = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph.lcssa89, i64 %i.k
  %i.bx = getelementptr [96 x i8], ptr %2, i64 %i.k ; 6 uses
  %i.by = icmp samesign ult i64 %.sroa.0.0.i, %i.bu
  br i1 %i.by, label %.noexc32.preheader.1.i, label %.loopexit4.1.i

.noexc32.preheader.1.i:                           ; preds = %.loopexit4.i
  %.sroa.08.110.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.noexc32.1.i

.noexc32.1.i:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33f5150c56eaa250E.exit.1.i, %.noexc32.preheader.1.i
  %.sroa.08.112.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33f5150c56eaa250E.exit.1.i ], [ %.sroa.08.110.1.i, %.noexc32.preheader.1.i ] ; 3 uses
  %.sroa.08.011.1.i = phi i64 [ %.sroa.08.112.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33f5150c56eaa250E.exit.1.i ], [ %.sroa.0.0.i, %.noexc32.preheader.1.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [96 x i8], ptr %i.bw, i64 %.sroa.08.011.1.i
  %.idx267 = mul nuw nsw i64 %.sroa.08.011.1.i, 96
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx267 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ca, ptr noundef nonnull align 8 dereferenceable(96) %i.bz, i64 96, i1 false), !alias.scope !7359
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -96 ; 3 uses
  %i.cc = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ca, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.cb), !noalias !7357
  br i1 %i.cc, label %bb.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33f5150c56eaa250E.exit.1.i

bb.i:                                             ; preds = %.noexc32.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.ca, i64 96, i1 false), !noalias !7357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ca, ptr noundef nonnull align 8 dereferenceable(96) %i.cb, i64 96, i1 false), !alias.scope !7358, !noalias !7357
  %i.cd = icmp eq i64 %.sroa.08.011.1.i, 1
  br i1 %i.cd, label %._crit_edge263, label %.lr.ph262

bb.j:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.0.i31.1.i260, ptr noundef nonnull align 8 dereferenceable(96) %i.cf, i64 96, i1 false), !alias.scope !7358, !noalias !7357
  %i.ce = icmp eq ptr %i.cf, %i.bx
  br i1 %i.ce, label %._crit_edge263, label %.lr.ph262

.lr.ph262:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i31.1.i260 = phi ptr [ %i.cf, %bb.j ], [ %i.cb, %bb.i ] ; 4 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.0.0.i31.1.i260, i64 -96 ; 4 uses
  %i.cg = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.cf)
          to label %bb.k unwind label %.loopexit.split-lp23.i, !noalias !7357

bb.k:                                             ; preds = %.lr.ph262
  br i1 %i.cg, label %bb.j, label %._crit_edge263

._crit_edge263:                                   ; preds = %bb.j, %bb.k, %bb.i
  %.sroa.0.0.i31.lcssa.1.i = phi ptr [ %i.bx, %bb.i ], [ %i.bx, %bb.j ], [ %.sroa.0.0.i31.1.i260, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.0.i31.lcssa.1.i, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !7360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7359
end_hunk_5
