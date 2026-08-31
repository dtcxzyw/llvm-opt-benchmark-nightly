Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio_test-f3e2909bb8d054fc.tokio_test.f1c73670083447a9-cgu.1?download=true
inline.NumInlined: 123
inline.NumDeleted: 84
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskKYJnXoAH79_10tokio_test:bb.a
    i64 1, label %bb.c
  ], !prof !37

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECskKYJnXoAH79_10tokio_test.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !58
  store i8 3, ptr %i.a, align 8, !alias.scope !58
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECskKYJnXoAH79_10tokio_test.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECskKYJnXoAH79_10tokio_test.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedRShBM_ECskKYJnXoAH79_10tokio_test(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block5BlockNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEB1U_(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #2 {
bb.a:
  switch i8 %2, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  switch i8 %3, label %default.unreachable1 [
    i8 0, label %bb.g
    i8 2, label %bb.h
    i8 4, label %bb.i
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !61

bb.c:                                             ; preds = %bb.a
  switch i8 %3, label %default.unreachable1 [
    i8 0, label %bb.k
    i8 2, label %bb.l
    i8 4, label %bb.m
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !61

bb.d:                                             ; preds = %bb.a
  switch i8 %3, label %default.unreachable1 [
    i8 0, label %bb.n
    i8 2, label %bb.o
    i8 4, label %bb.p
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !61

bb.e:                                             ; preds = %bb.a
  switch i8 %3, label %default.unreachable1 [
    i8 0, label %bb.q
    i8 2, label %bb.r
    i8 4, label %bb.s
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !61

bb.f:                                             ; preds = %bb.a
  switch i8 %3, label %default.unreachable1 [
    i8 0, label %bb.t
    i8 2, label %bb.u
    i8 4, label %bb.v
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !61

bb.g:                                             ; preds = %bb.b
  %i.a = cmpxchg ptr %0, ptr null, ptr %1 monotonic monotonic, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.b
  %i.b = cmpxchg ptr %0, ptr null, ptr %1 monotonic acquire, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.c = cmpxchg ptr %0, ptr null, ptr %1 monotonic seq_cst, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i1 } [ %i.a, %bb.g ], [ %i.b, %bb.h ], [ %i.c, %bb.i ], [ %i.d, %bb.k ], [ %i.e, %bb.l ], [ %i.f, %bb.m ], [ %i.g, %bb.n ], [ %i.h, %bb.o ], [ %i.i, %bb.p ], [ %i.j, %bb.q ], [ %i.k, %bb.r ], [ %i.l, %bb.s ], [ %i.m, %bb.t ], [ %i.n, %bb.u ], [ %i.o, %bb.v ]
  %.sroa.01.0 = extractvalue { ptr, i1 } %.pn, 0
  ret ptr %.sroa.01.0

bb.k:                                             ; preds = %bb.c
  %i.d = cmpxchg ptr %0, ptr null, ptr %1 release monotonic, align 8
  br label %bb.j

bb.l:                                             ; preds = %bb.c
  %i.e = cmpxchg ptr %0, ptr null, ptr %1 release acquire, align 8
  br label %bb.j

bb.m:                                             ; preds = %bb.c
  %i.f = cmpxchg ptr %0, ptr null, ptr %1 release seq_cst, align 8
  br label %bb.j

bb.n:                                             ; preds = %bb.d
  %i.g = cmpxchg ptr %0, ptr null, ptr %1 acquire monotonic, align 8
  br label %bb.j

bb.o:                                             ; preds = %bb.d
  %i.h = cmpxchg ptr %0, ptr null, ptr %1 acquire acquire, align 8
  br label %bb.j

bb.p:                                             ; preds = %bb.d
  %i.i = cmpxchg ptr %0, ptr null, ptr %1 acquire seq_cst, align 8
  br label %bb.j

bb.q:                                             ; preds = %bb.e
  %i.j = cmpxchg ptr %0, ptr null, ptr %1 acq_rel monotonic, align 8
  br label %bb.j

bb.r:                                             ; preds = %bb.e
  %i.k = cmpxchg ptr %0, ptr null, ptr %1 acq_rel acquire, align 8
  br label %bb.j

bb.s:                                             ; preds = %bb.e
  %i.l = cmpxchg ptr %0, ptr null, ptr %1 acq_rel seq_cst, align 8
  br label %bb.j

bb.t:                                             ; preds = %bb.f
  %i.m = cmpxchg ptr %0, ptr null, ptr %1 seq_cst monotonic, align 8
  br label %bb.j

bb.u:                                             ; preds = %bb.f
  %i.n = cmpxchg ptr %0, ptr null, ptr %1 seq_cst acquire, align 8
  br label %bb.j

bb.v:                                             ; preds = %bb.f
  %i.o = cmpxchg ptr %0, ptr null, ptr %1 seq_cst seq_cst, align 8
  br label %bb.j

bb.w:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 105 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24
  unreachable

bb.x:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 123 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardjENCNvMs9_B10_BX_3new0ECskKYJnXoAH79_10tokio_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #3 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chan7channelNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB4_9unbounded9SemaphoreEBT_(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [512 x i8], align 128             ; 15 uses
  %i.b = alloca [40 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @_RINvNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4list7channelNtNtCskKYJnXoAH79_10tokio_test2io6ActionEBT_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %.sroa.04.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(24) %.sroa.04.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 1, ptr %i.a, align 128
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %.sroa.04.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr null, ptr %.sroa.04.sroa.4.0..sroa_idx, align 128
  %.sroa.04.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i64 0, ptr %.sroa.04.sroa.6.0..sroa_idx, align 16
  %.sroa.04.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(32) %.sroa.04.sroa.8.0..sroa_idx, i8 0, i64 32, i1 false)
  %.sroa.04.sroa.9.sroa.4.0..sroa.04.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  store i8 0, ptr %.sroa.04.sroa.9.sroa.4.0..sroa.04.sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store i64 %0, ptr %.sroa.7.0..sroa_idx, align 64
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 16
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !62
  %i.f = tail call noundef align 128 dereferenceable_or_null(512) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 512, i64 noundef 128) #18, !noalias !62 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chan4ChanNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB15_9unbounded9SemaphoreEEE3newB1R_.exit, !prof !65

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 512) #25
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chan4ChanNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB1j_9unbounded9SemaphoreEEEB25_(ptr noalias nofree noundef nonnull align 128 dereferenceable(512) %i.a) #26
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chan4ChanNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB15_9unbounded9SemaphoreEEE3newB1R_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(512) %i.f, ptr noundef nonnull align 128 dereferenceable(512) %i.a, i64 512, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = atomicrmw add ptr %i.f, i64 1 monotonic, align 8
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chan4ChanNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB15_9unbounded9SemaphoreEEE3newB1R_.exit
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %i.f, 1
  ret { ptr, ptr } %i.m

bb.g:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chan4ChanNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB15_9unbounded9SemaphoreEEE3newB1R_.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1O_8for_each4callRB19_NCNvXs4_B1b_NtB1b_4MockNtNtNtB1W_3ops4drop4Drop4drop0E0EB1d_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8, !noalias !66
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNvB1v_8for_each4callRBQ_NCNvXs4_BS_NtBS_4MockNtNtNtBb_3ops4drop4Drop4drop0E0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.sroa.01.0.i
  call void @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callRNtNtCskKYJnXoAH79_10tokio_test2io6ActionNCNvXs4_B1R_NtB1R_4MockNtNtB9_4drop4Drop4drop0E0INtB7_5FnMutTuB1O_EE8call_mutB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.k
  br i1 %i.n, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNvB1v_8for_each4callRBQ_NCNvXs4_BS_NtBS_4MockNtNtNtBb_3ops4drop4Drop4drop0E0EBU_.exit, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNvB1v_8for_each4callRBQ_NCNvXs4_BS_NtBS_4MockNtNtNtBb_3ops4drop4Drop4drop0E0EBU_.exit: ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8, !noalias !69
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNvB1v_8for_each4callRBQ_NCNvXs4_BS_NtBS_4MockNtNtNtBb_3ops4drop4Drop4drop0E0EBU_.exit2, label %bb.d

bb.d:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNvB1v_8for_each4callRBQ_NCNvXs4_BS_NtBS_4MockNtNtNtBb_3ops4drop4Drop4drop0E0EBU_.exit
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 5
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.01.0.i1 = phi i64 [ 0, %bb.d ], [ %i.y, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.01.0.i1
  call void @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callRNtNtCskKYJnXoAH79_10tokio_test2io6ActionNCNvXs4_B1R_NtB1R_4MockNtNtB9_4drop4Drop4drop0E0INtB7_5FnMutTuB1O_EE8call_mutB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x)
  %i.y = add nuw i64 %.sroa.01.0.i1, 1            ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.w
  br i1 %i.z, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNvB1v_8for_each4callRBQ_NCNvXs4_BS_NtBS_4MockNtNtNtBb_3ops4drop4Drop4drop0E0EBU_.exit2, label %bb.e

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNvB1v_8for_each4callRBQ_NCNvXs4_BS_NtBS_4MockNtNtNtBb_3ops4drop4Drop4drop0E0EBU_.exit2: ; preds = %bb.e, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNvB1v_8for_each4callRBQ_NCNvXs4_BS_NtBS_4MockNtNtNtBb_3ops4drop4Drop4drop0E0EBU_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iter4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3w_9EnumeratepEB2I_4fold9enumerateB22_uNCINvNvB2I_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8, !alias.scope !72, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.43.0.copyload = load ptr, ptr %.sroa.43.0..sroa_idx, align 8, !alias.scope !72, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.54.0.copyload = load ptr, ptr %.sroa.54.0..sroa_idx, align 8, !alias.scope !72 ; 4 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8, !alias.scope !72 ; 3 uses
  %.sroa.06.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.58.0.copyload = load ptr, ptr %.sroa.58.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %i.c = icmp eq ptr %.sroa.02.0.copyload, %.sroa.43.0.copyload
  br i1 %i.c, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1B_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2o_9enumerateINtB3D_9EnumeratepEB1v_4fold9enumerateBQ_uNCINvNvB1v_8for_each4callTjBQ_ENCINvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5d_8VecDequeBQ_E10write_iterINtNtB2o_6cloned6ClonedINtNtB5d_4iter4IterBQ_EEE0E0E0E0EBU_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = ptrtoint ptr %.sroa.43.0.copyload to i64
  %3 = ptrtoint ptr %.sroa.02.0.copyload to i64
  %i.d = sub nuw i64 %2, %3
  %i.e = lshr exact i64 %i.d, 5
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.0.copyload, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i64 [ %.sroa.9.0.copyload, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.sroa.02.0.copyload, i64 %.sroa.01.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !76
  call fastcc void @_RNvXse_NtCskKYJnXoAH79_10tokio_test2ioNtB5_6ActionNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h) #27, !noalias !87
  %i.i = load i64, ptr %.sroa.58.0.copyload, align 8, !noalias !88, !noundef !5
  %i.j = load ptr, ptr %i.f, align 8, !noalias !88, !nonnull !5, !noundef !5
  %i.k = getelementptr [32 x i8], ptr %i.j, i64 %i.i
  %i.l = getelementptr [32 x i8], ptr %i.k, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !98
  %i.m = load i64, ptr %.sroa.7.0.copyload, align 8, !noalias !88, !noundef !5
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %.sroa.7.0.copyload, align 8, !noalias !88
  %i.o = add i64 %i.g, 1                          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !76
  %i.p = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.e
  br i1 %i.q, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1B_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2o_9enumerateINtB3D_9EnumeratepEB1v_4fold9enumerateBQ_uNCINvNvB1v_8for_each4callTjBQ_ENCINvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5d_8VecDequeBQ_E10write_iterINtNtB2o_6cloned6ClonedINtNtB5d_4iter4IterBQ_EEE0E0E0E0EBU_.exit.i, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1B_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2o_9enumerateINtB3D_9EnumeratepEB1v_4fold9enumerateBQ_uNCINvNvB1v_8for_each4callTjBQ_ENCINvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5d_8VecDequeBQ_E10write_iterINtNtB2o_6cloned6ClonedINtNtB5d_4iter4IterBQ_EEE0E0E0E0EBU_.exit.i: ; preds = %bb.c, %bb.a
  %.sroa.9.0 = phi i64 [ %.sroa.9.0.copyload, %bb.a ], [ %i.o, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.54.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.65.0.copyload) ]
  %i.r = icmp eq ptr %.sroa.54.0.copyload, %.sroa.65.0.copyload
  br i1 %i.r, label %_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRB19_B19_uNvYB19_NtNtB1W_5clone5Clone5cloneNCINvNvXs_NtB2W_9enumerateINtB4f_9EnumeratepEB1O_4fold9enumerateB19_uNCINvNvB1O_8for_each4callTjB19_ENCINvMs2_B8_INtB8_8VecDequeB19_E10write_iterINtNtB2W_6cloned6ClonedBY_EE0E0E0E0EB1d_.exit, label %bb.d

bb.d:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1B_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2o_9enumerateINtB3D_9EnumeratepEB1v_4fold9enumerateBQ_uNCINvNvB1v_8for_each4callTjBQ_ENCINvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5d_8VecDequeBQ_E10write_iterINtNtB2o_6cloned6ClonedINtNtB5d_4iter4IterBQ_EEE0E0E0E0EBU_.exit.i
  %4 = ptrtoint ptr %.sroa.65.0.copyload to i64
  %5 = ptrtoint ptr %.sroa.54.0.copyload to i64
  %i.s = sub nuw i64 %4, %5
  %i.t = lshr exact i64 %i.s, 5
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.0.copyload, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.v = phi i64 [ %.sroa.9.0, %bb.d ], [ %i.ad, %bb.e ] ; 2 uses
  %.sroa.01.0.i2.i = phi i64 [ 0, %bb.d ], [ %i.ae, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.sroa.54.0.copyload, i64 %.sroa.01.0.i2.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99
  call fastcc void @_RNvXse_NtCskKYJnXoAH79_10tokio_test2ioNtB5_6ActionNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w) #27, !noalias !107
  %i.x = load i64, ptr %.sroa.58.0.copyload, align 8, !noalias !108, !noundef !5
  %i.y = load ptr, ptr %i.u, align 8, !noalias !108, !nonnull !5, !noundef !5
  %i.z = getelementptr [32 x i8], ptr %i.y, i64 %i.x
  %i.aa = getelementptr [32 x i8], ptr %i.z, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !118
  %i.ab = load i64, ptr %.sroa.7.0.copyload, align 8, !noalias !108, !noundef !5
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %.sroa.7.0.copyload, align 8, !noalias !108
  %i.ad = add i64 %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99
  %i.ae = add nuw i64 %.sroa.01.0.i2.i, 1         ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.t
  br i1 %i.af, label %_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRB19_B19_uNvYB19_NtNtB1W_5clone5Clone5cloneNCINvNvXs_NtB2W_9enumerateINtB4f_9EnumeratepEB1O_4fold9enumerateB19_uNCINvNvB1O_8for_each4callTjB19_ENCINvMs2_B8_INtB8_8VecDequeB19_E10write_iterINtNtB2W_6cloned6ClonedBY_EE0E0E0E0EB1d_.exit, label %bb.e

_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRB19_B19_uNvYB19_NtNtB1W_5clone5Clone5cloneNCINvNvXs_NtB2W_9enumerateINtB4f_9EnumeratepEB1O_4fold9enumerateB19_uNCINvNvB1O_8for_each4callTjB19_ENCINvMs2_B8_INtB8_8VecDequeB19_E10write_iterINtNtB2W_6cloned6ClonedBY_EE0E0E0E0EB1d_.exit: ; preds = %bb.e, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1B_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2o_9enumerateINtB3D_9EnumeratepEB1v_4fold9enumerateBQ_uNCINvNvB1v_8for_each4callTjBQ_ENCINvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5d_8VecDequeBQ_E10write_iterINtNtB2o_6cloned6ClonedINtNtB5d_4iter4IterBQ_EEE0E0E0E0EBU_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iter4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB3A_4TakepEB2I_8try_fold5checkB22_uINtNtNtBb_3ops9try_trait17NeverShortCircuituENCINvMB4p_B4m_10wrap_mut_2uB22_NCINvNvXs_NtB7_9enumerateINtB5K_9EnumeratepEB2I_4fold9enumerateB22_uNCINvNvB2I_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterIB3L_INtNtB7_12by_ref_sized10ByRefSizedBP_EEE0E0E0E0E0INtNtB4r_12control_flow11ControlFlowB4m_EEB26_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 6 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !125, !noalias !128, !nonnull !5, !noundef !5
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !125, !noalias !128
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.promoted10.i3.i = phi i64 [ %i.p, %bb.c ], [ %.sroa.7.0.copyload, %bb.a ] ; 3 uses
  %i.f = phi ptr [ %i.g, %bb.c ], [ %.promoted.i.i, %bb.a ] ; 3 uses
  %.not.not.not.i.not.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.not.not.i.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1u_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB36_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2l_4takeINtB4v_4TakepEB1o_8try_fold5checkBJ_uB3G_NCINvMB3J_B3G_10wrap_mut_2uBJ_NCINvNvXs_NtB2l_9enumerateINtB5Z_9EnumeratepEB1o_4fold9enumerateBJ_uNCINvNvB1o_8for_each4callTjBJ_ENCINvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB7z_8VecDequeBJ_E10write_iterIB4H_INtNtB2l_12by_ref_sized10ByRefSizedINtB2j_6ClonedINtNtB7z_4iter4IterBJ_EEEEE0E0E0E0E0E0B31_EBN_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !125, !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !131
  call fastcc void @_RNvXse_NtCskKYJnXoAH79_10tokio_test2ioNtB5_6ActionNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f) #27, !noalias !137
  %i.h = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !138, !noundef !5
  %i.i = add i64 %i.h, -1
  store i64 %i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !138
  %i.j = load i64, ptr %.sroa.5.0.copyload, align 8, !noalias !142, !noundef !5
  %i.k = load ptr, ptr %i.e, align 8, !noalias !142, !nonnull !5, !noundef !5
  %i.l = getelementptr [32 x i8], ptr %i.k, i64 %i.j
  %i.m = getelementptr [32 x i8], ptr %i.l, i64 %.promoted10.i3.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !155
  %i.n = load i64, ptr %.sroa.6.0.copyload, align 8, !noalias !142, !noundef !5
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %.sroa.6.0.copyload, align 8, !noalias !142
  %i.p = add i64 %.promoted10.i3.i, 1
  %i.q = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !138, !noundef !5
  %i.r = icmp eq i64 %i.q, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !131
  br i1 %i.r, label %_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters6cloned14clone_try_foldB19_uINtNtNtB1W_3ops12control_flow11ControlFlowINtNtB3M_9try_trait17NeverShortCircuituEENCINvNvXs_NtB30_4takeINtB5c_4TakepEB1O_8try_fold5checkB19_uB4n_NCINvMB4q_B4n_10wrap_mut_2uB19_NCINvNvXs_NtB30_9enumerateINtB6I_9EnumeratepEB1O_4fold9enumerateB19_uNCINvNvB1O_8for_each4callTjB19_ENCINvMs2_B8_INtB8_8VecDequeB19_E10write_iterIB5o_INtNtB30_12by_ref_sized10ByRefSizedINtB2Y_6ClonedBY_EEEE0E0E0E0E0E0B3H_EB1d_.exit, label %bb.b

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1u_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB36_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2l_4takeINtB4v_4TakepEB1o_8try_fold5checkBJ_uB3G_NCINvMB3J_B3G_10wrap_mut_2uBJ_NCINvNvXs_NtB2l_9enumerateINtB5Z_9EnumeratepEB1o_4fold9enumerateBJ_uNCINvNvB1o_8for_each4callTjBJ_ENCINvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB7z_8VecDequeBJ_E10write_iterIB4H_INtNtB2l_12by_ref_sized10ByRefSizedINtB2j_6ClonedINtNtB7z_4iter4IterBJ_EEEEE0E0E0E0E0E0B31_EBN_.exit.i: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !159, !noalias !162, !nonnull !5, !noundef !5
  %.promoted.i2.i = load ptr, ptr %i.s, align 8, !alias.scope !159, !noalias !162
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1u_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB36_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2l_4takeINtB4v_4TakepEB1o_8try_fold5checkBJ_uB3G_NCINvMB3J_B3G_10wrap_mut_2uBJ_NCINvNvXs_NtB2l_9enumerateINtB5Z_9EnumeratepEB1o_4fold9enumerateBJ_uNCINvNvB1o_8for_each4callTjBJ_ENCINvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB7z_8VecDequeBJ_E10write_iterIB4H_INtNtB2l_12by_ref_sized10ByRefSizedINtB2j_6ClonedINtNtB7z_4iter4IterBJ_EEEEE0E0E0E0E0E0B31_EBN_.exit.i
  %i.v = phi i64 [ %i.ag, %bb.e ], [ %.promoted10.i3.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1u_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB36_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2l_4takeINtB4v_4TakepEB1o_8try_fold5checkBJ_uB3G_NCINvMB3J_B3G_10wrap_mut_2uBJ_NCINvNvXs_NtB2l_9enumerateINtB5Z_9EnumeratepEB1o_4fold9enumerateBJ_uNCINvNvB1o_8for_each4callTjBJ_ENCINvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB7z_8VecDequeBJ_E10write_iterIB4H_INtNtB2l_12by_ref_sized10ByRefSizedINtB2j_6ClonedINtNtB7z_4iter4IterBJ_EEEEE0E0E0E0E0E0B31_EBN_.exit.i ] ; 2 uses
  %i.w = phi ptr [ %i.x, %bb.e ], [ %.promoted.i2.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1u_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB36_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2l_4takeINtB4v_4TakepEB1o_8try_fold5checkBJ_uB3G_NCINvMB3J_B3G_10wrap_mut_2uBJ_NCINvNvXs_NtB2l_9enumerateINtB5Z_9EnumeratepEB1o_4fold9enumerateBJ_uNCINvNvB1o_8for_each4callTjBJ_ENCINvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB7z_8VecDequeBJ_E10write_iterIB4H_INtNtB2l_12by_ref_sized10ByRefSizedINtB2j_6ClonedINtNtB7z_4iter4IterBJ_EEEEE0E0E0E0E0E0B31_EBN_.exit.i ] ; 3 uses
  %.not.not.not.i4.not.not.i.not.not = icmp ne ptr %i.w, %i.u ; 3 uses
  br i1 %.not.not.not.i4.not.not.i.not.not, label %bb.e, label %_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters6cloned14clone_try_foldB19_uINtNtNtB1W_3ops12control_flow11ControlFlowINtNtB3M_9try_trait17NeverShortCircuituEENCINvNvXs_NtB30_4takeINtB5c_4TakepEB1O_8try_fold5checkB19_uB4n_NCINvMB4q_B4n_10wrap_mut_2uB19_NCINvNvXs_NtB30_9enumerateINtB6I_9EnumeratepEB1O_4fold9enumerateB19_uNCINvNvB1O_8for_each4callTjB19_ENCINvMs2_B8_INtB8_8VecDequeB19_E10write_iterIB5o_INtNtB30_12by_ref_sized10ByRefSizedINtB2Y_6ClonedBY_EEEE0E0E0E0E0E0B3H_EB1d_.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  store ptr %i.x, ptr %i.s, align 8, !alias.scope !159, !noalias !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !164
  call fastcc void @_RNvXse_NtCskKYJnXoAH79_10tokio_test2ioNtB5_6ActionNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w) #27, !noalias !170
  %i.y = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !171, !noundef !5
  %i.z = add i64 %i.y, -1
  store i64 %i.z, ptr %.sroa.0.0.copyload, align 8, !noalias !171
  %i.aa = load i64, ptr %.sroa.5.0.copyload, align 8, !noalias !175, !noundef !5
  %i.ab = load ptr, ptr %i.e, align 8, !noalias !175, !nonnull !5, !noundef !5
  %i.ac = getelementptr [32 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = getelementptr [32 x i8], ptr %i.ac, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !188
  %i.ae = load i64, ptr %.sroa.6.0.copyload, align 8, !noalias !175, !noundef !5
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %.sroa.6.0.copyload, align 8, !noalias !175
  %i.ag = add i64 %i.v, 1
  %i.ah = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !171, !noundef !5
  %i.ai = icmp eq i64 %i.ah, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !164
  br i1 %i.ai, label %_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters6cloned14clone_try_foldB19_uINtNtNtB1W_3ops12control_flow11ControlFlowINtNtB3M_9try_trait17NeverShortCircuituEENCINvNvXs_NtB30_4takeINtB5c_4TakepEB1O_8try_fold5checkB19_uB4n_NCINvMB4q_B4n_10wrap_mut_2uB19_NCINvNvXs_NtB30_9enumerateINtB6I_9EnumeratepEB1O_4fold9enumerateB19_uNCINvNvB1O_8for_each4callTjB19_ENCINvMs2_B8_INtB8_8VecDequeB19_E10write_iterIB5o_INtNtB30_12by_ref_sized10ByRefSizedINtB2Y_6ClonedBY_EEEE0E0E0E0E0E0B3H_EB1d_.exit, label %bb.d

_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters6cloned14clone_try_foldB19_uINtNtNtB1W_3ops12control_flow11ControlFlowINtNtB3M_9try_trait17NeverShortCircuituEENCINvNvXs_NtB30_4takeINtB5c_4TakepEB1O_8try_fold5checkB19_uB4n_NCINvMB4q_B4n_10wrap_mut_2uB19_NCINvNvXs_NtB30_9enumerateINtB6I_9EnumeratepEB1O_4fold9enumerateB19_uNCINvNvB1O_8for_each4callTjB19_ENCINvMs2_B8_INtB8_8VecDequeB19_E10write_iterIB5o_INtNtB30_12by_ref_sized10ByRefSizedINtB2Y_6ClonedBY_EEEE0E0E0E0E0E0B3H_EB1d_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i = phi i1 [ %.not.not.not.i4.not.not.i.not.not, %bb.d ], [ %.not.not.not.i4.not.not.i.not.not, %bb.e ], [ true, %bb.c ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNCNvXsb_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtBa_2RxppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0INtB2_5GuardNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtBc_9unbounded9SemaphoreE5drainB20_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !34, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !34, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4listINtB5_2RxNtNtCskKYJnXoAH79_10tokio_test2io6ActionE3popBX_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.d)
  %i.e = load i64, ptr %i.a, align 8, !range !6, !noundef !5
  %switch3 = icmp ugt i64 %i.e, -3
  br i1 %switch3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !34, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  br label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2
  invoke void @_RNvXsf_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanNtNtB7_9unbounded9SemaphoreNtB5_9Semaphore10add_permit(ptr noundef nonnull align 8 %i.g)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #26
          to label %bb.p unwind label %bb.o

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.j = load i64, ptr %i.a, align 8, !range !6, !alias.scope !189, !noundef !5 ; 3 uses
  %i.k = icmp eq i64 %i.j, -2
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %.not.i.i1 = icmp eq i64 %i.j, -1
  br i1 %.not.i.i1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  switch i64 %i.j, label %bb.g [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2
    i64 3, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.l = load ptr, ptr %i.h, align 8, !alias.scope !201, !noundef !5 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !202
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE9drop_slowCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2

bb.j:                                             ; preds = %bb.f
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2

bb.k:                                             ; preds = %bb.f
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2

bb.l:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.p = load ptr, ptr %i.h, align 8, !alias.scope !210, !noundef !5 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !211
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2

bb.n:                                             ; preds = %bb.m
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iter4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionEENtNtNtB8_6traits8iterator8Iterator9size_hintB25_:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.r, align 8, !alias.scope !239, !noalias !242
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtB5_2RxNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB7_9unbounded9SemaphoreENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 440 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !224, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvMsa_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtB5_2RxNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB7_9unbounded9SemaphoreE5closeBX_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 8
  br label %_RNvMsa_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtB5_2RxNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB7_9unbounded9SemaphoreE5closeBX_.exit

_RNvMsa_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtB5_2RxNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB7_9unbounded9SemaphoreE5closeBX_.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 448 ; 2 uses
  %i.f = atomicrmw or ptr %i.e, i64 1 release, align 8 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 384
  tail call void @_RNvMs5_NtNtCslghKHtsL3a4_5tokio4sync6notifyNtB5_6Notify14notify_waiters(ptr noundef nonnull align 8 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 128
  store ptr %i.h, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 272 ; 2 uses
  %i.m = atomicrmw or ptr %i.l, i64 2 acq_rel, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECskKYJnXoAH79_10tokio_test.exit.i

bb.c:                                             ; preds = %_RNvMsa_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtB5_2RxNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB7_9unbounded9SemaphoreE5closeBX_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 256 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !align !34, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 264
  %i.r = load ptr, ptr %i.q, align 8
  store ptr null, ptr %i.o, align 8
  %i.s = atomicrmw xchg ptr %i.l, i64 0 release, align 8 ; 0 uses
  %i.t = icmp eq ptr %i.p, null
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECskKYJnXoAH79_10tokio_test.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  invoke void %i.v(ptr noundef %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECskKYJnXoAH79_10tokio_test.exit.i unwind label %bb.e, !inline_history !252

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECskKYJnXoAH79_10tokio_test.exit.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RNvMNCNvXsb_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtBa_2RxppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0INtB2_5GuardNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtBc_9unbounded9SemaphoreE5drainB20_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNCNvXsb_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtBM_2RxppENtNtNtB4_3ops4drop4Drop4drop05GuardNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtBO_9unbounded9SemaphoreEEB2g_.exit.i unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECskKYJnXoAH79_10tokio_test.exit.i: ; preds = %bb.d, %bb.c, %_RNvMsa_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtB5_2RxNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB7_9unbounded9SemaphoreE5closeBX_.exit
  invoke fastcc void @_RNvMNCNvXsb_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtBa_2RxppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0INtB2_5GuardNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtBc_9unbounded9SemaphoreE5drainB20_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a)
          to label %_RNCNvXsb_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtB7_2RxNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB9_9unbounded9SemaphoreENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0BZ_.exit unwind label %bb.e

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNCNvXsb_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtBM_2RxppENtNtNtB4_3ops4drop4Drop4drop05GuardNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtBO_9unbounded9SemaphoreEEB2g_.exit.i: ; preds = %bb.e
  resume { ptr, i32 } %i.w

_RNCNvXsb_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtB7_2RxNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB9_9unbounded9SemaphoreENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0BZ_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECskKYJnXoAH79_10tokio_test.exit.i
  call fastcc void @_RNvMNCNvXsb_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtBa_2RxppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0INtB2_5GuardNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtBc_9unbounded9SemaphoreE5drainB20_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtB5_4ChanNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB7_9unbounded9SemaphoreENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef align 128 dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4listINtB5_2RxNtNtCskKYJnXoAH79_10tokio_test2io6ActionE3popBX_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 128 %0)
  %i.c = load i64, ptr %i.a, align 8, !range !6, !noundef !5 ; 2 uses
  %switch3.i = icmp ugt i64 %i.c, -3
  br i1 %switch3.i, label %_RNCNvXsd_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtB7_4ChanNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB9_9unbounded9SemaphoreENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0B11_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2.i, %.lr.ph.i
  %i.e = phi i64 [ %i.c, %.lr.ph.i ], [ %i.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  switch i64 %i.e, label %bb.c [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2.i
    i64 3, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !265, !noundef !5 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !266
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE9drop_slowCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2.i

bb.f:                                             ; preds = %bb.b
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2.i

bb.g:                                             ; preds = %bb.b
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2.i

bb.h:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.j = load ptr, ptr %i.d, align 8, !alias.scope !274, !noundef !5 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !275
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE9drop_slowCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4listINtB5_2RxNtNtCskKYJnXoAH79_10tokio_test2io6ActionE3popBX_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 128 %0)
  %i.n = load i64, ptr %i.a, align 8, !range !6, !noundef !5 ; 2 uses
  %switch.i = icmp ugt i64 %i.n, -3
  br i1 %switch.i, label %_RNCNvXsd_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtB7_4ChanNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB9_9unbounded9SemaphoreENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0B11_.exit, label %bb.b

_RNCNvXsd_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtB7_4ChanNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB9_9unbounded9SemaphoreENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0B11_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4listINtB5_2RxNtNtCskKYJnXoAH79_10tokio_test2io6ActionE11free_blocksBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXse_NtCskKYJnXoAH79_10tokio_test2ioNtB5_6ActionNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load i64, ptr %1, align 8, !range !41, !noundef !5 ; 2 uses
  switch i64 %i.c, label %default.unreachable15 [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.h
    i64 3, label %bb.i
    i64 4, label %bb.j
  ]

default.unreachable15:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val5 = load i64, ptr %i.e, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !280
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) %.val5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !280
  %i.f = load i64, ptr %i.b, align 8, !range !286, !noalias !280, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !287, !noalias !280, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %bb.c, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit.i.i, !prof !65

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !noalias !280
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #25, !noalias !280
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.j, align 8, !noalias !280, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp samesign ule i64 %.val5, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !280
  %.not.i.i = icmp eq i64 %.val5, 0
  br i1 %.not.i.i, label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCskKYJnXoAH79_10tokio_test.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %.val4, i64 range(i64 0, -9223372036854775808) %.val5, i1 false), !noalias !288
  br label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCskKYJnXoAH79_10tokio_test.exit

_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCskKYJnXoAH79_10tokio_test.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit.i.i, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val5, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load i64, ptr %i.p, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !289
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !289
  %i.q = load i64, ptr %i.a, align 8, !range !286, !noalias !289, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !287, !noalias !289, !noundef !5 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.r, label %bb.f, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit.i.i6, !prof !65

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.u, align 8, !noalias !289
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #25, !noalias !289
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit.i.i6: ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !noalias !289, !nonnull !5, !noundef !5 ; 2 uses
  %i.x = icmp samesign ule i64 %.val3, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !289
  %.not.i.i7 = icmp eq i64 %.val3, 0
  br i1 %.not.i.i7, label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCskKYJnXoAH79_10tokio_test.exit8, label %bb.g

bb.g:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit.i.i6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %.val, i64 range(i64 0, -9223372036854775808) %.val3, i1 false), !noalias !295
  br label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCskKYJnXoAH79_10tokio_test.exit8

_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCskKYJnXoAH79_10tokio_test.exit8: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit.i.i6, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.y, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val3, ptr %.sroa.511.0..sroa_idx, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !range !296, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ac, ptr %i.ae, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noundef !5 ; 3 uses
  %.not2 = icmp eq ptr %i.ag, null
  br i1 %.not2, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noundef !5 ; 3 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.p, label %bb.o

bb.k:                                             ; preds = %bb.p, %bb.m, %bb.h, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCskKYJnXoAH79_10tokio_test.exit8, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCskKYJnXoAH79_10tokio_test.exit
  store i64 %i.c, ptr %0, align 8
  ret void

bb.l:                                             ; preds = %bb.i
  %i.aj = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.al, align 8
  br label %bb.k

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.j
  %i.am = atomicrmw add ptr %i.ai, i64 1 monotonic, align 8
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.ao, align 8
  br label %bb.k

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !297
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !297
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !297
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !297
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !297
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !297
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !297
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !297
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !297
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !297
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !300, !noalias !303, !nonnull !5, !noundef !5
  %i.ad = call fastcc noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i), !noalias !300 ; 3 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCskKYJnXoAH79_10tokio_test.exit

