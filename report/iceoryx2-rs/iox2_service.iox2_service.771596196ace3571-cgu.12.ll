Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iox2_service.iox2_service.771596196ace3571-cgu.12?download=true
inline.NumInlined: 556
inline.NumDeleted: 217
begin_hunk_0_@_RNvXsc_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memoryNtB5_25SharedMemoryCreationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt:bb.a

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.ad, ptr %i.a, align 8
  %i.ae = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @221, i64 noundef 26, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @220) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.b ], [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.n, %bb.h ], [ %i.o, %bb.i ], [ %i.p, %bb.j ], [ %i.q, %bb.k ], [ %i.r, %bb.l ], [ %i.s, %bb.m ], [ %i.u, %bb.n ], [ %i.w, %bb.o ], [ %i.y, %bb.p ], [ %i.aa, %bb.q ], [ %i.ac, %bb.r ], [ %i.ae, %bb.s ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtB5_9TimeErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !11, !noundef !5
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @222, i64 noundef 23) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_6SenderINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_14ZeroCopySender7reclaimCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @242, ptr %i.f, align 8, !captures !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 24, ptr %i.h, align 8
  %i.i = tail call noundef nonnull ptr @_RNvMs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memoryNtB5_12SharedMemory12base_address(ptr noundef nonnull align 8 %0) #17 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.k = getelementptr i8, ptr %i.i, i64 32
  %.val.i = load i64, ptr %i.k, align 8, !noundef !5 ; 4 uses
  %i.l = load atomic i64, ptr %i.j monotonic, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %.val.i, %i.n
  br i1 %.not.i, label %bb.b, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service.exit, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @313) #16
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.a
  %i.o = icmp ult i64 %1, %.val.i
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service.exit
  %i.p = ptrtoint ptr %i.j to i64
  %i.q = add i64 %i.l, %i.p
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw [88 x i8], ptr %i.r, i64 %1 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.v = load atomic i64, ptr %i.u monotonic, align 8 ; 3 uses
  %i.w = load atomic i64, ptr %i.t acquire, align 8
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc11index_queue7detailsINtB5_10IndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE3popCsadSKrpJ73hd_12iox2_service.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  %i.z = load atomic i64, ptr %i.y monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #16
  unreachable

bb.f:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service.exit
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %.val.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #16
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = add i64 %i.z, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = urem i64 %i.v, %i.ab
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5 ; 3 uses
  %i.aj = add i64 %i.v, 1
  store atomic i64 %i.aj, ptr %i.u release, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.ai, ptr %i.e, align 8
  %i.ak = and i64 %i.ai, 255                      ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.am = load i64, ptr %i.al, align 8, !noundef !5
  %.not = icmp ult i64 %i.ak, %i.am
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = tail call noundef nonnull align 8 ptr @_RNvMs4_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsNtB5_20SharedManagementData19get_segment_details(ptr noundef nonnull align 8 %i.j, i64 noundef %i.ak, i64 noundef %1) #17 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load atomic i64, ptr %i.ao monotonic, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details6SenderINtNtNtBF_15dynamic_storage19posix_shared_memory7StorageNtBz_20SharedManagementDataEENtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.48.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.412.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.ar, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offsetNtB5_13PointerOffsetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @3, ptr noundef nonnull %i.d, ptr noundef nonnull @246, ptr noundef nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc11index_queue7detailsINtB5_10IndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE3popCsadSKrpJ73hd_12iox2_service.exit.sink.split

