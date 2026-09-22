Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_testing-22188766dc9253b7.lance_testing.a0c385b76fa0ab66-cgu.0?download=true
inline.NumInlined: 1871
inline.NumDeleted: 898
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMs5_CsenvyypBAZxQ_9str_stackNtB5_8StrStack13with_capacity:bb.a
  %i.a = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !2770 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 8) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx18, align 8
  %.sroa.5.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx19, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %.sroa.7.0..sroa_idx20, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i64 -1, 1152921504606846975) i64 @_RNvMs5_CsenvyypBAZxQ_9str_stackNtB5_8StrStack9write_fmt(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.c, 1                         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2775)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2776, !noundef !3 ; 5 uses
  %i.h = load i64, ptr %0, align 8, !range !14, !alias.scope !2776, !noundef !3
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %i.e, %i.i
  br i1 %i.j, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit.thread.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit.i, !prof !9

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit.thread.i: ; preds = %bb.b
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, i64 noundef %i.e, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit.thread.i
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !2775, !noundef !3 ; 2 uses
  %i.l = icmp sgt i64 %i.k, -1
  tail call void @llvm.assume(i1 %i.l)
  br label %bb.c

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit.i: ; preds = %bb.b
  %i.m = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.m)
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsdNJZa1e9V4g_13lance_testing.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit.i, %.noexc
  %i.n = phi i64 [ %i.k, %.noexc ], [ %i.g, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !2775, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %1, i64 %i.e, i1 false), !noalias !2775
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsdNJZa1e9V4g_13lance_testing.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsdNJZa1e9V4g_13lance_testing.exit: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit.i, %bb.c
  %i.r = phi i64 [ %i.n, %bb.c ], [ %i.g, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit.i ]
  %i.s = add nuw i64 %i.r, %i.e
  store i64 %i.s, ptr %i.f, align 8, !alias.scope !2775
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsenvyypBAZxQ_9str_stack6WriterECsdNJZa1e9V4g_13lance_testing.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsenvyypBAZxQ_9str_stack6WriterECsdNJZa1e9V4g_13lance_testing.exit: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsdNJZa1e9V4g_13lance_testing.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = load ptr, ptr %i.b, align 8, !nonnull !3, !align !8, !noundef !3 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i64, ptr %i.u, align 8, !noundef !3 ; 2 uses
  %i.w = icmp ult i64 %i.v, 1152921504606846976
  call void @llvm.assume(i1 %i.w)
  call void @_RNvXsa_CsenvyypBAZxQ_9str_stackNtB5_6WriterNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.x = add nsw i64 %i.v, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.x

bb.d:                                             ; preds = %bb.a
  %i.y = invoke noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @180, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsenvyypBAZxQ_9str_stack6WriterECsdNJZa1e9V4g_13lance_testing.exit unwind label %bb.e ; 0 uses

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsenvyypBAZxQ_9str_stack6WriterECsdNJZa1e9V4g_13lance_testing.exit16: ; preds = %bb.e
  resume { ptr, i32 } %lpad.thr_comm

