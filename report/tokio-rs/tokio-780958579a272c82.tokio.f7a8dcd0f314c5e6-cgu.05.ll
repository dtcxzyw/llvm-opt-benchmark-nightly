Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.05?download=true
inline.NumInlined: 431
inline.NumDeleted: 241
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix8listenerNtB2_12UnixListener8from_std:bb.a
bb.c:                                             ; preds = %bb.b
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.0..sroa_idx, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store i64 %i.d, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = call noundef i32 @close(i32 noundef %1) #24 ; 0 uses
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix8listenerNtB2_12UnixListener8into_std(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvMNtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB2_11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3net3uds8listener12UnixListenerE10into_innerB6_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = load i32, ptr %i.b, align 8, !range !16, !noundef !4
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !range !13, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.j, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix8listenerNtB2_12UnixListener9bind_addr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(116) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtNtCsbPfeiB6icZG_3mio3net3uds8listenerNtB2_12UnixListener9bind_addr(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(116) %1)
  %i.c = load i32, ptr %i.b, align 8, !range !16, !noundef !4
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 2, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !range !13, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB2_11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3net3uds8listener12UnixListenerE17new_with_interestB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, i32 noundef %i.i, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %i.j = load i64, ptr %i.a, align 8, !range !7, !noundef !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8
  store i64 2, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.j, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslghKHtsL3a4_5tokio4sync5watch10big_notifyNtB2_9BigNotify14notify_waiters(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs5_NtNtCslghKHtsL3a4_5tokio4sync6notifyNtB5_6Notify14notify_waiters(ptr noundef nonnull align 8 %0)
  %.sroa.0.0.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvMs5_NtNtCslghKHtsL3a4_5tokio4sync6notifyNtB5_6Notify14notify_waiters(ptr noundef nonnull align 8 %.sroa.0.0.ptr.1)
  %.sroa.0.0.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvMs5_NtNtCslghKHtsL3a4_5tokio4sync6notifyNtB5_6Notify14notify_waiters(ptr noundef nonnull align 8 %.sroa.0.0.ptr.2)
  %.sroa.0.0.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_RNvMs5_NtNtCslghKHtsL3a4_5tokio4sync6notifyNtB5_6Notify14notify_waiters(ptr noundef nonnull align 8 %.sroa.0.0.ptr.3)
  %.sroa.0.0.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_RNvMs5_NtNtCslghKHtsL3a4_5tokio4sync6notifyNtB5_6Notify14notify_waiters(ptr noundef nonnull align 8 %.sroa.0.0.ptr.4)
  %.sroa.0.0.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_RNvMs5_NtNtCslghKHtsL3a4_5tokio4sync6notifyNtB5_6Notify14notify_waiters(ptr noundef nonnull align 8 %.sroa.0.0.ptr.5)
  %.sroa.0.0.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_RNvMs5_NtNtCslghKHtsL3a4_5tokio4sync6notifyNtB5_6Notify14notify_waiters(ptr noundef nonnull align 8 %.sroa.0.0.ptr.6)
  %.sroa.0.0.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_RNvMs5_NtNtCslghKHtsL3a4_5tokio4sync6notifyNtB5_6Notify14notify_waiters(ptr noundef nonnull align 8 %.sroa.0.0.ptr.7)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslghKHtsL3a4_5tokio4sync5watch10big_notifyNtB2_9BigNotify3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsX_NtCs3oUPovFnLWP_4core5arrayANtNtNtCslghKHtsL3a4_5tokio4sync6notify6Notifyj8_NtNtB7_7default7Default7defaultBD_(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslghKHtsL3a4_5tokio4sync5watch10big_notifyNtB2_9BigNotify8notified(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvNtNtCslghKHtsL3a4_5tokio7runtime7context12thread_rng_n(i32 noundef 8) ; 2 uses
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp ult i32 %i.a, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.b
  tail call void @_RNvMs5_NtNtCslghKHtsL3a4_5tokio4sync6notifyNtB5_6Notify8notified(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 %i.d)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4idleNtB2_4Idle16worker_to_notify(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw or ptr %0, i64 0 seq_cst, align 8 ; 2 uses
  %i.b = and i64 %i.a, 65535
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = lshr exact i64 %i.a, 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 5 uses
  %i.i = cmpxchg weak ptr %i.h, i8 0, i8 1 acquire monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.h, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = atomicrmw or ptr %0, i64 0 seq_cst, align 8 ; 2 uses
  %i.m = and i64 %i.l, 65535
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = lshr exact i64 %i.l, 16
  %i.p = load i64, ptr %i.e, align 8, !noundef !4
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.r = cmpxchg ptr %i.h, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i8, i1 } %i.r, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.sink.split, !prof !6

bb.h:                                             ; preds = %bb.f
  %i.s = atomicrmw add ptr %0, i64 65537 seq_cst, align 8 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !4 ; 4 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.x = add nsw i64 %i.u, -1                     ; 2 uses
  store i64 %i.x, ptr %i.t, align 8
  %i.y = load i64, ptr %i.w, align 8, !range !17, !noundef !4
  %i.z = icmp samesign ult i64 %i.x, %i.y
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.ac = icmp ult i64 %i.u, 1152921504606846977
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr [8 x i8], ptr %i.ab, i64 %i.u
  %2 = getelementptr i8, ptr %i.ad, i64 -8
  %i.ae = load i64, ptr %2, align 8, !noundef !4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.5.0 = phi i64 [ %i.ae, %bb.i ], [ undef, %bb.h ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 1, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.af = cmpxchg ptr %i.h, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i2 = extractvalue { i8, i1 } %i.af, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.sink.split, !prof !6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.sink.split: ; preds = %bb.j, %bb.g
  %.sroa.5.1.ph = phi i64 [ undef, %bb.g ], [ %.sroa.5.0, %bb.j ]
  %.sroa.0.1.ph = phi i64 [ 0, %bb.g ], [ %.sroa.0.0, %bb.j ]
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.h, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.sink.split, %bb.j, %bb.g, %bb.b, %bb.a
  %.sroa.5.1 = phi i64 [ %.sroa.5.0, %bb.j ], [ undef, %bb.b ], [ undef, %bb.a ], [ undef, %bb.g ], [ %.sroa.5.1.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.sink.split ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.j ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.g ], [ %.sroa.0.1.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.sink.split ]
  %i.ag = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.ah = insertvalue { i64, i64 } %i.ag, i64 %.sroa.5.1, 1
  ret { i64, i64 } %i.ah
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4idleNtB2_4Idle19unpark_worker_by_id(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 7 uses
  %i.b = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.a, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 7 uses
  %i.g = icmp ult i64 %i.f, 1152921504606846976
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 240
  %exitcond.not26.not = icmp eq i64 %i.f, 0
  br i1 %exitcond.not26.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 3 uses
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i64 %.sroa.02.027, 1         ; 2 uses
  %exitcond.not.not = icmp eq i64 %i.j, %i.f
  br i1 %exitcond.not.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.k = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i8, i1 } %i.k, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.sink.split, !prof !6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.sink.split: ; preds = %._crit_edge, %bb.i
  %exitcond.not24 = phi i1 [ false, %._crit_edge ], [ true, %bb.i ]
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.sink.split, %bb.i, %._crit_edge
  %i.l = phi i1 [ false, %._crit_edge ], [ true, %bb.i ], [ %exitcond.not24, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.sink.split ]
  ret i1 %i.l

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.sroa.02.027 = phi i64 [ %i.j, %bb.d ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.02.027
  %i.n = load i64, ptr %i.m, align 8, !noundef !4
  %i.o = icmp eq i64 %i.n, %2
  br i1 %i.o, label %bb.g, label %bb.d

bb.e:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i7 = extractvalue { i8, i1 } %i.q, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i7, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit8, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit8 unwind label %bb.j

bb.g:                                             ; preds = %.lr.ph
  %i.r = icmp samesign ult i64 %.sroa.02.027, %i.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  br i1 %i.r, label %bb.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE11swap_remove13assert_failed(i64 noundef range(i64 0, 1152921504606846975) %.sroa.02.027, i64 noundef %i.f) #19
          to label %.noexc9 unwind label %bb.e

.noexc9:                                          ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.02.027
  %i.t = add nsw i64 %i.f, -1
  %i.u = getelementptr [8 x i8], ptr %i.i, i64 %i.f
  %3 = getelementptr i8, ptr %i.u, i64 -8
  %i.v = load i64, ptr %3, align 8, !noalias !369
  store i64 %i.v, ptr %i.s, align 8, !noalias !369
  store i64 %i.t, ptr %i.e, align 8, !alias.scope !369
  %i.w = atomicrmw add ptr %0, i64 65536 seq_cst, align 8 ; 0 uses
  %i.x = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i10 = extractvalue { i8, i1 } %i.x, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i10, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.sink.split, !prof !6

bb.j:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit8: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4idleNtB2_4Idle27transition_worker_to_parked(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 6 uses
  %i.b = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.a, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  br i1 %3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = atomicrmw sub ptr %0, i64 65536 seq_cst, align 8 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = atomicrmw sub ptr %0, i64 65537 seq_cst, align 8
  %i.g = and i64 %i.f, 65535
  %i.h = icmp eq i64 %i.g, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0 = phi i1 [ %i.h, %bb.e ], [ false, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !372, !noundef !4 ; 3 uses
  %i.l = load i64, ptr %i.i, align 8, !range !17, !alias.scope !372, !noundef !4
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #21
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i8, i1 } %i.o, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit unwind label %bb.l

bb.j:                                             ; preds = %bb.f, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !372, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.k
  store i64 %2, ptr %i.r, align 8
  %i.s = add i64 %i.k, 1
  store i64 %i.s, ptr %i.j, align 8, !alias.scope !372
  %i.t = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i16 = extractvalue { i8, i1 } %i.t, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i16, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit17, label %bb.k, !prof !6

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit17

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit17: ; preds = %bb.j, %bb.k
  ret i1 %.sroa.0.0

bb.l:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4idleNtB2_4Idle30transition_worker_to_searching(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load atomic i64, ptr %0 seq_cst, align 8
  %i.b = shl i64 %i.a, 1
  %i.c = and i64 %i.b, 131070
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %.not = icmp ult i64 %i.c, %i.e                 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = atomicrmw add ptr %0, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4idleNtB2_4Idle3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !range !14, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !18, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = shl i64 %1, 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !17, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = icmp ule i64 %1, %i.j
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.h, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %i.n, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4idleNtB2_4Idle9is_parked(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 4 uses
  %i.b = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.a, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.i = and i64 %i.h, 1152921504606846968        ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i ; 2 uses
  %.not.i11 = icmp eq i64 %i.i, 0
  br i1 %.not.i11, label %._crit_edge, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECslghKHtsL3a4_5tokio.exit.i

bb.d:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECslghKHtsL3a4_5tokio.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i13, i64 64
  %i.l = add nsw i64 %.sroa.5.0.i12, -8           ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %._crit_edge, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECslghKHtsL3a4_5tokio.exit.i

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.m = shl i64 %i.h, 3
  %.idx = and i64 %i.m, 56                        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not.not.not.i.not.not.i.not14 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not.i.not14, label %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %._crit_edge
  %i.o = phi ptr [ %i.q, %.lr.ph ], [ %i.j, %._crit_edge ] ; 2 uses
  %.val2.i.i = load i64, ptr %i.o, align 8, !alias.scope !380, !noalias !381, !noundef !4
  %i.p = icmp eq i64 %.val2.i.i, %2               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.not.not.not.i.not.not.i.not = icmp eq ptr %i.q, %i.n
  %or.cond = select i1 %i.p, i1 true, i1 %.not.not.not.i.not.not.i.not
  br i1 %or.cond, label %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %.lr.ph

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.c, %bb.d
  %.sroa.0.05.i13 = phi ptr [ %i.k, %bb.d ], [ %i.f, %bb.c ] ; 9 uses
  %.sroa.5.0.i12 = phi i64 [ %i.l, %bb.d ], [ %i.i, %bb.c ]
  %.val11.i.i = load i64, ptr %.sroa.0.05.i13, align 8, !alias.scope !380, !noalias !382, !noundef !4
end_hunk_0
