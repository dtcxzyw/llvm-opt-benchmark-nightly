Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_container_tests_common-6650c216428fe7c2.iceoryx2_bb_container_tests_common.e066d4e3b72ad41e-cgu.13?download=true
inline.NumInlined: 205
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common21polymorphic_vec_tests26try_clone_clones_empty_vec:bb.a
  %i.aw = add nuw i64 %.sroa.02.0.i77, 4          ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RNvXs2_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eqCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.loopexit.unr-lcssa, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i: ; preds = %.preheader.split.split.split.i.3, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.preheader.new
  %.sroa.02.0.i77 = phi i64 [ 0, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.preheader.new ], [ %i.aw, %.preheader.split.split.split.i.3 ] ; 6 uses
  %niter = phi i64 [ 0, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.preheader.new ], [ %niter.next.3, %.preheader.split.split.split.i.3 ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.i, i64 %.sroa.02.0.i77
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val2.i10.i, i64 %.sroa.02.0.i77
  %.val.i = load i64, ptr %i.ax, align 8, !noalias !137, !noundef !4
  %.val6.i = load i64, ptr %i.ay, align 8, !noalias !137, !noundef !4
  %.not12.i = icmp eq i64 %.val.i, %.val6.i
  br i1 %.not12.i, label %.preheader.split.split.split.i, label %.loopexit, !prof !12

.loopexit:                                        ; preds = %.preheader.split.split.split.i.2, %.preheader.split.split.split.i.1, %.preheader.split.split.split.i, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.epil, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6unwrapCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.az = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select = select i1 %i.az, ptr @18, ptr inttoptr (i64 1 to ptr)
  %spec.select73 = select i1 %i.az, i64 9, i64 0
  store ptr %spec.select, ptr %i.l, align 8, !captures !5
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %spec.select73, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink66 = select i1 %i.bb, ptr @19, ptr inttoptr (i64 1 to ptr)
  %.sink65 = select i1 %i.bb, i64 4, i64 0
  store ptr %.sink66, ptr %i.k, align 8, !captures !5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sink65, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.42.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.n, ptr %i.bd, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.46.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.m, ptr %i.be, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.410.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.k, ptr %i.bf, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.414.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @61, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #16
  unreachable

_RNvXs2_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eqCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.loopexit.unr-lcssa: ; preds = %.preheader.split.split.split.i.3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs2_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eqCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.epil.preheader

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.epil.preheader: ; preds = %_RNvXs2_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eqCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.loopexit.unr-lcssa, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.preheader
  %.sroa.02.0.i77.epil.init = phi i64 [ 0, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.preheader ], [ %i.aw, %_RNvXs2_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eqCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.loopexit.unr-lcssa ]
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod78)
  br label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.epil

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.epil: ; preds = %.preheader.split.split.split.i.epil, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.epil.preheader
  %.sroa.02.0.i77.epil = phi i64 [ %i.bi, %.preheader.split.split.split.i.epil ], [ %.sroa.02.0.i77.epil.init, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.split.split.split.i.epil ], [ 0, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.epil.preheader ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.i, i64 %.sroa.02.0.i77.epil
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.val2.i10.i, i64 %.sroa.02.0.i77.epil
  %.val.i.epil = load i64, ptr %i.bg, align 8, !noalias !137, !noundef !4
  %.val6.i.epil = load i64, ptr %i.bh, align 8, !noalias !137, !noundef !4
  %.not12.i.epil = icmp eq i64 %.val.i.epil, %.val6.i.epil
  br i1 %.not12.i.epil, label %.preheader.split.split.split.i.epil, label %.loopexit, !prof !12

.preheader.split.split.split.i.epil:              ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.epil
  %i.bi = add nuw i64 %.sroa.02.0.i77.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvXs2_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eqCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.epil, !llvm.loop !105

_RNvXs2_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eqCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit: ; preds = %_RNvXs2_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eqCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.loopexit.unr-lcssa, %.preheader.split.split.split.i.epil, %.preheader.split.split.split.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.af, ptr %i.h, align 8
  store ptr %i.h, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @17, ptr %i.g, align 8, !captures !5
  %i.bj = icmp eq i64 %i.af, 0
  br i1 %i.bj, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E5clearCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.i, label %bb.g, !prof !6

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E5clearCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.i: ; preds = %_RNvXs2_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eqCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  store i64 0, ptr %i.ag, align 8, !alias.scope !140
  %i.bk = icmp ugt i64 %.val3.i.fr.i, 1152921504606846975
  br i1 %i.bk, label %.split2.i.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEECsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit

bb.g:                                             ; preds = %_RNvXs2_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eqCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bl = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select74 = select i1 %i.bl, ptr @18, ptr inttoptr (i64 1 to ptr)
  %spec.select75 = select i1 %i.bl, i64 9, i64 0
  store ptr %spec.select74, ptr %i.f, align 8, !captures !5
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %spec.select75, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bn = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink70 = select i1 %i.bn, ptr @19, ptr inttoptr (i64 1 to ptr)
  %.sink69 = select i1 %i.bn, i64 4, i64 0
  store ptr %.sink70, ptr %i.e, align 8, !captures !5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sink69, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.418.0..sroa_idx, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.i, ptr %i.bp, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.422.0..sroa_idx, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.g, ptr %i.bq, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.426.0..sroa_idx, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.e, ptr %i.br, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.430.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @63, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #16
  unreachable

.split2.i.i:                                      ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E5clearCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.i
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #16, !noalias !141
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEECsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit: ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E5clearCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.i
  %i.bs = load ptr, ptr %i.p, align 8, !alias.scope !141, !nonnull !4, !align !9, !noundef !4
  %i.bt = shl nuw nsw i64 %.val3.i.fr.i, 3
  call void @_RNvXs_NtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocatorNtB4_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator10deallocate(ptr noundef nonnull align 8 %i.bs, ptr noundef nonnull %.val2.i.i, i64 noundef 8, i64 noundef %i.bt) #15, !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %.val.i.i.i50 = load i64, ptr %i.ae, align 8, !alias.scope !145, !noundef !4 ; 3 uses
  %.val5.i.i.i51 = load ptr, ptr %i.al, align 8, !alias.scope !145, !noundef !4 ; 2 uses
  %.val6.i.i.i52 = load i64, ptr %i.ak, align 8, !alias.scope !145, !noundef !4 ; 4 uses
  %.not7.i.i.i53 = icmp eq i64 %.val.i.i.i50, 0
  br i1 %.not7.i.i.i53, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E5clearCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.i60, label %.lr.ph.preheader.i.i.i54

.lr.ph.preheader.i.i.i54:                         ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEECsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit
  %i.bu = add i64 %.val.i.i.i50, -1               ; 2 uses
  %.first_iter.i.i.i55 = icmp ult i64 %i.bu, %.val6.i.i.i52
  br i1 %.first_iter.i.i.i55, label %.lr.ph.i.us.i.i57, label %.lr.ph.i.i.i56

.lr.ph.i.us.i.i57:                                ; preds = %.lr.ph.preheader.i.i.i54, %.lr.ph.i.us.i.i57
  %.sroa.0.08.i.us.i.i58 = phi i64 [ %i.bv, %.lr.ph.i.us.i.i57 ], [ %.val.i.i.i50, %.lr.ph.preheader.i.i.i54 ]
  %i.bv = add i64 %.sroa.0.08.i.us.i.i58, -1      ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.val5.i.i.i51, i64 %i.bv
  call void @_RNvXs2_NtCs7iP7wj4erds_20iceoryx2_pal_testing16lifetime_trackerNtB5_15LifetimeTrackerNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bw) #15, !noalias !145
  %.not.i.us.i.i59 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.us.i.i59, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E5clearCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.i60, label %.lr.ph.i.us.i.i57

