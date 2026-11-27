Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_cal-d83c44cc8e782b8c.iceoryx2_cal.54a17cfe6193fb44-cgu.05?download=true
inline.NumInlined: 51
inline.NumDeleted: 27
begin_hunk_0_@_RNvMs4_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsNtB5_20SharedManagementData4init:bb.a
  store i64 0, ptr %i.aq, align 8
  %i.aw = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details14SegmentDetailsEINtB7_6VectorB1o_E4pushB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.o) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.not113 = icmp eq i8 %i.aw, 2
  br i1 %.not113, label %bb.h, label %bb.i, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.y, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details14SegmentDetailsEINtB7_6VectorB1o_E12as_mut_sliceB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay) #12 ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 1      ; 2 uses
  %i.bb = load i64, ptr %i.p, align 8, !noundef !5 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  br i1 %i.bc, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.y, ptr %i.n, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details20SharedManagementDataNtB6_5Debug3fmtBE_, ptr %.sroa.473.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.x, ptr %i.m, align 8
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.477.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @1, ptr noundef nonnull %i.n, ptr noundef nonnull @20, ptr noundef nonnull %i.m) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.y, ptr %i.l, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details20SharedManagementDataNtB6_5Debug3fmtBE_, ptr %.sroa.481.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.x, ptr %i.bd, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.485.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @21, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.be = extractvalue { ptr, i64 } %i.az, 0
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %i.bb
  %i.bg = tail call noundef i8 @_RINvXs1_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection15used_chunk_list7detailsINtB6_13UsedChunkListINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic10AtomicBoolEENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEBc_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 %1) #12
  %.not114 = icmp eq i8 %i.bg, -1
  br i1 %.not114, label %bb.m, label %bb.l, !prof !15

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.bb, i64 noundef %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #13
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.y, ptr %i.k, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details20SharedManagementDataNtB6_5Debug3fmtBE_, ptr %.sroa.489.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.x, ptr %i.j, align 8
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.493.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.p, ptr %i.bh, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.497.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @1, ptr noundef nonnull %i.k, ptr noundef nonnull @18, ptr noundef nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.y, ptr %i.i, align 8
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details20SharedManagementDataNtB6_5Debug3fmtBE_, ptr %.sroa.4101.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.x, ptr %i.bi, align 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.4105.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.p, ptr %i.bj, align 8
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4109.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #13
  unreachable

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %exitcond143.not = icmp eq i64 %i.as, %i.ap
  br i1 %exitcond143.not, label %._crit_edge128, label %bb.g

bb.n:                                             ; preds = %bb.d
  %i.bk = extractvalue { ptr, i64 } %i.ak, 0
  %i.bl = add nuw i64 %.sroa.019.0124, 1          ; 2 uses
  %i.bm = getelementptr inbounds nuw [88 x i8], ptr %i.bk, i64 %.sroa.019.0124 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.bm, ptr %i.h, align 8, !noalias !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16
  store ptr @4, ptr %i.g, align 8, !noalias !16, !captures !6
  store i64 28, ptr %i.ae, align 8, !noalias !16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = tail call noundef i8 @_RINvXs1_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queue7detailsINtB6_27SafelyOverflowingIndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  %.not.i = icmp eq i8 %i.bo, -1
  br i1 %.not.i, label %bb.p, label %bb.o, !prof !15

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16
  store ptr %i.h, ptr %i.f, align 8, !noalias !16
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelNtB6_5Debug3fmtBE_, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16
  store ptr %i.g, ptr %i.e, align 8, !noalias !16
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !16
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @1, ptr noundef nonnull %i.f, ptr noundef nonnull @10, ptr noundef nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16
  store ptr %i.h, ptr %i.d, align 8, !noalias !16
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelNtB6_5Debug3fmtBE_, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.g, ptr %i.bp, align 8, !noalias !16
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !16
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #13
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = tail call noundef i8 @_RINvXs1_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc11index_queue7detailsINtB6_10IndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  %.not31.i = icmp eq i8 %i.br, -1
  br i1 %.not31.i, label %_RNvMs3_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsNtB5_7Channel4init.exit, label %bb.q, !prof !15

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16
  store ptr %i.h, ptr %i.c, align 8, !noalias !16
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelNtB6_5Debug3fmtBE_, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16
  store ptr %i.g, ptr %i.b, align 8, !noalias !16
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !16
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @1, ptr noundef nonnull %i.c, ptr noundef nonnull @7, ptr noundef nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16
  store ptr %i.h, ptr %i.a, align 8, !noalias !16
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelNtB6_5Debug3fmtBE_, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.bs, align 8, !noalias !16
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !16
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #13
  unreachable