bb.j:                                             ; preds = %bb.h
  %i.as = lshr i64 %i.ai, 8
  %i.at = udiv i64 %i.as, %i.ap
  %i.au = ptrtoint ptr %i.an to i64
  %i.av = load atomic i64, ptr %i.an monotonic, align 8
  %i.aw = add i64 %i.av, %i.au
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.at
  %i.az = atomicrmw xchg ptr %i.ay, i8 0 monotonic, align 1
  %.not32 = icmp eq i8 %i.az, 0
  br i1 %.not32, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @244) #16
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details6SenderINtNtNtBF_15dynamic_storage19posix_shared_memory7StorageNtBz_20SharedManagementDataEENtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.420.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.424.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.ba, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offsetNtB5_13PointerOffsetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.428.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @3, ptr noundef nonnull %i.b, ptr noundef nonnull @245, ptr noundef nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc11index_queue7detailsINtB5_10IndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE3popCsadSKrpJ73hd_12iox2_service.exit.sink.split

bb.m:                                             ; preds = %bb.j
  %i.bb = load i64, ptr %i.e, align 8, !noundef !5
  br label %_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc11index_queue7detailsINtB5_10IndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE3popCsadSKrpJ73hd_12iox2_service.exit.sink.split

_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc11index_queue7detailsINtB5_10IndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE3popCsadSKrpJ73hd_12iox2_service.exit.sink.split: ; preds = %bb.i, %bb.l, %bb.m
  %.sroa.5.2.ph = phi i64 [ %i.bb, %bb.m ], [ undef, %bb.l ], [ undef, %bb.i ]
  %.sroa.02.2.ph = phi i64 [ 1, %bb.m ], [ 2, %bb.l ], [ 2, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc11index_queue7detailsINtB5_10IndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE3popCsadSKrpJ73hd_12iox2_service.exit

_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc11index_queue7detailsINtB5_10IndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE3popCsadSKrpJ73hd_12iox2_service.exit: ; preds = %_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc11index_queue7detailsINtB5_10IndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE3popCsadSKrpJ73hd_12iox2_service.exit.sink.split, %bb.c
  %.sroa.5.2 = phi i64 [ undef, %bb.c ], [ %.sroa.5.2.ph, %_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc11index_queue7detailsINtB5_10IndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE3popCsadSKrpJ73hd_12iox2_service.exit.sink.split ]
  %.sroa.02.2 = phi i64 [ 0, %bb.c ], [ %.sroa.02.2.ph, %_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc11index_queue7detailsINtB5_10IndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE3popCsadSKrpJ73hd_12iox2_service.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bc = insertvalue { i64, i64 } poison, i64 %.sroa.02.2, 0
  %i.bd = insertvalue { i64, i64 } %i.bc, i64 %.sroa.5.2, 1
  ret { i64, i64 } %i.bd
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_6SenderINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_14ZeroCopySender8try_sendCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @247, ptr %i.f, align 8, !captures !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 21, ptr %i.h, align 8
  %i.i = tail call noundef nonnull ptr @_RNvMs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memoryNtB5_12SharedMemory12base_address(ptr noundef nonnull align 8 %1) #17 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 89
  %i.l = load i8, ptr %i.k, align 1, !range !16, !noundef !5
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.i, i64 32
  %.val.i = load i64, ptr %i.n, align 8, !noundef !5 ; 4 uses
  %i.o = load atomic i64, ptr %i.j monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %.val.i, %i.q
  br i1 %.not.i, label %bb.c, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service.exit, !prof !17

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val.i, i64 noundef %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @313) #16
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.b
  %i.r = icmp ult i64 %4, %.val.i
  br i1 %i.r, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.e, %bb.a
  %i.s = and i64 %2, 255
  %i.t = tail call noundef nonnull align 8 ptr @_RNvMs4_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsNtB5_20SharedManagementData19get_segment_details(ptr noundef nonnull align 8 %i.j, i64 noundef %i.s, i64 noundef %4) #17 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store atomic i64 %3, ptr %i.u monotonic, align 8
  %i.v = icmp eq i64 %3, 0
  br i1 %i.v, label %bb.j, label %bb.h

bb.e:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service.exit
  %i.w = ptrtoint ptr %i.j to i64
  %i.x = add i64 %i.o, %i.w
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw [88 x i8], ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = tail call { i64, i64 } @_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queue7detailsINtB5_27SafelyOverflowingIndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE31acquire_read_and_write_positionCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.aa) #17 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = extractvalue { i64, i64 } %i.ab, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !noundef !5
  %i.ag = add i64 %i.ad, %i.af
  %i.ah = icmp eq i64 %i.ac, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.d

