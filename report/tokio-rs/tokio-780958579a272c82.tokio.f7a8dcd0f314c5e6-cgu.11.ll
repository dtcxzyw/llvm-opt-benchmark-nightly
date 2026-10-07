Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.11?download=true
inline.NumInlined: 354
inline.NumDeleted: 184
begin_hunk_0_@_RINvNtNtCslghKHtsL3a4_5tokio2io5split5splitNtNtNtB4_4util3mem13SimplexStreamEB6_:bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !312
  %i.d = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 32, 273) 112, i64 noundef 8) #19, !noalias !312 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.e, !prof !4

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #20
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtCslghKHtsL3a4_5tokio2io5split5InnerNtNtNtB1j_4util3mem13SimplexStreamEEEB1l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a) #23
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = atomicrmw add ptr %i.d, i64 1 monotonic, align 8
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.d, 1
  ret { ptr, ptr } %i.k

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.c
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslghKHtsL3a4_5tokio4util4wake12drop_arc_rawNtNtNtNtB6_7runtime9scheduler14current_thread6HandleEB6_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEBO_(ptr noundef %0)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store ptr %i.d, ptr %i.a, align 8
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !317
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslghKHtsL3a4_5tokio4util4wake12wake_arc_rawNtNtNtNtB6_7runtime9scheduler14current_thread6HandleEB6_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEBO_(ptr noundef %0)
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  tail call void @_RNvXs6_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6HandleNtNtNtBb_4util4wake4Wake4wake(ptr noundef nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtNtCslghKHtsL3a4_5tokio4util4wake13clone_arc_rawNtNtNtNtB6_7runtime9scheduler14current_thread6HandleEB6_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEBO_(ptr noundef %0)
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE25increment_strong_count_inBO_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE25increment_strong_count_inBO_.exit: ; preds = %bb.a
  %i.f = insertvalue { ptr, ptr } { ptr @2, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslghKHtsL3a4_5tokio4util4wake19wake_by_ref_arc_rawNtNtNtNtB6_7runtime9scheduler14current_thread6HandleEB6_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEBO_(ptr noundef %0)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store ptr %i.d, ptr %i.a, align 8
  call void @_RNvXs6_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6HandleNtNtNtBb_4util4wake4Wake11wake_by_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool14spawn_blockingNCNvMNtNtB8_2fs8read_dirNtB19_7ReadDir15poll_next_entry0TINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtB19_8DirEntryNtNtNtB31_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEEB8_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = invoke { i64, ptr } @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 2 uses
  store i64 %i.j, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.m = atomicrmw add ptr @_RNvNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !344 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = trunc nuw i64 %i.j to i1
  %.sroa.01.0.v = select i1 %i.n, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !344
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.e unwind label %bb.h, !noalias !345

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !344
  invoke void @_RINvNtNtCslghKHtsL3a4_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNvMNtNtB6_2fs8read_dirNtB1t_7ReadDir15poll_next_entry0ENtNtBR_8schedule16BlockingScheduleEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.m)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.e
  %i.o = load ptr, ptr %i.a, align 8, !noalias !344, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !344, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !344
  store ptr %i.q, ptr %i.d, align 8, !noalias !344
  %i.r = invoke { i64, ptr } @_RNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.o, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvMNtNtBc_2fs8read_dirNtB1w_7ReadDir15poll_next_entry0TINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtB1w_8DirEntryNtNtNtB3o_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEEBc_.exit.i unwind label %bb.f, !noalias !346 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBb_2fs8read_dir8DirEntryNtNtNtB28_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEENtNtNtB28_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.g, !noalias !345

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !345
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load i64, ptr %i.c, align 8, !range !7, !alias.scope !347, !noalias !344, !noundef !5
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtNtCslghKHtsL3a4_5tokio2fs8read_dirNtBG_7ReadDir15poll_next_entry0EBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %.body unwind label %bb.g, !noalias !345

_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvMNtNtBc_2fs8read_dirNtB1w_7ReadDir15poll_next_entry0TINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtB1w_8DirEntryNtNtNtB3o_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEEBc_.exit.i: ; preds = %.noexc
  %i.x = extractvalue { i64, ptr } %i.r, 0
  %i.y = extractvalue { i64, ptr } %i.r, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !348
  store ptr %i.q, ptr %i.g, align 8, !noalias !348
  %i.z = trunc nuw i64 %i.x to i1
  %.not.i = icmp ne ptr %i.y, null
  %or.cond.not.i = select i1 %i.z, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.j, label %bb.p, !prof !10

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvMNtNtBc_2fs8read_dirNtB1w_7ReadDir15poll_next_entry0TINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtB1w_8DirEntryNtNtNtB3o_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEEBc_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !348
  store ptr %i.y, ptr %i.f, align 8, !noalias !348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !348
  store ptr %i.f, ptr %i.e, align 8, !noalias !348
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !348
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #20
          to label %bb.l unwind label %bb.k, !noalias !349

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !348, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %.val.i) #23
          to label %bb.n unwind label %bb.m, !noalias !349

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !349
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBb_2fs8read_dir8DirEntryNtNtNtB28_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEENtNtNtB28_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body unwind label %bb.m, !noalias !349

bb.o:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h, %bb.i, %bb.n, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.o ], [ %i.u, %bb.i ], [ %i.u, %bb.h ], [ %i.s, %bb.f ], [ %i.aa, %bb.n ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h) #23
          to label %.thread unwind label %bb.u

bb.p:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvMNtNtBc_2fs8read_dirNtB1w_7ReadDir15poll_next_entry0TINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtB1w_8DirEntryNtNtNtB3o_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEEBc_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !348
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.ad = load i64, ptr %i.h, align 8, !range !9, !alias.scope !352, !noundef !5
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.af = load ptr, ptr %i.l, align 8, !alias.scope !355, !nonnull !5, !noundef !5
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !355
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.s:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.ai = load ptr, ptr %i.l, align 8, !alias.scope !358, !nonnull !5, !noundef !5
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !358
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit: ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret ptr %i.q

bb.u:                                             ; preds = %bb.v, %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread:                                          ; preds = %.body, %bb.v
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.v ]
  resume { ptr, i32 } %.pn8

