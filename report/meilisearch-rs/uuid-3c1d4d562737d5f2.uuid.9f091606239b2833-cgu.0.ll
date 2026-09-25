Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/uuid-3c1d4d562737d5f2.uuid.9f091606239b2833-cgu.0?download=true
inline.NumInlined: 169
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@"_ZN104_$LT$uuid..timestamp..context..v7_support..SharedContextV7$u20$as$u20$uuid..timestamp..ClockSequence$GT$17generate_sequence17h257f4dfdde82db6eE":bb.a
; Function Attrs: nonlazybind uwtable
define void @"_ZN104_$LT$uuid..timestamp..context..v7_support..SharedContextV7$u20$as$u20$uuid..timestamp..ClockSequence$GT$27generate_timestamp_sequence17hc93c710fd8b36f28E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 16 %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !noalias !24
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 16 %1), !noalias !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !24
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E.exit.i", label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !24
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E.exit.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E.exit.i": ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.j = load atomic i8, ptr %i.i monotonic, align 4, !noalias !24 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @"_ZN98_$LT$uuid..timestamp..context..v7_support..ContextV7$u20$as$u20$uuid..timestamp..ClockSequence$GT$27generate_timestamp_sequence17ha397ddc3ca9b63edE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 16 %i.k, i64 noundef %2, i32 noundef %3)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E.exit.i"
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr112drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$uuid..timestamp..context..v7_support..ContextV7$GT$$GT$17hd70e494c7cc9f025E"(ptr nonnull align 16 %1, i8 %.sroa.01.0.i.i.i) #25
          to label %bb.l unwind label %bb.k, !noalias !25

bb.f:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E.exit.i"
  %i.m = trunc nuw i8 %.sroa.01.0.i.i.i to i1
  br i1 %i.m, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !25
  %i.o = and i64 %i.n, 9223372036854775807
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !25
  br i1 %i.q, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store atomic i8 1, ptr %i.i monotonic, align 4, !noalias !25
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.r = atomicrmw xchg ptr %1, i32 0 release, align 4, !noalias !25
  %i.s = icmp eq i32 %i.r, 2
  br i1 %i.s, label %bb.j, label %"_ZN4uuid9timestamp7context11std_support101_$LT$impl$u20$uuid..timestamp..ClockSequence$u20$for$u20$std..sync..poison..mutex..Mutex$LT$C$GT$$GT$27generate_timestamp_sequence17hccb54dd7f35757d7E.exit", !prof !7

bb.j:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 16 %1), !noalias !25
  br label %"_ZN4uuid9timestamp7context11std_support101_$LT$impl$u20$uuid..timestamp..ClockSequence$u20$for$u20$std..sync..poison..mutex..Mutex$LT$C$GT$$GT$27generate_timestamp_sequence17hccb54dd7f35757d7E.exit"

bb.k:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #26, !noalias !25
  unreachable

bb.l:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.l

