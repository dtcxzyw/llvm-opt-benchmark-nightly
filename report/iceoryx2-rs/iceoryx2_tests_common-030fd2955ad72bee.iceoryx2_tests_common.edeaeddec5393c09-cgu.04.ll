Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_tests_common-030fd2955ad72bee.iceoryx2_tests_common.edeaeddec5393c09-cgu.04?download=true
inline.NumInlined: 461
inline.NumDeleted: 187
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsb_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_6SenderINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails11buffer_sizeCskqqG2IB5b71_21iceoryx2_tests_common:bb.a
  %.not.i = icmp ugt i64 %.val.i, %i.e
  br i1 %.not.i, label %bb.b, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val.i, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @325) #15
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.a
  %.not = icmp eq i64 %.val.i, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = add i64 %i.c, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  ret i64 %i.j

bb.d:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @233) #15
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomicNtB5_9AtomicU64NtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @236, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @235) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtB5_9TimeErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !5, !noundef !4
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @239, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @238) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 23) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_6SenderINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_14ZeroCopySender7reclaimCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #0 {
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
  store ptr @244, ptr %i.f, align 8, !captures !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 24, ptr %i.h, align 8
  %i.i = tail call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtNtB9_20zero_copy_connection6common7details20SharedManagementDataEINtB7_14DynamicStorageB1r_E3getCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %0) #16 ; 6 uses
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %.val.i = load i64, ptr %i.j, align 8, !noundef !4 ; 4 uses
  %i.k = load atomic i64, ptr %i.i monotonic, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %.not.i = icmp ugt i64 %.val.i, %i.m
  br i1 %.not.i, label %bb.b, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val.i, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @325) #15
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.a
  %i.n = icmp ult i64 %1, %.val.i
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = add i64 %i.k, %i.o
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw [88 x i8], ptr %i.q, i64 %1
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = tail call { i64, i64 } @_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc11index_queue7detailsINtB5_10IndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE3popCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %i.s) #16 ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %i.v = extractvalue { i64, i64 } %i.t, 1        ; 3 uses
  %i.w = trunc nuw i64 %i.u to i1
  br i1 %i.w, label %bb.e, label %bb.l

bb.d:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %.val.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.v, ptr %i.e, align 8
  %i.x = and i64 %i.v, 255                        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.z = load i64, ptr %i.y, align 8, !noundef !4
  %.not = icmp ult i64 %i.x, %i.z
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call noundef nonnull align 8 ptr @_RNvMs4_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsNtB5_20SharedManagementData19get_segment_details(ptr noundef nonnull align 8 %i.i, i64 noundef %i.x, i64 noundef %1) #16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load atomic i64, ptr %i.ab monotonic, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details6SenderINtNtNtBF_15dynamic_storage19posix_shared_memory7StorageNtBz_20SharedManagementDataEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.48.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.412.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.ae, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offsetNtB5_13PointerOffsetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.d, ptr noundef nonnull @248, ptr noundef nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.af = lshr i64 %i.v, 8
  %i.ag = udiv i64 %i.af, %i.ac
  %i.ah = ptrtoint ptr %i.aa to i64
  %i.ai = load atomic i64, ptr %i.aa monotonic, align 8
  %i.aj = add i64 %i.ai, %i.ah
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ag
  %i.am = atomicrmw xchg ptr %i.al, i8 0 monotonic, align 1
  %.not32 = icmp eq i8 %i.am, 0
  br i1 %.not32, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @246) #15
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details6SenderINtNtNtBF_15dynamic_storage19posix_shared_memory7StorageNtBz_20SharedManagementDataEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.an, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offsetNtB5_13PointerOffsetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.428.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.b, ptr noundef nonnull @247, ptr noundef nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.sink.split

