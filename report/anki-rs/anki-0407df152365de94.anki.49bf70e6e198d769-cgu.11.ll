inline.NumInlined: 6091
inline.NumDeleted: 2657
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 42
begin_hunk_0_@"_ZN4anki7backend7ankiweb90_$LT$impl$u20$anki..services..BackendAnkiwebService$u20$for$u20$anki..backend..Backend$GT$16check_for_update17hebc579ad35bd6021E":bb.a
bb.n:                                             ; preds = %bb.o, %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !2461
  unreachable

.thread.i:                                        ; preds = %bb.o, %bb.h
  %.pn3.i = phi { ptr, i32 } [ %i.s, %bb.h ], [ %lpad.thr_comm.split-lp.i, %bb.o ]
  resume { ptr, i32 } %.pn3.i

bb.o:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$anki_proto..ankiweb..CheckForUpdateRequest$GT$17h7a3af68090d3f688E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %2) #31
          to label %.thread.i unwind label %bb.n, !noalias !2454

"_ZN4anki7backend7ankiweb40_$LT$impl$u20$anki..backend..Backend$GT$4post17h0a4c1835589b0e4bE.exit": ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2445
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki7backend9ankidroid92_$LT$impl$u20$anki..services..BackendAnkidroidService$u20$for$u20$anki..backend..Backend$GT$13set_page_size17hfd009322b3b18115E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h86caac44ece2a52bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.c)
  invoke void @_ZN4anki9ankidroid2db17set_max_page_size17hd1eb1c138a0ae472E(i64 noundef %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr290drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$GT$$GT$$GT$17h040a5700c932da8eE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #31
          to label %bb.m unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775773, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2462)
  %i.e = load i64, ptr %i.a, align 8, !range !571, !alias.scope !2462, !noundef !4
  %i.f = icmp eq i64 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !2462, !nonnull !4, !align !11, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i = load i8, ptr %i.h, align 8, !range !112, !alias.scope !2462, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.j = trunc nuw i8 %.val1.i to i1
  br i1 %i.j, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8, !noalias !2462
  %i.l = and i64 %i.k, 9223372036854775807
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i, label %bb.f, !prof !91

bb.f:                                             ; preds = %bb.e
  %i.n = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE(), !noalias !2462
  br i1 %i.n, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i8 1, ptr %i.i monotonic, align 4, !noalias !2462
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.o = atomicrmw xchg ptr %.val.i, i32 0 release, align 4, !noalias !2462
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %"_ZN4core3ptr121drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$GT$17h02b35b9401f3527bE.exit.sink.split.i", label %"_ZN4core3ptr290drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$GT$$GT$$GT$17h040a5700c932da8eE.exit", !prof !13

bb.h:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2465)
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !2468, !nonnull !4, !align !11, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i.i = load i8, ptr %i.q, align 8, !range !112, !alias.scope !2468, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 4
  %i.s = trunc nuw i8 %.val1.i.i to i1
  br i1 %i.s, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8, !noalias !2468
  %i.u = and i64 %i.t, 9223372036854775807
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i, label %bb.j, !prof !91

bb.j:                                             ; preds = %bb.i
  %i.w = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE(), !noalias !2468
  br i1 %i.w, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store atomic i8 1, ptr %i.r monotonic, align 4, !noalias !2468
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.x = atomicrmw xchg ptr %.val.i.i, i32 0 release, align 4, !noalias !2468
  %i.y = icmp eq i32 %i.x, 2
  br i1 %i.y, label %"_ZN4core3ptr121drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$GT$17h02b35b9401f3527bE.exit.sink.split.i", label %"_ZN4core3ptr290drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$GT$$GT$$GT$17h040a5700c932da8eE.exit", !prof !13

