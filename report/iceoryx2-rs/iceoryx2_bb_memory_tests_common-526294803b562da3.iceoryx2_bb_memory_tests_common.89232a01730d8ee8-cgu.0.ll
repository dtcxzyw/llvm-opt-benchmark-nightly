Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_memory_tests_common-526294803b562da3.iceoryx2_bb_memory_tests_common.89232a01730d8ee8-cgu.0?download=true
inline.NumInlined: 99
inline.NumDeleted: 50
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_tests13acquire_works:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ab = ptrtoint ptr %i.u to i64
  store i64 %i.ab, ptr %i.g, align 8
  store ptr %i.g, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.r, ptr %i.e, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.ac = icmp eq ptr %i.u, %i.q
  br i1 %i.ac, label %bb.f, label %bb.e, !prof !4

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ad = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #17 ; 2 uses
  %spec.select = select i1 %i.ad, ptr @19, ptr inttoptr (i64 1 to ptr)
  %spec.select45 = select i1 %i.ad, i64 9, i64 0
  store ptr %spec.select, ptr %i.m, align 8, !captures !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %spec.select45, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 1024, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 1024, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.af = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #17 ; 2 uses
  %.sink44 = select i1 %i.af, ptr @20, ptr inttoptr (i64 1 to ptr)
  %.sink43 = select i1 %i.af, i64 4, i64 0
  store ptr %.sink44, ptr %i.j, align 8, !captures !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink43, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.m, ptr %i.i, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common, ptr %.sroa.44.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.l, ptr %i.ah, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.n, ptr %i.ai, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %i.k, ptr %i.aj, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store ptr %i.j, ptr %i.ak, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @21, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.al = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #17 ; 2 uses
  %spec.select46 = select i1 %i.al, ptr @19, ptr inttoptr (i64 1 to ptr)
  %spec.select47 = select i1 %i.al, i64 9, i64 0
  store ptr %spec.select46, ptr %i.d, align 8, !captures !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %spec.select47, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.an = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #17 ; 2 uses
  %.sink42 = select i1 %i.an, ptr @20, ptr inttoptr (i64 1 to ptr)
  %.sink41 = select i1 %i.an, i64 4, i64 0
  store ptr %.sink42, ptr %i.c, align 8, !captures !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sink41, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %i.ap, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common, ptr %.sroa.428.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.f, ptr %i.aq, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common, ptr %.sroa.432.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.c, ptr %i.ar, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common, ptr %.sroa.436.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #18
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_tests17grow_zeroed_works() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [80 x i8], align 8                ; 12 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 10 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 10 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [1024 x i8], align 1              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.x, i8 -1, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.y = ptrtoint ptr %i.x to i64
  store i64 %i.y, ptr %i.w, align 8, !alias.scope !112, !noalias !113
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 1024, ptr %i.z, align 8, !alias.scope !112, !noalias !113
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %i.aa, align 8, !alias.scope !112, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvXs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory19one_chunk_allocatorNtB4_17OneChunkAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.v, ptr noundef nonnull align 8 %i.w, i64 noundef 1, i64 noundef 128) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.ab = load ptr, ptr %i.v, align 8, !alias.scope !114, !noalias !115, !noundef !5 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !116
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !range !8, !alias.scope !114, !noalias !115, !noundef !5
  store i8 %i.ae, ptr %i.d, align 1, !noalias !116
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #18, !noalias !114
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory19one_chunk_allocatorNtB5_17OneChunkAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator9Allocator6shrink(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.u, ptr noundef nonnull align 8 %i.w, ptr noundef nonnull %i.ab, i64 noundef 1, i64 noundef 128, i64 noundef 1, i64 noundef 64) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.af = load ptr, ptr %i.u, align 8, !alias.scope !117, !noalias !118, !noundef !5 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator21AllocationShrinkErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit, !prof !12

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !119
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !range !14, !alias.scope !117, !noalias !118, !noundef !5
  store i8 %i.ai, ptr %i.c, align 1, !noalias !119
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #18, !noalias !117
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator21AllocationShrinkErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !120
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory19one_chunk_allocatorNtB5_17OneChunkAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator9Allocator4grow(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull align 8 %i.w, ptr noundef nonnull %i.af, i64 noundef 1, i64 noundef 64, i64 noundef 1, i64 noundef 128) #17, !noalias !120
  %i.aj = load ptr, ptr %i.b, align 8, !noalias !120, !noundef !5 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.ak, label %bb.d, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator21AllocationShrinkErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit
  %i.am = load i8, ptr %i.al, align 8, !range !8, !noalias !120, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !121
  store i8 %i.am, ptr %i.a, align 1, !noalias !121
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #18, !noalias !122
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator21AllocationShrinkErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit
  %i.an = load i64, ptr %i.al, align 8, !noalias !120, !noundef !5 ; 18 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !120
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.ap = add i64 %i.an, -64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ao, i8 0, i64 %i.ap, i1 false), !noalias !120
  %.not.i = icmp slt i64 %i.an, 0
  br i1 %.not.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit.split.us, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit.split, !prof !13

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit.split.us: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  br label %.split

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit.split: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit
  %i.aq = icmp eq i64 %i.an, 0
  br i1 %i.aq, label %.split122.us.loopexit, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit.split.split