bb.v:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtNtCslghKHtsL3a4_5tokio2fs8read_dirNtBG_7ReadDir15poll_next_entry0EBK_(ptr noalias nofree noundef align 8 dereferenceable(48) %0) #23
          to label %.thread unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool14spawn_blockingNCNvMNtNtNtB6_9scheduler12multi_thread6workerNtB19_6Launch6launch0uEB8_(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.j = invoke { i64, ptr } @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i64, ptr } %i.j, 0        ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.j, 1        ; 3 uses
  store i64 %i.k, ptr %i.h, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.l, ptr %i.m, align 8
  %i.n = trunc nuw i64 %i.k to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %. = select i1 %i.n, i64 560, i64 776
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.p = atomicrmw add ptr @_RNvNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !395 ; 2 uses
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !395
  store ptr %0, ptr %i.c, align 8, !noalias !395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !395
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.e unwind label %bb.h, !noalias !396

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !395
  invoke void @_RINvNtNtCslghKHtsL3a4_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNvMNtNtNtB4_9scheduler12multi_thread6workerNtB1t_6Launch6launch0ENtNtBR_8schedule16BlockingScheduleEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.p)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.e
  %i.q = load ptr, ptr %i.a, align 8, !noalias !395, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !395, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !395
  store ptr %i.s, ptr %i.d, align 8, !noalias !395
  %i.t = invoke { i64, ptr } @_RNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef nonnull %i.q, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvMNtNtNtBa_9scheduler12multi_thread6workerNtB1w_6Launch6launch0uEBc_.exit.i unwind label %bb.f, !noalias !397 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.g, !noalias !396

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !396
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !398
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #22
          to label %.body unwind label %bb.g, !noalias !396

_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvMNtNtNtBa_9scheduler12multi_thread6workerNtB1w_6Launch6launch0uEBc_.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.t, 0
  %i.aa = extractvalue { i64, ptr } %i.t, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !399
  store ptr %i.s, ptr %i.g, align 8, !noalias !399
  %i.ab = trunc nuw i64 %i.z to i1
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.j, label %bb.p, !prof !10

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvMNtNtNtBa_9scheduler12multi_thread6workerNtB1w_6Launch6launch0uEBc_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !399
  store ptr %i.aa, ptr %i.f, align 8, !noalias !399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !399
  store ptr %i.f, ptr %i.e, align 8, !noalias !399
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !399
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #20
          to label %bb.l unwind label %bb.k, !noalias !400

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !399, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %.val.i) #23
          to label %bb.n unwind label %bb.m, !noalias !400

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !400
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body unwind label %bb.m, !noalias !400

bb.o:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h, %bb.i, %bb.n, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.o ], [ %i.w, %bb.i ], [ %i.w, %bb.h ], [ %i.u, %bb.f ], [ %i.ac, %bb.n ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h) #23
          to label %.thread unwind label %bb.u

bb.p:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvMNtNtNtBa_9scheduler12multi_thread6workerNtB1w_6Launch6launch0uEBc_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !399
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.af = load i64, ptr %i.h, align 8, !range !9, !alias.scope !403, !noundef !5
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.ah = load ptr, ptr %i.m, align 8, !alias.scope !406, !nonnull !5, !noundef !5
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !406
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.s:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.ak = load ptr, ptr %i.m, align 8, !alias.scope !409, !nonnull !5, !noundef !5
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !409
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit: ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret ptr %i.s

bb.u:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread:                                          ; preds = %bb.v, %bb.w, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.v ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn9

bb.v:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !410
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #22
          to label %.thread unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool14spawn_blockingNCNvMs8_NtNtB8_2fs4fileNtB1c_5Inner19spawn_blocking_read0TNtB1c_9OperationNtNtNtB8_2io8blocking3BufEEB8_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = invoke { i64, ptr } @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 2 uses
  store i64 %i.j, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.m = atomicrmw add ptr @_RNvNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !437 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = trunc nuw i64 %i.j to i1
  %.sroa.01.0.v = select i1 %i.n, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !437
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.e unwind label %bb.h, !noalias !438

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !437
  invoke void @_RINvNtNtCslghKHtsL3a4_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNvMs8_NtNtB6_2fs4fileNtB1w_5Inner19spawn_blocking_read0ENtNtBR_8schedule16BlockingScheduleEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.m)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.e
  %i.o = load ptr, ptr %i.a, align 8, !noalias !437, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !437, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !437
  store ptr %i.q, ptr %i.d, align 8, !noalias !437
  %i.r = invoke { i64, ptr } @_RNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.o, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvMs8_NtNtBc_2fs4fileNtB1z_5Inner19spawn_blocking_read0TNtB1z_9OperationNtNtNtBc_2io8blocking3BufEEBc_.exit.i unwind label %bb.f, !noalias !439 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTNtNtNtBb_2fs4file9OperationNtNtNtBb_2io8blocking3BufEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.g, !noalias !438

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !438
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load i64, ptr %i.c, align 8, !range !7, !alias.scope !440, !noalias !437, !noundef !5
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs8_NtNtCslghKHtsL3a4_5tokio2fs4fileNtBJ_5Inner19spawn_blocking_read0EBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %.body unwind label %bb.g, !noalias !438

_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvMs8_NtNtBc_2fs4fileNtB1z_5Inner19spawn_blocking_read0TNtB1z_9OperationNtNtNtBc_2io8blocking3BufEEBc_.exit.i: ; preds = %.noexc
  %i.x = extractvalue { i64, ptr } %i.r, 0
  %i.y = extractvalue { i64, ptr } %i.r, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !441
  store ptr %i.q, ptr %i.g, align 8, !noalias !441
  %i.z = trunc nuw i64 %i.x to i1
  %.not.i = icmp ne ptr %i.y, null
  %or.cond.not.i = select i1 %i.z, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.j, label %bb.p, !prof !10

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvMs8_NtNtBc_2fs4fileNtB1z_5Inner19spawn_blocking_read0TNtB1z_9OperationNtNtNtBc_2io8blocking3BufEEBc_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !441
  store ptr %i.y, ptr %i.f, align 8, !noalias !441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !441
  store ptr %i.f, ptr %i.e, align 8, !noalias !441
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !441
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #20
          to label %bb.l unwind label %bb.k, !noalias !442

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !441, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %.val.i) #23
          to label %bb.n unwind label %bb.m, !noalias !442

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !442
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTNtNtNtBb_2fs4file9OperationNtNtNtBb_2io8blocking3BufEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body unwind label %bb.m, !noalias !442

bb.o:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h, %bb.i, %bb.n, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.o ], [ %i.u, %bb.i ], [ %i.u, %bb.h ], [ %i.s, %bb.f ], [ %i.aa, %bb.n ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h) #23
          to label %.thread unwind label %bb.u

