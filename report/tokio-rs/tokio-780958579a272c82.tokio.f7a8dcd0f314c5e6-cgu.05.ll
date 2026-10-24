Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.05?download=true
inline.NumInlined: 431
inline.NumDeleted: 241
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4idleNtB2_4Idle9is_parked:bb.a
  %i.al = icmp eq i64 %.val11.i.7.i, %2
  %i.am = or i1 %i.aj, %i.al
  br i1 %i.am, label %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %bb.d

_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECslghKHtsL3a4_5tokio.exit.i, %.lr.ph, %._crit_edge
  %.sroa.0.0.i3 = phi i1 [ %i.p, %.lr.ph ], [ false, %._crit_edge ], [ true, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECslghKHtsL3a4_5tokio.exit.i ]
  %i.an = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i4 = extractvalue { i8, i1 } %i.an, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i4, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit5, label %bb.e, !prof !6

bb.e:                                             ; preds = %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit5

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit5: ; preds = %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, %bb.e
  ret i1 %.sroa.0.0.i3
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB2_6Parker12park_timeout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = cmpxchg ptr %i.e, i8 0, i8 1 seq_cst seq_cst, align 1
  %.sroa.18.0.in.i = extractvalue { i8, i1 } %i.f, 1
  br i1 %.sroa.18.0.in.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %bb.h, label %.split3

.split3:                                          ; preds = %bb.b
  tail call fastcc void @_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner12park_condvar(ptr noundef nonnull align 8 %i.c, i64 %2, i32 noundef %3)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  %i.i = invoke fastcc noundef zeroext i1 @_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner11park_driver(ptr noundef nonnull align 8 %i.c, ptr noalias nofree noundef align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 %1, i64 %2, i32 noundef %3)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4util8try_lockINtB5_9LockGuardNtNtNtB9_7runtime6driver6DriverENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4util8try_lock9LockGuardNtNtNtBI_7runtime6driver6DriverEEBI_.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4util8try_lockINtB5_9LockGuardNtNtNtB9_7runtime6driver6DriverENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.split, %.split3, %bb.e
  %.sroa.0.0 = phi i1 [ true, %.split ], [ %i.i, %bb.e ], [ true, %.split3 ], [ true, %bb.h ]
  ret i1 %.sroa.0.0

bb.g:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4util8try_lock9LockGuardNtNtNtBI_7runtime6driver6DriverEEBI_.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.j

bb.h:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %3, 0
  br i1 %i.l, label %bb.f, label %.split

.split:                                           ; preds = %bb.h
  tail call fastcc void @_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner12park_condvar(ptr noundef nonnull align 8 %i.c, i64 0, i32 noundef %3)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB2_6Parker3new(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i8 0, ptr %.sroa.414.0..sroa_idx, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !394
  %i.e = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 32, 153) 88, i64 noundef 8) #25, !noalias !394 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6SharedEE3newB1a_.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #23
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6DriverEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6SharedEE3newB1a_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.4.0..sroa_idx, i8 0, i64 17, i1 false)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !395
  %i.k = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 32, 153) 48, i64 noundef 8) #25, !noalias !395 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerEE3newB1a_.exit, !prof !8

bb.e:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6SharedEE3newB1a_.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #23
          to label %.noexc21 unwind label %bb.f

.noexc21:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !396
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6SharedE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #22
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerEE3newB1a_.exit: ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6SharedEE3newB1a_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB2_6Parker4park(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  %i.i = cmpxchg ptr %i.h, i64 3, i64 0 seq_cst seq_cst, align 8
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink.i.sroa.gep1 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br i1 %i.j, label %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner4park.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = cmpxchg ptr %i.l, i8 0, i8 1 seq_cst seq_cst, align 1
  %.sroa.18.0.in.i.i = extractvalue { i8, i1 } %i.m, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner12park_condvar(ptr noundef nonnull align 8 %i.g, i64 undef, i32 noundef -1)
  br label %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner4park.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.n, ptr %i.e, align 8
  %i.o = cmpxchg ptr %i.h, i64 0, i64 2 seq_cst seq_cst, align 8, !noalias !399 ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1         ; 2 uses
  %2 = extractvalue { i64, i1 } %i.o, 0           ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp eq i64 %2, 3
  br i1 %i.q, label %bb.h, label %bb.i, !prof !6

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6driverNtB2_6Driver4park(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 %1)
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.f
  %i.r = atomicrmw xchg ptr %i.h, i64 0 seq_cst, align 8, !noalias !399 ; 2 uses
  %i.s = and i64 %i.r, -2
  %switch.i.i = icmp eq i64 %i.s, 2
  br i1 %switch.i.i, label %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner11park_driver.exit.i, label %bb.g, !prof !19

bb.g:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !399
  store i64 %i.r, ptr %i.b, align 8, !noalias !399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !399
  store ptr %i.b, ptr %i.a, align 8, !noalias !399
  br label %.invoke.i

bb.h:                                             ; preds = %bb.e
  %i.t = atomicrmw xchg ptr %i.h, i64 0 seq_cst, align 8, !noalias !399 ; 0 uses
  br label %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner11park_driver.exit.i

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !399
  store i64 %2, ptr %i.d, align 8, !noalias !399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !399
  store ptr %i.d, ptr %i.c, align 8, !noalias !399
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.i, %bb.g
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.g ], [ %.sink.i.sroa.gep1, %bb.i ]
  %.sink.i = phi ptr [ %i.a, %bb.g ], [ %i.c, %bb.i ]
  %i.u = phi ptr [ @30, %bb.g ], [ @32, %bb.i ]
  %i.v = phi ptr [ @31, %bb.g ], [ @33, %bb.i ]
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sink.i.sroa.phi, align 8, !noalias !399
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull %i.u, ptr noundef nonnull %.sink.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #20
          to label %.cont.i unwind label %bb.j

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.j:                                             ; preds = %.invoke.i, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4util8try_lockINtB5_9LockGuardNtNtNtB9_7runtime6driver6DriverENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4util8try_lock9LockGuardNtNtNtBI_7runtime6driver6DriverEEBI_.exit.i unwind label %bb.k