bb.f:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service.exit
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %4, i64 noundef %.val.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @248) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details6SenderINtNtNtBF_15dynamic_storage19posix_shared_memory7StorageNtBz_20SharedManagementDataEENtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.47.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.411.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @3, ptr noundef nonnull %i.e, ptr noundef nonnull @249, ptr noundef nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ai, align 8
  store i64 2, ptr %0, align 8
  br label %bb.s

bb.h:                                             ; preds = %bb.d
  %i.aj = lshr i64 %2, 8
  %i.ak = udiv i64 %i.aj, %3
  %i.al = ptrtoint ptr %i.t to i64
  %i.am = load atomic i64, ptr %i.t monotonic, align 8
  %i.an = add i64 %i.am, %i.al
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ak
  %i.aq = atomicrmw xchg ptr %i.ap, i8 1 monotonic, align 1 ; 0 uses
  %i.ar = getelementptr i8, ptr %i.i, i64 32
  %.val.i28 = load i64, ptr %i.ar, align 8, !noundef !5 ; 4 uses
  %i.as = load atomic i64, ptr %i.j monotonic, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.au = load i64, ptr %i.at, align 8, !noundef !5 ; 2 uses
  %.not.i29 = icmp ugt i64 %.val.i28, %i.au
  br i1 %.not.i29, label %bb.i, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service.exit30, !prof !17

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val.i28, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @313) #16
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service.exit30: ; preds = %bb.h
  %i.av = icmp ult i64 %4, %.val.i28
  br i1 %i.av, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @250) #16
  unreachable

bb.k:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service.exit30
  %i.aw = ptrtoint ptr %i.j to i64
  %i.ax = add i64 %i.as, %i.aw
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw [88 x i8], ptr %i.ay, i64 %4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = tail call { i64, i64 } @_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queue7detailsINtB5_27SafelyOverflowingIndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE4pushCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.ba, i64 noundef %2) #17 ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.bb, 0
  %i.bd = trunc nuw i64 %i.bc to i1
  br i1 %i.bd, label %bb.m, label %bb.n

bb.l:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service.exit30
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %4, i64 noundef %.val.i28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @251) #16
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.be = extractvalue { i64, i64 } %i.bb, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.be, ptr %i.c, align 8
  %i.bf = and i64 %i.be, 255
  %i.bg = tail call noundef nonnull align 8 ptr @_RNvMs4_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsNtB5_20SharedManagementData19get_segment_details(ptr noundef nonnull align 8 %i.j, i64 noundef %i.bf, i64 noundef %4) #17 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load atomic i64, ptr %i.bh monotonic, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.k
  store i64 0, ptr %0, align 8
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.bk = lshr i64 %i.be, 8
  %i.bl = udiv i64 %i.bk, %i.bi
  %i.bm = ptrtoint ptr %i.bg to i64
  %i.bn = load atomic i64, ptr %i.bg monotonic, align 8
  %i.bo = add i64 %i.bn, %i.bm
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bl
  %i.br = atomicrmw xchg ptr %i.bq, i8 0 monotonic, align 1
  %.not = icmp eq i8 %i.br, 0
  br i1 %.not, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #16
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details6SenderINtNtNtBF_15dynamic_storage19posix_shared_memory7StorageNtBz_20SharedManagementDataEENtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.415.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.419.0..sroa_idx, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.bs, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offsetNtB5_13PointerOffsetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @3, ptr noundef nonnull %i.b, ptr noundef nonnull @253, ptr noundef nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bt, align 8
  store i64 2, ptr %0, align 8
  br label %.sink.split

