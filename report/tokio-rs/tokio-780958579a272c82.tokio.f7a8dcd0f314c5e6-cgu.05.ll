Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.05?download=true
inline.NumInlined: 431
inline.NumDeleted: 241
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4idleNtB2_4Idle19unpark_worker_by_id:bb.a
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  br i1 %i.r, label %bb.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE11swap_remove13assert_failed(i64 noundef range(i64 0, 1152921504606846975) %.sroa.02.027, i64 noundef %i.f) #20
          to label %.noexc9 unwind label %bb.e

.noexc9:                                          ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.02.027
  %i.t = add nsw i64 %i.f, -1                     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !noalias !368
  store i64 %i.v, ptr %i.s, align 8, !noalias !368
  store i64 %i.t, ptr %i.e, align 8, !alias.scope !368
  %i.w = atomicrmw add ptr %0, i64 65536 seq_cst, align 8 ; 0 uses
  %i.x = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i10 = extractvalue { i8, i1 } %i.x, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i10, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_.exit.sink.split, !prof !6

bb.j:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
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
  %i.e = atomicrmw add ptr %0, i64 -65536 seq_cst, align 8 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = atomicrmw add ptr %0, i64 -65537 seq_cst, align 8
  %i.g = and i64 %i.f, 65535
  %i.h = icmp eq i64 %i.g, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0 = phi i1 [ %i.h, %bb.e ], [ false, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !371, !noundef !4 ; 3 uses
  %i.l = load i64, ptr %i.i, align 8, !range !17, !alias.scope !371, !noundef !4
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #22
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
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !371, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.k
  store i64 %2, ptr %i.r, align 8
  %i.s = add i64 %i.k, 1
  store i64 %i.s, ptr %i.j, align 8, !alias.scope !371
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
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
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
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #23
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
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i ; 7 uses
  %.not.i11 = icmp eq i64 %i.i, 0
  br i1 %.not.i11, label %._crit_edge, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECslghKHtsL3a4_5tokio.exit.i

bb.d:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECslghKHtsL3a4_5tokio.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i13, i64 64
  %i.l = add nsw i64 %.sroa.5.0.i12, -8           ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %._crit_edge, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECslghKHtsL3a4_5tokio.exit.i

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.m = shl i64 %i.h, 3
  %.idx = and i64 %i.m, 56                        ; 7 uses
  %.not.not.not.i.not.not.i.not14 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not.i.not14, label %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %.lr.ph

3:                                                ; preds = %.lr.ph
  %.not.not.not.i.not.not.i.not = icmp samesign eq i64 %.idx, 8
  br i1 %.not.not.not.i.not.not.i.not, label %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %3
  %4 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val2.i.i.1 = load i64, ptr %4, align 8, !alias.scope !379, !noalias !380, !noundef !4
  %5 = icmp eq i64 %.val2.i.i.1, %2
  br i1 %5, label %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %6

6:                                                ; preds = %.lr.ph.1
  %.not.not.not.i.not.not.i.not.1 = icmp samesign eq i64 %.idx, 16
  br i1 %.not.not.not.i.not.not.i.not.1, label %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %6
  %7 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val2.i.i.2 = load i64, ptr %7, align 8, !alias.scope !379, !noalias !380, !noundef !4
  %8 = icmp eq i64 %.val2.i.i.2, %2
  br i1 %8, label %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %9

9:                                                ; preds = %.lr.ph.2
  %.not.not.not.i.not.not.i.not.2 = icmp samesign eq i64 %.idx, 24
  br i1 %.not.not.not.i.not.not.i.not.2, label %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %9
  %10 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.val2.i.i.3 = load i64, ptr %10, align 8, !alias.scope !379, !noalias !380, !noundef !4
  %11 = icmp eq i64 %.val2.i.i.3, %2
  br i1 %11, label %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %12

12:                                               ; preds = %.lr.ph.3
  %.not.not.not.i.not.not.i.not.3 = icmp samesign eq i64 %.idx, 32
  br i1 %.not.not.not.i.not.not.i.not.3, label %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %12
  %13 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.val2.i.i.4 = load i64, ptr %13, align 8, !alias.scope !379, !noalias !380, !noundef !4
  %14 = icmp eq i64 %.val2.i.i.4, %2
  br i1 %14, label %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %15

15:                                               ; preds = %.lr.ph.4
  %.not.not.not.i.not.not.i.not.4 = icmp samesign eq i64 %.idx, 40
  br i1 %.not.not.not.i.not.not.i.not.4, label %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %15
  %16 = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.val2.i.i.5 = load i64, ptr %16, align 8, !alias.scope !379, !noalias !380, !noundef !4
  %17 = icmp eq i64 %.val2.i.i.5, %2
  br i1 %17, label %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %18

18:                                               ; preds = %.lr.ph.5
  %.not.not.not.i.not.not.i.not.5 = icmp samesign eq i64 %.idx, 48
  br i1 %.not.not.not.i.not.not.i.not.5, label %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %18
  %19 = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.val2.i.i.a = load i64, ptr %19, align 8, !alias.scope !379, !noalias !380, !noundef !4
  %.not.not.not.i.not.not.i.not.a = icmp eq i64 %.val2.i.i.a, %2
  %or.cond = select i1 %.not.not.not.i.not.not.i.not.a, i1 true, i1 false
  br label %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit

.lr.ph:                                           ; preds = %._crit_edge
  %.val2.i.i = load i64, ptr %i.j, align 8, !alias.scope !379, !noalias !380, !noundef !4
  %20 = icmp eq i64 %.val2.i.i, %2
  br i1 %20, label %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %3

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.c, %bb.d
  %.sroa.0.05.i13 = phi ptr [ %i.k, %bb.d ], [ %i.f, %bb.c ] ; 9 uses
  %.sroa.5.0.i12 = phi i64 [ %i.l, %bb.d ], [ %i.i, %bb.c ]
  %.val11.i.i = load i64, ptr %.sroa.0.05.i13, align 8, !alias.scope !379, !noalias !381, !noundef !4
  %i.n = icmp eq i64 %.val11.i.i, %2
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i13, i64 8
  %.val11.i.1.i = load i64, ptr %i.o, align 8, !alias.scope !379, !noalias !381, !noundef !4
  %i.p = icmp eq i64 %.val11.i.1.i, %2
  %i.q = or i1 %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i13, i64 16
  %.val11.i.2.i = load i64, ptr %i.r, align 8, !alias.scope !379, !noalias !381, !noundef !4
  %i.s = icmp eq i64 %.val11.i.2.i, %2
  %i.t = or i1 %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i13, i64 24
  %.val11.i.3.i = load i64, ptr %i.u, align 8, !alias.scope !379, !noalias !381, !noundef !4
  %i.v = icmp eq i64 %.val11.i.3.i, %2
  %i.w = or i1 %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i13, i64 32
  %.val11.i.4.i = load i64, ptr %i.x, align 8, !alias.scope !379, !noalias !381, !noundef !4
  %i.y = icmp eq i64 %.val11.i.4.i, %2
  %i.z = or i1 %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i13, i64 40
  %.val11.i.5.i = load i64, ptr %i.aa, align 8, !alias.scope !379, !noalias !381, !noundef !4
  %i.ab = icmp eq i64 %.val11.i.5.i, %2
  %i.ac = or i1 %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i13, i64 48
  %.val11.i.6.i = load i64, ptr %i.ad, align 8, !alias.scope !379, !noalias !381, !noundef !4
  %i.ae = icmp eq i64 %.val11.i.6.i, %2
  %i.af = or i1 %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i13, i64 56
  %.val11.i.7.i = load i64, ptr %i.ag, align 8, !alias.scope !379, !noalias !381, !noundef !4
  %i.ah = icmp eq i64 %.val11.i.7.i, %2
  %i.ai = or i1 %i.af, %i.ah
  br i1 %i.ai, label %_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %bb.d

_RNvXsI_NtNtCs3oUPovFnLWP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %.lr.ph.a, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECslghKHtsL3a4_5tokio.exit.i, %3, %.lr.ph, %.lr.ph.1, %6, %.lr.ph.2, %9, %.lr.ph.3, %12, %.lr.ph.4, %15, %.lr.ph.5, %18, %._crit_edge
  %.sroa.0.0.i3 = phi i1 [ true, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECslghKHtsL3a4_5tokio.exit.i ], [ false, %._crit_edge ], [ false, %3 ], [ true, %.lr.ph ], [ true, %.lr.ph.1 ], [ false, %6 ], [ true, %.lr.ph.2 ], [ false, %9 ], [ true, %.lr.ph.3 ], [ false, %12 ], [ true, %.lr.ph.4 ], [ false, %15 ], [ true, %.lr.ph.5 ], [ false, %18 ], [ %or.cond, %.lr.ph.a ]
  %i.aj = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %.sroa.18.0.in.i.i.i.i.i4 = extractvalue { i8, i1 } %i.aj, 1
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
  %i.q = extractvalue { i64, i1 } %i.o, 0         ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.q, 3
  br i1 %i.r, label %bb.h, label %bb.i, !prof !6
end_hunk_0