"_ZN4uuid9timestamp7context11std_support101_$LT$impl$u20$uuid..timestamp..ClockSequence$u20$for$u20$std..sync..poison..mutex..Mutex$LT$C$GT$$GT$27generate_timestamp_sequence17hccb54dd7f35757d7E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdcec08df52f2862dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6
  %i.b = tail call noundef zeroext i1 @"_ZN57_$LT$core..time..Duration$u20$as$u20$core..fmt..Debug$GT$3fmt17h6dc90c1fafc37461E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h39abea5e69baa2c5E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !6, !align !9, !noundef !6
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !6
  %i.c = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17he1f7fcba127a3dc9E(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h6b1cf17435ab68aeE.exit":
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !31
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !32, !inline_history !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30
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
  br i1 %i.e, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.f, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52ac9c9ab6f2bc0bE.exit", !prof !7

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
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
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
  %i.b = load i64, ptr %i.a, align 16, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !noundef !6
  %i.e = load i128, ptr %1, align 16, !noundef !6 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.g = load i8, ptr %i.f, align 4, !noundef !6  ; 7 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i128 @"_ZN57_$LT$uuid..rng..imp..RngImp$u20$as$u20$uuid..rng..Rng$GT$4u12817h4c956bd595332695E"()
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h3233bc5980742a0cE.exit"

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i8 %i.g, 12
  br i1 %i.j, label %bb.e, label %bb.d

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h3233bc5980742a0cE.exit": ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.01.0 = phi i128 [ %i.i, %bb.b ], [ %i.aj, %bb.e ], [ %i.bl, %bb.g ], [ %i.as, %bb.f ]
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.b, i64 1000) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = udiv i32 %i.d, 1000000
  %i.o = zext nneg i32 %i.n to i64
  %i.p = tail call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %i.o)
  %i.q = select i1 %i.l, i64 -1, i64 %i.p, !prof !7 ; 6 uses
  %2 = tail call i128 @llvm.bswap.i128(i128 %.sroa.01.0) ; 10 uses
  %.sroa.433.1.extract.trunc = trunc i128 %2 to i8
  %.sroa.433.2.extract.shift35 = lshr i128 %2, 8
  %.sroa.433.2.extract.trunc = trunc i128 %.sroa.433.2.extract.shift35 to i8
  %.sroa.433.3.extract.shift36 = lshr i128 %2, 16
  %.sroa.433.3.extract.trunc = trunc i128 %.sroa.433.3.extract.shift36 to i8
  %.sroa.433.4.extract.shift37 = lshr i128 %2, 24
  %.sroa.433.4.extract.trunc = trunc i128 %.sroa.433.4.extract.shift37 to i8
  %.sroa.433.5.extract.shift38 = lshr i128 %2, 32
  %.sroa.433.5.extract.trunc = trunc i128 %.sroa.433.5.extract.shift38 to i8
  %.sroa.433.6.extract.shift39 = lshr i128 %2, 40
  %.sroa.433.6.extract.trunc = trunc i128 %.sroa.433.6.extract.shift39 to i8
  %.sroa.433.7.extract.shift40 = lshr i128 %2, 48
  %.sroa.433.7.extract.trunc = trunc i128 %.sroa.433.7.extract.shift40 to i8
  %.sroa.433.8.extract.shift41 = lshr i128 %2, 56
  %.sroa.433.8.extract.trunc = trunc i128 %.sroa.433.8.extract.shift41 to i8
  %.sroa.433.9.extract.shift42 = lshr i128 %2, 64
  %.sroa.433.9.extract.trunc = trunc i128 %.sroa.433.9.extract.shift42 to i8
  %.sroa.433.10.extract.shift43 = lshr i128 %2, 72
  %.sroa.433.10.extract.trunc = trunc i128 %.sroa.433.10.extract.shift43 to i8
  %i.r = lshr i64 %i.q, 16
  %3 = and i8 %.sroa.433.1.extract.trunc, 15
  %4 = and i8 %.sroa.433.3.extract.trunc, 63
  %5 = or disjoint i8 %4, -128
  %i.s = lshr i64 %i.q, 40
  %i.t = trunc i64 %i.s to i8
  %i.u = lshr i64 %i.q, 32
  %i.v = trunc i64 %i.u to i8
  %i.w = lshr i64 %i.q, 24
  %i.x = trunc i64 %i.w to i8
  %i.y = trunc i64 %i.r to i8
  %i.z = lshr i64 %i.q, 8
  %i.aa = trunc i64 %i.z to i8
  %i.ab = trunc i64 %i.q to i8
  %6 = or disjoint i8 %3, 112
  store i8 %i.t, ptr %0, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.v, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.x, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.y, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.aa, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ab, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %6, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %.sroa.433.2.extract.trunc, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %5, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.433.4.extract.trunc, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %.sroa.433.5.extract.trunc, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %.sroa.433.6.extract.trunc, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.433.7.extract.trunc, ptr %.sroa.13.0..sroa_idx.a, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %.sroa.433.8.extract.trunc, ptr %.sroa.16.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %.sroa.433.9.extract.trunc, ptr %.sroa.17.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %.sroa.433.10.extract.trunc, ptr %.sroa.18.0..sroa_idx, align 1
  ret void

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp ult i8 %i.g, 74
  br i1 %i.ac, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ad = tail call noundef i128 @"_ZN57_$LT$uuid..rng..imp..RngImp$u20$as$u20$uuid..rng..Rng$GT$4u12817h4c956bd595332695E"()
  %i.ae = zext nneg i8 %i.g to i128
  %i.af = lshr i128 -1, %i.ae
  %i.ag = and i128 %i.ad, %i.af
  %narrow = sub nuw i8 -128, %i.g
  %i.ah = zext nneg i8 %narrow to i128
  %i.ai = shl i128 %i.e, %i.ah
  %i.aj = or i128 %i.ag, %i.ai
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h3233bc5980742a0cE.exit"

