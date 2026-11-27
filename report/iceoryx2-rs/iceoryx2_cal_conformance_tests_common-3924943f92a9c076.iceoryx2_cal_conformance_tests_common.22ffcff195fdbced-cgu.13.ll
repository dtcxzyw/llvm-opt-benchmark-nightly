Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_cal_conformance_tests_common-3924943f92a9c076.iceoryx2_cal_conformance_tests_common.22ffcff195fdbced-cgu.13?download=true
inline.NumInlined: 844
inline.NumDeleted: 392
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait22allocator_id_is_uniqueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocator13PoolAllocatorECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common:bb.a
bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #17
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait23allocate_and_free_worksNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocator13PoolAllocatorECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8336 x i8], align 8              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.f, i8 0, i64 4096, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.g, i8 -4, i64 4096, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8328
  store i64 0, ptr %i.h, align 8
  store i64 0, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  store i64 0, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  call fastcc void @_RNvMNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_traitINtB2_11TestFixtureNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocator13PoolAllocatorE4initCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(8336) %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = load i64, ptr %i.i, align 8, !range !8, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocatorNtB5_13PoolAllocatorNtB7_12ShmAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx, i64 noundef 1, i64 noundef 128) #16
  %i.l = load i8, ptr %i.d, align 8, !range !14, !noundef !4
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.n = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #16 ; 2 uses
  %spec.select = select i1 %i.n, ptr @28, ptr inttoptr (i64 1 to ptr)
  %spec.select14 = select i1 %i.n, i64 9, i64 0
  store ptr %spec.select, ptr %i.c, align 8, !captures !6
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select14, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #16 ; 2 uses
  %.sink13 = select i1 %i.p, ptr @29, ptr inttoptr (i64 1 to ptr)
  %.sink12 = select i1 %i.p, i64 4, i64 0
  store ptr %.sink13, ptr %i.b, align 8, !captures !6
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink12, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.46.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.r, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @34, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #17
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.i, align 8, !range !8, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offset13PointerOffsetNtBL_18ShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, label %bb.f, !prof !7

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offset13PointerOffsetNtBL_18ShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !211, !noundef !4
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocatorNtB5_13PoolAllocatorNtB7_12ShmAllocator10deallocate(ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx, i64 noundef %i.v, i64 noundef 1, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #17
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait28allocate_max_alignment_worksNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocator13PoolAllocatorECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8336 x i8], align 8              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.f, i8 0, i64 4096, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.g, i8 -4, i64 4096, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8328
  store i64 0, ptr %i.h, align 8
  store i64 0, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  store i64 0, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  call fastcc void @_RNvMNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_traitINtB2_11TestFixtureNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocator13PoolAllocatorE4initCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(8336) %i.e) #16
  %i.j = load i64, ptr %i.i, align 8, !range !8, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.4.0..sroa_idx.val = load i64, ptr %i.l, align 8, !noundef !4 ; 3 uses
  %i.m = add i64 %.sroa.4.0..sroa_idx.val, -1
  %i.n = icmp sgt i64 %i.m, -1
  call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocatorNtB5_13PoolAllocatorNtB7_12ShmAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx, i64 noundef %.sroa.4.0..sroa_idx.val, i64 noundef 128) #16
  %i.o = load i8, ptr %i.d, align 8, !range !14, !noundef !4
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #16 ; 2 uses
  %spec.select = select i1 %i.q, ptr @28, ptr inttoptr (i64 1 to ptr)
  %spec.select14 = select i1 %i.q, i64 9, i64 0
  store ptr %spec.select, ptr %i.c, align 8, !captures !6
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select14, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.s = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #16 ; 2 uses
  %.sink13 = select i1 %i.s, ptr @29, ptr inttoptr (i64 1 to ptr)
  %.sink12 = select i1 %i.s, i64 4, i64 0
  store ptr %.sink13, ptr %i.b, align 8, !captures !6
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink12, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.46.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.u, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @34, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.i, align 8, !range !8, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offset13PointerOffsetNtBL_18ShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, label %bb.f, !prof !7

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offset13PointerOffsetNtBL_18ShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !214, !noundef !4
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocatorNtB5_13PoolAllocatorNtB7_12ShmAllocator10deallocate(ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx, i64 noundef %i.y, i64 noundef %.sroa.4.0..sroa_idx.val, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #17
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait38allocate_more_than_max_alignment_failsNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocator13PoolAllocatorECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8336 x i8], align 8              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.l, i8 0, i64 4096, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.m, i8 -4, i64 4096, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8328
  store i64 0, ptr %i.n, align 8
  store i64 0, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store i64 0, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  call fastcc void @_RNvMNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_traitINtB2_11TestFixtureNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocator13PoolAllocatorE4initCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(8336) %i.k) #16
  %i.p = load i64, ptr %i.o, align 8, !range !8, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %.sroa.4.0..sroa_idx.val = load i64, ptr %i.r, align 8, !noundef !4
  %0 = add i64 %.sroa.4.0..sroa_idx.val, 1
  %1 = call i64 @llvm.usub.sat.i64(i64 %0, i64 1) ; 2 uses
  %i.s = icmp sgt i64 %1, -1
  br i1 %i.s, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.t = call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false)
  %i.u = sub nuw nsw i64 64, %i.t
  %i.v = shl nuw i64 1, %i.u
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.04.0 = phi i64 [ %i.v, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.w = icmp ne i64 %.sroa.04.0, 0
  call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocatorNtB5_13PoolAllocatorNtB7_12ShmAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx, i64 noundef %.sroa.04.0, i64 noundef 128) #16
  %i.x = load i8, ptr %i.j, align 8, !range !14, !noundef !4
  %.not = icmp eq i8 %i.x, 0
  br i1 %.not, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.y = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #16 ; 2 uses
  %spec.select = select i1 %i.y, ptr @28, ptr inttoptr (i64 1 to ptr)
  %spec.select36 = select i1 %i.y, i64 9, i64 0
  store ptr %spec.select, ptr %i.i, align 8, !captures !6
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %spec.select36, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aa = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #16 ; 2 uses
  %.sink31 = select i1 %i.aa, ptr @29, ptr inttoptr (i64 1 to ptr)
  %.sink30 = select i1 %i.aa, i64 4, i64 0
  store ptr %.sink31, ptr %i.h, align 8, !captures !6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sink30, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.48.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.ac, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.412.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @37, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !range !16, !noundef !4 ; 2 uses
  store i8 %i.ae, ptr %i.e, align 1
  store ptr %i.e, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @39, ptr %i.d, align 8, !captures !6
  %i.af = icmp eq i8 %i.ae, -1
  br i1 %i.af, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ag = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #16 ; 2 uses
  %spec.select37 = select i1 %i.ag, ptr @28, ptr inttoptr (i64 1 to ptr)
  %spec.select38 = select i1 %i.ag, i64 9, i64 0
  store ptr %spec.select37, ptr %i.c, align 8, !captures !6
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select38, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #16 ; 2 uses
  %.sink35 = select i1 %i.ai, ptr @29, ptr inttoptr (i64 1 to ptr)
  %.sink34 = select i1 %i.ai, i64 4, i64 0
  store ptr %.sink35, ptr %i.b, align 8, !captures !6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink34, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.416.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.ak, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator18ShmAllocationErrorNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.al, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator18ShmAllocationErrorNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.am, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.428.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #17
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait41first_allocated_offset_must_start_at_zeroNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocator13PoolAllocatorECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [8336 x i8], align 8              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.j, i8 0, i64 4096, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.k, i8 -4, i64 4096, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8328
  store i64 0, ptr %i.l, align 8
  store i64 0, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  store i64 0, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  call fastcc void @_RNvMNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_traitINtB2_11TestFixtureNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocator13PoolAllocatorE4initCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(8336) %i.i) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.n = load i64, ptr %i.m, align 8, !range !8, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %bb.d, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocatorNtB5_13PoolAllocatorNtB7_12ShmAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx, i64 noundef 1, i64 noundef 128) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.p = load i8, ptr %i.h, align 8, !range !14, !alias.scope !218, !noundef !4
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offset13PointerOffsetNtBL_18ShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !15

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !219
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.s = load i8, ptr %i.r, align 1, !range !16, !alias.scope !218, !noundef !4
  store i8 %i.s, ptr %i.a, align 1, !noalias !219
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #17, !noalias !218
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offset13PointerOffsetNtBL_18ShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !218, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.v = lshr i64 %i.u, 8                         ; 2 uses
  store i64 %i.v, ptr %i.f, align 8
  store ptr %i.f, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @43, ptr %i.e, align 8, !captures !6
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.f, !prof !7

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #17
  unreachable

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offset13PointerOffsetNtBL_18ShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.x = load i64, ptr %i.m, align 8, !range !8, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.g, label %bb.h, !prof !7

bb.f:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offset13PointerOffsetNtBL_18ShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.z = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #16 ; 2 uses
  %spec.select = select i1 %i.z, ptr @28, ptr inttoptr (i64 1 to ptr)
  %spec.select22 = select i1 %i.z, i64 9, i64 0
  store ptr %spec.select, ptr %i.d, align 8, !captures !6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %spec.select22, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ab = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #16 ; 2 uses
  %.sink21 = select i1 %i.ab, ptr @29, ptr inttoptr (i64 1 to ptr)
  %.sink20 = select i1 %i.ab, i64 4, i64 0
  store ptr %.sink21, ptr %i.c, align 8, !captures !6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sink20, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.46.0..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.ad, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.410.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.e, ptr %i.ae, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.414.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.c, ptr %i.af, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.418.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @44, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #17
  unreachable

bb.g:                                             ; preds = %bb.e
end_hunk_0