.preheader.split127.split.preheader:              ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit72
  %umax = call i64 @llvm.smax.i64(i64 %i.an, i64 64) ; 2 uses
  br label %.preheader.split127.split

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit.split.split: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit.split, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit72
  %.sroa.07.0119 = phi i64 [ %i.ar, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit72 ], [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit.split ] ; 3 uses
  %i.ar = add nuw nsw i64 %.sroa.07.0119, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !123
  %i.as = call noundef ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.an, i64 noundef range(i64 1, -9223372036854775807) 1) #17, !noalias !123 ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.split, label %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit.thread106

.split138.us:                                     ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %i.an, ptr %i.j, align 8
  %i.au = icmp eq i64 %i.an, 1024
  br i1 %i.au, label %bb.e, label %bb.f, !prof !4

.preheader.split127.split:                        ; preds = %.preheader.split127.split.preheader, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit
  %.sroa.025.0126 = phi i64 [ %i.av, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit ], [ 64, %.preheader.split127.split.preheader ] ; 3 uses
  %i.av = add nuw nsw i64 %.sroa.025.0126, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !124
  %i.aw = call noundef ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.an, i64 noundef range(i64 1, -9223372036854775807) 1) #17, !noalias !124 ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.split129, label %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit71.thread100

bb.e:                                             ; preds = %.split138.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

bb.f:                                             ; preds = %.split138.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ay = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #17 ; 2 uses
  %spec.select = select i1 %i.ay, ptr @19, ptr inttoptr (i64 1 to ptr)
  %spec.select184 = select i1 %i.ay, i64 9, i64 0
  store ptr %spec.select, ptr %i.i, align 8, !captures !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %spec.select184, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 1024, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 1024, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ba = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #17 ; 2 uses
  %.sink165 = select i1 %i.ba, ptr @20, ptr inttoptr (i64 1 to ptr)
  %.sink164 = select i1 %i.ba, i64 4, i64 0
  store ptr %.sink165, ptr %i.f, align 8, !captures !15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink164, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.i, ptr %i.e, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common, ptr %.sroa.446.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.h, ptr %i.bc, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.450.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.j, ptr %i.bd, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.454.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.g, ptr %i.be, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.458.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.f, ptr %i.bf, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common, ptr %.sroa.462.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @21, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #18
  unreachable

.split129:                                        ; preds = %.preheader.split127.split
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.an) #19
  unreachable

_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit71.thread100: ; preds = %.preheader.split127.split
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr nonnull align 1 %i.aj, i64 %i.an, i1 false)
  %exitcond158.not = icmp eq i64 %.sroa.025.0126, %umax
  br i1 %exitcond158.not, label %.split133.us, label %bb.g

bb.g:                                             ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit71.thread100
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.025.0126 ; 2 uses
  store ptr %i.bg, ptr %i.o, align 8, !captures !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr @36, ptr %i.n, align 8, !captures !15
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !5
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit, label %.split136.us, !prof !4

.split133.us:                                     ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit71.thread100
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #18
  unreachable

