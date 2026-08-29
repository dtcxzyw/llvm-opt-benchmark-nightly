Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/uuid-3c1d4d562737d5f2.uuid.9f091606239b2833-cgu.0?download=true
inline.NumInlined: 169
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@"_ZN104_$LT$uuid..timestamp..context..v7_support..SharedContextV7$u20$as$u20$uuid..timestamp..ClockSequence$GT$17generate_sequence17h257f4dfdde82db6eE":bb.a
bb.i:                                             ; preds = %bb.h
  store atomic i8 1, ptr %i.j monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.t = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.u = icmp eq i32 %i.t, 2
  br i1 %i.u, label %bb.j, label %"_ZN4uuid9timestamp7context11std_support101_$LT$impl$u20$uuid..timestamp..ClockSequence$u20$for$u20$std..sync..poison..mutex..Mutex$LT$C$GT$$GT$17generate_sequence17h9de660e88ae56f94E.exit", !prof !8

bb.j:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 16 %0)
  br label %"_ZN4uuid9timestamp7context11std_support101_$LT$impl$u20$uuid..timestamp..ClockSequence$u20$for$u20$std..sync..poison..mutex..Mutex$LT$C$GT$$GT$17generate_sequence17h9de660e88ae56f94E.exit"

bb.k:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #26
  unreachable

bb.l:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.m

"_ZN4uuid9timestamp7context11std_support101_$LT$impl$u20$uuid..timestamp..ClockSequence$u20$for$u20$std..sync..poison..mutex..Mutex$LT$C$GT$$GT$17generate_sequence17h9de660e88ae56f94E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, %bb.j
  ret i64 %i.n
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN104_$LT$uuid..timestamp..context..v7_support..SharedContextV7$u20$as$u20$uuid..timestamp..ClockSequence$GT$27generate_timestamp_sequence17hc93c710fd8b36f28E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 16 %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !noalias !9
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 16 %1), !noalias !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !9
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E.exit.i", label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !9
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E.exit.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E.exit.i": ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.j = load atomic i8, ptr %i.i monotonic, align 4, !noalias !9 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @"_ZN98_$LT$uuid..timestamp..context..v7_support..ContextV7$u20$as$u20$uuid..timestamp..ClockSequence$GT$27generate_timestamp_sequence17ha397ddc3ca9b63edE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 16 %i.k, i64 noundef %2, i32 noundef %3)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E.exit.i"
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr112drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$uuid..timestamp..context..v7_support..ContextV7$GT$$GT$17hd70e494c7cc9f025E"(ptr nonnull align 16 %1, i8 %.sroa.01.0.i.i.i) #25
          to label %bb.l unwind label %bb.k, !noalias !14

bb.f:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E.exit.i"
  %i.m = trunc nuw i8 %.sroa.01.0.i.i.i to i1
  br i1 %i.m, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !14
  %i.o = and i64 %i.n, 9223372036854775807
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !14
  br i1 %i.q, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store atomic i8 1, ptr %i.i monotonic, align 4, !noalias !14
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.r = atomicrmw xchg ptr %1, i32 0 release, align 4, !noalias !14
  %i.s = icmp eq i32 %i.r, 2
  br i1 %i.s, label %bb.j, label %"_ZN4uuid9timestamp7context11std_support101_$LT$impl$u20$uuid..timestamp..ClockSequence$u20$for$u20$std..sync..poison..mutex..Mutex$LT$C$GT$$GT$27generate_timestamp_sequence17hccb54dd7f35757d7E.exit", !prof !8

bb.j:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 16 %1), !noalias !14
  br label %"_ZN4uuid9timestamp7context11std_support101_$LT$impl$u20$uuid..timestamp..ClockSequence$u20$for$u20$std..sync..poison..mutex..Mutex$LT$C$GT$$GT$27generate_timestamp_sequence17hccb54dd7f35757d7E.exit"

bb.k:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #26, !noalias !14
  unreachable

bb.l:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.l

"_ZN4uuid9timestamp7context11std_support101_$LT$impl$u20$uuid..timestamp..ClockSequence$u20$for$u20$std..sync..poison..mutex..Mutex$LT$C$GT$$GT$27generate_timestamp_sequence17hccb54dd7f35757d7E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdcec08df52f2862dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !align !15, !noundef !7
  %i.b = tail call noundef zeroext i1 @"_ZN57_$LT$core..time..Duration$u20$as$u20$core..fmt..Debug$GT$3fmt17h6dc90c1fafc37461E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h39abea5e69baa2c5E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !align !15, !noundef !7 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !7, !align !16, !noundef !7
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !7
  %i.c = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17he1f7fcba127a3dc9E(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h6b1cf17435ab68aeE.exit":
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !21
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !22, !inline_history !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr112drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$uuid..timestamp..context..v7_support..ContextV7$GT$$GT$17hd70e494c7cc9f025E"(ptr %.0.val, i8 %.8.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.f, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52ac9c9ab6f2bc0bE.exit", !prof !8

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.0.val)
  br label %"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52ac9c9ab6f2bc0bE.exit"