bb.r:                                             ; preds = %bb.o
  store i64 1, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.be, ptr %i.bu, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.n, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_13ConfigurationINtNtNtNtB9_13shared_memory6common7details16AllocatorDetailsNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @257, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @258, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @259, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 4, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @254, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 5, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @263, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @262, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @256) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_13ConfigurationNtNtNtCsg6ZEkMtNi4J_8iceoryx24node25global_management_segment5StateENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @257, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @258, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @259, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 4, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @254, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 5, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @264, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @262, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @256) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_13ConfigurationNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @257, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @258, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @259, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 4, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @254, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 5, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @265, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @262, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @256) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_13ConfigurationNtNtNtNtB9_20zero_copy_connection6common7details20SharedManagementDataENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @257, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @258, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @259, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 4, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @254, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 5, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @266, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @262, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @256) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtCs7gufeB8TUC6_12iceoryx2_cal13named_conceptNtB5_23NamedConceptRemoveErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !16, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 13, i64 23
  %.1 = select i1 %i.b, ptr @85, ptr @83
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.) #17
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix13adaptive_waitNtB5_17AdaptiveWaitErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !range !927, !noundef !5
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @271, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @270) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @269, i64 noundef 14, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @268) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtNtB9_20zero_copy_connection6common7details20SharedManagementDataENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 872
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @273, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @274, i64 noundef 3, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @272, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @231, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCs8Chj7Szqq0n_4core3fmtbNtB5_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCs8Chj7Szqq0n_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #17
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsf_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(1160) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvMs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memoryNtB5_12SharedMemory12base_address(ptr noundef nonnull align 8 %0) #17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call noundef i8 @_RNvMs4_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsNtB5_20SharedManagementData12remove_state(ptr noundef nonnull align 8 %i.b, i8 noundef 2) #17
  %i.d = icmp eq i8 %i.c, -128
  br i1 %i.d, label %bb.b, label %_RINvNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details21cleanup_shared_memoryINtNtNtB8_15dynamic_storage19posix_shared_memory7StorageNtB2_20SharedManagementDataEECsadSKrpJ73hd_12iox2_service.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memoryNtB5_12SharedMemory17acquire_ownership(ptr noundef nonnull align 8 %0) #17
  br label %_RINvNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details21cleanup_shared_memoryINtNtNtB8_15dynamic_storage19posix_shared_memory7StorageNtB2_20SharedManagementDataEECsadSKrpJ73hd_12iox2_service.exit

_RINvNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details21cleanup_shared_memoryINtNtNtB8_15dynamic_storage19posix_shared_memory7StorageNtB2_20SharedManagementDataEECsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails18number_of_channelsCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvMs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memoryNtB5_12SharedMemory12base_address(ptr noundef nonnull align 8 %0) #17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  ret i64 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails20max_borrowed_samplesCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvMs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memoryNtB5_12SharedMemory12base_address(ptr noundef nonnull align 8 %0) #17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  ret i64 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver7receiveCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %1
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  %i.m = tail call noundef nonnull ptr @_RNvMs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memoryNtB5_12SharedMemory12base_address(ptr noundef nonnull align 8 %0) #17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  %.not = icmp ult i64 %i.l, %i.o
  br i1 %.not, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull ptr @_RNvMs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memoryNtB5_12SharedMemory12base_address(ptr noundef nonnull align 8 %0) #17 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = getelementptr i8, ptr %i.p, i64 32
  %.val.i = load i64, ptr %i.r, align 8, !noundef !5 ; 4 uses
  %i.s = load atomic i64, ptr %i.q monotonic, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.u = load i64, ptr %i.t, align 8, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %.val.i, %i.u
  br i1 %.not.i, label %bb.e, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service.exit, !prof !17

bb.e:                                             ; preds = %bb.d
end_hunk_0