bb.p:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvMs8_NtNtBc_2fs4fileNtB1z_5Inner19spawn_blocking_read0TNtB1z_9OperationNtNtNtBc_2io8blocking3BufEEBc_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !441
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.ad = load i64, ptr %i.h, align 8, !range !9, !alias.scope !445, !noundef !5
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.af = load ptr, ptr %i.l, align 8, !alias.scope !448, !nonnull !5, !noundef !5
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !448
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.s:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.ai = load ptr, ptr %i.l, align 8, !alias.scope !451, !nonnull !5, !noundef !5
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !451
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit: ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret ptr %i.q

bb.u:                                             ; preds = %bb.v, %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread:                                          ; preds = %.body, %bb.v
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.v ]
  resume { ptr, i32 } %.pn8

bb.v:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs8_NtNtCslghKHtsL3a4_5tokio2fs4fileNtBJ_5Inner19spawn_blocking_read0EBN_(ptr noalias nofree noundef align 8 dereferenceable(48) %0) #23
          to label %.thread unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool14spawn_blockingNCNvXNtNtB8_2io8blockingINtB19_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinENtNtB1b_10async_read9AsyncRead9poll_read0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB37_2io5error5ErrorENtB19_3BufB1I_EEB8_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = invoke { i64, ptr } @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.u       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 2 uses
  store i64 %i.j, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.m = atomicrmw add ptr @_RNvNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !474 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = trunc nuw i64 %i.j to i1
  %.sroa.01.0.v = select i1 %i.n, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !474
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.e unwind label %bb.h, !noalias !475

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !474
  invoke void @_RINvNtNtCslghKHtsL3a4_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNvXNtNtB6_2io8blockingINtB1t_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinENtNtB1v_10async_read9AsyncRead9poll_read0ENtNtBR_8schedule16BlockingScheduleEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.m)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.e
  %i.o = load ptr, ptr %i.a, align 8, !noalias !474, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !474, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !474
  store ptr %i.q, ptr %i.d, align 8, !noalias !474
  %i.r = invoke { i64, ptr } @_RNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.o, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXNtNtBc_2io8blockingINtB1w_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinENtNtB1y_10async_read9AsyncRead9poll_read0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3u_2io5error5ErrorENtB1w_3BufB25_EEBc_.exit.i unwind label %bb.f, !noalias !476 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEENtNtNtB1b_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.g, !noalias !475

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !475
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4task12BlockingTaskNCNvXNtNtBK_2io8blockingINtB1J_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinENtNtB1L_10async_read9AsyncRead9poll_read0EEBK_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #23
          to label %.body unwind label %bb.g, !noalias !475

_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXNtNtBc_2io8blockingINtB1w_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinENtNtB1y_10async_read9AsyncRead9poll_read0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3u_2io5error5ErrorENtB1w_3BufB25_EEBc_.exit.i: ; preds = %.noexc
  %i.v = extractvalue { i64, ptr } %i.r, 0
  %i.w = extractvalue { i64, ptr } %i.r, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !477
  store ptr %i.q, ptr %i.g, align 8, !noalias !477
  %i.x = trunc nuw i64 %i.v to i1
  %.not.i = icmp ne ptr %i.w, null
  %or.cond.not.i = select i1 %i.x, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.i, label %bb.o, !prof !10

bb.i:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXNtNtBc_2io8blockingINtB1w_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinENtNtB1y_10async_read9AsyncRead9poll_read0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3u_2io5error5ErrorENtB1w_3BufB25_EEBc_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !477
  store ptr %i.w, ptr %i.f, align 8, !noalias !477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !477
  store ptr %i.f, ptr %i.e, align 8, !noalias !477
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !477
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #20
          to label %bb.k unwind label %bb.j, !noalias !478

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !477, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %.val.i) #23
          to label %bb.m unwind label %bb.l, !noalias !478

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !478
  unreachable

bb.m:                                             ; preds = %bb.j
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEENtNtNtB1b_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body unwind label %bb.l, !noalias !478

bb.n:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h, %bb.m, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %i.u, %bb.h ], [ %i.s, %bb.f ], [ %i.y, %bb.m ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h) #23
          to label %.thread unwind label %bb.t

bb.o:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXNtNtBc_2io8blockingINtB1w_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinENtNtB1y_10async_read9AsyncRead9poll_read0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3u_2io5error5ErrorENtB1w_3BufB25_EEBc_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !477
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  %i.ab = load i64, ptr %i.h, align 8, !range !9, !alias.scope !481, !noundef !5
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %i.ad = load ptr, ptr %i.l, align 8, !alias.scope !484, !nonnull !5, !noundef !5
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !484
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.r:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.ag = load ptr, ptr %i.l, align 8, !alias.scope !487, !nonnull !5, !noundef !5
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !487
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit: ; preds = %bb.q, %bb.s, %bb.r, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret ptr %i.q

bb.t:                                             ; preds = %bb.u, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread:                                          ; preds = %.body, %bb.u
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.u ]
  resume { ptr, i32 } %.pn8

bb.u:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvXNtNtCslghKHtsL3a4_5tokio2io8blockingINtBG_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinENtNtBI_10async_read9AsyncRead9poll_read0EBK_(ptr noalias nofree noundef align 8 dereferenceable(48) %0) #23
          to label %.thread unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool14spawn_blockingNCNvXs0_NtNtB8_2fs4fileNtB1c_4FileNtNtNtB8_2io10async_seek9AsyncSeek10start_seek0TNtB1c_9OperationNtNtB1G_8blocking3BufEEB8_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = invoke { i64, ptr } @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 2 uses
  store i64 %i.j, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.m = atomicrmw add ptr @_RNvNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !514 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = trunc nuw i64 %i.j to i1
  %.sroa.01.0.v = select i1 %i.n, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !514
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.e unwind label %bb.h, !noalias !515

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !514
  invoke void @_RINvNtNtCslghKHtsL3a4_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNvXs0_NtNtB6_2fs4fileNtB1w_4FileNtNtNtB6_2io10async_seek9AsyncSeek10start_seek0ENtNtBR_8schedule16BlockingScheduleEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.m)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.e
  %i.o = load ptr, ptr %i.a, align 8, !noalias !514, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !514, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !514
  store ptr %i.q, ptr %i.d, align 8, !noalias !514
  %i.r = invoke { i64, ptr } @_RNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.o, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs0_NtNtBc_2fs4fileNtB1z_4FileNtNtNtBc_2io10async_seek9AsyncSeek10start_seek0TNtB1z_9OperationNtNtB23_8blocking3BufEEBc_.exit.i unwind label %bb.f, !noalias !516 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTNtNtNtBb_2fs4file9OperationNtNtNtBb_2io8blocking3BufEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.g, !noalias !515

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !515
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load i64, ptr %i.c, align 8, !range !517, !alias.scope !518, !noalias !514, !noundef !5
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvXs0_NtNtCslghKHtsL3a4_5tokio2fs4fileNtBJ_4FileNtNtNtBN_2io10async_seek9AsyncSeek10start_seek0EBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %.body unwind label %bb.g, !noalias !515

