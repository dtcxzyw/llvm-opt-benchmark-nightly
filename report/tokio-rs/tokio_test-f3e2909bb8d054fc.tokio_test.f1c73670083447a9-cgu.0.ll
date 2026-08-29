Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio_test-f3e2909bb8d054fc.tokio_test.f1c73670083447a9-cgu.0?download=true
inline.NumInlined: 171
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE13push_back_mutB19_:bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskKYJnXoAH79_10tokio_test2io6ActionEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #28
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE4growB19_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !12 ; 4 uses
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskKYJnXoAH79_10tokio_test2io6ActionE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.b = load i64, ptr %0, align 8, !range !8, !alias.scope !114, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !114, !noundef !12 ; 2 uses
  %i.e = sub i64 %i.a, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !114, !noundef !12 ; 3 uses
  %.not.i = icmp ugt i64 %i.g, %i.e
  br i1 %.not.i, label %bb.b, label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE24handle_capacity_increaseB19_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 %i.a, %i.g                       ; 4 uses
  %i.i = sub i64 %i.d, %i.h                       ; 3 uses
  %i.j = icmp ule i64 %i.h, %i.i
  %i.k = sub nsw i64 %i.b, %i.a
  %.not2.i = icmp ult i64 %i.k, %i.i
  %or.cond.i = select i1 %i.j, i1 true, i1 %.not2.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.b, %i.h                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !114, !nonnull !12, !noundef !12 ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.g
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.l
  %i.q = shl nuw nsw i64 %i.h, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o, i64 %i.q, i1 false), !noalias !114
  store i64 %i.l, ptr %i.f, align 8, !alias.scope !114
  br label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE24handle_capacity_increaseB19_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !114, !nonnull !12, !noundef !12 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.a
  %i.u = shl nuw nsw i64 %i.i, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !noalias !114
  br label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE24handle_capacity_increaseB19_.exit

_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE24handle_capacity_increaseB19_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE4iterB19_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !12 ; 4 uses
  %.val = load i64, ptr %1, align 8               ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1a_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.d, align 8            ; 2 uses
  %.not.i = icmp ult i64 %.val2, %.val
  %i.e = select i1 %.not.i, i64 0, i64 %.val
  %.sroa.04.0.i = sub nuw i64 %.val2, %i.e        ; 4 uses
  %i.f = sub i64 %.val, %.sroa.04.0.i             ; 2 uses
  %.not11.i = icmp ult i64 %i.f, %i.b
  br i1 %.not11.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = sub nuw i64 %i.b, %i.f
  br label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1a_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = add i64 %.sroa.04.0.i, %i.b
  br label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1a_.exit

