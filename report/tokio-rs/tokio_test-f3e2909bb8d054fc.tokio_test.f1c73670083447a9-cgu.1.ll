Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio_test-f3e2909bb8d054fc.tokio_test.f1c73670083447a9-cgu.1?download=true
inline.NumInlined: 123
inline.NumDeleted: 84
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_:bb.a

bb.e:                                             ; preds = %bb.d
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !32
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEB1t_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE9drop_slowCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEB1t_.exit

bb.g:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEB1t_.exit

bb.h:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEB1t_.exit

bb.i:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !34, !noundef !4 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEB1t_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !35
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEB1t_.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE9drop_slowCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEB1t_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chan4ChanNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB1j_9unbounded9SemaphoreEEEB25_(ptr noalias nofree noundef nonnull align 128 dereferenceable(512) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_RNvXsd_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtB5_4ChanNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB7_9unbounded9SemaphoreENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef nonnull align 128 dereferenceable(384) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val2.i = load ptr, ptr %i.c, align 128, !alias.scope !40, !align !6, !noundef !4 ; 2 uses
  %i.d = icmp eq ptr %.val2.i, null
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4util9cacheline11CachePaddedNtNtNtNtBI_4sync4task12atomic_waker11AtomicWakerEECskKYJnXoAH79_10tokio_test.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val3.i = load ptr, ptr %i.e, align 8, !alias.scope !40
  %i.f = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  invoke void %i.g(ptr noundef %.val3.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4util9cacheline11CachePaddedNtNtNtNtBI_4sync4task12atomic_waker11AtomicWakerEECskKYJnXoAH79_10tokio_test.exit.i unwind label %bb.f, !inline_history !38

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val.i = load ptr, ptr %i.h, align 128, !alias.scope !40, !align !6, !noundef !4 ; 2 uses
  %i.i = icmp eq ptr %.val.i, null
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chan4ChanNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtBG_9unbounded9SemaphoreEEB1s_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val1.i = load ptr, ptr %i.j, align 8, !alias.scope !40
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  tail call void %i.l(ptr noundef %.val1.i), !inline_history !39
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chan4ChanNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtBG_9unbounded9SemaphoreEEB1s_.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4util9cacheline11CachePaddedNtNtNtNtBI_4sync4task12atomic_waker11AtomicWakerEECskKYJnXoAH79_10tokio_test.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chan4ChanNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtBG_9unbounded9SemaphoreEEB1s_.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrEECskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskKYJnXoAH79_10tokio_test.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskKYJnXoAH79_10tokio_test.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskKYJnXoAH79_10tokio_test.exit.i
    i64 1, label %bb.d
  ], !prof !7

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskKYJnXoAH79_10tokio_test.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !43
  store i8 3, ptr %i.a, align 8, !alias.scope !43
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskKYJnXoAH79_10tokio_test.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskKYJnXoAH79_10tokio_test.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskKYJnXoAH79_10tokio_test.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskKYJnXoAH79_10tokio_test.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskKYJnXoAH79_10tokio_test.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskKYJnXoAH79_10tokio_test2io6ActionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB4_2io5error5ErrorEEECskKYJnXoAH79_10tokio_test.exit
    i64 3, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !56, !noundef !4 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB4_2io5error5ErrorEEECskKYJnXoAH79_10tokio_test.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !57
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB4_2io5error5ErrorEEECskKYJnXoAH79_10tokio_test.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE9drop_slowCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB4_2io5error5ErrorEEECskKYJnXoAH79_10tokio_test.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB4_2io5error5ErrorEEECskKYJnXoAH79_10tokio_test.exit

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB4_2io5error5ErrorEEECskKYJnXoAH79_10tokio_test.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB4_2io5error5ErrorEEECskKYJnXoAH79_10tokio_test.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.d, %bb.c, %bb.b, %bb.f, %bb.e, %bb.a
  ret void

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !58, !noundef !4 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB4_2io5error5ErrorEEECskKYJnXoAH79_10tokio_test.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !59
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB4_2io5error5ErrorEEECskKYJnXoAH79_10tokio_test.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE9drop_slowCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB4_2io5error5ErrorEEECskKYJnXoAH79_10tokio_test.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskKYJnXoAH79_10tokio_test(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECskKYJnXoAH79_10tokio_test.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECskKYJnXoAH79_10tokio_test.exit
    i64 1, label %bb.c
  ], !prof !7

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
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !62
  store i8 3, ptr %i.a, align 8, !alias.scope !62
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
  ], !prof !63