.lr.ph.i.i.i56:                                   ; preds = %.lr.ph.preheader.i.i.i54
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.bu, i64 noundef %.val6.i.i.i52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #16, !noalias !145
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E5clearCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.i60: ; preds = %.lr.ph.i.us.i.i57, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEECsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit
  store i64 0, ptr %i.ae, align 8, !alias.scope !146
  %i.bx = icmp ugt i64 %.val6.i.i.i52, 1152921504606846975
  br i1 %i.bx, label %.split2.i.i61, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEECsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit62

.split2.i.i61:                                    ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E5clearCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.i60
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #16, !noalias !147
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEECsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit62: ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E5clearCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.i.i60
  %i.by = load ptr, ptr %i.r, align 8, !alias.scope !147, !nonnull !4, !align !9, !noundef !4
  %i.bz = shl nuw nsw i64 %.val6.i.i.i52, 3
  call void @_RNvXs_NtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocatorNtB4_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator10deallocate(ptr noundef nonnull align 8 %i.by, ptr noundef nonnull %.val5.i.i.i51, i64 noundef 8, i64 noundef %i.bz) #15, !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i, i64 noundef 240, i64 noundef 1) #15
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef 16, i64 noundef 8) #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common21polymorphic_vec_tests27try_clone_clones_filled_vec() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [64 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 12 uses
  %i.h = alloca [8 x i8], align 8                 ; 10 uses
  %i.i = alloca [8 x i8], align 8                 ; 11 uses
  %i.j = alloca [64 x i8], align 8                ; 10 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 11 uses
  %i.o = alloca [8 x i8], align 8                 ; 12 uses
  %i.p = alloca [64 x i8], align 8                ; 10 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [64 x i8], align 8                ; 10 uses
  %i.w = alloca [16 x i8], align 8                ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 8 uses
  %i.ac = alloca [32 x i8], align 8               ; 6 uses
  %i.ad = alloca [16 x i8], align 8               ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 4 uses
  %i.af = alloca [32 x i8], align 8               ; 6 uses
  %i.ag = alloca [32 x i8], align 8               ; 11 uses
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !178
  %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i = tail call dereferenceable_or_null(240) ptr @_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed(i64 240, i64 1) ; 4 uses
  %i.ah = icmp eq ptr %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i, null
  br i1 %i.ah, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 240) #17, !noalias !178
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !179
  %i.ai = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 16, 241) 16, i64 noundef range(i64 1, 9) 8) #15, !noalias !179 ; 5 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.d, label %_RNvMNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common21polymorphic_vec_testsNtB2_4Test10create_sut.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #17, !noalias !179
  unreachable

_RNvMNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common21polymorphic_vec_testsNtB2_4Test10create_sut.exit: ; preds = %bb.c
  %i.ak = ptrtoint ptr %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i to i64
  store ptr %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i, ptr %i.ai, align 8, !noalias !180
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.ak, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !180
  call void @_RNvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorE3newCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.af, ptr noundef nonnull align 8 %i.ai, i64 noundef 3) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.al = load ptr, ptr %i.af, align 8, !alias.scope !182, !noundef !4
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.e, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6unwrapCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit84, !prof !11

bb.e:                                             ; preds = %_RNvMNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common21polymorphic_vec_testsNtB2_4Test10create_sut.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !183
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ao = load i8, ptr %i.an, align 8, !range !8, !alias.scope !182, !noundef !4
  store i8 %i.ao, ptr %i.b, align 1, !noalias !183
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #16, !noalias !184
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6unwrapCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit84: ; preds = %_RNvMNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common21polymorphic_vec_testsNtB2_4Test10create_sut.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.af, i64 32, i1 false), !alias.scope !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.ap = tail call noundef i64 @_RNvMs0_NtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_trackerNtB5_15LifetimeTracker14new_with_value(i64 noundef 2) #15
  %i.aq = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E4pushCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ag, i64 noundef %i.ap) #15
  %i.ar = icmp eq i8 %i.aq, 2
  br i1 %i.ar, label %bb.f, label %bb.n, !prof !6