_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner11park_driver.exit.i: ; preds = %bb.h, %.noexc.i
  %.sroa.0.0.i4.i = xor i1 %i.p, true
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4util8try_lockINtB5_9LockGuardNtNtNtB9_7runtime6driver6DriverENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner4park.exit

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4util8try_lock9LockGuardNtNtNtBI_7runtime6driver6DriverEEBI_.exit.i: ; preds = %bb.j
  resume { ptr, i32 } %i.w

_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner4park.exit: ; preds = %bb.a, %bb.c, %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner11park_driver.exit.i
  %.sroa.0.1.i = phi i1 [ true, %bb.a ], [ true, %bb.c ], [ %.sroa.0.0.i4.i, %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner11park_driver.exit.i ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB2_6Parker8shutdown(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = cmpxchg ptr %i.e, i8 0, i8 1 seq_cst seq_cst, align 1
  %.sroa.18.0.in.i.i = extractvalue { i8, i1 } %i.f, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  invoke void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6driverNtB2_6Driver8shutdown(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 %1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4util8try_lockINtB5_9LockGuardNtNtNtB9_7runtime6driver6DriverENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4util8try_lock9LockGuardNtNtNtBI_7runtime6driver6DriverEEBI_.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4util8try_lockINtB5_9LockGuardNtNtNtB9_7runtime6driver6DriverENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner8shutdown.exit, label %bb.g, !prof !6

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4util8try_lock9LockGuardNtNtNtBI_7runtime6driver6DriverEEBI_.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.h

bb.g:                                             ; preds = %bb.e
  %i.m = call noundef i64 @_RNvMs_NtCsfC2LXmwPSoN_11parking_lot7condvarNtB4_7Condvar15notify_all_slow(ptr noundef nonnull align 8 %i.i, ptr noundef nonnull %i.j) ; 0 uses
  br label %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner8shutdown.exit

_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner8shutdown.exit: ; preds = %bb.e, %bb.g
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef align 8 ptr @_RNvMs0_NtNtCslghKHtsL3a4_5tokio4util11atomic_cellINtB5_10AtomicCellNtNtNtNtB9_7runtime9scheduler14current_thread4CoreE4swapB9_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = atomicrmw xchg ptr %0, ptr %1 acq_rel, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef align 8 ptr @_RNvMs0_NtNtCslghKHtsL3a4_5tokio4util11atomic_cellINtB5_10AtomicCellNtNtNtNtNtB9_7runtime9scheduler12multi_thread6worker4CoreE4swapB9_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = atomicrmw xchg ptr %0, ptr %1 acq_rel, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef i64 @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync5watch5stateNtB5_11AtomicState4load(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_8Unparker6unpark(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = atomicrmw xchg ptr %i.d, i64 3 seq_cst, align 8 ; 2 uses
  switch i64 %i.e, label %bb.b [
    i64 0, label %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner6unpark.exit
    i64 3, label %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner6unpark.exit
    i64 1, label %bb.c
    i64 2, label %bb.h
  ], !prof !400

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.e, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @39, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 4 uses
  %i.g = cmpxchg weak ptr %i.f, i8 0, i8 1 acquire monotonic, align 1
  %i.h = extractvalue { i8, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.f, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = cmpxchg ptr %i.f, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i.i.i = extractvalue { i8, i1 } %i.j, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit.i.i, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit.i.i: ; preds = %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = load atomic ptr, ptr %i.k monotonic, align 8 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner6unpark.exit, label %bb.g, !prof !6

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit.i.i
  %i.n = tail call noundef zeroext i1 @_RNvMs_NtCsfC2LXmwPSoN_11parking_lot7condvarNtB4_7Condvar15notify_one_slow(ptr noundef nonnull align 8 %i.k, ptr noundef nonnull %i.l) ; 0 uses
  br label %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner6unpark.exit

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime6driverNtB4_6Handle6unpark(ptr noundef nonnull align 8 %1)
  br label %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner6unpark.exit

_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner6unpark.exit: ; preds = %bb.a, %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit.i.i, %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCslghKHtsL3a4_5tokio7runtime4parkNtB5_12UnparkThread6unpark(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = atomicrmw xchg ptr %i.b, i64 2 seq_cst, align 8
  switch i64 %i.c, label %bb.b [
    i64 0, label %_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime4parkNtB4_5Inner6unpark.exit
    i64 2, label %_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime4parkNtB4_5Inner6unpark.exit
    i64 1, label %bb.c
  ], !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.e = cmpxchg weak ptr %i.d, i8 0, i8 1 acquire monotonic, align 1
  %i.f = extractvalue { i8, i1 } %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.d, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = cmpxchg ptr %i.d, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i8, i1 } %i.h, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit.i, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit.i: ; preds = %bb.f, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime4parkNtB4_5Inner6unpark.exit, label %bb.g, !prof !6

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit.i
  %i.l = tail call noundef zeroext i1 @_RNvMs_NtCsfC2LXmwPSoN_11parking_lot7condvarNtB4_7Condvar15notify_one_slow(ptr noundef nonnull align 8 %i.i, ptr noundef nonnull %i.j) ; 0 uses
  br label %_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime4parkNtB4_5Inner6unpark.exit

_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime4parkNtB4_5Inner6unpark.exit: ; preds = %bb.a, %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner11park_driver(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %.not.not = icmp eq i32 %4, -1
  %i.e = icmp eq i64 %3, 0
  %5 = icmp eq i32 %4, 0
  %or.cond17 = select i1 %5, i1 %i.e, i1 false
  br i1 %or.cond17, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = cmpxchg ptr %i.f, i64 0, i64 2 seq_cst seq_cst, align 8 ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %6 = extractvalue { i64, i1 } %i.g, 0           ; 2 uses
  br i1 %i.h, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6driverNtB2_6Driver12park_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 %2, i64 noundef 0, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.k, %bb.c
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ true, %bb.k ], [ false, %bb.i ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %6, 3
  br i1 %i.i, label %bb.k, label %bb.l, !prof !6

bb.f:                                             ; preds = %bb.b
  br i1 %.not.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6driverNtB2_6Driver12park_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %4)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6driverNtB2_6Driver4park(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.j = atomicrmw xchg ptr %i.f, i64 0 seq_cst, align 8 ; 2 uses
  %i.k = and i64 %i.j, -2
  %switch = icmp eq i64 %i.k, 2
  br i1 %switch, label %bb.d, label %bb.j, !prof !19

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.j, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #20
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.l = atomicrmw xchg ptr %i.f, i64 0 seq_cst, align 8 ; 0 uses
  br label %bb.d

bb.l:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %6, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @32, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB5_5Inner12park_condvar(ptr noundef nonnull align 8 %0, i64 %1, i32 noundef range(i32 -1, 1000000000) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.k = cmpxchg weak ptr %i.j, i8 0, i8 1 acquire monotonic, align 1
  %i.l = extractvalue { i8, i1 } %i.k, 1
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink.sroa.gep75 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink.sroa.gep76 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br i1 %i.l, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.j, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.o = cmpxchg ptr %i.n, i64 0, i64 1 seq_cst seq_cst, align 8 ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  %i.q = extractvalue { i64, i1 } %i.o, 0         ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.q, 3
  br i1 %i.r, label %bb.x, label %bb.y, !prof !6

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i32 %2, -1
  br i1 %.not, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.split.us.preheader

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.f
  %i.u = extractvalue { i64, i32 } %i.t, 0
  %i.v = extractvalue { i64, i32 } %i.t, 1
  store i64 %i.u, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.v, ptr %i.w, align 8
  %i.x = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant11checked_add(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc35:                                         ; preds = %.noexc
  %i.y = extractvalue { i64, i32 } %i.x, 1        ; 2 uses
  %i.z = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc36:                                         ; preds = %.noexc35
  %i.aa = extractvalue { i64, i32 } %i.z, 0
  %i.ab = extractvalue { i64, i32 } %i.z, 1
  %i.ac = invoke { i64, i32 } @_RNvXs_NtCsaL1QbXo9JQH_3std4timeNtB4_7InstantINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.aa, i32 noundef %i.ab, i64 noundef 1, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %.noexc36
  %i.ad = extractvalue { i64, i32 } %i.ac, 1
  %.not.i = icmp eq i32 %i.y, -1                  ; 2 uses
  %spec.select.i = select i1 %.not.i, i32 %i.ad, i32 %i.y ; 2 uses
  %spec.select4.i = select i1 %.not.i, { i64, i32 } %i.ac, { i64, i32 } %i.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = extractvalue { i64, i32 } %spec.select4.i, 0
  %.not32 = icmp eq i32 %spec.select.i, -1
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not32, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %.thread, %bb.g
  %i.ai = phi ptr [ %i.s, %.thread ], [ %i.ag, %bb.g ]
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %bb.h
  %i.aj = invoke noundef zeroext i1 @_RNvMs_NtCsfC2LXmwPSoN_11parking_lot7condvarNtB4_7Condvar19wait_until_internal(ptr noundef nonnull align 8 %i.ai, ptr noundef nonnull %i.j, i64 undef, i32 noundef -1)
          to label %bb.h unwind label %.split64.us ; 0 uses

bb.h:                                             ; preds = %.split.us
  %i.ak = cmpxchg ptr %i.n, i64 3, i64 0 seq_cst seq_cst, align 8
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  br i1 %i.al, label %.loopexit62, label %.split.us

.split64.us:                                      ; preds = %.split.us
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = cmpxchg ptr %i.j, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i8, i1 } %i.an, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit51, label %bb.i, !prof !6

.split:                                           ; preds = %bb.g, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.ae, ptr %i.g, align 8
  store i32 %spec.select.i, ptr %i.af, align 8
  %i.ao = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.i:                                             ; preds = %.split64.us
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.j, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit51 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.k:                                             ; preds = %.split
  %i.aq = extractvalue { i64, i32 } %i.ao, 0
  %i.ar = extractvalue { i64, i32 } %i.ao, 1
  %i.as = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant25saturating_duration_since(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, i64 noundef %i.aq, i32 noundef %i.ar)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.at = extractvalue { i64, i32 } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, i32 } %i.as, 1      ; 3 uses
  %i.av = icmp eq i64 %i.at, 0
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = icmp ult i32 %i.au, 1000000000
  call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp eq i32 %i.au, 0
  br i1 %i.ax, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !403
  %i.ay = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc.i unwind label %bb.o, !noalias !403 ; 2 uses

.noexc.i:                                         ; preds = %bb.n
  %i.az = extractvalue { i64, i32 } %i.ay, 0
  %i.ba = extractvalue { i64, i32 } %i.ay, 1
  store i64 %i.az, ptr %i.a, align 8, !noalias !403
  store i32 %i.ba, ptr %i.ah, align 8, !noalias !403
  %i.bb = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant11checked_add(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef %i.at, i32 noundef range(i32 0, 1000000000) %i.au)
          to label %.noexc2.i unwind label %bb.o, !noalias !403 ; 2 uses

.noexc2.i:                                        ; preds = %.noexc.i
  %i.bc = extractvalue { i64, i32 } %i.bb, 0
  %i.bd = extractvalue { i64, i32 } %i.bb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !403
  %i.be = invoke noundef zeroext i1 @_RNvMs_NtCsfC2LXmwPSoN_11parking_lot7condvarNtB4_7Condvar19wait_until_internal(ptr noundef nonnull align 8 %i.ag, ptr noundef nonnull %i.j, i64 %i.bc, i32 noundef %i.bd)
          to label %bb.s unwind label %bb.o, !noalias !403

bb.o:                                             ; preds = %.noexc2.i, %.noexc.i, %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = cmpxchg ptr %i.j, i8 1, i8 0 release monotonic, align 1, !noalias !403
  %.sroa.18.0.in.i.i.i.i.i.i43 = extractvalue { i8, i1 } %i.bg, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i43, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit51, label %bb.p, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.j, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuarduEEBK_.exit51 unwind label %bb.q, !noalias !403

bb.q:                                             ; preds = %bb.p
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !403
  unreachable

bb.r:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.loopexit61

.loopexit61:                                      ; preds = %bb.s, %bb.r
  %i.bi = atomicrmw xchg ptr %i.n, i64 0 seq_cst, align 8 ; 3 uses
  switch i64 %i.bi, label %bb.u [
    i64 1, label %.loopexit62
    i64 3, label %.loopexit62
    i64 2, label %bb.v
    i64 0, label %bb.v
  ], !prof !404

bb.s:                                             ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.be, label %.loopexit61, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = cmpxchg ptr %i.n, i64 3, i64 0 seq_cst seq_cst, align 8
end_hunk_0