bb.f:                                             ; preds = %bb.d
  %i.ak = tail call i8 @llvm.umin.i8(i8 %i.g, i8 -128)
  %narrow34 = add nuw i8 %i.ak, 116
  %i.al = and i8 %narrow34, 127
  %i.am = zext nneg i8 %i.al to i128
  %i.an = shl nsw i128 -1, %i.am                  ; 2 uses
  %i.ao = xor i128 %i.an, -1
  %i.ap = and i128 %i.e, %i.ao
  %i.aq = and i128 %i.an, %i.e
  %i.ar = shl i128 %i.aq, 2
  %i.as = or i128 %i.ar, %i.ap
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h3233bc5980742a0cE.exit"

bb.g:                                             ; preds = %bb.d
  %i.at = zext nneg i8 %i.g to i32                ; 3 uses
  %i.au = add nuw nsw i32 %i.at, 116
  %i.av = and i32 %i.au, 127
  %i.aw = zext nneg i32 %i.av to i128
  %i.ax = shl nsw i128 -1, %i.aw                  ; 2 uses
  %i.ay = xor i128 %i.ax, -1
  %i.az = and i128 %i.e, %i.ay
  %i.ba = and i128 %i.ax, %i.e
  %i.bb = shl i128 %i.ba, 2
  %i.bc = or i128 %i.bb, %i.az
  %i.bd = add nuw nsw i32 %i.at, 2
  %i.be = tail call noundef i128 @"_ZN57_$LT$uuid..rng..imp..RngImp$u20$as$u20$uuid..rng..Rng$GT$4u12817h4c956bd595332695E"()
  %i.bf = zext nneg i32 %i.bd to i128
  %i.bg = lshr i128 -1, %i.bf
  %i.bh = and i128 %i.be, %i.bg
  %i.bi = sub nuw nsw i32 126, %i.at
  %i.bj = zext nneg i32 %i.bi to i128
  %i.bk = shl i128 %i.bc, %i.bj
  %i.bl = or i128 %i.bh, %i.bk
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37
  call void @_ZN3std4time10SystemTime7elapsed17hb54201ce03b980a7E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @24), !noalias !37
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.e = load i64, ptr %i.b, align 8, !range !10, !alias.scope !38, !noalias !37, !noundef !6
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN4uuid9timestamp9Timestamp3now17ha4d980ed2e28162aE.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !38, !noalias !37, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i32, ptr %i.i, align 8, !range !11, !alias.scope !38, !noalias !37, !noundef !6
  store i64 %i.h, ptr %i.a, align 8, !noalias !39
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.j, ptr %i.k, align 8, !noalias !39
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @25, i64 noundef 86, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #28, !noalias !39
  unreachable

