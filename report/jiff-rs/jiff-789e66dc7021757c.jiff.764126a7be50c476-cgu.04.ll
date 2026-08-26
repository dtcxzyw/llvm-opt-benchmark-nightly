Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.04?download=true
inline.NumInlined: 306
inline.NumDeleted: 156
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtCsa9sSWSfjDbm_4jiff5errorNtB2_5Error9from_args:bb.a
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = lshr i64 %i.e, 1                         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !329
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.g, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !329
  %i.h = load i64, ptr %i.b, align 8, !range !63, !noalias !329, !noundef !10
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !64, !noalias !329, !noundef !10 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.c, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i, !prof !65

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.l, align 8, !noalias !329
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #21, !noalias !329
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i: ; preds = %bb.b
  %i.n = load ptr, ptr %i.l, align 8, !noalias !329, !nonnull !10, !noundef !10 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !329
  %.not.i.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %_RNvYNvYeNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTReEE9call_onceCsa9sSWSfjDbm_4jiff.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %i.g, i1 false), !noalias !336
  br label %_RNvYNvYeNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTReEE9call_onceCsa9sSWSfjDbm_4jiff.exit.i.i

_RNvYNvYeNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTReEE9call_onceCsa9sSWSfjDbm_4jiff.exit.i.i: ; preds = %bb.d, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !337, !noalias !338
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !337, !noalias !338
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !337, !noalias !338
  br label %_RNvMs5_NtCsa9sSWSfjDbm_4jiff5errorNtB5_10AdhocError9from_args.exit

bb.e:                                             ; preds = %bb.a
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull %0, ptr noundef nonnull %1), !noalias !339
  br label %_RNvMs5_NtCsa9sSWSfjDbm_4jiff5errorNtB5_10AdhocError9from_args.exit

_RNvMs5_NtCsa9sSWSfjDbm_4jiff5errorNtB5_10AdhocError9from_args.exit: ; preds = %_RNvYNvYeNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTReEE9call_onceCsa9sSWSfjDbm_4jiff.exit.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.p = call { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE16into_boxed_sliceCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.r = extractvalue { ptr, i64 } %i.p, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !340
  store i64 1, ptr %i.a, align 8, !noalias !340
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.s, align 8, !noalias !340
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.t, align 8, !noalias !340
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 4, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.41.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.q, ptr %.sroa.41.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.r, ptr %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !343
  %i.u = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !343 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !65

bb.f:                                             ; preds = %_RNvMs5_NtCsa9sSWSfjDbm_4jiff5errorNtB5_10AdhocError9from_args.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.g, !noalias !340

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.i unwind label %bb.h, !noalias !340

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !340
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.w

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %_RNvMs5_NtCsa9sSWSfjDbm_4jiff5errorNtB5_10AdhocError9from_args.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !340
  ret ptr %i.u
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !346
  store i64 1, ptr %i.a, align 8, !noalias !346
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !346
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !346
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 23, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.43.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i32 %0, ptr %.sroa.43.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !349
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !349 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !65

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !346

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !346

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !346
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !346
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %0, ptr noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !352
  store i64 1, ptr %i.a, align 8, !noalias !352
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8, !noalias !352
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.f, align 8, !noalias !352
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 40, ptr %.sroa.5.0..sroa_idx.i, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !355
  %i.g = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !355 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit10, !prof !65

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.d, !noalias !352

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %.body unwind label %bb.e, !noalias !352

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !352
  unreachable

.body:                                            ; preds = %bb.m, %bb.h, %bb.d, %bb.r
  %.pn.pn.ph = phi { ptr, i32 } [ %i.an, %bb.r ], [ %i.v, %bb.m ], [ %i.n, %bb.h ], [ %i.i, %bb.d ]
  %.sroa.03.0.ph = phi i1 [ false, %bb.r ], [ false, %bb.m ], [ true, %bb.h ], [ true, %bb.d ]
  %.pr = load ptr, ptr %i.c, align 8, !alias.scope !358 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.k = icmp eq ptr %.pr, null
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.l = atomicrmw sub ptr %.pr, i64 1 release, align 8, !noalias !365
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit unwind label %bb.s

bb.h:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit10: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !352
  store ptr %i.g, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit10
  %i.o = phi ptr [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit10 ], [ %1, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !63, !noundef !10
  %.not6 = icmp eq i64 %i.q, 0
  br i1 %.not6, label %bb.l, label %bb.k, !prof !370

bb.j:                                             ; preds = %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9is_uniqueBK_.exit.thread, %bb.k
  unreachable

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 71 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #21
          to label %bb.j unwind label %bb.h

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %0, ptr %i.r, align 8
  store i64 1, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.t = cmpxchg ptr %i.s, i64 1, i64 -1 acquire monotonic, align 8
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9is_uniqueBK_.exit, label %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9is_uniqueBK_.exit.thread, !prof !371

bb.m:                                             ; preds = %bb.q
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load i64, ptr %i.b, align 8, !range !63, !noundef !10
  %i.x = load ptr, ptr %i.r, align 8
  store i64 %i.w, ptr %i.ab, align 8
  store ptr %i.x, ptr %i.ae, align 8
  br label %.body

_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9is_uniqueBK_.exit: ; preds = %bb.l
  %i.y = load atomic i64, ptr %i.o acquire, align 8
  %i.z = icmp eq i64 %i.y, 1
  store atomic i64 1, ptr %i.s release, align 8
  br i1 %i.z, label %bb.n, label %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9is_uniqueBK_.exit.thread, !prof !372

_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9is_uniqueBK_.exit.thread: ; preds = %bb.l, %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9is_uniqueBK_.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #21
          to label %bb.j unwind label %bb.r

bb.n:                                             ; preds = %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9is_uniqueBK_.exit
  %i.aa = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.ac = load i64, ptr %i.ab, align 8, !range !63, !alias.scope !373, !noundef !10
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEEB11_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !382, !noundef !10 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEEB11_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !383
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEEB11_.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEEB11_.exit unwind label %bb.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEEB11_.exit: ; preds = %bb.p, %bb.o, %bb.n, %bb.q
  %i.aj = load i64, ptr %i.b, align 8, !range !63, !noundef !10
  %i.ak = load ptr, ptr %i.r, align 8
  store i64 %i.aj, ptr %i.ab, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.ak, ptr %i.al, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.am = load ptr, ptr %i.c, align 8, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.am

bb.r:                                             ; preds = %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9is_uniqueBK_.exit.thread
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #23
          to label %.body unwind label %bb.s

bb.s:                                             ; preds = %bb.v, %bb.g, %bb.r
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit: ; preds = %bb.f, %.body, %bb.g
  br i1 %.sroa.03.0.ph, label %bb.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit13

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit13: ; preds = %bb.u, %bb.t, %bb.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit
  resume { ptr, i32 } %.pn.pn.ph

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !388)
  call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.ap = load ptr, ptr %i.d, align 8, !alias.scope !394, !noundef !10 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit13, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ar = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !395
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit13

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit13 unwind label %bb.s
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error14special_bounds(i8 noundef range(i8 0, 3) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !400
  store i64 1, ptr %i.a, align 8, !noalias !400
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !400
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !400
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 31, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !403
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !403 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !65

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !400

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !400

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !400
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !400
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error16jcore_tzif_parse(i64 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !406
  store i64 1, ptr %i.a, align 8, !noalias !406
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !406
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !406
end_hunk_0