_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs0_NtNtBc_2fs4fileNtB1z_4FileNtNtNtBc_2io10async_seek9AsyncSeek10start_seek0TNtB1z_9OperationNtNtB23_8blocking3BufEEBc_.exit.i: ; preds = %.noexc
  %i.x = extractvalue { i64, ptr } %i.r, 0
  %i.y = extractvalue { i64, ptr } %i.r, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !519
  store ptr %i.q, ptr %i.g, align 8, !noalias !519
  %i.z = trunc nuw i64 %i.x to i1
  %.not.i = icmp ne ptr %i.y, null
  %or.cond.not.i = select i1 %i.z, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.j, label %bb.p, !prof !10

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs0_NtNtBc_2fs4fileNtB1z_4FileNtNtNtBc_2io10async_seek9AsyncSeek10start_seek0TNtB1z_9OperationNtNtB23_8blocking3BufEEBc_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !519
  store ptr %i.y, ptr %i.f, align 8, !noalias !519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !519
  store ptr %i.f, ptr %i.e, align 8, !noalias !519
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !519
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #20
          to label %bb.l unwind label %bb.k, !noalias !520

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !519, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %.val.i) #23
          to label %bb.n unwind label %bb.m, !noalias !520

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !520
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTNtNtNtBb_2fs4file9OperationNtNtNtBb_2io8blocking3BufEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body unwind label %bb.m, !noalias !520

bb.o:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h, %bb.i, %bb.n, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.o ], [ %i.u, %bb.i ], [ %i.u, %bb.h ], [ %i.s, %bb.f ], [ %i.aa, %bb.n ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h) #23
          to label %.thread unwind label %bb.u

bb.p:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs0_NtNtBc_2fs4fileNtB1z_4FileNtNtNtBc_2io10async_seek9AsyncSeek10start_seek0TNtB1z_9OperationNtNtB23_8blocking3BufEEBc_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !519
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.ad = load i64, ptr %i.h, align 8, !range !9, !alias.scope !523, !noundef !5
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.af = load ptr, ptr %i.l, align 8, !alias.scope !526, !nonnull !5, !noundef !5
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !526
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.s:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %i.ai = load ptr, ptr %i.l, align 8, !alias.scope !529, !nonnull !5, !noundef !5
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !529
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit: ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret ptr %i.q

bb.u:                                             ; preds = %bb.v, %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread:                                          ; preds = %.body, %bb.v
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.v ]
  resume { ptr, i32 } %.pn8

bb.v:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvXs0_NtNtCslghKHtsL3a4_5tokio2fs4fileNtBJ_4FileNtNtNtBN_2io10async_seek9AsyncSeek10start_seek0EBN_(ptr noalias nofree noundef align 8 dereferenceable(56) %0) #23
          to label %.thread unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool14spawn_blockingNCNvXs_NtNtB8_2io8blockingINtB1b_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtB1d_11async_write10AsyncWrite10poll_flush0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3f_2io5error5ErrorENtB1b_3BufB1K_EEB8_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = invoke { i64, ptr } @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.u       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 2 uses
  store i64 %i.j, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.m = atomicrmw add ptr @_RNvNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !552 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = trunc nuw i64 %i.j to i1
  %.sroa.01.0.v = select i1 %i.n, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !552
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.e unwind label %bb.h, !noalias !553

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !552
  invoke void @_RINvNtNtCslghKHtsL3a4_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNvXs_NtNtB6_2io8blockingINtB1v_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtB1x_11async_write10AsyncWrite10poll_flush0ENtNtBR_8schedule16BlockingScheduleEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.m)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.e
  %i.o = load ptr, ptr %i.a, align 8, !noalias !552, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !552, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !552
  store ptr %i.q, ptr %i.d, align 8, !noalias !552
  %i.r = invoke { i64, ptr } @_RNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.o, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtBc_2io8blockingINtB1y_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtB1A_11async_write10AsyncWrite10poll_flush0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3C_2io5error5ErrorENtB1y_3BufB27_EEBc_.exit.i unwind label %bb.f, !noalias !554 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrEENtNtNtB1b_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.g, !noalias !553

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !553
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4task12BlockingTaskNCNvXs_NtNtBK_2io8blockingINtB1L_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtB1N_11async_write10AsyncWrite10poll_flush0EEBK_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #23
          to label %.body unwind label %bb.g, !noalias !553

_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtBc_2io8blockingINtB1y_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtB1A_11async_write10AsyncWrite10poll_flush0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3C_2io5error5ErrorENtB1y_3BufB27_EEBc_.exit.i: ; preds = %.noexc
  %i.v = extractvalue { i64, ptr } %i.r, 0
  %i.w = extractvalue { i64, ptr } %i.r, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !555
  store ptr %i.q, ptr %i.g, align 8, !noalias !555
  %i.x = trunc nuw i64 %i.v to i1
  %.not.i = icmp ne ptr %i.w, null
  %or.cond.not.i = select i1 %i.x, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.i, label %bb.o, !prof !10

bb.i:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtBc_2io8blockingINtB1y_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtB1A_11async_write10AsyncWrite10poll_flush0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3C_2io5error5ErrorENtB1y_3BufB27_EEBc_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !555
  store ptr %i.w, ptr %i.f, align 8, !noalias !555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !555
  store ptr %i.f, ptr %i.e, align 8, !noalias !555
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !555
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #20
          to label %bb.k unwind label %bb.j, !noalias !556

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !555, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %.val.i) #23
          to label %bb.m unwind label %bb.l, !noalias !556

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !556
  unreachable

bb.m:                                             ; preds = %bb.j
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrEENtNtNtB1b_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body unwind label %bb.l, !noalias !556

bb.n:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h, %bb.m, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %i.u, %bb.h ], [ %i.s, %bb.f ], [ %i.y, %bb.m ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h) #23
          to label %.thread unwind label %bb.t

bb.o:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtBc_2io8blockingINtB1y_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtB1A_11async_write10AsyncWrite10poll_flush0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3C_2io5error5ErrorENtB1y_3BufB27_EEBc_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !555
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  %i.ab = load i64, ptr %i.h, align 8, !range !9, !alias.scope !559, !noundef !5
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.ad = load ptr, ptr %i.l, align 8, !alias.scope !562, !nonnull !5, !noundef !5
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !562
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.r:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.ag = load ptr, ptr %i.l, align 8, !alias.scope !565, !nonnull !5, !noundef !5
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !565
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit: ; preds = %bb.q, %bb.s, %bb.r, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret ptr %i.q