bb.f:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6unwrapCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit84
  %i.as = tail call noundef i64 @_RNvMs0_NtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_trackerNtB5_15LifetimeTracker14new_with_value(i64 noundef 3) #15
  %i.at = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E4pushCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ag, i64 noundef %i.as) #15
  %i.au = icmp eq i8 %i.at, 2
  br i1 %i.au, label %bb.g, label %bb.n, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.av = tail call noundef i64 @_RNvMs0_NtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_trackerNtB5_15LifetimeTracker14new_with_value(i64 noundef 4) #15
  %i.aw = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E4pushCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ag, i64 noundef %i.av) #15
  %i.ax = icmp eq i8 %i.aw, 2
  br i1 %i.ax, label %bb.h, label %bb.n, !prof !6

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call fastcc void @_RNvMs6_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorE9try_cloneCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.ay = load ptr, ptr %i.ab, align 8, !alias.scope !186, !noundef !4 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6unwrapCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit, !prof !11

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !187
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bb = load i8, ptr %i.ba, align 8, !range !8, !alias.scope !186, !noundef !4
  store i8 %i.bb, ptr %i.c, align 1, !noalias !187
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #16, !noalias !188
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6unwrapCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit: ; preds = %bb.h
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !188 ; 8 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !188 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !188
  %.sroa.10.0.copyload.fr = freeze i64 %.sroa.10.0.copyload ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !4 ; 2 uses
  store i64 %i.bd, ptr %i.z, align 8
  store ptr %i.z, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr @67, ptr %i.y, align 8, !captures !5
  %i.be = icmp eq i64 %i.bd, 3
  br i1 %i.be, label %bb.j, label %bb.k, !prof !6

bb.j:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6unwrapCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 %.sroa.6.0.copyload, ptr %i.t, align 8
  store ptr %i.t, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr @67, ptr %i.s, align 8, !captures !5
  %i.bf = icmp eq i64 %.sroa.6.0.copyload, 3
  br i1 %i.bf, label %.split, label %bb.l, !prof !6

bb.k:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6unwrapCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.bg = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select = select i1 %i.bg, ptr @18, ptr inttoptr (i64 1 to ptr)
  %spec.select146 = select i1 %i.bg, i64 9, i64 0
  store ptr %spec.select, ptr %i.x, align 8, !captures !5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %spec.select146, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.bi = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink140 = select i1 %i.bi, ptr @19, ptr inttoptr (i64 1 to ptr)
  %.sink139 = select i1 %i.bi, i64 4, i64 0
  store ptr %.sink140, ptr %i.w, align 8, !captures !5
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.sink139, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.x, ptr %i.v, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.418.0..sroa_idx, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.aa, ptr %i.bk, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.422.0..sroa_idx, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.y, ptr %i.bl, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.426.0..sroa_idx, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr %i.w, ptr %i.bm, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.430.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @74, ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #16
  unreachable

.split:                                           ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.val3.i = load i64, ptr %i.bn, align 8, !alias.scope !189, !noundef !4 ; 4 uses
  %.not.i = icmp ult i64 %.val3.i, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val2.i = load ptr, ptr %i.bo, align 8         ; 8 uses
  br i1 %.not.i, label %.split.split.us, label %.split.split, !prof !10

.split.split.us:                                  ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #16, !noalias !189
  unreachable

.split.split:                                     ; preds = %.split
  %.not.i101 = icmp ult i64 %.sroa.10.0.copyload.fr, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  store ptr %.val2.i, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 2, ptr %i.m, align 8
  store ptr %i.m, ptr %i.n, align 8
  %i.bp = load i64, ptr %.val2.i, align 8, !noundef !4
  %i.bq = icmp eq i64 %i.bp, 2                    ; 2 uses
  br i1 %.not.i101, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.us, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.preheader, !prof !10

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.preheader: ; preds = %.split.split
  br i1 %i.bq, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit103, label %.split123.us, !prof !6

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.us: ; preds = %.split.split
  br i1 %i.bq, label %.split125.us, label %.split123.us, !prof !6

.split125.us:                                     ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %.sroa.10.0.copyload.fr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #16, !noalias !190
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.br = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select147 = select i1 %i.br, ptr @18, ptr inttoptr (i64 1 to ptr)
  %spec.select148 = select i1 %i.br, i64 9, i64 0
  store ptr %spec.select147, ptr %i.r, align 8, !captures !5
  %i.bs = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select148, ptr %i.bs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bt = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink138.a = select i1 %i.bt, ptr @19, ptr inttoptr (i64 1 to ptr)
  %.sink137.a = select i1 %i.bt, i64 4, i64 0
  store ptr %.sink138.a, ptr %i.q, align 8, !captures !5
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sink137.a, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.r, ptr %i.p, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.434.0..sroa_idx, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.u, ptr %i.bv, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.438.0..sroa_idx, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.s, ptr %i.bw, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.442.0..sroa_idx, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.q, ptr %i.bx, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.446.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @72, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #16
  unreachable