"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52ac9c9ab6f2bc0bE.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2b0151d682dab0c1E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i": ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2b0151d682dab0c1E.exit"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2b0151d682dab0c1E.exit": ; preds = %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4uuid2v428_$LT$impl$u20$uuid..Uuid$GT$6new_v417hf823a2a410a2ffe2E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i128 @"_ZN57_$LT$uuid..rng..imp..RngImp$u20$as$u20$uuid..rng..Rng$GT$4u12817h4c956bd595332695E"()
  %i.b = and i128 %i.a, -1133381790946770133450753
  %i.c = or disjoint i128 %i.b, 302240678275694148452352
  %i.d = tail call i128 @llvm.bswap.i128(i128 %i.c)
  store i128 %i.d, ptr %0, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4uuid2v728_$LT$impl$u20$uuid..Uuid$GT$6new_v717hdd476052c9767b28E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 16, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !noundef !7
  %i.e = load i128, ptr %1, align 16, !noundef !7 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.g = load i8, ptr %i.f, align 4, !noundef !7  ; 7 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i128 @"_ZN57_$LT$uuid..rng..imp..RngImp$u20$as$u20$uuid..rng..Rng$GT$4u12817h4c956bd595332695E"()
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h3233bc5980742a0cE.exit"

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i8 %i.g, 12
  br i1 %i.j, label %bb.e, label %bb.d

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h3233bc5980742a0cE.exit": ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.01.0 = phi i128 [ %i.i, %bb.b ], [ %i.ap, %bb.e ], [ %i.br, %bb.g ], [ %i.ay, %bb.f ]
  %2 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.b, i64 1000) ; 2 uses
  %3 = extractvalue { i64, i1 } %2, 1
  %4 = extractvalue { i64, i1 } %2, 0
  %i.k = udiv i32 %i.d, 1000000
  %i.l = zext nneg i32 %i.k to i64
  %i.m = tail call i64 @llvm.uadd.sat.i64(i64 %4, i64 %i.l)
  %i.n = select i1 %3, i64 -1, i64 %i.m, !prof !8 ; 6 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = lshr i64 %i.n, 40
  %i.q = trunc i64 %i.p to i8
  %i.r = lshr i64 %i.n, 32
  %i.s = trunc i64 %i.r to i8
  %i.t = lshr i64 %i.n, 24
  %i.u = trunc i64 %i.t to i8
  %i.v = trunc i64 %i.o to i8
  %i.w = lshr i64 %i.n, 8
  %i.x = trunc i64 %i.w to i8
  %i.y = trunc i64 %i.n to i8
  store i8 %i.q, ptr %0, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.s, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.u, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.v, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.x, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.y, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.z = tail call i128 @llvm.bswap.i128(i128 %.sroa.01.0) ; 3 uses
  %i.aa = insertelement <4 x i128> poison, i128 %i.z, i64 0
  %i.ab = shufflevector <4 x i128> %i.aa, <4 x i128> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ac = lshr <4 x i128> %i.ab, <i128 0, i128 8, i128 16, i128 24>
  %i.ad = trunc <4 x i128> %i.ac to <4 x i8>
  %.sroa.433.9.extract.shift42 = lshr i128 %i.z, 64
  %.sroa.433.9.extract.trunc = trunc i128 %.sroa.433.9.extract.shift42 to i8
  %.sroa.433.10.extract.shift43 = lshr i128 %i.z, 72
  %.sroa.433.10.extract.trunc = trunc i128 %.sroa.433.10.extract.shift43 to i8
  %i.ae = and <4 x i8> %i.ad, <i8 15, i8 -1, i8 63, i8 -1>
  %i.af = or disjoint <4 x i8> %i.ae, <i8 112, i8 0, i8 -128, i8 0>
  store <4 x i8> %i.af, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ag = lshr <4 x i128> %i.ab, <i128 32, i128 40, i128 48, i128 56>
  %i.ah = trunc <4 x i128> %i.ag to <4 x i8>
  store <4 x i8> %i.ah, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %.sroa.433.9.extract.trunc, ptr %.sroa.17.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %.sroa.433.10.extract.trunc, ptr %.sroa.18.0..sroa_idx, align 1
  ret void

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp ult i8 %i.g, 74
  br i1 %i.ai, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aj = tail call noundef i128 @"_ZN57_$LT$uuid..rng..imp..RngImp$u20$as$u20$uuid..rng..Rng$GT$4u12817h4c956bd595332695E"()
  %i.ak = zext nneg i8 %i.g to i128
  %i.al = lshr i128 -1, %i.ak
  %i.am = and i128 %i.aj, %i.al
  %narrow = sub nuw i8 -128, %i.g
  %i.an = zext nneg i8 %narrow to i128
  %i.ao = shl i128 %i.e, %i.an
  %i.ap = or i128 %i.am, %i.ao
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h3233bc5980742a0cE.exit"

bb.f:                                             ; preds = %bb.d
  %i.aq = tail call i8 @llvm.umin.i8(i8 %i.g, i8 -128)
  %narrow34 = add nuw i8 %i.aq, 116
  %i.ar = and i8 %narrow34, 127
  %i.as = zext nneg i8 %i.ar to i128
  %i.at = shl nsw i128 -1, %i.as                  ; 2 uses
  %i.au = xor i128 %i.at, -1
  %i.av = and i128 %i.e, %i.au
  %i.aw = and i128 %i.at, %i.e
  %i.ax = shl i128 %i.aw, 2
  %i.ay = or i128 %i.ax, %i.av
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h3233bc5980742a0cE.exit"

