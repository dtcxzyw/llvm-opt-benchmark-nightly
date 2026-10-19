Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/test_fixture-9afb7519003256ef.test_fixture.92a92005736a33cb-cgu.2?download=true
inline.NumInlined: 322
inline.NumDeleted: 154
begin_hunk_0_@_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscAFBYSOo4Yh_12test_fixture:bb.a
_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.k = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #20
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscAFBYSOo4Yh_12test_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !12
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  br i1 %2, label %bb.g, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20
  br label %bb.h

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs4dcH4YgJDq_2tt4iter9TtElementEINtB2_18SpecFromIterNestedB11_NtB13_6TtIterE9from_iterCscAFBYSOo4Yh_12test_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  %i.e = load i64, ptr %i.c, align 8, !range !369, !noundef !5
  %.not = icmp eq i64 %i.e, -2
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %.loopexit8, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.d:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(88) %i.c) #18
          to label %bb.l unwind label %bb.k

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !370
  %i.i = tail call noundef align 8 dereferenceable_or_null(352) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 352, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !370 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 8, i64 352) #22
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false)
  store i64 4, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !373
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc6 unwind label %.loopexit.split-lp

.noexc6:                                          ; preds = %bb.g
  %i.k = load i64, ptr %i.a, align 8, !range !369, !noalias !374, !noundef !5
  %.not2.i.i = icmp eq i64 %i.k, -2
  br i1 %.not2.i.i, label %.loopexit8, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc6, %.noexc7
  %i.l = phi ptr [ %i.q, %.noexc7 ], [ %i.i, %.noexc6 ]
  %i.m = phi i64 [ %i.s, %.noexc7 ], [ 1, %.noexc6 ] ; 5 uses
  %i.n = icmp samesign ult i64 %i.m, 104811045873349726
  call void @llvm.assume(i1 %i.n)
  %i.o = load i64, ptr %i.d, align 8, !range !6, !alias.scope !375, !noundef !5
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.i, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4dcH4YgJDq_2tt4iter9TtElementE7reserveCscAFBYSOo4Yh_12test_fixture.exit.i.i

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4dcH4YgJDq_2tt4iter9TtElementE7reserveCscAFBYSOo4Yh_12test_fixture.exit.i.i: ; preds = %._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4dcH4YgJDq_2tt4iter9TtElementE7reserveCscAFBYSOo4Yh_12test_fixture.exit.i.i_crit_edge, %.lr.ph.i.i
  %i.q = phi ptr [ %.pre, %._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4dcH4YgJDq_2tt4iter9TtElementE7reserveCscAFBYSOo4Yh_12test_fixture.exit.i.i_crit_edge ], [ %i.l, %.lr.ph.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [88 x i8], ptr %i.q, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.r, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !375
  %i.s = add nuw nsw i64 %i.m, 1                  ; 2 uses
  store i64 %i.s, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !375
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4dcH4YgJDq_2tt4iter9TtElementE7reserveCscAFBYSOo4Yh_12test_fixture.exit.i.i
  %i.t = load i64, ptr %i.a, align 8, !range !369, !noalias !374, !noundef !5
  %.not.i.i5 = icmp eq i64 %i.t, -2
  br i1 %.not.i.i5, label %.loopexit8, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(88) %i.a) #18
          to label %.body unwind label %bb.j, !noalias !375

bb.i:                                             ; preds = %.lr.ph.i.i
  invoke fastcc void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.m, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 88)
          to label %._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4dcH4YgJDq_2tt4iter9TtElementE7reserveCscAFBYSOo4Yh_12test_fixture.exit.i.i_crit_edge unwind label %bb.h

._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4dcH4YgJDq_2tt4iter9TtElementE7reserveCscAFBYSOo4Yh_12test_fixture.exit.i.i_crit_edge: ; preds = %bb.i
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !375
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4dcH4YgJDq_2tt4iter9TtElementE7reserveCscAFBYSOo4Yh_12test_fixture.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19, !noalias !375
  unreachable

.loopexit:                                        ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4dcH4YgJDq_2tt4iter9TtElementE7reserveCscAFBYSOo4Yh_12test_fixture.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #18
          to label %bb.l unwind label %bb.k

.loopexit8:                                       ; preds = %.noexc7, %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.c

bb.k:                                             ; preds = %.body, %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.l:                                             ; preds = %bb.d, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB7_3VecTNtNtB9_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, i64 } @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEE8as_sliceCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !383, !noundef !5 ; 5 uses
  %i.f = load i64, ptr %0, align 8, !range !6, !alias.scope !383, !noundef !5
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %i.c, %i.g
  br i1 %i.h, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEE7reserveCscAFBYSOo4Yh_12test_fixture.exit.thread.i, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEE7reserveCscAFBYSOo4Yh_12test_fixture.exit.i, !prof !4

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEE7reserveCscAFBYSOo4Yh_12test_fixture.exit.thread.i: ; preds = %bb.b
  invoke fastcc void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %i.c, i64 noundef 8, i64 noundef 56)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEE7reserveCscAFBYSOo4Yh_12test_fixture.exit.thread.i
  %i.i = load i64, ptr %i.d, align 8, !alias.scope !382, !noundef !5 ; 2 uses
  %i.j = icmp ult i64 %i.i, 164703072086692426
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.c

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEE7reserveCscAFBYSOo4Yh_12test_fixture.exit.i: ; preds = %bb.b
  %i.k = icmp ult i64 %i.e, 164703072086692426
  tail call void @llvm.assume(i1 %i.k)
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEE7reserveCscAFBYSOo4Yh_12test_fixture.exit.i, %.noexc
  %i.l = phi i64 [ %i.i, %.noexc ], [ %i.e, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEE7reserveCscAFBYSOo4Yh_12test_fixture.exit.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !382, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %i.l
  %i.p = mul nuw nsw i64 %i.c, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr readonly align 8 %i.b, i64 %i.p, i1 false), !noalias !382
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEE7reserveCscAFBYSOo4Yh_12test_fixture.exit.i
  %i.q = phi i64 [ %i.l, %bb.c ], [ %i.e, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEE7reserveCscAFBYSOo4Yh_12test_fixture.exit.i ]
  %i.r = add i64 %i.q, %i.c
  store i64 %i.r, ptr %i.d, align 8, !alias.scope !382
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtNtBG_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEEECscAFBYSOo4Yh_12test_fixture.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.w = mul nuw i64 %i.t, 56
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !384
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtNtBG_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEEECscAFBYSOo4Yh_12test_fixture.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtNtBG_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEEECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.e, %bb.d
  ret void

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.x

bb.g:                                             ; preds = %bb.a, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEE7reserveCscAFBYSOo4Yh_12test_fixture.exit.thread.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtCs4sl5YdnrCxp_3vfs6FileIdNtNtB1l_8vfs_path7VfsPathEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 48
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1l_12CrateBuilderEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 2
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #20
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage32EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage64EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit

end_hunk_0