bb.e:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit.thread.i, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsa_CsenvyypBAZxQ_9str_stackNtB5_6WriterNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsenvyypBAZxQ_9str_stack6WriterECsdNJZa1e9V4g_13lance_testing.exit16 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsdNJZa1e9V4g_13lance_testing(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2779, !noundef !3 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !14, !alias.scope !2779, !noundef !3
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit.thread, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit, !prof !9

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit.thread: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.c

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit
  %i.i = phi i64 [ %i.k, %bb.c ], [ %i.b, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit ]
  %i.j = add i64 %i.i, %2
  store i64 %i.j, ptr %i.a, align 8
  ret void

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit.thread, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit
  %i.k = phi i64 [ %i.f, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit.thread ], [ %i.b, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsdNJZa1e9V4g_13lance_testing.exit ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferfE3newCsdNJZa1e9V4g_13lance_testing(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = shl nuw i64 %2, 2
  %i.c = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.c, label %.invoke, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.d, label %.invoke, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @184, %bb.a ], [ @181, %bb.b ]
  %i.g = phi ptr [ @185, %bb.a ], [ @183, %bb.b ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #38
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2801)
  call void @llvm.experimental.noalias.scope.decl(metadata !2802)
  call void @llvm.experimental.noalias.scope.decl(metadata !2803)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !2804, !nonnull !3, !noundef !3
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !2804
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsdNJZa1e9V4g_13lance_testing.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsdNJZa1e9V4g_13lance_testing.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2806)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !2806, !noalias !2805, !noundef !3
  %i.n = ptrtoint ptr %i.m to i64                 ; 3 uses
  %4 = add i64 %i.n, 3
  %i.o = and i64 %4, -4                           ; 2 uses
  %5 = sub i64 %i.o, %i.n
  %6 = icmp ult i64 %5, 4
  tail call void @llvm.assume(i1 %6)
  %i.p = icmp eq i64 %i.o, %i.n
  br i1 %i.p, label %bb.j, label %.invoke.i, !prof !13

bb.g:                                             ; preds = %.invoke.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !2807
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.i, !noalias !2805

.invoke.i:                                        ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !2806, !noalias !2805, !nonnull !3, !noundef !3 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2808, !noundef !3
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @374, ptr @376
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @373, ptr @375
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #38
          to label %.cont.i unwind label %bb.g, !noalias !2808

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !2805
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !2808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2811)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !2812, !nonnull !3, !noundef !3
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !2812
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsdNJZa1e9V4g_13lance_testing.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsdNJZa1e9V4g_13lance_testing.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsdNJZa1e9V4g_13lance_testing.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsdNJZa1e9V4g_13lance_testing.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsdNJZa1e9V4g_13lance_testing(ptr nofree readonly captures(none) %.32.val, i64 %.40.val, i64 noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.c, align 8
  %i.d = lshr i64 %.40.val, 2                     ; 2 uses
  %i.e = icmp ult i64 %0, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @186, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalcE9next_backCsdNJZa1e9V4g_13lance_testing(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !6, !noundef !3
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !6, !noundef !3
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 8
  %i.g = tail call fastcc { ptr, i64 } @_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalcE9next_backCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef align 8 dereferenceable(72) %0) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  %.not = icmp eq ptr %i.h, null
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.k, label %bb.l

bb.d:                                             ; preds = %bb.k, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6 = load i64, ptr %i.l, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2816)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2816, !noalias !2817, !noundef !3 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.promoted.i = load i64, ptr %i.o, align 8, !alias.scope !2816, !noalias !2817 ; 3 uses
  %i.p = icmp ult i64 %.promoted.i, %i.n
  %.not25.i = icmp ugt i64 %.promoted.i, %.val6
  %or.cond26.i = or i1 %i.p, %.not25.i
  br i1 %or.cond26.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i8, ptr %i.s, align 8, !alias.scope !2816, !noalias !2817, !noundef !3 ; 2 uses
  %i.u = zext nneg i8 %i.t to i64                 ; 3 uses
  %i.v = add nsw i64 %i.u, -1                     ; 3 uses
  %i.w = icmp ult i8 %i.t, 5
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %i.y = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.af, %bb.h ]
  %i.z = sub nuw i64 %i.y, %i.n
  %i.aa = load i8, ptr %i.x, align 1, !alias.scope !2816, !noalias !2817, !noundef !3
  %i.ab = tail call { i64, i64 } @_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr7memrchr(i8 noundef %i.aa, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.z), !noalias !2818 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = extractvalue { i64, i64 } %i.ab, 1
  %i.af = add i64 %i.ae, %i.n                     ; 6 uses
  %.not15.i = icmp ult i64 %i.af, %i.v
  br i1 %.not15.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !2816, !noalias !2817
  br label %.loopexit

bb.h:                                             ; preds = %bb.j, %bb.i, %bb.f
  store i64 %i.af, ptr %i.o, align 8, !alias.scope !2816, !noalias !2817
  %i.ag = icmp ult i64 %i.af, %i.n
  %.not.i = icmp ugt i64 %i.af, %.val6
  %or.cond.i = or i1 %i.ag, %.not.i
  br i1 %or.cond.i, label %.loopexit, label %bb.e

bb.i:                                             ; preds = %bb.f
  %i.ah = sub nuw i64 %i.af, %i.v                 ; 5 uses
  %i.ai = add i64 %i.ah, %i.u                     ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %.not16.i = icmp ugt i64 %i.ai, %.val6
  %or.cond17.i = or i1 %i.aj, %.not16.i
  br i1 %or.cond17.i, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ah
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.r, i64 %i.u), !noalias !2817
  %i.al = icmp eq i32 %bcmp.i, 0
  br i1 %i.al, label %bb.m, label %bb.h

bb.k:                                             ; preds = %bb.c
  %i.am = load i8, ptr %i.a, align 1, !range !6, !noundef !3
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.l, label %bb.d

bb.l:                                             ; preds = %bb.k, %bb.c, %bb.a, %bb.n
  %.sroa.8.0 = phi i64 [ %i.i, %bb.c ], [ %.sroa.8.1, %bb.n ], [ undef, %bb.a ], [ undef, %bb.k ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.c ], [ %.sroa.0.1, %bb.n ], [ null, %bb.a ], [ null, %bb.k ]
  %i.ao = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ap = insertvalue { ptr, i64 } %i.ao, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %i.ap

bb.m:                                             ; preds = %bb.j
  store i64 %i.ah, ptr %i.o, align 8, !alias.scope !2816, !noalias !2817
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !3
  %i.as = sub nuw i64 %i.ar, %i.ai
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7to_dataCsdNJZa1e9V4g_13lance_testing:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3633
  call fastcc void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeEE4fromCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array8is_emptyCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ult i64 %i.b, 4
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array9data_typeCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #18 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array13shrink_to_fitCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array18logical_null_countCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array21get_array_memory_sizeCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.a ]
  %i.e = add i64 %.sroa.0.1, 96
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !3
  %i.f = add i64 %.sroa.02.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array22get_buffer_memory_sizeCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %.sroa.0.0, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !3
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 4611686018427387904) i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array3lenCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = lshr i64 %i.b, 2
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array5nullsCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array5sliceCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3674)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3675
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !noalias !3676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3675
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3677)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3678
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !3679, !noalias !3680, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !3678
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !3679, !noalias !3680, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !3679, !noalias !3680, !noundef !3
  store ptr %i.h, ptr %i.b, align 8, !noalias !3678
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !3678
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.p, align 8, !noalias !3678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3681)
  %i.q = shl nuw i64 %1, 2
  %i.r = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.r, label %.invoke.i.i.i, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.s, label %.invoke.i.i.i, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3682
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.t)
          to label %bb.g unwind label %bb.e, !noalias !3683