bb.k:                                             ; preds = %bb.h
  %i.ao = load i64, ptr %i.e, align 8, !noundef !4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.j, %bb.k
  %.sroa.5.2.ph = phi i64 [ %i.ao, %bb.k ], [ undef, %bb.j ], [ undef, %bb.g ]
  %.sroa.02.2.ph = phi i64 [ 1, %bb.k ], [ 2, %bb.j ], [ 2, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.c
  %.sroa.5.2 = phi i64 [ undef, %bb.c ], [ %.sroa.5.2.ph, %.sink.split ]
  %.sroa.02.2 = phi i64 [ 0, %bb.c ], [ %.sroa.02.2.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ap = insertvalue { i64, i64 } poison, i64 %.sroa.02.2, 0
  %i.aq = insertvalue { i64, i64 } %i.ap, i64 %.sroa.5.2, 1
  ret { i64, i64 } %i.aq
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_6SenderINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_14ZeroCopySender8try_sendCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
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
  store ptr @249, ptr %i.f, align 8, !captures !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 21, ptr %i.h, align 8
  %i.i = tail call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtNtB9_20zero_copy_connection6common7details20SharedManagementDataEINtB7_14DynamicStorageB1r_E3getCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %1) #16 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 73
  %i.k = load i8, ptr %i.j, align 1, !range !15, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.i, i64 16
  %.val.i = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.n = load atomic i64, ptr %i.i monotonic, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %.not.i = icmp ugt i64 %.val.i, %i.p
  br i1 %.not.i, label %bb.c, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val.i, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @325) #15
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.b
  %i.q = icmp ult i64 %4, %.val.i
  br i1 %i.q, label %bb.e, label %bb.h

bb.d:                                             ; preds = %_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queue7detailsINtB5_27SafelyOverflowingIndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE31acquire_read_and_write_positionCskqqG2IB5b71_21iceoryx2_tests_common.exit, %bb.a
  %i.r = and i64 %2, 255
  %i.s = tail call noundef nonnull align 8 ptr @_RNvMs4_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsNtB5_20SharedManagementData19get_segment_details(ptr noundef nonnull align 8 %i.i, i64 noundef %i.r, i64 noundef %4) #16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store atomic i64 %3, ptr %i.t monotonic, align 8
  %i.u = icmp eq i64 %3, 0
  br i1 %i.u, label %bb.l, label %bb.j

bb.e:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit
  %i.v = ptrtoint ptr %i.i to i64
  %i.w = add i64 %i.n, %i.v
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw [88 x i8], ptr %i.x, i64 %4 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %bb.e
  %i.ab = load atomic i64, ptr %i.z monotonic, align 8 ; 2 uses
  %i.ac = load atomic i64, ptr %i.aa monotonic, align 8 ; 2 uses
  %i.ad = load atomic i64, ptr %i.z monotonic, align 8
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %.backedge

bb.g:                                             ; preds = %bb.f
  %i.af = load atomic i64, ptr %i.aa monotonic, align 8
  %i.ag = icmp eq i64 %i.ac, %i.af
  br i1 %i.ag, label %_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queue7detailsINtB5_27SafelyOverflowingIndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE31acquire_read_and_write_positionCskqqG2IB5b71_21iceoryx2_tests_common.exit, label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.f
  br label %bb.f

_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queue7detailsINtB5_27SafelyOverflowingIndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE31acquire_read_and_write_positionCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4
  %i.aj = add i64 %i.ai, %i.ac
  %i.ak = icmp eq i64 %i.ab, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.d

bb.h:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %4, i64 noundef %.val.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @250) #15
  unreachable

bb.i:                                             ; preds = %_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queue7detailsINtB5_27SafelyOverflowingIndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE31acquire_read_and_write_positionCskqqG2IB5b71_21iceoryx2_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details6SenderINtNtNtBF_15dynamic_storage19posix_shared_memory7StorageNtBz_20SharedManagementDataEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.47.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.411.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.e, ptr noundef nonnull @251, ptr noundef nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.al, align 8
  store i64 2, ptr %0, align 8
  br label %bb.y