_RNvMs3_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsNtB5_7Channel4init.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %exitcond.not = icmp eq i64 %i.bl, %i.ad
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.r:                                             ; preds = %bb.d
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.019.0124, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14bump_allocatorNtB5_13BumpAllocatorNtB7_12ShmAllocator10deallocate(ptr noundef nonnull align 8 %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = add i64 %i.c, %i.a                       ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = icmp ne i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.f)
  tail call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator10deallocate(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef %3) #12
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i64 @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14bump_allocatorNtB5_13BumpAllocatorNtB7_12ShmAllocator11resize_hint(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2, i8 noundef range(i8 0, 3) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %i.c = tail call noundef i64 @_RNvMs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB4_13BumpAllocator10free_space(ptr noundef nonnull align 8 %0) #12
  %i.d = icmp ult i64 %2, %i.c
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %3, label %default.unreachable4 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.f
  ]

default.unreachable4:                             ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %i.b, %2
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = add i64 %i.b, %2
  %4 = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 1) ; 2 uses
  %5 = icmp sgt i64 %4, -1
  br i1 %5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %4, i1 false)
  %i.h = sub nuw nsw i64 64, %i.g
  %i.i = shl nuw i64 1, %i.h
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e, %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ %i.b, %bb.a ], [ %i.e, %bb.c ], [ %i.i, %bb.e ], [ %i.b, %bb.b ], [ 0, %bb.d ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14bump_allocatorNtB5_13BumpAllocatorNtB7_12ShmAllocator8allocate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %1, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @30, ptr %i.h, align 8, !captures !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 25, ptr %i.j, align 8
  %i.k = icmp ugt i64 %2, 8
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) #12
  %i.l = load ptr, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14bump_allocator13BumpAllocatorNtB6_5Debug3fmtBC_, ptr %.sroa.46.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %2, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 8, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.d, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.410.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %i.m, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.e, ptr %i.n, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.g, ptr noundef nonnull @32, ptr noundef nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 -1, ptr %i.o, align 1
  store i8 1, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %i.l to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.q = load ptr, ptr %i.i, align 8, !nonnull !5, !align !7, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i64, ptr %i.r, align 8, !noundef !5
  %i.t = sub i64 %i.p, %i.s
  %i.u = shl i64 %i.t, 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8
  store i8 0, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.b, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14bump_allocator13BumpAllocatorNtB6_5Debug3fmtBC_, ptr %.sroa.422.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.426.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.b, ptr noundef nonnull @31, ptr noundef nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load i8, ptr %i.w, align 8, !range !17, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.x, ptr %i.y, align 1
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs17_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtB6_4TimeNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 10, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1e_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix9semaphoreNtB6_23SemaphoreTimedWaitErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !range !18, !noundef !5 ; 3 uses
  %i.f = icmp ne i32 %i.e, 1000000005
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i32 %i.e, -1000000003
  %i.h = icmp sgt i32 %i.e, 1000000002
  %narrow = select i1 %i.h, i32 %i.g, i32 2
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 30) #12
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 18, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 17, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @59) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.l, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRAyj10_NtB6_5Debug3fmtCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtCs8Chj7Szqq0n_4core5arrayAyj10_NtNtB7_3fmt5Debug3fmtCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #12
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix13adaptive_wait17AdaptiveWaitErrorNtB6_5Debug3fmtCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
end_hunk_0