.split136.us:                                     ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bj = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #17 ; 2 uses
  %spec.select185 = select i1 %i.bj, ptr @19, ptr inttoptr (i64 1 to ptr)
  %spec.select186 = select i1 %i.bj, i64 9, i64 0
  store ptr %spec.select185, ptr %i.m, align 8, !captures !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %spec.select186, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bl = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #17 ; 2 uses
  %.sink169 = select i1 %i.bl, ptr @20, ptr inttoptr (i64 1 to ptr)
  %.sink168 = select i1 %i.bl, i64 4, i64 0
  store ptr %.sink169, ptr %i.l, align 8, !captures !15
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sink168, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common, ptr %.sroa.430.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.o, ptr %i.bn, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common, ptr %.sroa.434.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.n, ptr %i.bo, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common, ptr %.sroa.438.0..sroa_idx, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.l, ptr %i.bp, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common, ptr %.sroa.442.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @37, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #18
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 1) #17, !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %exitcond159.not = icmp eq i64 %i.av, 128
  br i1 %exitcond159.not, label %.split138.us, label %.preheader.split127.split

.split:                                           ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit.split.split, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit.split.us
  %.us-phi = phi i64 [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit.split.us ], [ 1, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit.split.split ]
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %.us-phi, i64 %i.an) #19
  unreachable

_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit.thread106: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit.split.split
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull align 1 %i.aj, i64 %i.an, i1 false)
  %exitcond.not = icmp eq i64 %.sroa.07.0119, %i.an
  br i1 %exitcond.not, label %.split122.us, label %bb.h

bb.h:                                             ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit.thread106
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.07.0119 ; 2 uses
  store ptr %i.bq, ptr %i.t, align 8, !captures !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr @40, ptr %i.s, align 8, !captures !15
  %i.br = load i8, ptr %i.bq, align 1, !noundef !5
  %i.bs = icmp eq i8 %i.br, -1
  br i1 %i.bs, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit72, label %.split125.us, !prof !4

.split122.us.loopexit:                            ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  br label %.split122.us

.split122.us:                                     ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit.thread106, %.split122.us.loopexit
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #18
  unreachable