bb.t:                                             ; preds = %bb.u, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread:                                          ; preds = %.body, %bb.u
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.u ]
  resume { ptr, i32 } %.pn8

bb.u:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvXs_NtNtCslghKHtsL3a4_5tokio2io8blockingINtBI_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtBK_11async_write10AsyncWrite10poll_flush0EBM_(ptr noalias nofree noundef align 8 dereferenceable(40) %0) #23
          to label %.thread unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool14spawn_blockingNCNvXs_NtNtB8_2io8blockingINtB1b_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtB1d_11async_write10AsyncWrite10poll_write0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3f_2io5error5ErrorENtB1b_3BufB1K_EEB8_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = invoke { i64, ptr } @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.u       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 2 uses
  store i64 %i.j, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.m = atomicrmw add ptr @_RNvNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !588 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = trunc nuw i64 %i.j to i1
  %.sroa.01.0.v = select i1 %i.n, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !588
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.e unwind label %bb.h, !noalias !589

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !588
  invoke void @_RINvNtNtCslghKHtsL3a4_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNvXs_NtNtB6_2io8blockingINtB1v_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtB1x_11async_write10AsyncWrite10poll_write0ENtNtBR_8schedule16BlockingScheduleEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.m)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.e
  %i.o = load ptr, ptr %i.a, align 8, !noalias !588, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !588, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !588
  store ptr %i.q, ptr %i.d, align 8, !noalias !588
  %i.r = invoke { i64, ptr } @_RNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.o, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtBc_2io8blockingINtB1y_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtB1A_11async_write10AsyncWrite10poll_write0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3C_2io5error5ErrorENtB1y_3BufB27_EEBc_.exit.i unwind label %bb.f, !noalias !590 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrEENtNtNtB1b_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.g, !noalias !589

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !589
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4task12BlockingTaskNCNvXs_NtNtBK_2io8blockingINtB1L_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtB1N_11async_write10AsyncWrite10poll_write0EEBK_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #23
          to label %.body unwind label %bb.g, !noalias !589

_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtBc_2io8blockingINtB1y_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtB1A_11async_write10AsyncWrite10poll_write0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3C_2io5error5ErrorENtB1y_3BufB27_EEBc_.exit.i: ; preds = %.noexc
  %i.v = extractvalue { i64, ptr } %i.r, 0
  %i.w = extractvalue { i64, ptr } %i.r, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !591
  store ptr %i.q, ptr %i.g, align 8, !noalias !591
  %i.x = trunc nuw i64 %i.v to i1
  %.not.i = icmp ne ptr %i.w, null
  %or.cond.not.i = select i1 %i.x, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.i, label %bb.o, !prof !10

bb.i:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtBc_2io8blockingINtB1y_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtB1A_11async_write10AsyncWrite10poll_write0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3C_2io5error5ErrorENtB1y_3BufB27_EEBc_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !591
  store ptr %i.w, ptr %i.f, align 8, !noalias !591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !591
  store ptr %i.f, ptr %i.e, align 8, !noalias !591
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !591
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #20
          to label %bb.k unwind label %bb.j, !noalias !592

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !591, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %.val.i) #23
          to label %bb.m unwind label %bb.l, !noalias !592

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !592
  unreachable

bb.m:                                             ; preds = %bb.j
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrEENtNtNtB1b_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body unwind label %bb.l, !noalias !592

bb.n:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h, %bb.m, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %i.u, %bb.h ], [ %i.s, %bb.f ], [ %i.y, %bb.m ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h) #23
          to label %.thread unwind label %bb.t

bb.o:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtBc_2io8blockingINtB1y_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtB1A_11async_write10AsyncWrite10poll_write0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3C_2io5error5ErrorENtB1y_3BufB27_EEBc_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !591
  call void @llvm.experimental.noalias.scope.decl(metadata !593)
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %i.ab = load i64, ptr %i.h, align 8, !range !9, !alias.scope !595, !noundef !5
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  %i.ad = load ptr, ptr %i.l, align 8, !alias.scope !598, !nonnull !5, !noundef !5
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !598
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.r:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.ag = load ptr, ptr %i.l, align 8, !alias.scope !601, !nonnull !5, !noundef !5
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !601
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit: ; preds = %bb.q, %bb.s, %bb.r, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret ptr %i.q

bb.t:                                             ; preds = %bb.u, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread:                                          ; preds = %.body, %bb.u
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.u ]
  resume { ptr, i32 } %.pn8

bb.u:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvXs_NtNtCslghKHtsL3a4_5tokio2io8blockingINtBI_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtBK_11async_write10AsyncWrite10poll_write0EBM_(ptr noalias nofree noundef align 8 dereferenceable(40) %0) #23
          to label %.thread unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool14spawn_blockingNCNvXs_NtNtB8_2io8blockingINtB1b_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtB1d_11async_write10AsyncWrite10poll_flush0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3f_2io5error5ErrorENtB1b_3BufB1K_EEB8_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = invoke { i64, ptr } @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.u       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 2 uses
  store i64 %i.j, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.m = atomicrmw add ptr @_RNvNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !624 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = trunc nuw i64 %i.j to i1
  %.sroa.01.0.v = select i1 %i.n, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !624
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.e unwind label %bb.h, !noalias !625

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !624
  invoke void @_RINvNtNtCslghKHtsL3a4_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNvXs_NtNtB6_2io8blockingINtB1v_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtB1x_11async_write10AsyncWrite10poll_flush0ENtNtBR_8schedule16BlockingScheduleEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.m)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.e
  %i.o = load ptr, ptr %i.a, align 8, !noalias !624, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !624, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !624
  store ptr %i.q, ptr %i.d, align 8, !noalias !624
  %i.r = invoke { i64, ptr } @_RNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.o, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtBc_2io8blockingINtB1y_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtB1A_11async_write10AsyncWrite10poll_flush0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3C_2io5error5ErrorENtB1y_3BufB27_EEBc_.exit.i unwind label %bb.f, !noalias !626 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutEENtNtNtB1b_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.g, !noalias !625

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !625
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4task12BlockingTaskNCNvXs_NtNtBK_2io8blockingINtB1L_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtB1N_11async_write10AsyncWrite10poll_flush0EEBK_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #23
          to label %.body unwind label %bb.g, !noalias !625