bb.j:                                             ; preds = %bb.d
  %i.am = lshr i64 %2, 8
  %i.an = udiv i64 %i.am, %3
  %i.ao = ptrtoint ptr %i.s to i64
  %i.ap = load atomic i64, ptr %i.s monotonic, align 8
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.an
  %i.at = atomicrmw xchg ptr %i.as, i8 1 monotonic, align 1 ; 0 uses
  %i.au = getelementptr i8, ptr %i.i, i64 16
  %.val.i28 = load i64, ptr %i.au, align 8, !noundef !4 ; 4 uses
  %i.av = load atomic i64, ptr %i.i monotonic, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !4 ; 2 uses
  %.not.i29 = icmp ugt i64 %.val.i28, %i.ax
  br i1 %.not.i29, label %bb.k, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit30, !prof !16

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val.i28, i64 noundef %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @325) #15
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit30: ; preds = %bb.j
  %i.ay = icmp ult i64 %4, %.val.i28
  br i1 %i.ay, label %bb.m, label %bb.r

bb.l:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #15
  unreachable

bb.m:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit30
  %i.az = ptrtoint ptr %i.i to i64
  %i.ba = add i64 %i.av, %i.az
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw [88 x i8], ptr %i.bb, i64 %4 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 72 ; 2 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.bh = load atomic i64, ptr %i.bg monotonic, align 8 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 64 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !4 ; 2 uses
  %i.bk = load atomic i64, ptr %i.bd monotonic, align 8
  %i.bl = add i64 %i.bj, 1                        ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.n, label %_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queue7detailsINtB5_27SafelyOverflowingIndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE2atCskqqG2IB5b71_21iceoryx2_tests_common.exit.i

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #15
  unreachable

_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queue7detailsINtB5_27SafelyOverflowingIndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE2atCskqqG2IB5b71_21iceoryx2_tests_common.exit.i: ; preds = %bb.m
  %i.bn = add i64 %i.bj, %i.bh
  %i.bo = icmp eq i64 %i.bf, %i.bn
  %i.bp = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bq = add i64 %i.bk, %i.bp
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = urem i64 %i.bf, %i.bl
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  store i64 %2, ptr %i.bt, align 8
  %i.bu = add i64 %i.bf, 1
  store atomic i64 %i.bu, ptr %i.be release, align 8
  br i1 %i.bo, label %bb.o, label %bb.t

bb.o:                                             ; preds = %_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queue7detailsINtB5_27SafelyOverflowingIndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE2atCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
  %i.bv = add i64 %i.bh, 1
  %i.bw = cmpxchg ptr %i.bg, i64 %i.bh, i64 %i.bv acq_rel monotonic, align 8
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.bw, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bx = load atomic i64, ptr %i.bd monotonic, align 8
  %i.by = load i64, ptr %i.bi, align 8, !noundef !4
  %i.bz = add i64 %i.by, 1                        ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #15
  unreachable

bb.r:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit30
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %4, i64 noundef %.val.i28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @253) #15
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.cb = add i64 %i.bx, %i.bp
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = urem i64 %i.bh, %i.bz
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.cf, ptr %i.c, align 8
  %i.cg = and i64 %i.cf, 255
  %i.ch = tail call noundef nonnull align 8 ptr @_RNvMs4_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsNtB5_20SharedManagementData19get_segment_details(ptr noundef nonnull align 8 %i.i, i64 noundef %i.cg, i64 noundef %4) #16 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load atomic i64, ptr %i.ci monotonic, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.o, %_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queue7detailsINtB5_27SafelyOverflowingIndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE2atCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
  store i64 0, ptr %0, align 8
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.cl = lshr i64 %i.cf, 8
  %i.cm = udiv i64 %i.cl, %i.cj
  %i.cn = ptrtoint ptr %i.ch to i64
  %i.co = load atomic i64, ptr %i.ch monotonic, align 8
  %i.cp = add i64 %i.co, %i.cn
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cm
  %i.cs = atomicrmw xchg ptr %i.cr, i8 0 monotonic, align 1
  %.not = icmp eq i8 %i.cs, 0
  br i1 %.not, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #15
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details6SenderINtNtNtBF_15dynamic_storage19posix_shared_memory7StorageNtBz_20SharedManagementDataEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.415.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.419.0..sroa_idx, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.ct, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offsetNtB5_13PointerOffsetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.b, ptr noundef nonnull @255, ptr noundef nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cu, align 8
  store i64 2, ptr %0, align 8
  br label %.sink.split