.split125.us:                                     ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bt = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #17 ; 2 uses
  %spec.select187 = select i1 %i.bt, ptr @19, ptr inttoptr (i64 1 to ptr)
  %spec.select188 = select i1 %i.bt, i64 9, i64 0
  store ptr %spec.select187, ptr %i.r, align 8, !captures !15
  %i.bu = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select188, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bv = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #17 ; 2 uses
  %.sink173 = select i1 %i.bv, ptr @20, ptr inttoptr (i64 1 to ptr)
  %.sink172 = select i1 %i.bv, i64 4, i64 0
  store ptr %.sink173, ptr %i.q, align 8, !captures !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sink172, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.r, ptr %i.p, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common, ptr %.sroa.412.0..sroa_idx, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.t, ptr %i.bx, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common, ptr %.sroa.416.0..sroa_idx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.s, ptr %i.by, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.q, ptr %i.bz, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @41, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #18
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common.exit72: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
end_hunk_0
begin_hunk_1_@_RNvYINtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14pool_allocator22FixedSizePoolAllocatorKj200_ENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator9Allocator11grow_zeroedCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common:bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 0, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvYNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator15allocate_zeroedCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 9)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) #17
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.e, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.b, i8 0, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef range(i8 0, 6), ptr noundef nonnull, ptr noundef nonnull, ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #9

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs_NtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocatorNtB4_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull align 8, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull align 8, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsicpYtSlSgpD_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #11

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory19one_chunk_allocatorNtB4_17OneChunkAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull align 8, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory19one_chunk_allocatorNtB5_17OneChunkAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator9Allocator6shrink(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, -9223372036854775807), i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory19one_chunk_allocatorNtB5_17OneChunkAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator9Allocator4grow(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, -9223372036854775807), i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs8Chj7Szqq0n_4core4sync6atomicINtB5_6AtomicbENtNtB9_3fmt5Debug3fmt(ptr noundef nonnull, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsX_NtNtCs8Chj7Szqq0n_4core4sync6atomicINtB5_6AtomicyENtNtB9_3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs8Chj7Szqq0n_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs11_NtNtCs8Chj7Szqq0n_4core4sync6atomicINtB6_6AtomiciENtNtBa_3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14pool_allocatorNtB4_13PoolAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull align 8, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14pool_allocatorNtB5_13PoolAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator9Allocator4grow(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, -9223372036854775807), i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCs8Chj7Szqq0n_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCs8Chj7Szqq0n_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs8Chj7Szqq0n_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCs8Chj7Szqq0n_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCs8Chj7Szqq0n_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCs8Chj7Szqq0n_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCs8Chj7Szqq0n_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs8Chj7Szqq0n_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs8Chj7Szqq0n_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs0_CsfYvvZIldtH5_9inventoryNtB5_8Registry6submit(ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { noinline noreturn nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { inlinehint nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (0ed41eb41 2026-09-04)"}
!4 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!5 = !{}
!6 = !{i64 8}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{i8 0, i8 5}
!9 = !{i64 0, i64 -9223372036854775808}
!10 = !{i64 0, i64 2}
!11 = !{i64 0, i64 -9223372036854775807}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2002, i32 2000}
!14 = !{i8 0, i8 4}
!15 = !{!"address", !"read_provenance"}
!16 = distinct !{!16, !"_RINvXs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB6_14UniqueIndexSetNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!17 = distinct !{!17, !16, !"_RINvXs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB6_14UniqueIndexSetNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!18 = distinct !{!18, !7}
!19 = !{!17}
!20 = distinct !{!20, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!21 = distinct !{!21, !20, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!22 = !{!21}
!23 = distinct !{!23, !"_RNvMs4_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechE11extend_withCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!24 = distinct !{!24, !23, !"_RNvMs4_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechE11extend_withCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!25 = distinct !{!25, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!26 = distinct !{!26, !25, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!27 = !{!24}
!28 = !{!26, !24}
!29 = distinct !{!29, !33, !34}
!30 = distinct !{!30, !"_RINvXs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB6_14UniqueIndexSetNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorECsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!31 = distinct !{!31, !30, !"_RINvXs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB6_14UniqueIndexSetNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorECsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!32 = distinct !{!32, !7}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{!31}
!36 = distinct !{!36, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!37 = distinct !{!37, !36, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!38 = !{!37}
!39 = distinct !{!39, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator"}
!40 = distinct !{!40, !39, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator: argument 0"}
!41 = distinct !{!41, !39, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator: argument 1"}
!42 = distinct !{!42, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!43 = distinct !{!43, !42, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!44 = distinct !{!44, !42, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 1"}
!45 = distinct !{!45, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator21AllocationShrinkErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!46 = distinct !{!46, !45, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator21AllocationShrinkErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!47 = distinct !{!47, !45, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator21AllocationShrinkErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 1"}
!48 = distinct !{!48, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!49 = distinct !{!49, !48, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!50 = distinct !{!50, !48, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 1"}
!51 = !{!40}
!52 = !{!41}
!53 = !{!43}
!54 = !{!44}
!55 = !{!43, !44}
!56 = !{!46}
!57 = !{!47}
!58 = !{!46, !47}
!59 = !{!49}
!60 = !{!50}
!61 = !{!49, !50}
!62 = distinct !{!62, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator"}
!63 = distinct !{!63, !62, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator: argument 0"}
!64 = distinct !{!64, !62, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator: argument 1"}
!65 = distinct !{!65, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!66 = distinct !{!66, !65, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!67 = distinct !{!67, !65, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 1"}
!68 = distinct !{!68, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator21AllocationShrinkErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!69 = distinct !{!69, !68, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator21AllocationShrinkErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!70 = distinct !{!70, !68, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator21AllocationShrinkErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 1"}
!71 = !{!63}
!72 = !{!64}
!73 = !{!66}
!74 = !{!67}
!75 = !{!66, !67}
!76 = !{!69}
!77 = !{!70}
!78 = !{!69, !70}
!79 = distinct !{!79, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator"}
!80 = distinct !{!80, !79, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator: argument 0"}
!81 = distinct !{!81, !79, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator: argument 1"}
!82 = distinct !{!82, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!83 = distinct !{!83, !82, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!84 = distinct !{!84, !82, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 1"}
!85 = !{!80}
!86 = !{!81}
!87 = !{!83}
!88 = !{!84}
!89 = !{!83, !84}
!90 = distinct !{!90, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator"}
!91 = distinct !{!91, !90, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator: argument 0"}
!92 = distinct !{!92, !90, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator: argument 1"}
!93 = distinct !{!93, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!94 = distinct !{!94, !93, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!95 = distinct !{!95, !93, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 1"}
!96 = distinct !{!96, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator21AllocationShrinkErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!97 = distinct !{!97, !96, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator21AllocationShrinkErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!98 = distinct !{!98, !96, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator21AllocationShrinkErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 1"}
!99 = distinct !{!99, !"_RNvYNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory19one_chunk_allocator17OneChunkAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator9Allocator11grow_zeroedCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!100 = distinct !{!100, !99, !"_RNvYNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory19one_chunk_allocator17OneChunkAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator9Allocator11grow_zeroedCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!101 = distinct !{!101, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!102 = distinct !{!102, !101, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 1"}
!103 = distinct !{!103, !101, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator19AllocationGrowErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!104 = distinct !{!104, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!105 = distinct !{!105, !104, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!106 = distinct !{!106, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!107 = distinct !{!107, !106, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!108 = distinct !{!108, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!109 = distinct !{!109, !108, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!110 = distinct !{!110, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!111 = distinct !{!111, !110, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!112 = !{!91}
!113 = !{!92}
!114 = !{!94}
!115 = !{!95}
!116 = !{!94, !95}
!117 = !{!97}
!118 = !{!98}
!119 = !{!97, !98}
!120 = !{!100}
!121 = !{!103, !102}
!122 = !{!103}
!123 = !{!105}
!124 = !{!107}
!125 = !{!109}
!126 = !{!111}
!127 = distinct !{!127, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator"}
!128 = distinct !{!128, !127, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator: argument 0"}
!129 = distinct !{!129, !127, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator: argument 1"}
!130 = distinct !{!130, !"_RNvYNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory19one_chunk_allocator17OneChunkAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator15allocate_zeroedCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!131 = distinct !{!131, !130, !"_RNvYNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory19one_chunk_allocator17OneChunkAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator15allocate_zeroedCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!132 = distinct !{!132, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!133 = distinct !{!133, !132, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 1"}
!134 = distinct !{!134, !132, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!135 = distinct !{!135, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!136 = distinct !{!136, !135, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!137 = distinct !{!137, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!138 = distinct !{!138, !137, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!139 = !{!128}
!140 = !{!129}
!141 = !{!131}
!142 = !{!134, !133}
!143 = !{!134}
!144 = !{!136}
!145 = !{!138}
!146 = distinct !{!146, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator"}
!147 = distinct !{!147, !146, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator: argument 0"}
!148 = distinct !{!148, !146, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator: argument 1"}
!149 = distinct !{!149, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!150 = distinct !{!150, !149, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!151 = distinct !{!151, !149, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 1"}
!152 = !{!147}
!153 = !{!148}
!154 = !{!150}
!155 = !{!151}
!156 = !{!150, !151}
!157 = distinct !{!157, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator"}
!158 = distinct !{!158, !157, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator: argument 0"}
!159 = distinct !{!159, !157, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator: argument 1"}
!160 = distinct !{!160, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!161 = distinct !{!161, !160, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!162 = distinct !{!162, !160, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 1"}
!163 = distinct !{!163, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator21AllocationShrinkErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common"}
!164 = distinct !{!164, !163, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator21AllocationShrinkErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 0"}
!165 = distinct !{!165, !163, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtB4_3ptr8non_null7NonNullShENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator21AllocationShrinkErrorE6expectCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common: argument 1"}
!166 = !{!158}
!167 = !{!159}
!168 = !{!161}
!169 = !{!162}
!170 = !{!161, !162}
!171 = !{!164}
!172 = !{!165}
!173 = !{!164, !165}
!174 = distinct !{!174, !"_RNvMNtCsbLYH4FncSaO_31iceoryx2_bb_memory_tests_common25one_chunk_allocator_testsNtB2_11TestFixture26create_one_chunk_allocator"}
end_hunk_1