"_ZN4core3ptr121drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$GT$17h02b35b9401f3527bE.exit.sink.split.i": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i, %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i
  %.val.i.sink.i = phi ptr [ %.val.i, %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i ], [ %.val.i.i, %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i ]
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %.val.i.sink.i), !noalias !2462
  br label %"_ZN4core3ptr290drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$GT$$GT$$GT$17h040a5700c932da8eE.exit"

"_ZN4core3ptr290drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$GT$$GT$$GT$17h040a5700c932da8eE.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i, %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i, %"_ZN4core3ptr121drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$GT$17h02b35b9401f3527bE.exit.sink.split.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.l:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

bb.m:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki7backend9ankidroid92_$LT$impl$u20$anki..services..BackendAnkidroidService$u20$for$u20$anki..backend..Backend$GT$19debug_produce_error17h4e13aca32d0b1dd4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  invoke void @_ZN4anki9ankidroid5error19debug_produce_error17h4e4fcf8bcc524302E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$anki_proto..generic..String$GT$17hdeb938ac53e2e8daE"(ptr noalias noundef align 8 dereferenceable(24) %2) #31
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %"_ZN4core3ptr48drop_in_place$LT$anki_proto..generic..String$GT$17hdeb938ac53e2e8daE.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr48drop_in_place$LT$anki_proto..generic..String$GT$17hdeb938ac53e2e8daE.exit": ; preds = %bb.c
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki7backend9ankidroid92_$LT$impl$u20$anki..services..BackendAnkidroidService$u20$for$u20$anki..backend..Backend$GT$25local_minutes_west_legacy17h20c20be7afe75369E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 12)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4anki9scheduler6timing28local_minutes_west_for_stamp17hf018df58ef9fd5b7E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, i64 noundef %2)
  %i.b = load i64, ptr %i.a, align 8, !range !660, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.b, -9223372036854775773
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.312.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.69.0..sroa_idx, i64 100, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.d, ptr %i.e, align 8
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki7backend9ankidroid92_$LT$impl$u20$anki..services..BackendAnkidroidService$u20$for$u20$anki..backend..Backend$GT$25sched_timing_today_legacy17h82c8f3245bae9ca7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 20)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = load i32, ptr %2, align 8, !range !249, !noundef !4
  %i.g = trunc nuw i32 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call noundef i32 @_ZN4anki9scheduler6timing25fixed_offset_from_minutes17h2c15b76e81d5c6e7E(i32 noundef %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.5.0 = phi i32 [ %i.j, %bb.b ], [ undef, %bb.a ]
  %.sroa.09.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i32, ptr %i.k, align 8, !noundef !4
  %i.m = tail call noundef i32 @_ZN4anki9scheduler6timing25fixed_offset_from_minutes17h2c15b76e81d5c6e7E(i32 noundef %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.o = load i32, ptr %i.n, align 4, !noundef !4
  %i.p = trunc i32 %i.o to i8
  call void @_ZN4anki9scheduler6timing18sched_timing_today17h123502627d03ef06E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, i64 noundef %i.c, i64 noundef %i.e, i32 noundef %.sroa.09.0, i32 %.sroa.5.0, i32 noundef %i.m, i1 noundef zeroext true, i8 %i.p)
  %i.q = load i64, ptr %i.a, align 8, !range !660, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.q, -9223372036854775773
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.526.0.copyload = load i64, ptr %.sroa.526.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.627.0.copyload = load i64, ptr %.sroa.627.0..sroa_idx, align 8
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.636.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.636.0..sroa_idx.a, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.930.0..sroa_idx, i64 80, i1 false)
  %.sroa.333.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.434.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %3 = load <2 x i32>, ptr %.sroa.728.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.627.0.copyload, ptr %.sroa.333.0..sroa_idx.a, align 8
  store <2 x i32> %3, ptr %.sroa.434.0..sroa_idx.a, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.516.0.copyload = load i64, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.617.0.copyload = load i32, ptr %.sroa.617.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.617.0.copyload, ptr %4, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.526.0.copyload.sink = phi i64 [ %.sroa.516.0.copyload, %bb.e ], [ %.sroa.526.0.copyload, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.526.0.copyload.sink, ptr %i.r, align 8
  store i64 %i.q, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki7storage4card8filtered26order_and_limit_for_search17h9843622442cdebb9E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 11 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [64 x i8], align 8                ; 11 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [48 x i8], align 8                ; 9 uses
  %i.r = alloca [24 x i8], align 8                ; 2 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 2 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [8 x i8], align 8                 ; 2 uses
  %i.z = alloca [8 x i8], align 8                 ; 2 uses
  %i.aa = alloca [4 x i8], align 4                ; 3 uses
  %i.ab = alloca [24 x i8], align 8               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !noundef !4 ; 3 uses
  store i32 %i.ad, ptr %i.aa, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4 ; 3 uses
  store i64 %i.af, ptr %i.z, align 8
  %i.ag = load i64, ptr %2, align 8, !noundef !4  ; 4 uses
  store i64 %i.ag, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val = load i32, ptr %i.ah, align 4, !noundef !4 ; 2 uses
  %switch.i = icmp ult i32 %.val, 11
  %.sroa.0.0.i = select i1 %switch.i, i32 %.val, i32 0
  switch i32 %.sroa.0.0.i, label %default.unreachable [
    i32 0, label %bb.o
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.l
    i32 10, label %bb.n
  ]

bb.b:                                             ; preds = %bb.o
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.sroa.0.1, label %bb.w, label %common.resume

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 %i.ag, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.aa, ptr %i.u, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h01bbff3c14dc0e0cE", ptr %.sroa.48.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.w, ptr %i.ai, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hace3f0074abbba1bE", ptr %.sroa.412.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2469
  store ptr @231, ptr %i.o, align 8, !noalias !2477
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2477
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.u, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2477
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !2477
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !2477
  call void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !4
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 %i.ad, ptr %i.n, align 4, !noalias !2478
  store i64 %i.af, ptr %i.m, align 8, !noalias !2478
  store i64 %i.ag, ptr %i.l, align 8, !noalias !2478
  store i8 0, ptr %i.k, align 1, !noalias !2478
  br i1 %3, label %.noexc, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.t, align 8, !alias.scope !2478
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.416.0..sroa_idx.i, align 8, !alias.scope !2478
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2478
  br label %bb.p

.noexc:                                           ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2478
  store ptr %i.n, ptr %i.j, align 8, !noalias !2478
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h01bbff3c14dc0e0cE", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2478
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.m, ptr %i.an, align 8, !noalias !2478
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hace3f0074abbba1bE", ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !2478
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.l, ptr %i.ao, align 8, !noalias !2478
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hace3f0074abbba1bE", ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2478
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.k, ptr %i.ap, align 8, !noalias !2478
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr @"_ZN74_$LT$anki..storage..sqlite..SqlSortOrder$u20$as$u20$core..fmt..Display$GT$3fmt17he273677a60478a94E", ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !2478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2481
  store ptr @221, ptr %i.i, align 8, !noalias !2489
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 4, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2489
  %.sroa.5.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx17.i, align 8, !noalias !2489
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 4, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2489
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !2489
  call void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2478
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2490)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %i.ad, ptr %i.h, align 4, !noalias !2490
  store i64 %i.af, ptr %i.g, align 8, !noalias !2490
  store i64 %i.ag, ptr %i.f, align 8, !noalias !2490
  store i8 1, ptr %i.e, align 1, !noalias !2490
  br i1 %3, label %.noexc41, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr %i.s, align 8, !alias.scope !2490
  %.sroa.416.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.416.0..sroa_idx.i31, align 8, !alias.scope !2490
  %.sroa.5.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i32, align 8, !alias.scope !2490
  br label %bb.q

.noexc41:                                         ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2490
  store ptr %i.h, ptr %i.d, align 8, !noalias !2490
end_hunk_0