_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtBc_2io8blockingINtB1y_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtB1A_11async_write10AsyncWrite10poll_flush0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3C_2io5error5ErrorENtB1y_3BufB27_EEBc_.exit.i: ; preds = %.noexc
  %i.v = extractvalue { i64, ptr } %i.r, 0
  %i.w = extractvalue { i64, ptr } %i.r, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !627
  store ptr %i.q, ptr %i.g, align 8, !noalias !627
  %i.x = trunc nuw i64 %i.v to i1
  %.not.i = icmp ne ptr %i.w, null
  %or.cond.not.i = select i1 %i.x, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.i, label %bb.o, !prof !10

bb.i:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtBc_2io8blockingINtB1y_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtB1A_11async_write10AsyncWrite10poll_flush0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3C_2io5error5ErrorENtB1y_3BufB27_EEBc_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !627
  store ptr %i.w, ptr %i.f, align 8, !noalias !627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !627
  store ptr %i.f, ptr %i.e, align 8, !noalias !627
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !627
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #20
          to label %bb.k unwind label %bb.j, !noalias !628

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !627, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %.val.i) #23
          to label %bb.m unwind label %bb.l, !noalias !628

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !628
  unreachable

bb.m:                                             ; preds = %bb.j
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutEENtNtNtB1b_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body unwind label %bb.l, !noalias !628

bb.n:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h, %bb.m, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %i.u, %bb.h ], [ %i.s, %bb.f ], [ %i.y, %bb.m ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h) #23
          to label %.thread unwind label %bb.t

bb.o:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtBc_2io8blockingINtB1y_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtB1A_11async_write10AsyncWrite10poll_flush0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3C_2io5error5ErrorENtB1y_3BufB27_EEBc_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !627
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.ab = load i64, ptr %i.h, align 8, !range !9, !alias.scope !631, !noundef !5
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.ad = load ptr, ptr %i.l, align 8, !alias.scope !634, !nonnull !5, !noundef !5
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !634
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.r:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.ag = load ptr, ptr %i.l, align 8, !alias.scope !637, !nonnull !5, !noundef !5
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !637
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit: ; preds = %bb.q, %bb.s, %bb.r, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret ptr %i.q

bb.t:                                             ; preds = %bb.u, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread:                                          ; preds = %.body, %bb.u
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.u ]
  resume { ptr, i32 } %.pn8

bb.u:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvXs_NtNtCslghKHtsL3a4_5tokio2io8blockingINtBI_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtBK_11async_write10AsyncWrite10poll_flush0EBM_(ptr noalias nofree noundef align 8 dereferenceable(40) %0) #23
          to label %.thread unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool14spawn_blockingNCNvXs_NtNtB8_2io8blockingINtB1b_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtB1d_11async_write10AsyncWrite10poll_write0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3f_2io5error5ErrorENtB1b_3BufB1K_EEB8_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = invoke { i64, ptr } @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.u       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 2 uses
  store i64 %i.j, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.m = atomicrmw add ptr @_RNvNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !660 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = trunc nuw i64 %i.j to i1
  %.sroa.01.0.v = select i1 %i.n, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !660
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.e unwind label %bb.h, !noalias !661

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !660
  invoke void @_RINvNtNtCslghKHtsL3a4_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNvXs_NtNtB6_2io8blockingINtB1v_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtB1x_11async_write10AsyncWrite10poll_write0ENtNtBR_8schedule16BlockingScheduleEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.m)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.e
  %i.o = load ptr, ptr %i.a, align 8, !noalias !660, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !660, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !660
  store ptr %i.q, ptr %i.d, align 8, !noalias !660
  %i.r = invoke { i64, ptr } @_RNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.o, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtBc_2io8blockingINtB1y_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtB1A_11async_write10AsyncWrite10poll_write0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3C_2io5error5ErrorENtB1y_3BufB27_EEBc_.exit.i unwind label %bb.f, !noalias !662 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutEENtNtNtB1b_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.g, !noalias !661

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !661
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4task12BlockingTaskNCNvXs_NtNtBK_2io8blockingINtB1L_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtB1N_11async_write10AsyncWrite10poll_write0EEBK_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #23
          to label %.body unwind label %bb.g, !noalias !661

_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtBc_2io8blockingINtB1y_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtB1A_11async_write10AsyncWrite10poll_write0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3C_2io5error5ErrorENtB1y_3BufB27_EEBc_.exit.i: ; preds = %.noexc
  %i.v = extractvalue { i64, ptr } %i.r, 0
  %i.w = extractvalue { i64, ptr } %i.r, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !663
  store ptr %i.q, ptr %i.g, align 8, !noalias !663
  %i.x = trunc nuw i64 %i.v to i1
  %.not.i = icmp ne ptr %i.w, null
  %or.cond.not.i = select i1 %i.x, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.i, label %bb.o, !prof !10

bb.i:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtBc_2io8blockingINtB1y_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtB1A_11async_write10AsyncWrite10poll_write0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3C_2io5error5ErrorENtB1y_3BufB27_EEBc_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !663
  store ptr %i.w, ptr %i.f, align 8, !noalias !663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !663
  store ptr %i.f, ptr %i.e, align 8, !noalias !663
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !663
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #20
          to label %bb.k unwind label %bb.j, !noalias !664

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !663, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %.val.i) #23
          to label %bb.m unwind label %bb.l, !noalias !664

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !664
  unreachable

bb.m:                                             ; preds = %bb.j
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB1b_2io5error5ErrorENtNtNtBb_2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutEENtNtNtB1b_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body unwind label %bb.l, !noalias !664

bb.n:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h, %bb.m, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %i.u, %bb.h ], [ %i.s, %bb.f ], [ %i.y, %bb.m ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h) #23
          to label %.thread unwind label %bb.t

bb.o:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtBc_2io8blockingINtB1y_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtB1A_11async_write10AsyncWrite10poll_write0TINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtB3C_2io5error5ErrorENtB1y_3BufB27_EEBc_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !663
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.ab = load i64, ptr %i.h, align 8, !range !9, !alias.scope !667, !noundef !5
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.ad = load ptr, ptr %i.l, align 8, !alias.scope !670, !nonnull !5, !noundef !5
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !670
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.r:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.ag = load ptr, ptr %i.l, align 8, !alias.scope !673, !nonnull !5, !noundef !5
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !673
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit: ; preds = %bb.q, %bb.s, %bb.r, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret ptr %i.q

bb.t:                                             ; preds = %bb.u, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread:                                          ; preds = %.body, %bb.u
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.u ]
  resume { ptr, i32 } %.pn8