bb.g:                                             ; preds = %bb.d
  %i.az = zext nneg i8 %i.g to i32                ; 3 uses
  %i.ba = add nuw nsw i32 %i.az, 116
  %i.bb = and i32 %i.ba, 127
  %i.bc = zext nneg i32 %i.bb to i128
  %i.bd = shl nsw i128 -1, %i.bc                  ; 2 uses
  %i.be = xor i128 %i.bd, -1
  %i.bf = and i128 %i.e, %i.be
  %i.bg = and i128 %i.bd, %i.e
  %i.bh = shl i128 %i.bg, 2
  %i.bi = or i128 %i.bh, %i.bf
  %i.bj = add nuw nsw i32 %i.az, 2
  %i.bk = tail call noundef i128 @"_ZN57_$LT$uuid..rng..imp..RngImp$u20$as$u20$uuid..rng..Rng$GT$4u12817h4c956bd595332695E"()
  %i.bl = zext nneg i32 %i.bj to i128
  %i.bm = lshr i128 -1, %i.bl
  %i.bn = and i128 %i.bk, %i.bm
  %i.bo = sub nuw nsw i32 126, %i.az
  %i.bp = zext nneg i32 %i.bo to i128
  %i.bq = shl i128 %i.bi, %i.bp
  %i.br = or i128 %i.bn, %i.bq
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h3233bc5980742a0cE.exit"
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4uuid2v728_$LT$impl$u20$uuid..Uuid$GT$6now_v717hbe92c0b5e0c0af1fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24
  call void @_ZN3std4time10SystemTime7elapsed17hb54201ce03b980a7E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @24), !noalias !24
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.e = load i64, ptr %i.b, align 8, !range !30, !alias.scope !27, !noalias !24, !noundef !7
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN4uuid9timestamp9Timestamp3now17ha4d980ed2e28162aE.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !27, !noalias !24, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i32, ptr %i.i, align 8, !range !32, !alias.scope !27, !noalias !24, !noundef !7
  store i64 %i.h, ptr %i.a, align 8, !noalias !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.j, ptr %i.k, align 8, !noalias !31
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @25, i64 noundef 86, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #28, !noalias !31
  unreachable