.lr.ph.i.us.i.i.preheader:                        ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit103.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 16
  call void @_RNvXs2_NtCs7iP7wj4erds_20iceoryx2_pal_testing16lifetime_trackerNtB5_15LifetimeTrackerNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.by) #15, !noalias !191
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  call void @_RNvXs2_NtCs7iP7wj4erds_20iceoryx2_pal_testing16lifetime_trackerNtB5_15LifetimeTrackerNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bz) #15, !noalias !191
  call void @_RNvXs2_NtCs7iP7wj4erds_20iceoryx2_pal_testing16lifetime_trackerNtB5_15LifetimeTrackerNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.4.0.copyload) #15, !noalias !191
  %i.ca = icmp ugt i64 %.sroa.10.0.copyload.fr, 1152921504606846975
  br i1 %i.ca, label %.split2.i.i, label %.lr.ph.i.us.i.i93.preheader

.split2.i.i:                                      ; preds = %.lr.ph.i.us.i.i.preheader
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #16, !noalias !192
  unreachable

.lr.ph.i.us.i.i93.preheader:                      ; preds = %.lr.ph.i.us.i.i.preheader
  %i.cb = shl nuw nsw i64 %.sroa.10.0.copyload.fr, 3
  call void @_RNvXs_NtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocatorNtB4_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator10deallocate(ptr noundef nonnull align 8 %i.ay, ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef 8, i64 noundef %i.cb) #15, !noalias !192
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.cc = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  call void @_RNvXs2_NtCs7iP7wj4erds_20iceoryx2_pal_testing16lifetime_trackerNtB5_15LifetimeTrackerNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cc) #15, !noalias !195
  %i.cd = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  call void @_RNvXs2_NtCs7iP7wj4erds_20iceoryx2_pal_testing16lifetime_trackerNtB5_15LifetimeTrackerNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cd) #15, !noalias !195
  call void @_RNvXs2_NtCs7iP7wj4erds_20iceoryx2_pal_testing16lifetime_trackerNtB5_15LifetimeTrackerNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val2.i) #15, !noalias !195
  %i.ce = icmp ugt i64 %.val3.i, 1152921504606846975
  br i1 %i.ce, label %.split2.i.i97, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEECsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit98

.split2.i.i97:                                    ; preds = %.lr.ph.i.us.i.i93.preheader
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #16, !noalias !196
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEECsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit98: ; preds = %.lr.ph.i.us.i.i93.preheader
  %i.cf = load ptr, ptr %i.ag, align 8, !alias.scope !196, !nonnull !4, !align !9, !noundef !4
  %i.cg = shl nuw nsw i64 %.val3.i, 3
  call void @_RNvXs_NtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocatorNtB4_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator10deallocate(ptr noundef nonnull align 8 %i.cf, ptr noundef nonnull %.val2.i, i64 noundef 8, i64 noundef %i.cg) #15, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i, i64 noundef 240, i64 noundef 1) #15
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef 16, i64 noundef 8) #15
  ret void

.split123.us:                                     ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.preheader, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.1, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.2, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ch = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select149 = select i1 %i.ch, ptr @18, ptr inttoptr (i64 1 to ptr)
  %spec.select150 = select i1 %i.ch, i64 9, i64 0
  store ptr %spec.select149, ptr %i.l, align 8, !captures !5
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %spec.select150, ptr %i.ci, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cj = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink132 = select i1 %i.cj, ptr @19, ptr inttoptr (i64 1 to ptr)
  %.sink131 = select i1 %i.cj, i64 4, i64 0
  store ptr %.sink132, ptr %i.k, align 8, !captures !5
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sink131, ptr %i.ck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.452.0..sroa_idx, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.o, ptr %i.cl, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.456.0..sroa_idx, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.n, ptr %i.cm, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.460.0..sroa_idx, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.k, ptr %i.cn, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.464.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @68, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #16
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit103: ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %.sroa.4.0.copyload, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 2, ptr %i.g, align 8
  store ptr %i.g, ptr %i.h, align 8
  %i.co = load i64, ptr %.sroa.4.0.copyload, align 8, !noundef !4
  %i.cp = icmp eq i64 %i.co, 2
  br i1 %i.cp, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.1, label %bb.m, !prof !6