.invoke.i.i.i:                                    ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ @184, %bb.b ], [ @181, %bb.c ]
  %i.v = phi ptr [ @185, %bb.b ], [ @183, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #38
          to label %.cont.i.i.i unwind label %bb.e, !noalias !3682

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.af, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3684)
  call void @llvm.experimental.noalias.scope.decl(metadata !3685)
  call void @llvm.experimental.noalias.scope.decl(metadata !3686)
  %i.x = load ptr, ptr %i.b, align 8, !alias.scope !3687, !noalias !3683, !nonnull !3, !noundef !3
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !3688
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %.body.i

bb.f:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.m, !noalias !3683

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !3689)
  call void @llvm.experimental.noalias.scope.decl(metadata !3690)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !3690, !noalias !3691, !noundef !3
  %i.ac = ptrtoint ptr %i.ab to i64               ; 3 uses
  %3 = add i64 %i.ac, 3
  %i.ad = and i64 %3, -4                          ; 2 uses
  %4 = sub i64 %i.ad, %i.ac
  %5 = icmp ult i64 %4, 4
  call void @llvm.assume(i1 %5)
  %i.ae = icmp eq i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.k, label %.invoke.i.i.i.i, !prof !13

bb.h:                                             ; preds = %.invoke.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !3692
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.body.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.j, !noalias !3693

.invoke.i.i.i.i:                                  ; preds = %bb.g
  %i.ai = load ptr, ptr %i.a, align 8, !alias.scope !3690, !noalias !3691, !nonnull !3, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !3694, !noundef !3
  %.not.i.i.i.i = icmp eq ptr %i.ak, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @374, ptr @376
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @373, ptr @375
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #38
          to label %.cont.i.i.i.i unwind label %bb.h, !noalias !3694

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !3693
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !3695, !noalias !3696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3682
  call void @llvm.experimental.noalias.scope.decl(metadata !3697)
  call void @llvm.experimental.noalias.scope.decl(metadata !3698)
  call void @llvm.experimental.noalias.scope.decl(metadata !3699)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !3700, !noalias !3683, !nonnull !3, !noundef !3
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !3701
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !3675

bb.m:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !3683
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.o, %bb.f, %.body.i.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aq, %bb.o ], [ %eh.lpad-body.i.i.i, %bb.f ], [ %i.at, %bb.s ], [ %i.at, %bb.r ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef align 8 dereferenceable(24) %i.e) #37
          to label %common.resume unwind label %bb.u, !noalias !3676

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3678
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !3674, !noalias !3676, !noundef !3
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5sliceCsdNJZa1e9V4g_13lance_testing.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3675
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i64 noundef %1, i64 noundef %2)
          to label %bb.t unwind label %bb.r, !noalias !3676

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3702)
  call void @llvm.experimental.noalias.scope.decl(metadata !3703)
  call void @llvm.experimental.noalias.scope.decl(metadata !3704)
  call void @llvm.experimental.noalias.scope.decl(metadata !3705)
  %i.au = load ptr, ptr %i.d, align 8, !alias.scope !3706, !noalias !3675, !nonnull !3, !noundef !3
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !3707
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.u, !noalias !3676

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.c, align 8, !noalias !3675
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3675
  br label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5sliceCsdNJZa1e9V4g_13lance_testing.exit

bb.u:                                             ; preds = %bb.s, %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !3676
  unreachable

common.resume:                                    ; preds = %bb.w, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5sliceCsdNJZa1e9V4g_13lance_testing.exit: ; preds = %bb.p, %bb.t
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.t ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !3674
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !3674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !3708
  %i.ba = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef 8) #40, !noalias !3708 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.v, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types9Int32TypeEEE3newCsdNJZa1e9V4g_13lance_testing.exit, !prof !9

bb.v:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5sliceCsdNJZa1e9V4g_13lance_testing.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #38
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types9Int32TypeEECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.az)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types9Int32TypeEEE3newCsdNJZa1e9V4g_13lance_testing.exit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5sliceCsdNJZa1e9V4g_13lance_testing.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.be = insertvalue { ptr, ptr } poison, ptr %i.ba, 0
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr @210, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array6as_anyCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #18 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @233, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array6offsetCsdNJZa1e9V4g_13lance_testing(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7to_dataCsdNJZa1e9V4g_13lance_testing(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3713)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3714
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1), !noalias !3712
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3713, !noalias !3712, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !3714
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !3713, !noalias !3712, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_1