_ZN4uuid9timestamp9Timestamp3now17ha4d980ed2e28162aE.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !27, !noalias !24, !noundef !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i32, ptr %i.n, align 8, !range !32, !alias.scope !27, !noalias !24, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24
  call void @"_ZN104_$LT$uuid..timestamp..context..v7_support..SharedContextV7$u20$as$u20$uuid..timestamp..ClockSequence$GT$27generate_timestamp_sequence17hc93c710fd8b36f28E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 16 @_ZN4uuid9timestamp7context10v7_support10CONTEXT_V717h7344bce9524a2eb4E, i64 noundef %i.m, i32 noundef range(i32 0, 1000000000) %i.o), !noalias !24
  %i.p = load i64, ptr %i.c, align 8, !noalias !24, !noundef !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !24, !noundef !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = load i32, ptr %i.s, align 8, !noalias !24, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24
  %i.u = zext i64 %i.p to i128
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.r, ptr %i.v, align 16, !alias.scope !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.t, ptr %i.w, align 8, !alias.scope !24
  store i128 %i.u, ptr %i.d, align 16, !alias.scope !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i8 42, ptr %i.x, align 4, !alias.scope !24
  call void @"_ZN4uuid2v728_$LT$impl$u20$uuid..Uuid$GT$6new_v717hdd476052c9767b28E"(ptr noalias noundef nonnull sret([16 x i8]) align 1 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 16 captures(address) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc ptr @_ZN4uuid3fmt13encode_simple17hdab76873392a6cebE(ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 1 initializes((0, 32)) %1, i1 noundef zeroext %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %..i = select i1 %2, ptr @11, ptr @10           ; 32 uses
  %i.a = load i8, ptr %0, align 1, !alias.scope !33, !noalias !36, !noundef !7 ; 2 uses
  %i.b = lshr i8 %i.a, 4
  %i.c = zext nneg i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %..i, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !noalias !38, !noundef !7
  %i.f = and i8 %i.a, 15
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %..i, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noalias !38, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !33, !noalias !36, !noundef !7 ; 2 uses
  %i.l = lshr i8 %i.k, 4
  %i.m = zext nneg i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %..i, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !38, !noundef !7
  %i.p = and i8 %i.k, 15
  %i.q = zext nneg i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %..i, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !38, !noundef !7
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !33, !noalias !36, !noundef !7 ; 2 uses
  %i.v = lshr i8 %i.u, 4
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %..i, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !38, !noundef !7
  %i.z = and i8 %i.u, 15
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %..i, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !38, !noundef !7
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !33, !noalias !36, !noundef !7 ; 2 uses
  %i.af = lshr i8 %i.ae, 4
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %..i, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !38, !noundef !7
  %i.aj = and i8 %i.ae, 15
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %..i, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noalias !38, !noundef !7
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !33, !noalias !36, !noundef !7 ; 2 uses
  %i.ap = lshr i8 %i.ao, 4
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %..i, i64 %i.aq
end_hunk_0
begin_hunk_1_@"_ZN84_$LT$uuid..fmt..Simple$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$8from_str17h11d862d10015ce0cE":bb.a

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !398
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !400
  store i32 9, ptr %0, align 8, !alias.scope !395, !noalias !400
  br label %"_ZN64_$LT$uuid..fmt..Simple$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hb463747637c80ac6E.exit"

"_ZN64_$LT$uuid..fmt..Simple$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hb463747637c80ac6E.exit": ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @"_ZN86_$LT$uuid..Uuid$u20$as$u20$core..convert..TryFrom$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$8try_from17h29bb5036987d7ea6E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 4), (8, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.e = icmp eq i64 %i.d, 16
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.b, i64 16, i1 false), !alias.scope !404
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !406, !noalias !401
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi i32 [ 9, %bb.b ], [ 1, %bb.c ]
  store i32 %.sink.i, ptr %0, align 8, !alias.scope !406, !noalias !401
  %.val = load i64, ptr %1, align 8               ; 2 uses
  %i.g = icmp eq i64 %.val, 0
  br i1 %i.g, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2b0151d682dab0c1E.exit5", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i4"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i4": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2b0151d682dab0c1E.exit5"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2b0151d682dab0c1E.exit5": ; preds = %bb.d, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i4"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN88_$LT$uuid..fmt..Hyphenated$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$10from_slice17hfa5f0d35067a27beE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 4), (8, 16)) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %2, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.512.4.copyload14 = load i32, ptr %1, align 1, !alias.scope !407
  %.sroa.815.4..sroa_idx17 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.815.4.copyload18 = load i64, ptr %.sroa.815.4..sroa_idx17, align 1, !alias.scope !407
  %.sroa.9.4..sroa_idx19 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.9.sroa.0.0.copyload23 = load i32, ptr %.sroa.9.4..sroa_idx19, align 1, !alias.scope !407
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.512.4.copyload14, ptr %i.b, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.9.sroa.0.0.copyload23, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink42 = phi i64 [ %.sroa.815.4.copyload18, %bb.b ], [ %2, %bb.a ]
  %.sink = phi i32 [ 9, %bb.b ], [ 1, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink42, ptr %i.c, align 8
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN88_$LT$uuid..fmt..Hyphenated$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$8from_str17h5284e054fc4169d3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0.i = alloca [16 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !414
  call fastcc void @_ZN4uuid6parser16parse_hyphenated17hfde26580af7bac2aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2), !noalias !411
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !123, !noalias !414, !noundef !7 ; 2 uses
  %.not.i = icmp eq i8 %i.d, 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !414
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx3.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.65.0..sroa_idx.i, i64 7, i1 false), !noalias !414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !414
  %.sroa.6.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.6.0..sroa_idx1.i, align 8, !noalias !414
  call fastcc void @_ZN4uuid5error11InvalidUuid8into_err17h24911e7c71e594f4E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a)
  br label %"_ZN68_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h989e830c12f116cbE.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !414
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !416
  store i32 9, ptr %0, align 8, !alias.scope !411, !noalias !416
  br label %"_ZN68_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h989e830c12f116cbE.exit"