_ZN4uuid9timestamp9Timestamp3now17ha4d980ed2e28162aE.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !38, !noalias !37, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i32, ptr %i.n, align 8, !range !11, !alias.scope !38, !noalias !37, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !37
  call void @"_ZN104_$LT$uuid..timestamp..context..v7_support..SharedContextV7$u20$as$u20$uuid..timestamp..ClockSequence$GT$27generate_timestamp_sequence17hc93c710fd8b36f28E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 16 @_ZN4uuid9timestamp7context10v7_support10CONTEXT_V717h7344bce9524a2eb4E, i64 noundef %i.m, i32 noundef range(i32 0, 1000000000) %i.o), !noalias !37
  %i.p = load i64, ptr %i.c, align 8, !noalias !37, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !37, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = load i32, ptr %i.s, align 8, !noalias !37, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37
  %i.u = zext i64 %i.p to i128
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.r, ptr %i.v, align 16, !alias.scope !37
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.t, ptr %i.w, align 8, !alias.scope !37
  store i128 %i.u, ptr %i.d, align 16, !alias.scope !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i8 42, ptr %i.x, align 4, !alias.scope !37
  call void @"_ZN4uuid2v728_$LT$impl$u20$uuid..Uuid$GT$6new_v717hdd476052c9767b28E"(ptr noalias noundef nonnull sret([16 x i8]) align 1 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 16 captures(address) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc ptr @_ZN4uuid3fmt13encode_simple17hdab76873392a6cebE(ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 1 initializes((0, 32)) %1, i1 noundef zeroext %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %..i = select i1 %2, ptr @11, ptr @10           ; 32 uses
  %i.a = load i8, ptr %0, align 1, !alias.scope !43, !noalias !44, !noundef !6 ; 2 uses
  %i.b = lshr i8 %i.a, 4
  %i.c = zext nneg i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %..i, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !noalias !45, !noundef !6
  %i.f = and i8 %i.a, 15
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %..i, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noalias !45, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !43, !noalias !44, !noundef !6 ; 2 uses
  %i.l = lshr i8 %i.k, 4
  %i.m = zext nneg i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %..i, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !45, !noundef !6
  %i.p = and i8 %i.k, 15
  %i.q = zext nneg i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %..i, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !45, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !43, !noalias !44, !noundef !6 ; 2 uses
  %i.v = lshr i8 %i.u, 4
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %..i, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !45, !noundef !6
  %i.z = and i8 %i.u, 15
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %..i, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !45, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !43, !noalias !44, !noundef !6 ; 2 uses
  %i.af = lshr i8 %i.ae, 4
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %..i, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !45, !noundef !6
  %i.aj = and i8 %i.ae, 15
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %..i, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noalias !45, !noundef !6
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !43, !noalias !44, !noundef !6 ; 2 uses
  %i.ap = lshr i8 %i.ao, 4
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %..i, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noalias !45, !noundef !6
  %i.at = and i8 %i.ao, 15
  %i.au = zext nneg i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %..i, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !45, !noundef !6
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !43, !noalias !44, !noundef !6 ; 2 uses
  %i.az = lshr i8 %i.ay, 4
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %..i, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !45, !noundef !6
  %i.bd = and i8 %i.ay, 15
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %..i, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !45, !noundef !6
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !43, !noalias !44, !noundef !6 ; 2 uses
  %i.bj = lshr i8 %i.bi, 4
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %..i, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !45, !noundef !6
  %i.bn = and i8 %i.bi, 15
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %..i, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !45, !noundef !6
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !43, !noalias !44, !noundef !6 ; 2 uses
  %i.bt = lshr i8 %i.bs, 4
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %..i, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !45, !noundef !6
  %i.bx = and i8 %i.bs, 15
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %..i, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !45, !noundef !6
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load i8, ptr %i.cb, align 1, !alias.scope !43, !noalias !44, !noundef !6 ; 2 uses
  %i.cd = lshr i8 %i.cc, 4
  %i.ce = zext nneg i8 %i.cd to i64
end_hunk_0
