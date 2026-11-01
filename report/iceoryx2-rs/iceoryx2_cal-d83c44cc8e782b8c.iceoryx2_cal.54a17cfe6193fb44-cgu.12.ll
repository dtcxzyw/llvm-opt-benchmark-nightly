Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_cal-d83c44cc8e782b8c.iceoryx2_cal.54a17cfe6193fb44-cgu.12?download=true
inline.NumInlined: 61
inline.NumDeleted: 47
begin_hunk_0_@_RNvXNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocatorNtB2_21ShmAllocatorInitErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt:bb.a
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator21ShmAllocatorInitErrorNtB6_5Debug3fmtBA_, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !9, !noundef !5
  %i.f = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @16, ptr noundef nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i8 -1, 3) i8 @_RNvXNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event10id_tracker7bit_setINtNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7details6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EENtB4_9IdTracker3add(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  store i64 %1, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  %i.h = add i64 %i.g, -1                         ; 2 uses
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %1, 3
  %i.k = trunc i64 %1 to i8
  %i.l = and i8 %i.k, 7
  %i.m = tail call noundef ptr @_RNvXs_NtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptrINtB4_18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EINtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits13pointer_trait12PointerTraitB1p_E6as_ptrCs7gufeB8TUC6_12iceoryx2_cal(ptr noundef nonnull align 8 %0) #5
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j ; 2 uses
  %i.o = load atomic i8, ptr %i.n monotonic, align 1
  %i.p = shl nuw i8 1, %i.l                       ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.03.0.i = phi i8 [ %i.o, %bb.b ], [ %i.v, %bb.d ] ; 3 uses
  %i.q = and i8 %.sroa.03.0.i, %i.p
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.d, label %_RNvMs3_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7detailsINtB5_6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EE7set_bitCs7gufeB8TUC6_12iceoryx2_cal.exit

bb.d:                                             ; preds = %bb.c
  %i.s = or i8 %.sroa.03.0.i, %i.p
  %i.t = cmpxchg ptr %i.n, i8 %.sroa.03.0.i, i8 %i.s monotonic monotonic, align 1 ; 2 uses
  %i.u = extractvalue { i8, i1 } %i.t, 1
  %i.v = extractvalue { i8, i1 } %i.t, 0
  br i1 %i.u, label %_RNvMs3_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7detailsINtB5_6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EE7set_bitCs7gufeB8TUC6_12iceoryx2_cal.exit, label %bb.c

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7details6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EENtB6_5Debug3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.43.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.h, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsA_NtCs7gufeB8TUC6_12iceoryx2_cal5eventNtB5_9TriggerIdNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.w, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsA_NtCs7gufeB8TUC6_12iceoryx2_cal5eventNtB5_9TriggerIdNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.c, ptr noundef nonnull @17, ptr noundef nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMs3_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7detailsINtB5_6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EE7set_bitCs7gufeB8TUC6_12iceoryx2_cal.exit

_RNvMs3_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7detailsINtB5_6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EE7set_bitCs7gufeB8TUC6_12iceoryx2_cal.exit: ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.0.0 = phi i8 [ 2, %bb.e ], [ -1, %bb.c ], [ -1, %bb.d ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define { i64, i64 } @_RNvXNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event10id_tracker7bit_setINtNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7details6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EENtB4_9IdTracker7acquire(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  br label %_RNvMs3_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7detailsINtB5_6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EE9clear_bitCs7gufeB8TUC6_12iceoryx2_cal.exit.i

_RNvMs3_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7detailsINtB5_6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EE9clear_bitCs7gufeB8TUC6_12iceoryx2_cal.exit.i: ; preds = %bb.e, %bb.a
  %.sroa.04.0.i = phi i1 [ true, %bb.a ], [ %or.cond.i, %bb.e ]
  %.sroa.65.0.i = phi i64 [ %i.b, %bb.a ], [ %.sroa.65.113.ph.i, %bb.e ] ; 4 uses
  %.sroa.13.0.i = phi i64 [ 0, %bb.a ], [ %.sroa.13.1.ph.i, %bb.e ] ; 4 uses
  %i.e = icmp ult i64 %.sroa.65.0.i, %i.d
  %or.cond.i = select i1 %.sroa.04.0.i, i1 %i.e, i1 false ; 2 uses
  br i1 %or.cond.i, label %_RINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_3ops5range5RangejEjNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7gufeB8TUC6_12iceoryx2_cal.exit.i, label %bb.b

_RINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_3ops5range5RangejEjNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7gufeB8TUC6_12iceoryx2_cal.exit.i: ; preds = %_RNvMs3_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7detailsINtB5_6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EE9clear_bitCs7gufeB8TUC6_12iceoryx2_cal.exit.i
  %i.f = add nuw i64 %.sroa.65.0.i, 1
  br label %bb.d

bb.b:                                             ; preds = %_RNvMs3_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7detailsINtB5_6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EE9clear_bitCs7gufeB8TUC6_12iceoryx2_cal.exit.i
  %i.g = icmp ult i64 %.sroa.13.0.i, %i.b
  br i1 %i.g, label %bb.c, label %_RNvMs3_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7detailsINtB5_6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EE10reset_nextCs7gufeB8TUC6_12iceoryx2_cal.exit

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %.sroa.13.0.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_3ops5range5RangejEjNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7gufeB8TUC6_12iceoryx2_cal.exit.i
  %.sroa.65.113.ph.i = phi i64 [ %.sroa.65.0.i, %bb.c ], [ %i.f, %_RINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_3ops5range5RangejEjNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7gufeB8TUC6_12iceoryx2_cal.exit.i ]
  %.sroa.13.1.ph.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.13.0.i, %_RINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_3ops5range5RangejEjNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7gufeB8TUC6_12iceoryx2_cal.exit.i ]
  %.pn2.i.ph.i = phi i64 [ %.sroa.13.0.i, %bb.c ], [ %.sroa.65.0.i, %_RINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_3ops5range5RangejEjNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7gufeB8TUC6_12iceoryx2_cal.exit.i ] ; 4 uses
  %i.i = lshr i64 %.pn2.i.ph.i, 3
  %i.j = trunc i64 %.pn2.i.ph.i to i8
  %i.k = and i8 %i.j, 7
  %i.l = tail call noundef ptr @_RNvXs_NtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptrINtB4_18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EINtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits13pointer_trait12PointerTraitB1p_E6as_ptrCs7gufeB8TUC6_12iceoryx2_cal(ptr noundef nonnull align 8 %0) #5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i ; 2 uses
  %i.n = load atomic i8, ptr %i.m monotonic, align 1
  %i.o = shl nuw i8 1, %i.k                       ; 2 uses
  %i.p = xor i8 %i.o, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.03.0.i.i = phi i8 [ %i.n, %bb.d ], [ %i.u, %bb.f ] ; 3 uses
  %i.q = and i8 %.sroa.03.0.i.i, %i.o
  %.not.not.not.i.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.not.not.i.not.i, label %_RNvMs3_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7detailsINtB5_6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EE9clear_bitCs7gufeB8TUC6_12iceoryx2_cal.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = and i8 %.sroa.03.0.i.i, %i.p
  %i.s = cmpxchg ptr %i.m, i8 %.sroa.03.0.i.i, i8 %i.r monotonic monotonic, align 1 ; 2 uses
  %i.t = extractvalue { i8, i1 } %i.s, 1
  %i.u = extractvalue { i8, i1 } %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.pn2.i.ph.i, 1
  store atomic i64 %i.v, ptr %i.a monotonic, align 8
  br label %_RNvMs3_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7detailsINtB5_6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EE10reset_nextCs7gufeB8TUC6_12iceoryx2_cal.exit

_RNvMs3_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7detailsINtB5_6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EE10reset_nextCs7gufeB8TUC6_12iceoryx2_cal.exit: ; preds = %bb.b, %bb.g
  %.sroa.0.0.i6 = phi i64 [ 1, %bb.g ], [ 0, %bb.b ]
  %i.w = phi i64 [ %.pn2.i.ph.i, %bb.g ], [ undef, %bb.b ]
  %i.x = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i6, 0
  %i.y = insertvalue { i64, i64 } %i.x, i64 %i.w, 1
  ret { i64, i64 } %i.y
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocators_1__NtB7_18AllocationStrategyNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1m_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 18) #5
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCs7gufeB8TUC6_12iceoryx2_cal13named_conceptNtB5_23NamedConceptRemoveErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal13named_concept23NamedConceptRemoveErrorNtB6_5Debug3fmtBA_, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !9, !noundef !5
  %i.f = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @19, ptr noundef nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix11access_modeNtB5_10AccessModeNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !10, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix11access_modeNtB5_10AccessModeNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix11access_modeNtB5_10AccessModeNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.10, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext) #5
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor5epollNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll12EpollBuilderINtB7_14ReactorBuilderNtBR_5EpollE3new(ptr dead_on_unwind noalias nofree noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs9_NtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epollNtB5_12EpollBuilder3new(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0) #5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor5epollNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll12EpollBuilderINtB7_14ReactorBuilderNtBR_5EpollE6create(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1), (20, 21)) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 4                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @24, ptr %i.j, align 8, !captures !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 31, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsT_NtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epollNtB5_12EpollBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @1, ptr noundef nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  call void @_RNvMs9_NtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epollNtB5_12EpollBuilder6create(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(136) %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.m = load i8, ptr %i.l, align 4, !range !4, !noundef !5
  %i.n = icmp eq i8 %i.m, 2
  br i1 %i.n, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.split
  %i.o = load i32, ptr %i.g, align 8, !range !11, !noundef !5 ; 2 uses
  %switch = icmp samesign ult i32 %i.o, 3
  br i1 %switch, label %bb.e, label %bb.d

bb.b:                                             ; preds = %.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #5
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.d:                                             ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %3 = load i32, ptr %2, align 4
  store i32 %i.o, ptr %i.d, align 4
  %4 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %3, ptr %4, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.i, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsr_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.j, ptr %i.b, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.419.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.p, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsd_NtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epollNtB5_16EpollCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.c, ptr noundef nonnull @14, ptr noundef nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.i, ptr %i.f, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsr_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.415.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.f, ptr noundef nonnull @25, ptr noundef nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i8 [ 0, %bb.e ], [ 1, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 2, ptr %i.q, align 4
  br label %bb.c
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocators_1__NtBa_18AllocationStrategyNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1p_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 23) #5
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocatorNtB5_18ShmAllocationErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator18ShmAllocationErrorNtB6_5Debug3fmtBA_, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !9, !noundef !5
  %i.f = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @33, ptr noundef nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix10signal_setNtB5_18FetchableSignalSetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7details6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EENtB6_5Debug3fmtCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !9, !noundef !5 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.f, ptr %i.a, align 8, !noalias !21
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 8, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 8, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 14, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 14, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 21, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21
  ret i1 %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtB8_4time8DurationNtB6_5Debug3fmtCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !9, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtCs8Chj7Szqq0n_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #5
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal13named_concept21NamedConceptListErrorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !7, !noundef !5
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 13, i64 23
  %.1.i = select i1 %i.b, ptr @75, ptr @72
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1.i, i64 noundef %..i) #5
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal13named_concept23NamedConceptRemoveErrorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !7, !noundef !5
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 13, i64 23
  %.1.i = select i1 %i.b, ptr @75, ptr @72
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1.i, i64 noundef %..i) #5
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal13named_concept26NamedConceptDoesExistErrorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !10, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal13named_concept26NamedConceptDoesExistErrorNtB6_5Debug3fmtBA_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal13named_concept26NamedConceptDoesExistErrorNtB6_5Debug3fmtBA_.11, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext) #5
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal13named_concept31NamedConceptPathHintRemoveErrorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !7, !noundef !5
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 13, i64 23
  %.1.i = select i1 %i.b, ptr @75, ptr @72
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1.i, i64 noundef %..i) #5
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator18ShmAllocationErrorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.c = load i8, ptr %i.b, align 1, !range !26, !alias.scope !25, !noundef !5
  %.not.i = icmp eq i8 %i.c, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27
  store ptr %i.b, ptr %i.a, align 8, !noalias !27
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27
  br label %_RNvXs3_NtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocatorNtB5_18ShmAllocationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 28) #5, !noalias !25
  br label %_RNvXs3_NtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocatorNtB5_18ShmAllocationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.exit

_RNvXs3_NtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocatorNtB5_18ShmAllocationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator21ShmAllocatorInitErrorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !7, !noundef !5
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 16, i64 39
  %.1.i = select i1 %i.b, ptr @137, ptr @136
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1.i, i64 noundef %..i) #5
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll5EpollNtB6_5Debug3fmtCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30
  store ptr %i.b, ptr %i.a, align 8, !noalias !30
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 8, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 9, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115) #5
end_hunk_0