"_ZN68_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h989e830c12f116cbE.exit": ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN98_$LT$uuid..timestamp..Timestamp$u20$as$u20$core..convert..TryFrom$LT$std..time..SystemTime$GT$$GT$8try_from17habc1e6bd1281a32bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((0, 8), (16, 32)) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store i64 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN3std4time10SystemTime14duration_since17h85cfc48171ee6db2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 0, i32 noundef 0)
  %i.d = load i64, ptr %i.a, align 8, !range !30, !noundef !7
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 8, ptr %i.f, align 8
  %.sroa.350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @64 to i64), ptr %.sroa.350.0..sroa_idx, align 16
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 54, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %.sroa.5.0..sroa_idx52, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i32, ptr %i.i, align 8, !range !32, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 0, ptr %i.k, align 16
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.h, ptr %.sroa.425.0..sroa_idx, align 16
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.j, ptr %.sroa.526.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %.sroa.627.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ]
  store i64 %storemerge, ptr %0, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @"_ZN98_$LT$uuid..timestamp..context..v7_support..ContextV7$u20$as$u20$uuid..timestamp..ClockSequence$GT$17generate_sequence17had6d3c362c976013E"(ptr nofree noundef nonnull align 16 captures(none) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN98_$LT$uuid..timestamp..context..v7_support..ContextV7$u20$as$u20$uuid..timestamp..ClockSequence$GT$27generate_timestamp_sequence17ha397ddc3ca9b63edE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 16 %0, i64 noundef %1, i32 noundef %2)
  %i.b = load i64, ptr %i.a, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN98_$LT$uuid..timestamp..context..v7_support..ContextV7$u20$as$u20$uuid..timestamp..ClockSequence$GT$27generate_timestamp_sequence17ha397ddc3ca9b63edE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 16 captures(none) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i128, ptr %i.a, align 16, !noundef !7 ; 2 uses
  %i.c = icmp eq i128 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i64 %2 to i128
  %i.e = mul nuw nsw i128 %i.d, 1000000000
  %i.f = zext i32 %3 to i128
  %i.g = add nuw nsw i128 %i.e, %i.f
  %i.h = tail call i128 @llvm.uadd.sat.i128(i128 %i.g, i128 %i.b) ; 2 uses
  %i.i = udiv i128 %i.h, 1000000000               ; 2 uses
  %i.j = trunc i128 %i.i to i64
  %i.k = mul i128 %i.i, 1000000000
  %.decomposed = sub i128 %i.h, %i.k
  %i.l = trunc nuw nsw i128 %.decomposed to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi i32 [ %i.l, %bb.b ], [ %3, %bb.a ] ; 4 uses
  %.sroa.07.0 = phi i64 [ %i.j, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.035.0.copyload = load i64, ptr %i.m, align 16 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %.sroa.737.0.copyload = load i32, ptr %.sroa.737.0..sroa_idx, align 4
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.07.0, i64 1000) ; 2 uses
  %5 = extractvalue { i64, i1 } %4, 1
  %6 = extractvalue { i64, i1 } %4, 0
  %i.n = udiv i32 %.sroa.08.0, 1000000
  %i.o = zext nneg i32 %i.n to i64
  %i.p = tail call i64 @llvm.uadd.sat.i64(i64 %6, i64 %i.o)
  %i.q = select i1 %5, i64 -1, i64 %i.p, !prof !8 ; 3 uses
  %i.r = icmp ugt i64 %i.q, %.sroa.035.0.copyload
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.0.0.i.i = tail call noundef i32 @llvm.umax.i32(i32 %.sroa.08.0, i32 %.sroa.6.0.copyload) ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load i64, ptr %i.s, align 8, !noundef !7 ; 2 uses
  %i.u = load i64, ptr %1, align 16, !noundef !7
  %i.v = icmp eq i64 %i.u, 0                      ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.h

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.w = tail call noundef i64 @"_ZN57_$LT$uuid..rng..imp..RngImp$u20$as$u20$uuid..rng..Rng$GT$3u6417ha40d7f74ca0a8a51E"(), !noalias !417
  %i.x = and i64 %i.w, 2199023255551              ; 2 uses
  %i.y = load i64, ptr %1, align 16, !alias.scope !417, !noundef !7
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !417, !noundef !7 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28, !noalias !417
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !7 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.d, %bb.j
  %.sroa.06.0 = phi i64 [ %i.as, %bb.j ], [ %i.t, %bb.d ]
  %i.ag = add i64 %.sroa.06.0, 1                  ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, 4398046511103
  br i1 %i.ah, label %bb.l, label %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = urem i32 %.sroa.0.0.i.i, 1000000
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = udiv i64 %i.aj, %i.ae
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 16, !noundef !7
  %i.an = and i64 %i.am, %i.t
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !7
  %i.aq = and i64 %i.ap, 63
  %i.ar = shl i64 %i.ak, %i.aq
  %i.as = or i64 %i.ar, %i.an
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.at = zext i64 %.sroa.536.0.copyload to i128
  %i.au = mul nuw nsw i128 %i.at, 1000000000
  %i.av = zext i32 %.sroa.0.0.i.i to i128
  %i.aw = add nuw nsw i128 %i.au, 1000000
  %i.ax = add nuw nsw i128 %i.aw, %i.av
  %.frozen = freeze i128 %i.ax                    ; 2 uses
  %i.ay = udiv i128 %.frozen, 1000000000          ; 2 uses
  %i.az = trunc i128 %i.ay to i64                 ; 3 uses
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.az, i64 1000) ; 2 uses
  %8 = extractvalue { i64, i1 } %7, 1
  %9 = extractvalue { i64, i1 } %7, 0
  %i.ba = mul i128 %i.ay, 1000000000
  %.decomposed67 = sub i128 %.frozen, %i.ba
  %i.bb = trunc nuw nsw i128 %.decomposed67 to i32 ; 3 uses
  %i.bc = udiv i32 %i.bb, 1000000
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = tail call i64 @llvm.uadd.sat.i64(i64 %9, i64 %i.bd)
  %i.bf = select i1 %8, i64 -1, i64 %i.be, !prof !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.bg = tail call noundef i64 @"_ZN57_$LT$uuid..rng..imp..RngImp$u20$as$u20$uuid..rng..Rng$GT$3u6417ha40d7f74ca0a8a51E"(), !noalias !420
  %i.bh = and i64 %i.bg, 2199023255551            ; 2 uses
  br i1 %i.v, label %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !420, !noundef !7 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.n, label %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28, !noalias !420
  unreachable

_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split: ; preds = %bb.m, %bb.f
  %.sink = phi i32 [ %.sroa.08.0, %bb.f ], [ %i.bb, %bb.m ] ; 2 uses
  %.sink65 = phi i64 [ %i.ab, %bb.f ], [ %i.bj, %bb.m ]
  %.sink63 = phi i64 [ %i.x, %bb.f ], [ %i.bh, %bb.m ]
  %.sroa.5.0.ph = phi i64 [ %.sroa.07.0, %bb.f ], [ %i.az, %bb.m ]
  %.sroa.0.044.ph = phi i64 [ %i.q, %bb.f ], [ %i.bf, %bb.m ]
  %i.bl = urem i32 %.sink, 1000000
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = udiv i64 %i.bm, %.sink65
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i64, ptr %i.bo, align 16, !noundef !7
  %i.bq = and i64 %i.bp, %.sink63
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !noundef !7
  %i.bt = and i64 %i.bs, 63
  %i.bu = shl i64 %i.bn, %i.bt
  %i.bv = or i64 %i.bu, %i.bq
  br label %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit

_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit: ; preds = %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split, %bb.l, %bb.e, %bb.i
  %.sroa.12.0 = phi i32 [ %.sroa.737.0.copyload, %bb.i ], [ undef, %bb.l ], [ undef, %bb.e ], [ undef, %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split ]
  %.sroa.7.0 = phi i32 [ %.sroa.0.0.i.i, %bb.i ], [ %i.bb, %bb.l ], [ %.sroa.08.0, %bb.e ], [ %.sink, %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %.sroa.536.0.copyload, %bb.i ], [ %i.az, %bb.l ], [ %.sroa.07.0, %bb.e ], [ %.sroa.5.0.ph, %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split ] ; 2 uses
  %.sroa.0.044 = phi i64 [ %.sroa.035.0.copyload, %bb.i ], [ %i.bf, %bb.l ], [ %i.q, %bb.e ], [ %.sroa.0.044.ph, %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split ]
  %.sroa.0.0 = phi i64 [ %i.ag, %bb.i ], [ %i.bh, %bb.l ], [ %i.x, %bb.e ], [ %i.bv, %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split ] ; 2 uses
  store i64 %.sroa.0.044, ptr %i.m, align 16
  store i64 %.sroa.5.0, ptr %.sroa.536.0..sroa_idx, align 8
  store i32 %.sroa.7.0, ptr %.sroa.6.0..sroa_idx, align 16
  store i32 %.sroa.12.0, ptr %.sroa.737.0..sroa_idx, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %.sroa.0.0, ptr %i.bw, align 8
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7.0, ptr %i.by, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE() unnamed_addr #12

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 4) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN57_$LT$core..time..Duration$u20$as$u20$core..fmt..Debug$GT$3fmt17h6dc90c1fafc37461E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #15

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull ptr @_ZN9getrandom8backends27linux_android_with_fallback4init17h788c862a68ad1cd4E() unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.bswap.i128(i128) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @"_ZN91_$LT$std..time..SystemTime$u20$as$u20$core..ops..arith..Add$LT$core..time..Duration$GT$$GT$3add17h2da34e10fae85c2bE"(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std4time10SystemTime7elapsed17hb54201ce03b980a7E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.uadd.sat.i128(i128, i128) #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17h70f50921d2b95bdfE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN62_$LT$getrandom..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hc6b6d3de1a5ce8d5E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #19

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #20

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #21

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef range(i64 0, -9223372036854775807), i64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std4time10SystemTime14duration_since17h85cfc48171ee6db2E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef i32 @_ZN9getrandom8backends27linux_android_with_fallback17use_file_fallback17hd4fde6409425fab5E(ptr noalias noundef nonnull align 1, i64 noundef) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_ZN9getrandom8backends8use_file5utils9get_errno9get_errno17h698397144bad8d62E() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 1, 0) i32 @_ZN9getrandom5error5Error10from_errno17hf4b4f1ca7ac401b4E(i32 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { cold }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { nounwind }
attributes #28 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E: argument 0"}
!5 = distinct !{!5, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E"}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = !{}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!10, !12}
!10 = distinct !{!10, !11, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E: argument 0"}
!11 = distinct !{!11, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E"}
!12 = distinct !{!12, !13, !"_ZN4uuid9timestamp7context11std_support101_$LT$impl$u20$uuid..timestamp..ClockSequence$u20$for$u20$std..sync..poison..mutex..Mutex$LT$C$GT$$GT$27generate_timestamp_sequence17hccb54dd7f35757d7E: argument 0"}
!13 = distinct !{!13, !"_ZN4uuid9timestamp7context11std_support101_$LT$impl$u20$uuid..timestamp..ClockSequence$u20$for$u20$std..sync..poison..mutex..Mutex$LT$C$GT$$GT$27generate_timestamp_sequence17hccb54dd7f35757d7E"}
!14 = !{!12}
!15 = !{i64 8}
!16 = !{i64 1}
!17 = !{!18, !20}
!18 = distinct !{!18, !19, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h6b1cf17435ab68aeE: argument 0"}
!19 = distinct !{!19, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h6b1cf17435ab68aeE"}
!20 = distinct !{!20, !19, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h6b1cf17435ab68aeE: argument 1"}
!21 = !{!18}
!22 = !{!20}
!23 = distinct !{null}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN4uuid9timestamp9Timestamp3now17ha4d980ed2e28162aE: argument 0"}
!26 = distinct !{!26, !"_ZN4uuid9timestamp9Timestamp3now17ha4d980ed2e28162aE"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hba1abef4bc4105ccE: argument 0"}
!29 = distinct !{!29, !"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hba1abef4bc4105ccE"}
!30 = !{i64 0, i64 2}
!31 = !{!28, !25}
!32 = !{i32 0, i32 1000000000}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN4uuid3fmt13format_simple17hf3e5591187cd59dcE: argument 1"}
!35 = distinct !{!35, !"_ZN4uuid3fmt13format_simple17hf3e5591187cd59dcE"}
!36 = !{!37}
!37 = distinct !{!37, !35, !"_ZN4uuid3fmt13format_simple17hf3e5591187cd59dcE: argument 0"}
!38 = !{!37, !34}
!39 = !{!40, !42, !43, !45}
!40 = distinct !{!40, !41, !"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h191d239ea6a52dc4E: argument 0"}
!41 = distinct !{!41, !"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h191d239ea6a52dc4E"}
!42 = distinct !{!42, !41, !"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h191d239ea6a52dc4E: argument 1"}
!43 = distinct !{!43, !44, !"_ZN4uuid3fmt60_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$uuid..Uuid$GT$3fmt17h6fa6b53201eb166cE: argument 0"}
!44 = distinct !{!44, !"_ZN4uuid3fmt60_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$uuid..Uuid$GT$3fmt17h6fa6b53201eb166cE"}
!45 = distinct !{!45, !44, !"_ZN4uuid3fmt60_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$uuid..Uuid$GT$3fmt17h6fa6b53201eb166cE: argument 1"}
!46 = !{!42, !45}
!47 = !{!40, !43}
!48 = !{!49, !51}
!49 = distinct !{!49, !50, !"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h191d239ea6a52dc4E: argument 0"}
!50 = distinct !{!50, !"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h191d239ea6a52dc4E"}
!51 = distinct !{!51, !50, !"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h191d239ea6a52dc4E: argument 1"}
!52 = !{!51}
!53 = !{!49}
!54 = !{i8 0, i8 4}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E: argument 0"}
!57 = distinct !{!57, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E"}
!58 = distinct !{null}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E: argument 0"}
!61 = distinct !{!61, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E: argument 0"}
!64 = distinct !{!64, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E: argument 0"}
!67 = distinct !{!67, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E"}
!68 = !{!69, !71}
!69 = distinct !{!69, !70, !"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17ha13e41d161edd8f9E: argument 0"}
!70 = distinct !{!70, !"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17ha13e41d161edd8f9E"}
!71 = distinct !{!71, !70, !"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17ha13e41d161edd8f9E: argument 1"}
!72 = !{!73, !75, !76, !78, !79, !81, !69, !71}
!73 = distinct !{!73, !74, !"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h191d239ea6a52dc4E: argument 0"}
!74 = distinct !{!74, !"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h191d239ea6a52dc4E"}
!75 = distinct !{!75, !74, !"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h191d239ea6a52dc4E: argument 1"}
!76 = distinct !{!76, !77, !"_ZN4uuid3fmt60_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$uuid..Uuid$GT$3fmt17h6fa6b53201eb166cE: argument 0"}
!77 = distinct !{!77, !"_ZN4uuid3fmt60_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$uuid..Uuid$GT$3fmt17h6fa6b53201eb166cE"}
!78 = distinct !{!78, !77, !"_ZN4uuid3fmt60_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$uuid..Uuid$GT$3fmt17h6fa6b53201eb166cE: argument 1"}
!79 = distinct !{!79, !80, !"_ZN4uuid3fmt59_$LT$impl$u20$core..fmt..Display$u20$for$u20$uuid..Uuid$GT$3fmt17h147f08f520647497E: argument 0"}
!80 = distinct !{!80, !"_ZN4uuid3fmt59_$LT$impl$u20$core..fmt..Display$u20$for$u20$uuid..Uuid$GT$3fmt17h147f08f520647497E"}
!81 = distinct !{!81, !80, !"_ZN4uuid3fmt59_$LT$impl$u20$core..fmt..Display$u20$for$u20$uuid..Uuid$GT$3fmt17h147f08f520647497E: argument 1"}
!82 = !{!69}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E: argument 0"}
!85 = distinct !{!85, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E"}
!86 = !{!84, !69, !71}
!87 = !{!71}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE: argument 0"}
!90 = distinct !{!90, !"_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE: argument 0"}
!93 = distinct !{!93, !"_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN4uuid9timestamp26decode_gregorian_timestamp17hcaa87c3a643166e7E: argument 0"}
!96 = distinct !{!96, !"_ZN4uuid9timestamp26decode_gregorian_timestamp17hcaa87c3a643166e7E"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN4uuid9timestamp33decode_sorted_gregorian_timestamp17h8f78f0f52ce292b6E: argument 0"}
!99 = distinct !{!99, !"_ZN4uuid9timestamp33decode_sorted_gregorian_timestamp17h8f78f0f52ce292b6E"}
!100 = !{i8 0, i8 5}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE: argument 0"}
!103 = distinct !{!103, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE"}
!104 = !{!105, !107}
!105 = distinct !{!105, !106, !"_ZN4core3str11validations23next_code_point_reverse17h2c59968780c8f0a9E: argument 0"}
!106 = distinct !{!106, !"_ZN4core3str11validations23next_code_point_reverse17h2c59968780c8f0a9E"}
!107 = distinct !{!107, !108, !"_ZN102_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h76e3bd467a52c44bE: argument 0"}
!108 = distinct !{!108, !"_ZN102_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h76e3bd467a52c44bE"}
!109 = !{!110, !112}
!110 = distinct !{!110, !111, !"_ZN4core3str11validations15next_code_point17hf7b453c589ba8888E: argument 0"}
!111 = distinct !{!111, !"_ZN4core3str11validations15next_code_point17hf7b453c589ba8888E"}
!112 = distinct !{!112, !113, !"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h48457e68ea1e620eE: argument 0"}
!113 = distinct !{!113, !"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h48457e68ea1e620eE"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN4core3str11validations15next_code_point17hf7b453c589ba8888E: argument 0"}
!116 = distinct !{!116, !"_ZN4core3str11validations15next_code_point17hf7b453c589ba8888E"}
!117 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!118 = !{!119, !121}
!119 = distinct !{!119, !120, !"_ZN4core3str11validations15next_code_point17hf7b453c589ba8888E: argument 0"}
!120 = distinct !{!120, !"_ZN4core3str11validations15next_code_point17hf7b453c589ba8888E"}
!121 = distinct !{!121, !122, !"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h48457e68ea1e620eE: argument 0"}
!122 = distinct !{!122, !"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h48457e68ea1e620eE"}
!123 = !{i8 0, i8 6}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$15try_parse_ascii17h1e874a332d0d9dcdE: argument 0"}
!126 = distinct !{!126, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$15try_parse_ascii17h1e874a332d0d9dcdE"}
!127 = !{!125, !128}
!128 = distinct !{!128, !126, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$15try_parse_ascii17h1e874a332d0d9dcdE: argument 1"}
!129 = !{!128}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$9parse_str17haed7e84c7b2e7c45E: argument 0"}
!132 = distinct !{!132, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$9parse_str17haed7e84c7b2e7c45E"}
!133 = !{!131, !134}
!134 = distinct !{!134, !132, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$9parse_str17haed7e84c7b2e7c45E: argument 1"}
!135 = !{!134}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$9parse_str17haed7e84c7b2e7c45E: argument 0"}
!138 = distinct !{!138, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$9parse_str17haed7e84c7b2e7c45E"}
!139 = !{!137, !140}
!140 = distinct !{!140, !138, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$9parse_str17haed7e84c7b2e7c45E: argument 1"}
!141 = !{!140}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZN4uuid6parser78_$LT$impl$u20$core..convert..TryFrom$LT$$RF$str$GT$$u20$for$u20$uuid..Uuid$GT$8try_from17hb0830f93e18c10c2E: argument 0"}
!144 = distinct !{!144, !"_ZN4uuid6parser78_$LT$impl$u20$core..convert..TryFrom$LT$$RF$str$GT$$u20$for$u20$uuid..Uuid$GT$8try_from17hb0830f93e18c10c2E"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$9parse_str17haed7e84c7b2e7c45E: argument 0"}
!147 = distinct !{!147, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$9parse_str17haed7e84c7b2e7c45E"}
!148 = !{!143, !149}
!149 = distinct !{!149, !144, !"_ZN4uuid6parser78_$LT$impl$u20$core..convert..TryFrom$LT$$RF$str$GT$$u20$for$u20$uuid..Uuid$GT$8try_from17hb0830f93e18c10c2E: argument 1"}
!150 = !{!146, !151, !143, !149}
!151 = distinct !{!151, !147, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$9parse_str17haed7e84c7b2e7c45E: argument 1"}
!152 = !{!146, !143}
!153 = !{!151, !149}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E: argument 0"}
!156 = distinct !{!156, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E"}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E: argument 0"}
!159 = distinct !{!159, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E"}
!160 = !{!161, !163}
!161 = distinct !{!161, !162, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h86b55017c06adfe9E: argument 0"}
!162 = distinct !{!162, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h86b55017c06adfe9E"}
!163 = distinct !{!163, !162, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h86b55017c06adfe9E: argument 1"}
!164 = !{!165}
!165 = distinct !{!165, !162, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h86b55017c06adfe9E: argument 2"}
!166 = !{!167, !169}
!167 = distinct !{!167, !168, !"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$10from_slice17h3f9bca5b1b112434E: argument 0"}
!168 = distinct !{!168, !"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$10from_slice17h3f9bca5b1b112434E"}
!169 = distinct !{!169, !168, !"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$10from_slice17h3f9bca5b1b112434E: argument 1"}
!170 = !{!171, !173, !174}
!171 = distinct !{!171, !172, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h86b55017c06adfe9E: argument 0"}
!172 = distinct !{!172, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h86b55017c06adfe9E"}
!173 = distinct !{!173, !172, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h86b55017c06adfe9E: argument 1"}
!174 = distinct !{!174, !175, !"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$13from_slice_le17h4733f87721390f98E: argument 1"}
!175 = distinct !{!175, !"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$13from_slice_le17h4733f87721390f98E"}
!176 = !{!177, !178}
!177 = distinct !{!177, !172, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h86b55017c06adfe9E: argument 2"}
!178 = distinct !{!178, !175, !"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$13from_slice_le17h4733f87721390f98E: argument 0"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZN4uuid7builder7Builder24from_gregorian_timestamp17h775f95606c222c75E: argument 0"}
!181 = distinct !{!181, !"_ZN4uuid7builder7Builder24from_gregorian_timestamp17h775f95606c222c75E"}
!182 = !{!183}
!183 = distinct !{!183, !181, !"_ZN4uuid7builder7Builder24from_gregorian_timestamp17h775f95606c222c75E: argument 1"}
!184 = !{!185, !183}
end_hunk_1