bb.h:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !300, !noalias !303, !noundef !5 ; 4 uses
  %i.af = icmp eq ptr %.val.i, null
  br i1 %i.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskKYJnXoAH79_10tokio_test.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !305
  %i.ag = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskKYJnXoAH79_10tokio_test.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskKYJnXoAH79_10tokio_test.exit.i.i
    i64 1, label %bb.k
  ], !prof !37

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskKYJnXoAH79_10tokio_test.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !306, !noalias !305
  store i8 3, ptr %i.a, align 8, !alias.scope !306, !noalias !305
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskKYJnXoAH79_10tokio_test.exit.i.i unwind label %bb.l, !noalias !300

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskKYJnXoAH79_10tokio_test.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !305
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskKYJnXoAH79_10tokio_test.exit.i

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !300, !noalias !303
  resume { ptr, i32 } %i.an

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskKYJnXoAH79_10tokio_test.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskKYJnXoAH79_10tokio_test.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !300, !noalias !303
  br label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCskKYJnXoAH79_10tokio_test.exit

_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCskKYJnXoAH79_10tokio_test.exit: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskKYJnXoAH79_10tokio_test.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write9write_fmtCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCskKYJnXoAH79_10tokio_test.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !309
  ret i1 %i.a
}

end_hunk_1