bb.u:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvXs_NtNtCslghKHtsL3a4_5tokio2io8blockingINtBI_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtBK_11async_write10AsyncWrite10poll_write0EBM_(ptr noalias nofree noundef align 8 dereferenceable(40) %0) #23
          to label %.thread unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool14spawn_blockingNCNvXsf_NtNtB8_3net4addreNtNtB1c_6sealed17ToSocketAddrsPriv15to_socket_addrs0INtNtCs3oUPovFnLWP_4core6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB2o_3net11socket_addr10SocketAddrENtNtNtB2o_2io5error5ErrorEEB8_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = invoke { i64, ptr } @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.u       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 2 uses
  store i64 %i.j, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.m = atomicrmw add ptr @_RNvNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !696 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = trunc nuw i64 %i.j to i1
  %.sroa.01.0.v = select i1 %i.n, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !696
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.e unwind label %bb.h, !noalias !697

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !696
  invoke void @_RINvNtNtCslghKHtsL3a4_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNvXsf_NtNtB6_3net4addreNtNtB1w_6sealed17ToSocketAddrsPriv15to_socket_addrs0ENtNtBR_8schedule16BlockingScheduleEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.m)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.e
  %i.o = load ptr, ptr %i.a, align 8, !noalias !696, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !696, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !696
  store ptr %i.q, ptr %i.d, align 8, !noalias !696
  %i.r = invoke { i64, ptr } @_RNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.o, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXsf_NtNtBc_3net4addreNtNtB1z_6sealed17ToSocketAddrsPriv15to_socket_addrs0INtNtCs3oUPovFnLWP_4core6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB2L_3net11socket_addr10SocketAddrENtNtNtB2L_2io5error5ErrorEEBc_.exit.i unwind label %bb.f, !noalias !698 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs3oUPovFnLWP_4core6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB1a_3net11socket_addr10SocketAddrENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.g, !noalias !697

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !697
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4task12BlockingTaskNCNvXsf_NtNtBK_3net4addreNtNtB1M_6sealed17ToSocketAddrsPriv15to_socket_addrs0EEBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #23
          to label %.body unwind label %bb.g, !noalias !697

_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXsf_NtNtBc_3net4addreNtNtB1z_6sealed17ToSocketAddrsPriv15to_socket_addrs0INtNtCs3oUPovFnLWP_4core6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB2L_3net11socket_addr10SocketAddrENtNtNtB2L_2io5error5ErrorEEBc_.exit.i: ; preds = %.noexc
  %i.v = extractvalue { i64, ptr } %i.r, 0
  %i.w = extractvalue { i64, ptr } %i.r, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !699
  store ptr %i.q, ptr %i.g, align 8, !noalias !699
  %i.x = trunc nuw i64 %i.v to i1
  %.not.i = icmp ne ptr %i.w, null
  %or.cond.not.i = select i1 %i.x, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.i, label %bb.o, !prof !10

bb.i:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXsf_NtNtBc_3net4addreNtNtB1z_6sealed17ToSocketAddrsPriv15to_socket_addrs0INtNtCs3oUPovFnLWP_4core6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB2L_3net11socket_addr10SocketAddrENtNtNtB2L_2io5error5ErrorEEBc_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !699
  store ptr %i.w, ptr %i.f, align 8, !noalias !699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !699
  store ptr %i.f, ptr %i.e, align 8, !noalias !699
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !699
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #20
          to label %bb.k unwind label %bb.j, !noalias !700

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !699, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %.val.i) #23
          to label %bb.m unwind label %bb.l, !noalias !700

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !700
  unreachable

bb.m:                                             ; preds = %bb.j
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs3oUPovFnLWP_4core6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB1a_3net11socket_addr10SocketAddrENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body unwind label %bb.l, !noalias !700

bb.n:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h, %bb.m, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %i.u, %bb.h ], [ %i.s, %bb.f ], [ %i.y, %bb.m ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h) #23
          to label %.thread unwind label %bb.t

bb.o:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXsf_NtNtBc_3net4addreNtNtB1z_6sealed17ToSocketAddrsPriv15to_socket_addrs0INtNtCs3oUPovFnLWP_4core6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB2L_3net11socket_addr10SocketAddrENtNtNtB2L_2io5error5ErrorEEBc_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !699
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %i.ab = load i64, ptr %i.h, align 8, !range !9, !alias.scope !703, !noundef !5
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  %i.ad = load ptr, ptr %i.l, align 8, !alias.scope !706, !nonnull !5, !noundef !5
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !706
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.r:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !707)
  call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.ag = load ptr, ptr %i.l, align 8, !alias.scope !709, !nonnull !5, !noundef !5
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !709
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit: ; preds = %bb.q, %bb.s, %bb.r, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret ptr %i.q

bb.t:                                             ; preds = %bb.u, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread:                                          ; preds = %.body, %bb.u
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.u ]
  resume { ptr, i32 } %.pn8

bb.u:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvXsf_NtNtCslghKHtsL3a4_5tokio3net4addreNtNtBJ_6sealed17ToSocketAddrsPriv15to_socket_addrs0EBN_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #23
          to label %.thread unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool14spawn_blockingNCNvXsh_NtNtB8_3net4addrTRetENtNtB1c_6sealed17ToSocketAddrsPriv15to_socket_addrs0INtNtCs3oUPovFnLWP_4core6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB2s_3net11socket_addr10SocketAddrENtNtNtB2s_2io5error5ErrorEEB8_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = invoke { i64, ptr } @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.u       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 2 uses
  store i64 %i.j, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.m = atomicrmw add ptr @_RNvNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !732 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = trunc nuw i64 %i.j to i1
  %.sroa.01.0.v = select i1 %i.n, i64 560, i64 776
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !732
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !732
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.e unwind label %bb.h, !noalias !733

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !732
  invoke void @_RINvNtNtCslghKHtsL3a4_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNvXsh_NtNtB6_3net4addrTRetENtNtB1w_6sealed17ToSocketAddrsPriv15to_socket_addrs0ENtNtBR_8schedule16BlockingScheduleEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.m)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.e
  %i.o = load ptr, ptr %i.a, align 8, !noalias !732, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !732, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !732
  store ptr %i.q, ptr %i.d, align 8, !noalias !732
  %i.r = invoke { i64, ptr } @_RNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.o, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXsh_NtNtBc_3net4addrTRetENtNtB1z_6sealed17ToSocketAddrsPriv15to_socket_addrs0INtNtCs3oUPovFnLWP_4core6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB2P_3net11socket_addr10SocketAddrENtNtNtB2P_2io5error5ErrorEEBc_.exit.i unwind label %bb.f, !noalias !734 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs3oUPovFnLWP_4core6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB1a_3net11socket_addr10SocketAddrENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.g, !noalias !733

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !733
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4task12BlockingTaskNCNvXsh_NtNtBK_3net4addrTRetENtNtB1M_6sealed17ToSocketAddrsPriv15to_socket_addrs0EEBK_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #23
          to label %.body unwind label %bb.g, !noalias !733