_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1a_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0 = phi i64 [ %.sroa.04.0.i, %bb.d ], [ %.sroa.04.0.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0 = phi i64 [ %i.h, %bb.d ], [ %.val, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0 = phi i64 [ 0, %bb.d ], [ %i.g, %bb.c ], [ 0, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.0.0
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.5.0
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.11.0
  store ptr %i.k, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.p, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE9pop_frontB19_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !12 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !12 ; 2 uses
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %i.g = load i64, ptr %1, align 8, !range !8, !noundef !12 ; 3 uses
  %.not = icmp ult i64 %i.f, %i.g
  %i.h = select i1 %.not, i64 0, i64 %i.g
  %.sroa.0.0 = sub nuw i64 %i.f, %i.h
  store i64 %.sroa.0.0, ptr %i.d, align 8
  %i.i = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.i, ptr %i.a, align 8
  %i.j = icmp ult i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !12, !noundef !12
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskKYJnXoAH79_10tokio_test(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = shl i64 %1, 5                            ; 7 uses
  %i.b = icmp ult i64 %1, 576460752303423488
  %i.c = icmp ult i64 %i.a, 9223372036854775801
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.f, !prof !117

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = shl nuw i64 %.0.val, 5                   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.a, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #17
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.a, 0
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #17
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.i, %bb.d ] ; 2 uses
  %i.j = icmp eq ptr %.pn8, null
  br i1 %i.j, label %bb.e, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.k, align 8
  br label %bb.f

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.a, %bb.e ], [ %i.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.m, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskKYJnXoAH79_10tokio_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1)
  %5 = mul nuw i64 %4, %1                         ; 5 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %5, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !118
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !118

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %5, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %3 to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.h, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17
  br i1 %2, label %bb.g, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.i = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %5, i64 noundef range(i64 1, -9223372036854775807) %3) #17
  br label %bb.h

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef range(i64 1, -9223372036854775807) %3) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.i, %bb.g ], [ %i.j, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.k = icmp eq ptr %.pn9, null
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %i.m, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.n = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.p, align 8
  br label %bb.f
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_RNvMs5_NtCskKYJnXoAH79_10tokio_test4taskNtB5_8MockTask15waker_ref_count(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMs5_NtCskKYJnXoAH79_10tokio_test4taskNtB5_8MockTask3new() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !119
  %i.a = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #17, !noalias !119 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #33, !noalias !119
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx12, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx, i8 0, i64 20, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs5_NtCskKYJnXoAH79_10tokio_test4taskNtB5_8MockTask8is_woken(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = cmpxchg ptr %i.d, i32 0, i32 1 acquire monotonic, align 4, !noalias !122
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.d), !noalias !122
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !122
  %i.h = and i64 %i.g, 9223372036854775807
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexjE4lockCskKYJnXoAH79_10tokio_test.exit.i, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #30, !noalias !122
  %i.k = xor i1 %i.j, true
  %i.l = zext i1 %i.k to i8
  br label %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexjE4lockCskKYJnXoAH79_10tokio_test.exit.i

_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexjE4lockCskKYJnXoAH79_10tokio_test.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i.i = phi i8 [ %i.l, %bb.d ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.n = load atomic i8, ptr %i.m monotonic, align 1, !noalias !122
  %.not.i.i.i = icmp ne i8 %i.n, 0
  call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardjENCNvMs9_B10_BX_3new0ECskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i1 noundef zeroext %.not.i.i.i, i8 noundef %.sroa.01.0.i.i.i, ptr noundef nonnull align 8 %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.o = load i64, ptr %i.b, align 8, !range !98, !alias.scope !125, !noalias !128, !noundef !12
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.e, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardjEINtBM_11PoisonErrorBH_EE6unwrapCskKYJnXoAH79_10tokio_test.exit.i, !prof !22

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexjE4lockCskKYJnXoAH79_10tokio_test.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !130
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !125, !noalias !128, !nonnull !12, !align !19, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !20, !alias.scope !125, !noalias !128, !noundef !12
  store ptr %i.r, ptr %i.a, align 8, !noalias !130
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.t, ptr %i.u, align 8, !noalias !130
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #33
          to label %bb.g unwind label %bb.f, !noalias !125

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardjEEECskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #28
          to label %common.resume.i unwind label %bb.h, !noalias !125

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29, !noalias !125
  unreachable

common.resume.i:                                  ; preds = %bb.p, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.al, %bb.p ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardjEINtBM_11PoisonErrorBH_EE6unwrapCskKYJnXoAH79_10tokio_test.exit.i: ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexjE4lockCskKYJnXoAH79_10tokio_test.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !125, !noalias !128, !nonnull !12, !align !19, !noundef !12 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !20, !alias.scope !125, !noalias !128, !noundef !12 ; 2 uses
  %i.ab = trunc nuw i8 %i.aa to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !12
  switch i64 %i.ad, label %bb.i [
    i64 0, label %bb.k
    i64 1, label %bb.j
  ], !prof !131

bb.i:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardjEINtBM_11PoisonErrorBH_EE6unwrapCskKYJnXoAH79_10tokio_test.exit.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #33
          to label %bb.q unwind label %bb.p

bb.j:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardjEINtBM_11PoisonErrorBH_EE6unwrapCskKYJnXoAH79_10tokio_test.exit.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardjEINtBM_11PoisonErrorBH_EE6unwrapCskKYJnXoAH79_10tokio_test.exit.i
  %.sroa.0.0.i = phi i1 [ true, %bb.j ], [ false, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardjEINtBM_11PoisonErrorBH_EE6unwrapCskKYJnXoAH79_10tokio_test.exit.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  br i1 %i.ab, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ag = and i64 %i.af, 9223372036854775807
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.ai = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #30
  br i1 %i.ai, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store atomic i8 1, ptr %i.ae monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
end_hunk_0
begin_hunk_1_@_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskKYJnXoAH79_10tokio_test4task11ThreadWakerE9drop_slowBK_:bb.a

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE9drop_slowCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %bb.g
    i64 3, label %bb.b
    i64 0, label %bb.g
    i64 1, label %bb.c
  ], !prof !4

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !156
  store i8 3, ptr %i.a, align 8, !alias.scope !156
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq ptr %i.b, inttoptr (i64 -1 to ptr)
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtB4_2io5error5ErrorRNtNtBG_5alloc6GlobalEECskKYJnXoAH79_10tokio_test.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtB4_2io5error5ErrorRNtNtBG_5alloc6GlobalEECskKYJnXoAH79_10tokio_test.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #17
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtB4_2io5error5ErrorRNtNtBG_5alloc6GlobalEECskKYJnXoAH79_10tokio_test.exit

bb.g:                                             ; preds = %bb.b, %bb.a, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = icmp eq ptr %i.b, inttoptr (i64 -1 to ptr)
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtB4_2io5error5ErrorRNtNtBG_5alloc6GlobalEECskKYJnXoAH79_10tokio_test.exit3, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtB4_2io5error5ErrorRNtNtBG_5alloc6GlobalEECskKYJnXoAH79_10tokio_test.exit3

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #17
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtB4_2io5error5ErrorRNtNtBG_5alloc6GlobalEECskKYJnXoAH79_10tokio_test.exit3

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtB4_2io5error5ErrorRNtNtBG_5alloc6GlobalEECskKYJnXoAH79_10tokio_test.exit3: ; preds = %bb.g, %bb.h, %bb.i
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtB4_2io5error5ErrorRNtNtBG_5alloc6GlobalEECskKYJnXoAH79_10tokio_test.exit: ; preds = %bb.f, %bb.e, %bb.d
  resume { ptr, i32 } %i.k
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCskKYJnXoAH79_10tokio_test4task10drop_waker(ptr noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !159
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskKYJnXoAH79_10tokio_test4task11ThreadWakerEEB1d_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskKYJnXoAH79_10tokio_test4task11ThreadWakerE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #30
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskKYJnXoAH79_10tokio_test4task11ThreadWakerEEB1d_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskKYJnXoAH79_10tokio_test4task11ThreadWakerEEB1d_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCskKYJnXoAH79_10tokio_test4task11wake_by_ref(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  invoke fastcc void @_RNvMs7_NtCskKYJnXoAH79_10tokio_test4taskNtB5_11ThreadWaker4wake(ptr noundef nonnull align 8 %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !164
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskKYJnXoAH79_10tokio_test4task11ThreadWakerEEB1d_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskKYJnXoAH79_10tokio_test4task11ThreadWakerE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #30
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskKYJnXoAH79_10tokio_test4task11ThreadWakerEEB1d_.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskKYJnXoAH79_10tokio_test4task11ThreadWakerEEB1d_.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCskKYJnXoAH79_10tokio_test4task4wake(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8
  invoke fastcc void @_RNvMs7_NtCskKYJnXoAH79_10tokio_test4taskNtB5_11ThreadWaker4wake(ptr noundef nonnull align 8 %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !169
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskKYJnXoAH79_10tokio_test4task11ThreadWakerEEB1d_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskKYJnXoAH79_10tokio_test4task11ThreadWakerE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #30
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskKYJnXoAH79_10tokio_test4task11ThreadWakerEEB1d_.exit

bb.d:                                             ; preds = %bb.a
  %i.f = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !174
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskKYJnXoAH79_10tokio_test4task11ThreadWakerEEB1d_.exit1

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskKYJnXoAH79_10tokio_test4task11ThreadWakerE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #30
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskKYJnXoAH79_10tokio_test4task11ThreadWakerEEB1d_.exit1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskKYJnXoAH79_10tokio_test4task11ThreadWakerEEB1d_.exit1: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskKYJnXoAH79_10tokio_test4task11ThreadWakerEEB1d_.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define { ptr, ptr } @_RNvNtCskKYJnXoAH79_10tokio_test4task5clone(ptr noundef %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = insertvalue { ptr, ptr } { ptr @_RNvNtCskKYJnXoAH79_10tokio_test4task6VTABLE, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB2_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 10 uses
  %i.m = alloca [32 x i8], align 8                ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !12 ; 14 uses
  %i.p = shl nuw i64 %i.o, 5                      ; 2 uses
  %.not.i.i = icmp ugt i64 %i.o, 288230376151711743
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !118

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit.thread, label %bb.c

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit.thread: ; preds = %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i64 %i.o, ptr %i.m, align 8
  %4 = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !179
  %i.r = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #17, !noalias !179 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.10.0.ph.i = phi i64 [ %i.p, %bb.c ], [ undef, %bb.a ]
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.10.0.ph.i) #33
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store i64 %i.o, ptr %i.m, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %i.r, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %.val.i = load i64, ptr %1, align 8, !alias.scope !182, !noalias !185 ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %5, align 8, !alias.scope !182, !noalias !185 ; 2 uses
  %.not.i.i1 = icmp ult i64 %.val2.i, %.val.i
  %6 = select i1 %.not.i.i1, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %6      ; 4 uses
  %7 = sub i64 %.val.i, %.sroa.04.0.i.i           ; 2 uses
  %.not11.i.i = icmp ult i64 %7, %i.o
  br i1 %.not11.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit
  %i.w = sub nuw nsw i64 %i.o, %7
  br label %bb.h

bb.f:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit
  %i.x = add i64 %.sroa.04.0.i.i, %i.o
  br label %bb.h

bb.g:                                             ; preds = %bb.n, %bb.v, %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.u, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.bk, %bb.u ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEB1C_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #28
          to label %bb.y unwind label %bb.x

bb.h:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit.thread, %bb.f, %bb.e
  %8 = phi ptr [ %i.v, %bb.f ], [ %i.v, %bb.e ], [ %4, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit.thread ] ; 2 uses
  %9 = phi ptr [ %i.u, %bb.f ], [ %i.u, %bb.e ], [ %3, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit.thread ]
  %10 = phi ptr [ %i.t, %bb.f ], [ %i.t, %bb.e ], [ %2, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit.thread ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.f ], [ %.sroa.04.0.i.i, %bb.e ], [ 0, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit.thread ]
  %.sroa.5.0.i = phi i64 [ %i.x, %bb.f ], [ %.val.i, %bb.e ], [ 0, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit.thread ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.f ], [ %i.w, %bb.e ], [ 0, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKYJnXoAH79_10tokio_test.exit.thread ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !182, !noalias !185, !nonnull !12, !noundef !12 ; 4 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.sroa.0.0.i
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.sroa.5.0.i
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.sroa.11.0.i
  store ptr %i.ab, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.aa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.ad, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !190
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iter4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionEENtNtNtB8_6traits8iterator8Iterator9size_hintB25_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !98, !noalias !190, !noundef !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !190 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !190
  %i.ai = trunc nuw i64 %i.af to i1
  br i1 %i.ai, label %bb.i, label %bb.v, !prof !21

bb.i:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.aj = icmp ugt i64 %i.ah, %i.o
  br i1 %i.aj, label %bb.n, label %_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE7reserveB19_.exit.i

bb.j:                                             ; preds = %bb.n
  %.pre.i.i = load i64, ptr %i.m, align 8, !range !8, !alias.scope !195, !noalias !198 ; 5 uses
  %.pre7.i.i = load i64, ptr %9, align 8, !alias.scope !195, !noalias !198 ; 5 uses
  %.pre = load i64, ptr %10, align 8, !alias.scope !195, !noalias !198 ; 5 uses
  %.pre8.i.i = sub i64 %i.o, %.pre7.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %.not.i.i.i = icmp ugt i64 %.pre, %.pre8.i.i
  br i1 %.not.i.i.i, label %bb.k, label %_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE7reserveB19_.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ak = sub i64 %i.o, %.pre                     ; 4 uses
  %i.al = sub i64 %.pre7.i.i, %i.ak               ; 3 uses
  %i.am = icmp ule i64 %i.ak, %i.al
  %i.an = sub nsw i64 %.pre.i.i, %i.o
  %.not2.i.i.i = icmp ult i64 %i.an, %i.al
  %or.cond.i.i.i = select i1 %i.am, i1 true, i1 %.not2.i.i.i
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = sub i64 %.pre.i.i, %i.ak                ; 3 uses
  %i.ap = load ptr, ptr %8, align 8, !alias.scope !195, !noalias !198, !nonnull !12, !noundef !12 ; 2 uses
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %.pre
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.ao
  %i.as = shl nuw nsw i64 %i.ak, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr nonnull align 8 %i.aq, i64 %i.as, i1 false), !noalias !195
  store i64 %i.ao, ptr %10, align 8, !alias.scope !195, !noalias !198
  br label %_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE7reserveB19_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %8, align 8, !alias.scope !195, !noalias !198, !nonnull !12, !noundef !12 ; 2 uses
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %i.o
  %i.av = shl nuw nsw i64 %i.al, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.au, ptr nonnull align 8 %i.at, i64 %i.av, i1 false), !noalias !195
  br label %_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE7reserveB19_.exit.i

bb.n:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef 0, i64 noundef %i.ah)
          to label %bb.j unwind label %bb.g

_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE7reserveB19_.exit.i: ; preds = %bb.i, %bb.m, %bb.l, %bb.j
  %i.aw = phi i64 [ %.pre.i.i, %bb.m ], [ %.pre.i.i, %bb.j ], [ %.pre.i.i, %bb.l ], [ %i.o, %bb.i ] ; 4 uses
  %i.ax = phi i64 [ %.pre, %bb.m ], [ %.pre, %bb.j ], [ %i.ao, %bb.l ], [ 0, %bb.i ]
  %i.ay = phi i64 [ %.pre7.i.i, %bb.m ], [ %.pre7.i.i, %bb.j ], [ %.pre7.i.i, %bb.l ], [ 0, %bb.i ]
  %i.az = add i64 %i.ay, %i.ax                    ; 2 uses
  %.not.i = icmp ult i64 %i.az, %i.aw
  %i.ba = select i1 %.not.i, i64 0, i64 %i.aw
  %.sroa.02.0.i = sub nuw i64 %i.az, %i.ba        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !187
  %i.bb = sub i64 %i.aw, %.sroa.02.0.i            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !200
  store ptr %i.m, ptr %i.i, align 8, !noalias !200
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  store i64 0, ptr %i.bc, align 8, !noalias !200
  %.not.i.i2 = icmp ult i64 %i.bb, %i.ah
  br i1 %.not.i.i2, label %bb.o, label %bb.s

bb.o:                                             ; preds = %_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE7reserveB19_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !200
  store i64 %.sroa.02.0.i, ptr %i.g, align 8, !noalias !200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !200
  store ptr %i.j, ptr %i.b, align 8, !noalias !204
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.bb, ptr %i.bd, align 8, !noalias !204
  %i.be = icmp eq i64 %i.aw, %.sroa.02.0.i
  br i1 %i.be, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !208
  store ptr %i.bd, ptr %i.a, align 8, !noalias !208
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.m, ptr %i.bf, align 8, !noalias !212
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !noalias !212
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.bc, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !212
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !212
  %i.bg = invoke noundef zeroext i1 @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iter4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB3A_4TakepEB2I_8try_fold5checkB22_uINtNtNtBb_3ops9try_trait17NeverShortCircuituENCINvMB4p_B4m_10wrap_mut_2uB22_NCINvNvXs_NtB7_9enumerateINtB5K_9EnumeratepEB2I_4fold9enumerateB22_uNCINvNvB2I_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterIB3L_INtNtB7_12by_ref_sized10ByRefSizedBP_EEE0E0E0E0E0INtNtB4r_12control_flow11ControlFlowB4m_EEB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a)
          to label %.noexc.i.i unwind label %bb.u ; 0 uses

.noexc.i.i:                                       ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !208
  %.pre.i7.i = load ptr, ptr %i.i, align 8, !noalias !200
  br label %bb.q

bb.q:                                             ; preds = %.noexc.i.i, %bb.o
  %i.bh = phi ptr [ %i.m, %bb.o ], [ %.pre.i7.i, %.noexc.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !200
  store i64 0, ptr %i.f, align 8, !noalias !200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !200
  store ptr %i.bh, ptr %i.c, align 8, !noalias !200
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !200
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.bc, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !200
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.bi, align 8, !noalias !200
  invoke void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iter4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3w_9EnumeratepEB2I_4fold9enumerateB22_uNCINvNvB2I_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0EB26_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !200
  br label %bb.w

bb.s:                                             ; preds = %_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE7reserveB19_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !200
  store i64 %.sroa.02.0.i, ptr %i.h, align 8, !noalias !200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !200
  store ptr %i.m, ptr %i.e, align 8, !noalias !200
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !200
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.bc, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !200
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.bj, align 8, !noalias !200
  invoke void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iter4IterNtNtCskKYJnXoAH79_10tokio_test2io6ActionEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3w_9EnumeratepEB2I_4fold9enumerateB22_uNCINvNvB2I_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0EB26_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !200
  br label %bb.w

bb.u:                                             ; preds = %bb.s, %bb.q, %bb.p
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %.val21.i.i = load ptr, ptr %i.i, align 8, !noalias !200, !nonnull !12, !align !19, !noundef !12
  %.val22.i.i = load i64, ptr %i.bc, align 8, !noalias !200, !noundef !12
  %i.bl = getelementptr inbounds nuw i8, ptr %.val21.i.i, i64 24 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !12
  %i.bn = add i64 %i.bm, %.val22.i.i
  store i64 %i.bn, ptr %i.bl, align 8
  br label %.body

bb.v:                                             ; preds = %.noexc
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #31
          to label %.noexc5 unwind label %bb.g

.noexc5:                                          ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.r
  %i.bo = load i64, ptr %i.bc, align 8, !noalias !200, !noundef !12
  %.val.i.i = load ptr, ptr %i.i, align 8, !noalias !200, !nonnull !12, !align !19, !noundef !12
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !12
  %i.br = add i64 %i.bq, %i.bo
  store i64 %i.br, ptr %i.bp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.x:                                             ; preds = %.body
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.y:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop() unnamed_addr #11 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCskKYJnXoAH79_10tokio_test(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @20, ptr noundef nonnull inttoptr (i64 123 to ptr))
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskKYJnXoAH79_10tokio_test(ptr %i.b)
  call void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !12 ; 4 uses
  %.val = load i64, ptr %0, align 8               ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1a_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.d, align 8            ; 2 uses
  %.not.i = icmp ult i64 %.val1, %.val
  %i.e = select i1 %.not.i, i64 0, i64 %.val
  %.sroa.04.0.i = sub nuw i64 %.val1, %i.e        ; 4 uses
  %i.f = sub i64 %.val, %.sroa.04.0.i             ; 2 uses
  %.not11.i = icmp ult i64 %i.f, %i.b
  br i1 %.not11.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = sub nuw i64 %i.b, %i.f
  br label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1a_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = add i64 %.sroa.04.0.i, %i.b
  br label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1a_.exit

_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1a_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.07.0 = phi i64 [ %.sroa.04.0.i, %bb.d ], [ %.sroa.04.0.i, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %.sroa.58.0 = phi i64 [ %i.h, %bb.d ], [ %.val, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.11.0 = phi i64 [ 0, %bb.d ], [ %i.g, %bb.c ], [ 0, %bb.a ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.07.0 ; 2 uses
  %i.l = sub i64 %.sroa.58.0, %.sroa.07.0         ; 3 uses
  %i.m = icmp eq i64 %.sroa.58.0, %.sroa.07.0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCskKYJnXoAH79_10tokio_test2io6ActionEBG_.exit.preheader, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.q, %i.l
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCskKYJnXoAH79_10tokio_test2io6ActionEBG_.exit.preheader, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCskKYJnXoAH79_10tokio_test2io6ActionEBG_.exit.preheader: ; preds = %bb.e, %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1a_.exit
  %i.o = icmp eq i64 %.sroa.11.0, 0
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque7DropperNtNtCskKYJnXoAH79_10tokio_test2io6ActionEEB1B_.exit, label %.lr.ph19

.lr.ph:                                           ; preds = %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1a_.exit, %bb.e
  %.sroa.0.0.i15 = phi i64 [ %i.q, %bb.e ], [ 0, %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCskKYJnXoAH79_10tokio_test2io6ActionE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1a_.exit ] ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %.sroa.0.0.i15
  %i.q = add nuw nsw i64 %.sroa.0.0.i15, 1        ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskKYJnXoAH79_10tokio_test2io6ActionEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.p)
          to label %bb.e unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph17
  %i.r = add i64 %.sroa.0.1.i16, 1                ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.l
  br i1 %i.s, label %.body, label %.lr.ph17

bb.g:                                             ; preds = %.lr.ph
end_hunk_1