bb.x:                                             ; preds = %bb.u
  store i64 1, ptr %0, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cf, ptr %i.cv, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.t, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_13ConfigurationINtNtNtNtB9_13shared_memory6common7details16AllocatorDetailsNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @226, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @259, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 4, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @256, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @262, i64 noundef 5, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @257, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @263, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @258) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_13ConfigurationNtNtNtNtB9_20zero_copy_connection6common7details20SharedManagementDataENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @226, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @259, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 4, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @256, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @262, i64 noundef 5, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @264, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @263, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @258) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtCs7gufeB8TUC6_12iceoryx2_cal13named_conceptNtB5_23NamedConceptRemoveErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !15, !noundef !4
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 13, i64 23
  %.1 = select i1 %i.b, ptr @72, ptr @70
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.) #16
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix13adaptive_waitNtB5_17AdaptiveWaitErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !range !593, !noundef !4
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @270, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @269) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 14, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @267) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageINtNtNtNtB9_13shared_memory6common7details16AllocatorDetailsNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 872
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @273, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @274, i64 noundef 3, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @271, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @275, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @272) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtNtB9_20zero_copy_connection6common7details20SharedManagementDataENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 872
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @273, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @274, i64 noundef 3, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @271, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @275, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @276) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCs8Chj7Szqq0n_4core3fmtbNtB5_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCs8Chj7Szqq0n_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #16
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsf_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(1160) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtNtB9_20zero_copy_connection6common7details20SharedManagementDataEINtB7_14DynamicStorageB1r_E3getCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %0) #16
  %i.b = tail call noundef i8 @_RNvMs4_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsNtB5_20SharedManagementData12remove_state(ptr noundef nonnull align 8 %i.a, i8 noundef 2) #16
  %i.c = icmp eq i8 %i.b, -128
  br i1 %i.c, label %bb.b, label %_RINvNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details21cleanup_shared_memoryINtNtNtB8_15dynamic_storage19posix_shared_memory7StorageNtB2_20SharedManagementDataEECskqqG2IB5b71_21iceoryx2_tests_common.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtNtB9_20zero_copy_connection6common7details20SharedManagementDataEINtB7_14DynamicStorageB1r_E17acquire_ownershipCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %0) #16
  br label %_RINvNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details21cleanup_shared_memoryINtNtNtB8_15dynamic_storage19posix_shared_memory7StorageNtB2_20SharedManagementDataEECskqqG2IB5b71_21iceoryx2_tests_common.exit

_RINvNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details21cleanup_shared_memoryINtNtNtB8_15dynamic_storage19posix_shared_memory7StorageNtB2_20SharedManagementDataEECskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsi_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB5_8FilePathNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @282, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @283, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @281) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails18number_of_channelsCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtNtB9_20zero_copy_connection6common7details20SharedManagementDataEINtB7_14DynamicStorageB1r_E3getCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %0) #16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  ret i64 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails20max_borrowed_samplesCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtNtB9_20zero_copy_connection6common7details20SharedManagementDataEINtB7_14DynamicStorageB1r_E3getCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %0) #16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  ret i64 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver7receiveCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %1
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = tail call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtNtB9_20zero_copy_connection6common7details20SharedManagementDataEINtB7_14DynamicStorageB1r_E3getCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %0) #16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i64, ptr %i.n, align 8, !noundef !4
  %.not = icmp ult i64 %i.l, %i.o
  br i1 %.not, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @285) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtNtB9_20zero_copy_connection6common7details20SharedManagementDataEINtB7_14DynamicStorageB1r_E3getCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %0) #16 ; 4 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %.val.i = load i64, ptr %i.q, align 8, !noundef !4 ; 4 uses
  %i.r = load atomic i64, ptr %i.p monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %.not.i = icmp ugt i64 %.val.i, %i.t
  br i1 %.not.i, label %bb.e, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit, !prof !16

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val.i, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @325) #15
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.d
  %i.u = icmp ult i64 %1, %.val.i
  br i1 %i.u, label %bb.g, label %bb.j

bb.f:                                             ; preds = %bb.b
end_hunk_0
