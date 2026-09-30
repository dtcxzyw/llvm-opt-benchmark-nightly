Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio_test-f3e2909bb8d054fc.tokio_test.f1c73670083447a9-cgu.2?download=true
inline.NumInlined: 115
inline.NumDeleted: 63
begin_hunk_0_@_RNvMNtCskKYJnXoAH79_10tokio_test2ioNtB2_7Builder10read_error:bb.a
.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtB4_2io5error5ErrorEECskKYJnXoAH79_10tokio_test(ptr nonnull %1) #18
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorEE3newCskKYJnXoAH79_10tokio_test.exit: ; preds = %bb.a
  store i64 1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.f, align 8
  store i64 3, ptr %i.a, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE13push_back_mutB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtCskKYJnXoAH79_10tokio_test2ioNtB2_7Builder11write_error(ptr noalias nofree noundef returned align 8 dereferenceable(56) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !165
  %i.b = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 113) 24, i64 noundef 8) #20, !noalias !165 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorEE3newCskKYJnXoAH79_10tokio_test.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #21
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtB4_2io5error5ErrorEECskKYJnXoAH79_10tokio_test(ptr nonnull %1) #18
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorEE3newCskKYJnXoAH79_10tokio_test.exit: ; preds = %bb.a
  store i64 1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.f, align 8
  store i64 4, ptr %i.a, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE13push_back_mutB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCskKYJnXoAH79_10tokio_test2ioNtB2_7Builder17build_with_handle(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [56 x i8], align 8          ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB2_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB16_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = invoke { ptr, ptr } @_RINvNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chan7channelNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB4_9unbounded9SemaphoreEBT_(i64 noundef 0)
          to label %bb.f unwind label %bb.c, !noalias !170 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #18
          to label %bb.e unwind label %bb.d, !noalias !171

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !172
  unreachable

bb.e:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #18
          to label %.body unwind label %bb.d, !noalias !172

bb.f:                                             ; preds = %bb.b
  %i.g = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.d, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !173
  %.sroa.0.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i, i64 56, i1 false)
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.713.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 -1, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.h, ptr %.sroa.612.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.g, ptr %i.i, align 8
  ret void

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body17 = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.e, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body17

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEB1C_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #18
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtCskKYJnXoAH79_10tokio_test2ioNtB2_7Builder4read(ptr noalias nofree noundef returned align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !range !6, !noundef !7
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !13, !noundef !7 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.j = icmp samesign ule i64 %2, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.f, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 0, ptr %i.b, align 8
  %i.l = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE13push_back_mutB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %0

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtCskKYJnXoAH79_10tokio_test2ioNtB2_7Builder4wait(ptr noalias nofree noundef returned align 8 dereferenceable(56) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %3 = icmp eq i64 %1, 0
  %i.b = icmp samesign ugt i32 %2, 1000000
  %4 = icmp ne i64 %1, 0
  %i.c = select i1 %3, i1 %i.b, i1 %4             ; 2 uses
  %..i = select i1 %i.c, i32 %2, i32 1000000
  %.2.i = select i1 %i.c, i64 %1, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.2.i, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %..i, ptr %i.e, align 8
  store i64 2, ptr %i.a, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE13push_back_mutB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCskKYJnXoAH79_10tokio_test2ioNtB2_7Builder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCskKYJnXoAH79_10tokio_test2ioNtB2_7Builder17build_with_handle(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 5 uses
  invoke void @_RNvXs9_NtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chanINtB5_2TxNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtB7_9unbounded9SemaphoreENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !190, !nonnull !7, !noundef !7
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !191
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %.body

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chan4ChanNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtBL_9unbounded9SemaphoreEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #17
          to label %.body unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !194, !nonnull !7, !noundef !7
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !195
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskKYJnXoAH79_10tokio_test2io6HandleEBF_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCslghKHtsL3a4_5tokio4sync4mpsc4chan4ChanNtNtCskKYJnXoAH79_10tokio_test2io6ActionNtNtBL_9unbounded9SemaphoreEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #17
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskKYJnXoAH79_10tokio_test2io6HandleEBF_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.d, %bb.c ], [ %i.d, %bb.b ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskKYJnXoAH79_10tokio_test2io4MockEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.b) #18
          to label %bb.i unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskKYJnXoAH79_10tokio_test2io6HandleEBF_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.i:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtCskKYJnXoAH79_10tokio_test2ioNtB2_7Builder5write(ptr noalias nofree noundef returned align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !range !6, !noundef !7
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !13, !noundef !7 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.j = icmp samesign ule i64 %2, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.f, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 1, ptr %i.b, align 8
  %i.l = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE13push_back_mutB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %0

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs0_NtCskKYJnXoAH79_10tokio_test2ioNtB5_5Inner6action(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !7
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEB11_.exit
  %i.i = load i64, ptr %i.e, align 8, !noundef !7 ; 2 uses
  %i.j = load i64, ptr %0, align 8, !range !14, !noundef !7 ; 2 uses
  %.not = icmp ult i64 %i.i, %i.j
  %i.k = select i1 %.not, i64 0, i64 %i.j
  %.sroa.02.0 = sub nuw i64 %i.i, %i.k
  %i.l = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.sroa.02.0 ; 6 uses
  %i.n = load i64, ptr %i.m, align 8, !range !11, !noundef !7
  switch i64 %i.n, label %default.unreachable36 [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.l
    i64 4, label %bb.l
  ]

default.unreachable36:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noundef !7 ; 2 uses
  %i.q = icmp sgt i64 %i.p, -1
  call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %bb.f, label %.loopexit16

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noundef !7 ; 2 uses
  %i.u = icmp sgt i64 %i.t, -1
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %bb.f, label %.loopexit16

bb.e:                                             ; preds = %bb.b
  %i.w = load i32, ptr %i.h, align 8, !range !198, !noundef !7 ; 2 uses
  %.not13 = icmp eq i32 %i.w, -1
  br i1 %.not13, label %bb.i, label %bb.h

.loopexit16:                                      ; preds = %.split, %bb.l, %bb.j, %bb.d, %bb.c, %bb.i
  %i.x = load i64, ptr %i.b, align 8, !noundef !7
  %.not14 = icmp eq i64 %i.x, 0
  br i1 %.not14, label %.loopexit, label %bb.m

bb.f:                                             ; preds = %bb.l, %bb.d, %bb.c, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE9pop_frontB19_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  %i.y = load i64, ptr %i.a, align 8, !range !15, !alias.scope !199, !noundef !7
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEB11_.exit, label %bb.g

end_hunk_0