bb.m:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit103.2, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit103.1, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cq = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select151 = select i1 %i.cq, ptr @18, ptr inttoptr (i64 1 to ptr)
  %spec.select152 = select i1 %i.cq, i64 9, i64 0
  store ptr %spec.select151, ptr %i.f, align 8, !captures !5
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %spec.select152, ptr %i.cr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cs = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink136 = select i1 %i.cs, ptr @19, ptr inttoptr (i64 1 to ptr)
  %.sink135 = select i1 %i.cs, i64 4, i64 0
  store ptr %.sink136, ptr %i.e, align 8, !captures !5
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sink135, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.468.0..sroa_idx, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.i, ptr %i.cu, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.472.0..sroa_idx, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.h, ptr %i.cv, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.476.0..sroa_idx, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.e, ptr %i.cw, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.480.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @70, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #16
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.1: ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cx = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  store ptr %i.cx, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 3, ptr %i.m, align 8
  store ptr %i.m, ptr %i.n, align 8
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !4
  %i.cz = icmp eq i64 %i.cy, 3
  br i1 %i.cz, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit103.1, label %.split123.us, !prof !6

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit103.1: ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8 ; 2 uses
  store ptr %i.da, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 3, ptr %i.g, align 8
  store ptr %i.g, ptr %i.h, align 8
  %i.db = load i64, ptr %i.da, align 8, !noundef !4
  %i.dc = icmp eq i64 %i.db, 3
  br i1 %i.dc, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.2, label %bb.m, !prof !6

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.2: ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit103.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.dd = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16 ; 2 uses
  store ptr %i.dd, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 4, ptr %i.m, align 8
  store ptr %i.m, ptr %i.n, align 8
  %i.de = load i64, ptr %i.dd, align 8, !noundef !4
  %i.df = icmp eq i64 %i.de, 4
  br i1 %i.df, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit103.2, label %.split123.us, !prof !6

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit103.2: ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E8as_sliceCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 16 ; 2 uses
  store ptr %i.dg, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 4, ptr %i.g, align 8
  store ptr %i.g, ptr %i.h, align 8
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !4
  %i.di = icmp eq i64 %i.dh, 4
  br i1 %i.di, label %.lr.ph.i.us.i.i.preheader, label %bb.m, !prof !6

bb.n:                                             ; preds = %bb.g, %bb.f, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6unwrapCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.dj = tail call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select153 = select i1 %i.dj, ptr @18, ptr inttoptr (i64 1 to ptr)
  %spec.select154 = select i1 %i.dj, i64 9, i64 0
  store ptr %spec.select153, ptr %i.ae, align 8, !captures !5
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %spec.select154, ptr %i.dk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.dl = tail call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink144 = select i1 %i.dl, ptr @19, ptr inttoptr (i64 1 to ptr)
  %.sink143 = select i1 %i.dl, i64 4, i64 0
  store ptr %.sink144, ptr %i.ad, align 8, !captures !5
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %.sink143, ptr %i.dm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %i.ae, ptr %i.ac, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.410.0..sroa_idx, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ad, ptr %i.dn, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.414.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @76, ptr noundef nonnull %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #16
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common21polymorphic_vec_tests38___iox2_test_from_fn_initializes_vector() unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common21polymorphic_vec_tests26from_fn_initializes_vector() #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common21polymorphic_vec_tests38___iox2_test_try_clone_clones_empty_vec() unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common21polymorphic_vec_tests26try_clone_clones_empty_vec() #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common21polymorphic_vec_tests39___iox2_test_try_clone_clones_filled_vec() unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common21polymorphic_vec_tests27try_clone_clones_filled_vec() #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common21polymorphic_vec_tests39two_vectors_with_same_content_are_equal() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [64 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 13 uses
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !235
  %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i = tail call dereferenceable_or_null(240) ptr @_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed(i64 240, i64 1) ; 4 uses
  %i.p = icmp eq ptr %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i, null
  br i1 %i.p, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 240) #17, !noalias !235
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !236
  %i.q = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 16, 241) 16, i64 noundef range(i64 1, 9) 8) #15, !noalias !236 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %_RNvMNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common21polymorphic_vec_testsNtB2_4Test10create_sut.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #17, !noalias !236
  unreachable

_RNvMNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common21polymorphic_vec_testsNtB2_4Test10create_sut.exit: ; preds = %bb.c
  %i.s = ptrtoint ptr %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i to i64
  store ptr %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i, ptr %i.q, align 8, !noalias !237
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.s, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !237
  call void @_RNvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorE3newCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, ptr noundef nonnull align 8 %i.q, i64 noundef 4) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.t = load ptr, ptr %i.n, align 8, !alias.scope !239, !noundef !4
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6unwrapCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit31, !prof !11

bb.e:                                             ; preds = %_RNvMNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common21polymorphic_vec_testsNtB2_4Test10create_sut.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !240
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.w = load i8, ptr %i.v, align 8, !range !8, !alias.scope !239, !noundef !4
  store i8 %i.w, ptr %i.b, align 1, !noalias !240
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #16, !noalias !241
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6unwrapCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit31: ; preds = %_RNvMNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common21polymorphic_vec_testsNtB2_4Test10create_sut.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.n, i64 32, i1 false), !alias.scope !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.x = tail call noundef i64 @_RNvMs0_NtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_trackerNtB5_15LifetimeTracker14new_with_value(i64 noundef 2) #15
  %i.y = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E4pushCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.x) #15
  %i.z = icmp eq i8 %i.y, 2
  br i1 %i.z, label %bb.f, label %bb.k, !prof !6

bb.f:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6unwrapCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit31
  %i.aa = tail call noundef i64 @_RNvMs0_NtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_trackerNtB5_15LifetimeTracker14new_with_value(i64 noundef 6) #15
  %i.ab = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E4pushCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.aa) #15
  %i.ac = icmp eq i8 %i.ab, 2
  br i1 %i.ac, label %bb.g, label %bb.k, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call noundef i64 @_RNvMs0_NtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_trackerNtB5_15LifetimeTracker14new_with_value(i64 noundef 10) #15
  %i.ae = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E4pushCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.ad) #15
  %i.af = icmp eq i8 %i.ae, 2
  br i1 %i.af, label %bb.h, label %bb.k, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call noundef i64 @_RNvMs0_NtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_trackerNtB5_15LifetimeTracker14new_with_value(i64 noundef 14) #15
  %i.ah = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorEINtB7_6VectorB1o_E4pushCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.ag) #15
  %i.ai = icmp eq i8 %i.ah, 2
  br i1 %i.ai, label %bb.i, label %bb.k, !prof !6

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call fastcc void @_RNvMs6_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorE9try_cloneCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.aj = load ptr, ptr %i.i, align 8, !alias.scope !243, !noundef !4
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.j, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6unwrapCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit, !prof !11

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !244
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.am = load i8, ptr %i.al, align 8, !range !8, !alias.scope !243, !noundef !4
  store i8 %i.am, ptr %i.c, align 1, !noalias !244
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #16, !noalias !245
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6unwrapCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !alias.scope !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.o, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.j, ptr %i.g, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !246, !noundef !4 ; 12 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !247, !noundef !4
  %.not.i = icmp eq i64 %i.ao, %i.aq
  br i1 %.not.i, label %.preheader.split.i, label %.loopexit, !prof !12

.preheader.split.i:                               ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6unwrapCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.val3.i.i = load i64, ptr %i.ar, align 8, !alias.scope !247
  %.val3.i.fr.i = freeze i64 %.val3.i.i           ; 6 uses
  %.not.i.i33 = icmp ugt i64 %i.ao, %.val3.i.fr.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val2.i.i = load ptr, ptr %i.as, align 8, !alias.scope !247 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %.val3.i8.i = load i64, ptr %i.at, align 8, !alias.scope !246
  %.val3.i8.fr.i = freeze i64 %.val3.i8.i         ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.val2.i10.i = load ptr, ptr %i.au, align 8, !alias.scope !246 ; 5 uses
  br i1 %.not.i.i33, label %.split.us.i, label %.preheader.split.split.i, !prof !10

end_hunk_0