bb.c:                                             ; preds = %bb.a
  switch i8 %3, label %default.unreachable1 [
    i8 0, label %bb.k
    i8 2, label %bb.l
    i8 4, label %bb.m
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !63

bb.d:                                             ; preds = %bb.a
  switch i8 %3, label %default.unreachable1 [
    i8 0, label %bb.n
    i8 2, label %bb.o
    i8 4, label %bb.p
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !63

bb.e:                                             ; preds = %bb.a
  switch i8 %3, label %default.unreachable1 [
    i8 0, label %bb.q
    i8 2, label %bb.r
    i8 4, label %bb.s
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !63

bb.f:                                             ; preds = %bb.a
  switch i8 %3, label %default.unreachable1 [
    i8 0, label %bb.t
    i8 2, label %bb.u
    i8 4, label %bb.v
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !63

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
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !66
  %i.f = tail call noundef align 128 dereferenceable_or_null(512) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 512, i64 noundef 128) #18, !noalias !66 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chan4ChanNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB15_9unbounded9SemaphoreEEE3newB1R_.exit, !prof !9

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
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8, !noalias !71
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
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8, !noalias !72
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
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8, !alias.scope !111, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.43.0.copyload = load ptr, ptr %.sroa.43.0..sroa_idx, align 8, !alias.scope !111, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.54.0.copyload = load ptr, ptr %.sroa.54.0..sroa_idx, align 8, !alias.scope !111 ; 4 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8, !alias.scope !111 ; 3 uses
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
  %i.d = ptrtoint ptr %.sroa.43.0.copyload to i64
  %i.e = ptrtoint ptr %.sroa.02.0.copyload to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.copyload, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %.sroa.9.0.copyload, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.r, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %.sroa.02.0.copyload, i64 %.sroa.01.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !112
  call fastcc void @_RNvXse_NtCskKYJnXoAH79_10tokio_test2ioNtB5_6ActionNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j) #27, !noalias !113
  %i.k = load i64, ptr %.sroa.58.0.copyload, align 8, !noalias !114, !noundef !4
  %i.l = load ptr, ptr %i.h, align 8, !noalias !114, !nonnull !4, !noundef !4
  %i.m = getelementptr [32 x i8], ptr %i.l, i64 %i.k
  %i.n = getelementptr [32 x i8], ptr %i.m, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !115
  %i.o = load i64, ptr %.sroa.7.0.copyload, align 8, !noalias !114, !noundef !4
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %.sroa.7.0.copyload, align 8, !noalias !114
  %i.q = add i64 %i.i, 1                          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !112
  %i.r = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.g
  br i1 %i.s, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1B_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2o_9enumerateINtB3D_9EnumeratepEB1v_4fold9enumerateBQ_uNCINvNvB1v_8for_each4callTjBQ_ENCINvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5d_8VecDequeBQ_E10write_iterINtNtB2o_6cloned6ClonedINtNtB5d_4iter4IterBQ_EEE0E0E0E0EBU_.exit.i, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1B_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2o_9enumerateINtB3D_9EnumeratepEB1v_4fold9enumerateBQ_uNCINvNvB1v_8for_each4callTjBQ_ENCINvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5d_8VecDequeBQ_E10write_iterINtNtB2o_6cloned6ClonedINtNtB5d_4iter4IterBQ_EEE0E0E0E0EBU_.exit.i: ; preds = %bb.c, %bb.a
  %.sroa.9.0 = phi i64 [ %.sroa.9.0.copyload, %bb.a ], [ %i.q, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.54.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.65.0.copyload) ]
  %i.t = icmp eq ptr %.sroa.54.0.copyload, %.sroa.65.0.copyload
  br i1 %i.t, label %_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRB19_B19_uNvYB19_NtNtB1W_5clone5Clone5cloneNCINvNvXs_NtB2W_9enumerateINtB4f_9EnumeratepEB1O_4fold9enumerateB19_uNCINvNvB1O_8for_each4callTjB19_ENCINvMs2_B8_INtB8_8VecDequeB19_E10write_iterINtNtB2W_6cloned6ClonedBY_EE0E0E0E0EB1d_.exit, label %bb.d

bb.d:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1B_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2o_9enumerateINtB3D_9EnumeratepEB1v_4fold9enumerateBQ_uNCINvNvB1v_8for_each4callTjBQ_ENCINvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5d_8VecDequeBQ_E10write_iterINtNtB2o_6cloned6ClonedINtNtB5d_4iter4IterBQ_EEE0E0E0E0EBU_.exit.i
  %i.u = ptrtoint ptr %.sroa.65.0.copyload to i64
  %i.v = ptrtoint ptr %.sroa.54.0.copyload to i64
  %i.w = sub nuw i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 5
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.0.copyload, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.z = phi i64 [ %.sroa.9.0, %bb.d ], [ %i.ah, %bb.e ] ; 2 uses
  %.sroa.01.0.i2.i = phi i64 [ 0, %bb.d ], [ %i.ai, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %.sroa.54.0.copyload, i64 %.sroa.01.0.i2.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !116
  call fastcc void @_RNvXse_NtCskKYJnXoAH79_10tokio_test2ioNtB5_6ActionNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa) #27, !noalias !117
  %i.ab = load i64, ptr %.sroa.58.0.copyload, align 8, !noalias !118, !noundef !4
  %i.ac = load ptr, ptr %i.y, align 8, !noalias !118, !nonnull !4, !noundef !4
  %i.ad = getelementptr [32 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = getelementptr [32 x i8], ptr %i.ad, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !119
  %i.af = load i64, ptr %.sroa.7.0.copyload, align 8, !noalias !118, !noundef !4
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %.sroa.7.0.copyload, align 8, !noalias !118
  %i.ah = add i64 %i.z, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !116
  %i.ai = add nuw i64 %.sroa.01.0.i2.i, 1         ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.x
  br i1 %i.aj, label %_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRB19_B19_uNvYB19_NtNtB1W_5clone5Clone5cloneNCINvNvXs_NtB2W_9enumerateINtB4f_9EnumeratepEB1O_4fold9enumerateB19_uNCINvNvB1O_8for_each4callTjB19_ENCINvMs2_B8_INtB8_8VecDequeB19_E10write_iterINtNtB2W_6cloned6ClonedBY_EE0E0E0E0EB1d_.exit, label %bb.e

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !175, !noalias !176, !nonnull !4, !noundef !4
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !175, !noalias !176
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.promoted10.i3.i = phi i64 [ %i.p, %bb.c ], [ %.sroa.7.0.copyload, %bb.a ] ; 3 uses
  %i.f = phi ptr [ %i.g, %bb.c ], [ %.promoted.i.i, %bb.a ] ; 3 uses
  %.not.not.not.i.not.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.not.not.i.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1u_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB36_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2l_4takeINtB4v_4TakepEB1o_8try_fold5checkBJ_uB3G_NCINvMB3J_B3G_10wrap_mut_2uBJ_NCINvNvXs_NtB2l_9enumerateINtB5Z_9EnumeratepEB1o_4fold9enumerateBJ_uNCINvNvB1o_8for_each4callTjBJ_ENCINvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB7z_8VecDequeBJ_E10write_iterIB4H_INtNtB2l_12by_ref_sized10ByRefSizedINtB2j_6ClonedINtNtB7z_4iter4IterBJ_EEEEE0E0E0E0E0E0B31_EBN_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !175, !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !177
  call fastcc void @_RNvXse_NtCskKYJnXoAH79_10tokio_test2ioNtB5_6ActionNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f) #27, !noalias !178
  %i.h = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !179, !noundef !4
  %i.i = add i64 %i.h, -1
  store i64 %i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !179
  %i.j = load i64, ptr %.sroa.5.0.copyload, align 8, !noalias !180, !noundef !4
  %i.k = load ptr, ptr %i.e, align 8, !noalias !180, !nonnull !4, !noundef !4
  %i.l = getelementptr [32 x i8], ptr %i.k, i64 %i.j
  %i.m = getelementptr [32 x i8], ptr %i.l, i64 %.promoted10.i3.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !181
  %i.n = load i64, ptr %.sroa.6.0.copyload, align 8, !noalias !180, !noundef !4
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %.sroa.6.0.copyload, align 8, !noalias !180
  %i.p = add i64 %.promoted10.i3.i, 1
  %i.q = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !179, !noundef !4
  %i.r = icmp eq i64 %i.q, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !177
  br i1 %i.r, label %_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters6cloned14clone_try_foldB19_uINtNtNtB1W_3ops12control_flow11ControlFlowINtNtB3M_9try_trait17NeverShortCircuituEENCINvNvXs_NtB30_4takeINtB5c_4TakepEB1O_8try_fold5checkB19_uB4n_NCINvMB4q_B4n_10wrap_mut_2uB19_NCINvNvXs_NtB30_9enumerateINtB6I_9EnumeratepEB1O_4fold9enumerateB19_uNCINvNvB1O_8for_each4callTjB19_ENCINvMs2_B8_INtB8_8VecDequeB19_E10write_iterIB5o_INtNtB30_12by_ref_sized10ByRefSizedINtB2Y_6ClonedBY_EEEE0E0E0E0E0E0B3H_EB1d_.exit, label %bb.b

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1u_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB36_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2l_4takeINtB4v_4TakepEB1o_8try_fold5checkBJ_uB3G_NCINvMB3J_B3G_10wrap_mut_2uBJ_NCINvNvXs_NtB2l_9enumerateINtB5Z_9EnumeratepEB1o_4fold9enumerateBJ_uNCINvNvB1o_8for_each4callTjBJ_ENCINvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB7z_8VecDequeBJ_E10write_iterIB4H_INtNtB2l_12by_ref_sized10ByRefSizedINtB2j_6ClonedINtNtB7z_4iter4IterBJ_EEEEE0E0E0E0E0E0B31_EBN_.exit.i: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !183, !noalias !184, !nonnull !4, !noundef !4
  %.promoted.i2.i = load ptr, ptr %i.s, align 8, !alias.scope !183, !noalias !184
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1u_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB36_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2l_4takeINtB4v_4TakepEB1o_8try_fold5checkBJ_uB3G_NCINvMB3J_B3G_10wrap_mut_2uBJ_NCINvNvXs_NtB2l_9enumerateINtB5Z_9EnumeratepEB1o_4fold9enumerateBJ_uNCINvNvB1o_8for_each4callTjBJ_ENCINvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB7z_8VecDequeBJ_E10write_iterIB4H_INtNtB2l_12by_ref_sized10ByRefSizedINtB2j_6ClonedINtNtB7z_4iter4IterBJ_EEEEE0E0E0E0E0E0B31_EBN_.exit.i
  %i.v = phi i64 [ %i.ag, %bb.e ], [ %.promoted10.i3.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1u_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB36_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2l_4takeINtB4v_4TakepEB1o_8try_fold5checkBJ_uB3G_NCINvMB3J_B3G_10wrap_mut_2uBJ_NCINvNvXs_NtB2l_9enumerateINtB5Z_9EnumeratepEB1o_4fold9enumerateBJ_uNCINvNvB1o_8for_each4callTjBJ_ENCINvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB7z_8VecDequeBJ_E10write_iterIB4H_INtNtB2l_12by_ref_sized10ByRefSizedINtB2j_6ClonedINtNtB7z_4iter4IterBJ_EEEEE0E0E0E0E0E0B31_EBN_.exit.i ] ; 2 uses
  %i.w = phi ptr [ %i.x, %bb.e ], [ %.promoted.i2.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1u_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB36_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2l_4takeINtB4v_4TakepEB1o_8try_fold5checkBJ_uB3G_NCINvMB3J_B3G_10wrap_mut_2uBJ_NCINvNvXs_NtB2l_9enumerateINtB5Z_9EnumeratepEB1o_4fold9enumerateBJ_uNCINvNvB1o_8for_each4callTjBJ_ENCINvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB7z_8VecDequeBJ_E10write_iterIB4H_INtNtB2l_12by_ref_sized10ByRefSizedINtB2j_6ClonedINtNtB7z_4iter4IterBJ_EEEEE0E0E0E0E0E0B31_EBN_.exit.i ] ; 3 uses
  %.not.not.not.i4.not.not.i.not.not = icmp ne ptr %i.w, %i.u ; 3 uses
  br i1 %.not.not.not.i4.not.not.i.not.not, label %bb.e, label %_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters6cloned14clone_try_foldB19_uINtNtNtB1W_3ops12control_flow11ControlFlowINtNtB3M_9try_trait17NeverShortCircuituEENCINvNvXs_NtB30_4takeINtB5c_4TakepEB1O_8try_fold5checkB19_uB4n_NCINvMB4q_B4n_10wrap_mut_2uB19_NCINvNvXs_NtB30_9enumerateINtB6I_9EnumeratepEB1O_4fold9enumerateB19_uNCINvNvB1O_8for_each4callTjB19_ENCINvMs2_B8_INtB8_8VecDequeB19_E10write_iterIB5o_INtNtB30_12by_ref_sized10ByRefSizedINtB2Y_6ClonedBY_EEEE0E0E0E0E0E0B3H_EB1d_.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  store ptr %i.x, ptr %i.s, align 8, !alias.scope !183, !noalias !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !185
  call fastcc void @_RNvXse_NtCskKYJnXoAH79_10tokio_test2ioNtB5_6ActionNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w) #27, !noalias !186
  %i.y = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !187, !noundef !4
  %i.z = add i64 %i.y, -1
  store i64 %i.z, ptr %.sroa.0.0.copyload, align 8, !noalias !187
  %i.aa = load i64, ptr %.sroa.5.0.copyload, align 8, !noalias !188, !noundef !4
  %i.ab = load ptr, ptr %i.e, align 8, !noalias !188, !nonnull !4, !noundef !4
  %i.ac = getelementptr [32 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = getelementptr [32 x i8], ptr %i.ac, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !189
  %i.ae = load i64, ptr %.sroa.6.0.copyload, align 8, !noalias !188, !noundef !4
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %.sroa.6.0.copyload, align 8, !noalias !188
  %i.ag = add i64 %i.v, 1
  %i.ah = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !187, !noundef !4
  %i.ai = icmp eq i64 %i.ah, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !185
  br i1 %i.ai, label %_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters6cloned14clone_try_foldB19_uINtNtNtB1W_3ops12control_flow11ControlFlowINtNtB3M_9try_trait17NeverShortCircuituEENCINvNvXs_NtB30_4takeINtB5c_4TakepEB1O_8try_fold5checkB19_uB4n_NCINvMB4q_B4n_10wrap_mut_2uB19_NCINvNvXs_NtB30_9enumerateINtB6I_9EnumeratepEB1O_4fold9enumerateB19_uNCINvNvB1O_8for_each4callTjB19_ENCINvMs2_B8_INtB8_8VecDequeB19_E10write_iterIB5o_INtNtB30_12by_ref_sized10ByRefSizedINtB2Y_6ClonedBY_EEEE0E0E0E0E0E0B3H_EB1d_.exit, label %bb.d

_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters6cloned14clone_try_foldB19_uINtNtNtB1W_3ops12control_flow11ControlFlowINtNtB3M_9try_trait17NeverShortCircuituEENCINvNvXs_NtB30_4takeINtB5c_4TakepEB1O_8try_fold5checkB19_uB4n_NCINvMB4q_B4n_10wrap_mut_2uB19_NCINvNvXs_NtB30_9enumerateINtB6I_9EnumeratepEB1O_4fold9enumerateB19_uNCINvNvB1O_8for_each4callTjB19_ENCINvMs2_B8_INtB8_8VecDequeB19_E10write_iterIB5o_INtNtB30_12by_ref_sized10ByRefSizedINtB2Y_6ClonedBY_EEEE0E0E0E0E0E0B3H_EB1d_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i = phi i1 [ %.not.not.not.i4.not.not.i.not.not, %bb.d ], [ %.not.not.not.i4.not.not.i.not.not, %bb.e ], [ true, %bb.c ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNCNvXsb_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtBa_2RxppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0INtB2_5GuardNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtBc_9unbounded9SemaphoreE5drainB20_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4listINtB5_2RxNtNtCskKYJnXoAH79_10tokio_test2io6ActionE3popBX_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.d)
  %i.e = load i64, ptr %i.a, align 8, !range !5, !noundef !4
  %switch3 = icmp ugt i64 %i.e, -3
  br i1 %switch3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
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
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.j = load i64, ptr %i.a, align 8, !range !5, !alias.scope !208, !noundef !4 ; 3 uses
  %i.k = icmp eq i64 %i.j, -2
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %.not.i.i1 = icmp eq i64 %i.j, -1
  br i1 %.not.i.i1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  switch i64 %i.j, label %bb.g [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2
    i64 3, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.l = load ptr, ptr %i.h, align 8, !alias.scope !212, !noundef !4 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc5block4ReadNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEEB1P_.exit2, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !213
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
end_hunk_0