_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXsh_NtNtBc_3net4addrTRetENtNtB1z_6sealed17ToSocketAddrsPriv15to_socket_addrs0INtNtCs3oUPovFnLWP_4core6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB2P_3net11socket_addr10SocketAddrENtNtNtB2P_2io5error5ErrorEEBc_.exit.i: ; preds = %.noexc
  %i.v = extractvalue { i64, ptr } %i.r, 0
  %i.w = extractvalue { i64, ptr } %i.r, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !735
  store ptr %i.q, ptr %i.g, align 8, !noalias !735
  %i.x = trunc nuw i64 %i.v to i1
  %.not.i = icmp ne ptr %i.w, null
  %or.cond.not.i = select i1 %i.x, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.i, label %bb.o, !prof !10

bb.i:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXsh_NtNtBc_3net4addrTRetENtNtB1z_6sealed17ToSocketAddrsPriv15to_socket_addrs0INtNtCs3oUPovFnLWP_4core6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB2P_3net11socket_addr10SocketAddrENtNtNtB2P_2io5error5ErrorEEBc_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !735
  store ptr %i.w, ptr %i.f, align 8, !noalias !735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !735
  store ptr %i.f, ptr %i.e, align 8, !noalias !735
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !735
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #20
          to label %bb.k unwind label %bb.j, !noalias !736

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !735, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %.val.i) #23
          to label %bb.m unwind label %bb.l, !noalias !736

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !736
  unreachable

bb.m:                                             ; preds = %bb.j
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs3oUPovFnLWP_4core6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB1a_3net11socket_addr10SocketAddrENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body unwind label %bb.l, !noalias !736

bb.n:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h, %bb.m, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %i.u, %bb.h ], [ %i.s, %bb.f ], [ %i.y, %bb.m ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h) #23
          to label %.thread unwind label %bb.t

bb.o:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXsh_NtNtBc_3net4addrTRetENtNtB1z_6sealed17ToSocketAddrsPriv15to_socket_addrs0INtNtCs3oUPovFnLWP_4core6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB2P_3net11socket_addr10SocketAddrENtNtNtB2P_2io5error5ErrorEEBc_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !735
  call void @llvm.experimental.noalias.scope.decl(metadata !737)
  call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.ab = load i64, ptr %i.h, align 8, !range !9, !alias.scope !739, !noundef !5
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.ad = load ptr, ptr %i.l, align 8, !alias.scope !742, !nonnull !5, !noundef !5
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !742
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.r:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !743)
  call void @llvm.experimental.noalias.scope.decl(metadata !744)
  %i.ag = load ptr, ptr %i.l, align 8, !alias.scope !745, !nonnull !5, !noundef !5
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !745
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit: ; preds = %bb.q, %bb.s, %bb.r, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret ptr %i.q

bb.t:                                             ; preds = %bb.u, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread:                                          ; preds = %.body, %bb.u
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.u ]
  resume { ptr, i32 } %.pn8

bb.u:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvXsh_NtNtCslghKHtsL3a4_5tokio3net4addrTRetENtNtBJ_6sealed17ToSocketAddrsPriv15to_socket_addrs0EBN_(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #23
          to label %.thread unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool24spawn_mandatory_blockingNCNvXs1_NtNtB8_2fs4fileNtB1m_4FileNtNtNtB8_2io11async_write10AsyncWrite10poll_write0TNtB1m_9OperationNtNtB1Q_8blocking3BufEEB8_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  %i.l = trunc nuw i64 %i.i to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %. = select i1 %i.l, i64 560, i64 776
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.n = atomicrmw add ptr @_RNvNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !773 ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !773
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %bb.e unwind label %bb.h, !noalias !774

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !773
  invoke void @_RINvNtNtCslghKHtsL3a4_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNvXs1_NtNtB6_2fs4fileNtB1w_4FileNtNtNtB6_2io11async_write10AsyncWrite10poll_write0ENtNtBR_8schedule16BlockingScheduleEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, i64 noundef %i.n)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.e
  %i.o = load ptr, ptr %i.b, align 8, !noalias !773, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !773, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !773
  store ptr %i.q, ptr %i.e, align 8, !noalias !773
  %i.r = invoke { i64, ptr } @_RNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noundef nonnull %i.o, i1 noundef zeroext false, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs1_NtNtBc_2fs4fileNtB1z_4FileNtNtNtBc_2io11async_write10AsyncWrite10poll_write0TNtB1z_9OperationNtNtB23_8blocking3BufEEBc_.exit.i unwind label %bb.f, !noalias !775 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTNtNtNtBb_2fs4file9OperationNtNtNtBb_2io8blocking3BufEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.g, !noalias !774

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !774
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load i64, ptr %i.d, align 8, !range !11, !alias.scope !776, !noalias !773, !noundef !5
  %i.w = icmp eq i64 %i.v, -2
  br i1 %i.w, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvXs1_NtNtCslghKHtsL3a4_5tokio2fs4fileNtBJ_4FileNtNtNtBN_2io11async_write10AsyncWrite10poll_write0EBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %.body unwind label %bb.g, !noalias !774

_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs1_NtNtBc_2fs4fileNtB1z_4FileNtNtNtBc_2io11async_write10AsyncWrite10poll_write0TNtB1z_9OperationNtNtB23_8blocking3BufEEBc_.exit.i: ; preds = %.noexc
  %i.x = extractvalue { i64, ptr } %i.r, 0
  %i.y = extractvalue { i64, ptr } %i.r, 1        ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !777
  store ptr %i.q, ptr %i.f, align 8, !noalias !777
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.q, label %bb.j

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs1_NtNtBc_2fs4fileNtB1z_4FileNtNtNtBc_2io11async_write10AsyncWrite10poll_write0TNtB1z_9OperationNtNtB23_8blocking3BufEEBc_.exit.i
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool10SpawnErrorEEB16_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !777
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = and i64 %i.aa, 3
  switch i64 %i.ab, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i.i
    i64 3, label %bb.l
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i.i
    i64 1, label %bb.m
  ], !prof !8

default.unreachable:                              ; preds = %bb.k
end_hunk_0
