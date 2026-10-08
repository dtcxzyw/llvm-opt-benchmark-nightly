Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2-da23f3a62f735e36.iceoryx2.bbad07315a6c36b7-cgu.02?download=true
inline.NumInlined: 135
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
@26 = private unnamed_addr constant [5 x i8] c"value", align 1
@27 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtB8_4sync6atomic6AtomicbENtB6_5Debug3fmtCsg6ZEkMtNi4J_8iceoryx2 }>, align 8
@28 = private unnamed_addr constant [10 x i8] c"AtomicBool", align 1
@29 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptrINtB5_18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic9AtomicU64ENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsg6ZEkMtNi4J_8iceoryx2 }>, align 8
@30 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptrINtB5_18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers12UniqueNodeIdEEENtNtB2w_3fmt5Debug3fmtB3o_ }>, align 8
@31 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs8Chj7Szqq0n_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@32 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsc_NtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomicNtB5_9AtomicU64NtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@33 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs4_NtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomicNtB5_10AtomicBoolNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@34 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs3stRo7scs5B_22iceoryx2_bb_elementary9unique_idNtB5_8UniqueIdNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@35 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set20RobustUniqueIndexSetNtB6_5Debug3fmtCsg6ZEkMtNi4J_8iceoryx2 }>, align 8
@36 = private unnamed_addr constant [30 x i8] c"element_generation_counter_ptr", align 1
@37 = private unnamed_addr constant [8 x i8] c"data_ptr", align 1
@38 = private unnamed_addr constant [8 x i8] c"capacity", align 1
@39 = private unnamed_addr constant [14 x i8] c"change_counter", align 1
@40 = private unnamed_addr constant [14 x i8] c"is_initialized", align 1
@41 = private unnamed_addr constant [12 x i8] c"container_id", align 1
@42 = private unnamed_addr constant [9 x i8] c"index_set", align 1
@43 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @36, [8 x i8] c"\1E\00\00\00\00\00\00\00", ptr @37, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @38, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @39, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @40, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @41, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @42, [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@44 = private unnamed_addr constant [9 x i8] c"Container", align 1
@45 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptrINtB5_18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboard13ReaderDetailsEEENtNtB2w_3fmt5Debug3fmtB3s_ }>, align 8
@46 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptrINtB5_18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboard13WriterDetailsEEENtNtB2w_3fmt5Debug3fmtB3s_ }>, align 8
@47 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptrINtB5_18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsEEENtNtB2w_3fmt5Debug3fmtB3s_ }>, align 8
@48 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptrINtB5_18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsEEENtNtB2w_3fmt5Debug3fmtB3s_ }>, align 8
@49 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptrINtB5_18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe16PublisherDetailsEEENtNtB2w_3fmt5Debug3fmtB3s_ }>, align 8
@50 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptrINtB5_18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe17SubscriberDetailsEEENtNtB2w_3fmt5Debug3fmtB3s_ }>, align 8
@51 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptrINtB5_18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15ListenerDetailsEEENtNtB2w_3fmt5Debug3fmtB3s_ }>, align 8
@52 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptrINtB5_18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15NotifierDetailsEEENtNtB2w_3fmt5Debug3fmtB3s_ }>, align 8
@53 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtB8_4sync6atomic6AtomicyENtB6_5Debug3fmtCsg6ZEkMtNi4J_8iceoryx2 }>, align 8
@54 = private unnamed_addr constant [9 x i8] c"AtomicU64", align 1
@55 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_7OwnerIdNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@56 = private unnamed_addr constant [15 x i8] c"ContainerHandle", align 1
@57 = private unnamed_addr constant [5 x i8] c"index", align 1
@58 = private unnamed_addr constant [8 x i8] c"owner_id", align 1
@59 = private unnamed_addr constant [7 x i8] c"OwnerId", align 1

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 -1, 5) i8 @_RINvXs3_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_9ContainerNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers12UniqueNodeIdENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEB1k_(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 12 uses
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load atomic i8, ptr %i.m monotonic, align 8
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @0, ptr %i.i, align 8, !captures !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 20, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = tail call noundef i8 @_RINvXs_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSetNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 %1) #5 ; 2 uses
  %.not53 = icmp eq i8 %i.q, -1
  br i1 %.not53, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers12UniqueNodeIdENtB6_5Debug3fmtB1H_, ptr %.sroa.421.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @2, ptr noundef nonnull %i.k, ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 163 to ptr)) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers12UniqueNodeIdENtB6_5Debug3fmtB1H_, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.h, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers12UniqueNodeIdENtB6_5Debug3fmtB1H_, ptr %.sroa.429.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.433.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.h, ptr noundef nonnull @3, ptr noundef nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !6
  %i.t = shl i64 %i.s, 3
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef %i.t) #5
  %i.u = load ptr, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %.not54 = icmp eq ptr %i.u, null
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.u to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.w = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.v, %i.x
  store atomic i64 %i.y, ptr %i.w monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !6
  %i.ac = shl i64 %i.ab, 4
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %1, i64 noundef 4, i64 noundef %i.ac) #5
  %i.ad = load ptr, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.not55 = icmp eq ptr %i.ad, null
  br i1 %.not55, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.l, ptr %i.e, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers12UniqueNodeIdENtB6_5Debug3fmtB1H_, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.441.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.e, ptr noundef nonnull @4, ptr noundef nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ag = ptrtoint ptr %i.ad to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.ag, %i.aj
  store atomic i64 %i.ak, ptr %i.ai monotonic, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !6 ; 5 uses
  %.not57 = icmp eq i64 %i.am, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %i.am, 1
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.am, -2
  br label %.lr.ph

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers12UniqueNodeIdENtB6_5Debug3fmtB1H_, ptr %.sroa.445.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.b, ptr noundef nonnull @5, ptr noundef nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !range !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.050.056.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.aq = ptrtoint ptr %.epil.init to i64
  %i.ar = load atomic i64, ptr %.epil.init monotonic, align 8
  %i.as = add i64 %i.ar, %i.aq
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.050.056.epil.init
  store i64 0, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load atomic i64, ptr %i.aw monotonic, align 8 ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %i.ay = phi ptr [ %i.ah, %bb.h ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store atomic i8 1, ptr %i.az monotonic, align 8
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.ba = phi ptr [ %i.ah, %.lr.ph.preheader.new ], [ %i.bq, %.lr.ph ] ; 2 uses
  %.sroa.050.056 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = load atomic i64, ptr %i.ba monotonic, align 8
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.050.056
  store i64 0, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load atomic i64, ptr %i.bh monotonic, align 8 ; 0 uses
  %i.bj = add nuw i64 %.sroa.050.056, 2           ; 2 uses
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = load atomic i64, ptr %i.bg monotonic, align 8
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.sroa.050.056
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 0, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load atomic i64, ptr %i.br monotonic, align 8 ; 0 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.j:                                             ; preds = %bb.d, %bb.g, %bb.i, %._crit_edge
  %.sroa.0.0 = phi i8 [ -1, %._crit_edge ], [ %i.q, %bb.d ], [ %i.af, %bb.g ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 -1, 5) i8 @_RINvXs3_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboard13ReaderDetailsENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEB1o_(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 12 uses
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load atomic i8, ptr %i.m monotonic, align 8
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @0, ptr %i.i, align 8, !captures !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 20, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = tail call noundef i8 @_RINvXs_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSetNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 %1) #5 ; 2 uses
  %.not53 = icmp eq i8 %i.q, -1
  br i1 %.not53, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboard13ReaderDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.421.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @2, ptr noundef nonnull %i.k, ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 163 to ptr)) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboard13ReaderDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.h, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboard13ReaderDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.429.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.433.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.h, ptr noundef nonnull @3, ptr noundef nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !6
  %i.t = shl i64 %i.s, 3
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef %i.t) #5
  %i.u = load ptr, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %.not54 = icmp eq ptr %i.u, null
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.u to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.w = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.v, %i.x
  store atomic i64 %i.y, ptr %i.w monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !6
  %i.ac = shl i64 %i.ab, 5
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %1, i64 noundef 4, i64 noundef %i.ac) #5
  %i.ad = load ptr, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.not55 = icmp eq ptr %i.ad, null
  br i1 %.not55, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.l, ptr %i.e, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboard13ReaderDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.441.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.e, ptr noundef nonnull @4, ptr noundef nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ag = ptrtoint ptr %i.ad to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.ag, %i.aj
  store atomic i64 %i.ak, ptr %i.ai monotonic, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !6 ; 5 uses
  %.not57 = icmp eq i64 %i.am, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %i.am, 1
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.am, -2
  br label %.lr.ph

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboard13ReaderDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.445.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.b, ptr noundef nonnull @5, ptr noundef nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !range !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.050.056.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.aq = ptrtoint ptr %.epil.init to i64
  %i.ar = load atomic i64, ptr %.epil.init monotonic, align 8
  %i.as = add i64 %i.ar, %i.aq
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.050.056.epil.init
  store i64 0, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load atomic i64, ptr %i.aw monotonic, align 8 ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %i.ay = phi ptr [ %i.ah, %bb.h ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store atomic i8 1, ptr %i.az monotonic, align 8
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.ba = phi ptr [ %i.ah, %.lr.ph.preheader.new ], [ %i.bq, %.lr.ph ] ; 2 uses
  %.sroa.050.056 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = load atomic i64, ptr %i.ba monotonic, align 8
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.050.056
  store i64 0, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load atomic i64, ptr %i.bh monotonic, align 8 ; 0 uses
  %i.bj = add nuw i64 %.sroa.050.056, 2           ; 2 uses
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = load atomic i64, ptr %i.bg monotonic, align 8
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.sroa.050.056
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 0, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load atomic i64, ptr %i.br monotonic, align 8 ; 0 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.j:                                             ; preds = %bb.d, %bb.g, %bb.i, %._crit_edge
  %.sroa.0.0 = phi i8 [ -1, %._crit_edge ], [ %i.q, %bb.d ], [ %i.af, %bb.g ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 -1, 5) i8 @_RINvXs3_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboard13WriterDetailsENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEB1o_(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 12 uses
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load atomic i8, ptr %i.m monotonic, align 8
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @0, ptr %i.i, align 8, !captures !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 20, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = tail call noundef i8 @_RINvXs_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSetNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 %1) #5 ; 2 uses
  %.not53 = icmp eq i8 %i.q, -1
  br i1 %.not53, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboard13WriterDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.421.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @2, ptr noundef nonnull %i.k, ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 163 to ptr)) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboard13WriterDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.h, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboard13WriterDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.429.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.433.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.h, ptr noundef nonnull @3, ptr noundef nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !6
  %i.t = shl i64 %i.s, 3
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef %i.t) #5
  %i.u = load ptr, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %.not54 = icmp eq ptr %i.u, null
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.u to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.w = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.v, %i.x
  store atomic i64 %i.y, ptr %i.w monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !6
  %i.ac = shl i64 %i.ab, 5
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %1, i64 noundef 4, i64 noundef %i.ac) #5
  %i.ad = load ptr, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.not55 = icmp eq ptr %i.ad, null
  br i1 %.not55, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.l, ptr %i.e, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboard13WriterDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.441.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.e, ptr noundef nonnull @4, ptr noundef nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ag = ptrtoint ptr %i.ad to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.ag, %i.aj
  store atomic i64 %i.ak, ptr %i.ai monotonic, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !6 ; 5 uses
  %.not57 = icmp eq i64 %i.am, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %i.am, 1
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.am, -2
  br label %.lr.ph

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboard13WriterDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.445.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.b, ptr noundef nonnull @5, ptr noundef nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !range !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.050.056.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.aq = ptrtoint ptr %.epil.init to i64
  %i.ar = load atomic i64, ptr %.epil.init monotonic, align 8
  %i.as = add i64 %i.ar, %i.aq
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.050.056.epil.init
  store i64 0, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load atomic i64, ptr %i.aw monotonic, align 8 ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %i.ay = phi ptr [ %i.ah, %bb.h ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store atomic i8 1, ptr %i.az monotonic, align 8
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.ba = phi ptr [ %i.ah, %.lr.ph.preheader.new ], [ %i.bq, %.lr.ph ] ; 2 uses
  %.sroa.050.056 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = load atomic i64, ptr %i.ba monotonic, align 8
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.050.056
  store i64 0, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load atomic i64, ptr %i.bh monotonic, align 8 ; 0 uses
  %i.bj = add nuw i64 %.sroa.050.056, 2           ; 2 uses
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = load atomic i64, ptr %i.bg monotonic, align 8
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.sroa.050.056
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 0, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load atomic i64, ptr %i.br monotonic, align 8 ; 0 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.j:                                             ; preds = %bb.d, %bb.g, %bb.i, %._crit_edge
  %.sroa.0.0 = phi i8 [ -1, %._crit_edge ], [ %i.q, %bb.d ], [ %i.af, %bb.g ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 -1, 5) i8 @_RINvXs3_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEB1o_(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 12 uses
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load atomic i8, ptr %i.m monotonic, align 8
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @0, ptr %i.i, align 8, !captures !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 20, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = tail call noundef i8 @_RINvXs_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSetNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 %1) #5 ; 2 uses
  %.not53 = icmp eq i8 %i.q, -1
  br i1 %.not53, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.421.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @2, ptr noundef nonnull %i.k, ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 163 to ptr)) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.h, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.429.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.433.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.h, ptr noundef nonnull @3, ptr noundef nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !6
  %i.t = shl i64 %i.s, 3
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef %i.t) #5
  %i.u = load ptr, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %.not54 = icmp eq ptr %i.u, null
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.u to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.w = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.v, %i.x
  store atomic i64 %i.y, ptr %i.w monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !6
  %i.ac = shl i64 %i.ab, 6
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef %i.ac) #5
  %i.ad = load ptr, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.not55 = icmp eq ptr %i.ad, null
  br i1 %.not55, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.l, ptr %i.e, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.441.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.e, ptr noundef nonnull @4, ptr noundef nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ag = ptrtoint ptr %i.ad to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.ag, %i.aj
  store atomic i64 %i.ak, ptr %i.ai monotonic, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !6 ; 5 uses
  %.not57 = icmp eq i64 %i.am, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %i.am, 1
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.am, -2
  br label %.lr.ph

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.445.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.b, ptr noundef nonnull @5, ptr noundef nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !range !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.050.056.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.aq = ptrtoint ptr %.epil.init to i64
  %i.ar = load atomic i64, ptr %.epil.init monotonic, align 8
  %i.as = add i64 %i.ar, %i.aq
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.050.056.epil.init
  store i64 0, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load atomic i64, ptr %i.aw monotonic, align 8 ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %i.ay = phi ptr [ %i.ah, %bb.h ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store atomic i8 1, ptr %i.az monotonic, align 8
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.ba = phi ptr [ %i.ah, %.lr.ph.preheader.new ], [ %i.bq, %.lr.ph ] ; 2 uses
  %.sroa.050.056 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = load atomic i64, ptr %i.ba monotonic, align 8
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.050.056
  store i64 0, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load atomic i64, ptr %i.bh monotonic, align 8 ; 0 uses
  %i.bj = add nuw i64 %.sroa.050.056, 2           ; 2 uses
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = load atomic i64, ptr %i.bg monotonic, align 8
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.sroa.050.056
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 0, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load atomic i64, ptr %i.br monotonic, align 8 ; 0 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.j:                                             ; preds = %bb.d, %bb.g, %bb.i, %._crit_edge
  %.sroa.0.0 = phi i8 [ -1, %._crit_edge ], [ %i.q, %bb.d ], [ %i.af, %bb.g ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 -1, 5) i8 @_RINvXs3_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEB1o_(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 12 uses
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load atomic i8, ptr %i.m monotonic, align 8
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @0, ptr %i.i, align 8, !captures !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 20, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = tail call noundef i8 @_RINvXs_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSetNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 %1) #5 ; 2 uses
  %.not53 = icmp eq i8 %i.q, -1
  br i1 %.not53, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.421.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @2, ptr noundef nonnull %i.k, ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 163 to ptr)) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.h, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.429.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.433.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.h, ptr noundef nonnull @3, ptr noundef nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !6
  %i.t = shl i64 %i.s, 3
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef %i.t) #5
  %i.u = load ptr, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %.not54 = icmp eq ptr %i.u, null
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.u to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.w = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.v, %i.x
  store atomic i64 %i.y, ptr %i.w monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !6
  %i.ac = shl i64 %i.ab, 6
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef %i.ac) #5
  %i.ad = load ptr, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.not55 = icmp eq ptr %i.ad, null
  br i1 %.not55, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.l, ptr %i.e, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.441.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.e, ptr noundef nonnull @4, ptr noundef nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ag = ptrtoint ptr %i.ad to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.ag, %i.aj
  store atomic i64 %i.ak, ptr %i.ai monotonic, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !6 ; 5 uses
  %.not57 = icmp eq i64 %i.am, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %i.am, 1
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.am, -2
  br label %.lr.ph

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.445.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.b, ptr noundef nonnull @5, ptr noundef nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !range !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.050.056.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.aq = ptrtoint ptr %.epil.init to i64
  %i.ar = load atomic i64, ptr %.epil.init monotonic, align 8
  %i.as = add i64 %i.ar, %i.aq
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.050.056.epil.init
  store i64 0, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load atomic i64, ptr %i.aw monotonic, align 8 ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %i.ay = phi ptr [ %i.ah, %bb.h ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store atomic i8 1, ptr %i.az monotonic, align 8
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.ba = phi ptr [ %i.ah, %.lr.ph.preheader.new ], [ %i.bq, %.lr.ph ] ; 2 uses
  %.sroa.050.056 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = load atomic i64, ptr %i.ba monotonic, align 8
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.050.056
  store i64 0, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load atomic i64, ptr %i.bh monotonic, align 8 ; 0 uses
  %i.bj = add nuw i64 %.sroa.050.056, 2           ; 2 uses
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = load atomic i64, ptr %i.bg monotonic, align 8
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.sroa.050.056
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 0, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load atomic i64, ptr %i.br monotonic, align 8 ; 0 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.j:                                             ; preds = %bb.d, %bb.g, %bb.i, %._crit_edge
  %.sroa.0.0 = phi i8 [ -1, %._crit_edge ], [ %i.q, %bb.d ], [ %i.af, %bb.g ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 -1, 5) i8 @_RINvXs3_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe16PublisherDetailsENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEB1o_(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 12 uses
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load atomic i8, ptr %i.m monotonic, align 8
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @0, ptr %i.i, align 8, !captures !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 20, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = tail call noundef i8 @_RINvXs_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSetNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 %1) #5 ; 2 uses
  %.not53 = icmp eq i8 %i.q, -1
  br i1 %.not53, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe16PublisherDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.421.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @2, ptr noundef nonnull %i.k, ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 163 to ptr)) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe16PublisherDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.h, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe16PublisherDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.429.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.433.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.h, ptr noundef nonnull @3, ptr noundef nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !6
  %i.t = shl i64 %i.s, 3
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef %i.t) #5
  %i.u = load ptr, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %.not54 = icmp eq ptr %i.u, null
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.u to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.w = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.v, %i.x
  store atomic i64 %i.y, ptr %i.w monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !6
  %i.ac = mul i64 %i.ab, 56
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef %i.ac) #5
  %i.ad = load ptr, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.not55 = icmp eq ptr %i.ad, null
  br i1 %.not55, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.l, ptr %i.e, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe16PublisherDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.441.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.e, ptr noundef nonnull @4, ptr noundef nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ag = ptrtoint ptr %i.ad to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.ag, %i.aj
  store atomic i64 %i.ak, ptr %i.ai monotonic, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !6 ; 5 uses
  %.not57 = icmp eq i64 %i.am, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %i.am, 1
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.am, -2
  br label %.lr.ph

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe16PublisherDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.445.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.b, ptr noundef nonnull @5, ptr noundef nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !range !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.050.056.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.aq = ptrtoint ptr %.epil.init to i64
  %i.ar = load atomic i64, ptr %.epil.init monotonic, align 8
  %i.as = add i64 %i.ar, %i.aq
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.050.056.epil.init
  store i64 0, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load atomic i64, ptr %i.aw monotonic, align 8 ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %i.ay = phi ptr [ %i.ah, %bb.h ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store atomic i8 1, ptr %i.az monotonic, align 8
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.ba = phi ptr [ %i.ah, %.lr.ph.preheader.new ], [ %i.bq, %.lr.ph ] ; 2 uses
  %.sroa.050.056 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = load atomic i64, ptr %i.ba monotonic, align 8
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.050.056
  store i64 0, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load atomic i64, ptr %i.bh monotonic, align 8 ; 0 uses
  %i.bj = add nuw i64 %.sroa.050.056, 2           ; 2 uses
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = load atomic i64, ptr %i.bg monotonic, align 8
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.sroa.050.056
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 0, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load atomic i64, ptr %i.br monotonic, align 8 ; 0 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.j:                                             ; preds = %bb.d, %bb.g, %bb.i, %._crit_edge
  %.sroa.0.0 = phi i8 [ -1, %._crit_edge ], [ %i.q, %bb.d ], [ %i.af, %bb.g ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 -1, 5) i8 @_RINvXs3_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe17SubscriberDetailsENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEB1o_(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 12 uses
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load atomic i8, ptr %i.m monotonic, align 8
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @0, ptr %i.i, align 8, !captures !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 20, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = tail call noundef i8 @_RINvXs_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSetNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 %1) #5 ; 2 uses
  %.not53 = icmp eq i8 %i.q, -1
  br i1 %.not53, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe17SubscriberDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.421.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @2, ptr noundef nonnull %i.k, ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 163 to ptr)) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe17SubscriberDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.h, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe17SubscriberDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.429.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.433.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.h, ptr noundef nonnull @3, ptr noundef nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !6
  %i.t = shl i64 %i.s, 3
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef %i.t) #5
  %i.u = load ptr, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %.not54 = icmp eq ptr %i.u, null
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.u to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.w = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.v, %i.x
  store atomic i64 %i.y, ptr %i.w monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !6
  %i.ac = mul i64 %i.ab, 40
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef %i.ac) #5
  %i.ad = load ptr, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.not55 = icmp eq ptr %i.ad, null
  br i1 %.not55, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.l, ptr %i.e, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe17SubscriberDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.441.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.e, ptr noundef nonnull @4, ptr noundef nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ag = ptrtoint ptr %i.ad to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.ag, %i.aj
  store atomic i64 %i.ak, ptr %i.ai monotonic, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !6 ; 5 uses
  %.not57 = icmp eq i64 %i.am, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %i.am, 1
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.am, -2
  br label %.lr.ph

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe17SubscriberDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.445.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.b, ptr noundef nonnull @5, ptr noundef nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !range !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.050.056.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.aq = ptrtoint ptr %.epil.init to i64
  %i.ar = load atomic i64, ptr %.epil.init monotonic, align 8
  %i.as = add i64 %i.ar, %i.aq
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.050.056.epil.init
  store i64 0, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load atomic i64, ptr %i.aw monotonic, align 8 ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %i.ay = phi ptr [ %i.ah, %bb.h ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store atomic i8 1, ptr %i.az monotonic, align 8
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.ba = phi ptr [ %i.ah, %.lr.ph.preheader.new ], [ %i.bq, %.lr.ph ] ; 2 uses
  %.sroa.050.056 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = load atomic i64, ptr %i.ba monotonic, align 8
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.050.056
  store i64 0, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load atomic i64, ptr %i.bh monotonic, align 8 ; 0 uses
  %i.bj = add nuw i64 %.sroa.050.056, 2           ; 2 uses
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = load atomic i64, ptr %i.bg monotonic, align 8
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.sroa.050.056
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 0, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load atomic i64, ptr %i.br monotonic, align 8 ; 0 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.j:                                             ; preds = %bb.d, %bb.g, %bb.i, %._crit_edge
  %.sroa.0.0 = phi i8 [ -1, %._crit_edge ], [ %i.q, %bb.d ], [ %i.af, %bb.g ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 -1, 5) i8 @_RINvXs3_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15ListenerDetailsENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEB1o_(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 12 uses
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load atomic i8, ptr %i.m monotonic, align 8
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @0, ptr %i.i, align 8, !captures !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 20, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = tail call noundef i8 @_RINvXs_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSetNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 %1) #5 ; 2 uses
  %.not53 = icmp eq i8 %i.q, -1
  br i1 %.not53, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15ListenerDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.421.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @2, ptr noundef nonnull %i.k, ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 163 to ptr)) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15ListenerDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.h, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15ListenerDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.429.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.433.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.h, ptr noundef nonnull @3, ptr noundef nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !6
  %i.t = shl i64 %i.s, 3
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef %i.t) #5
  %i.u = load ptr, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %.not54 = icmp eq ptr %i.u, null
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.u to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.w = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.v, %i.x
  store atomic i64 %i.y, ptr %i.w monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !6
  %i.ac = shl i64 %i.ab, 5
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %1, i64 noundef 4, i64 noundef %i.ac) #5
  %i.ad = load ptr, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.not55 = icmp eq ptr %i.ad, null
  br i1 %.not55, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.l, ptr %i.e, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15ListenerDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.441.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.e, ptr noundef nonnull @4, ptr noundef nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ag = ptrtoint ptr %i.ad to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.ag, %i.aj
  store atomic i64 %i.ak, ptr %i.ai monotonic, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !6 ; 5 uses
  %.not57 = icmp eq i64 %i.am, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %i.am, 1
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.am, -2
  br label %.lr.ph

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15ListenerDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.445.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.b, ptr noundef nonnull @5, ptr noundef nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !range !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.050.056.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.aq = ptrtoint ptr %.epil.init to i64
  %i.ar = load atomic i64, ptr %.epil.init monotonic, align 8
  %i.as = add i64 %i.ar, %i.aq
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.050.056.epil.init
  store i64 0, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load atomic i64, ptr %i.aw monotonic, align 8 ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %i.ay = phi ptr [ %i.ah, %bb.h ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store atomic i8 1, ptr %i.az monotonic, align 8
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.ba = phi ptr [ %i.ah, %.lr.ph.preheader.new ], [ %i.bq, %.lr.ph ] ; 2 uses
  %.sroa.050.056 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = load atomic i64, ptr %i.ba monotonic, align 8
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.050.056
  store i64 0, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load atomic i64, ptr %i.bh monotonic, align 8 ; 0 uses
  %i.bj = add nuw i64 %.sroa.050.056, 2           ; 2 uses
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = load atomic i64, ptr %i.bg monotonic, align 8
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.sroa.050.056
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 0, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load atomic i64, ptr %i.br monotonic, align 8 ; 0 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.j:                                             ; preds = %bb.d, %bb.g, %bb.i, %._crit_edge
  %.sroa.0.0 = phi i8 [ -1, %._crit_edge ], [ %i.q, %bb.d ], [ %i.af, %bb.g ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 -1, 5) i8 @_RINvXs3_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15NotifierDetailsENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEB1o_(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 12 uses
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load atomic i8, ptr %i.m monotonic, align 8
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @0, ptr %i.i, align 8, !captures !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 20, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = tail call noundef i8 @_RINvXs_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSetNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 %1) #5 ; 2 uses
  %.not53 = icmp eq i8 %i.q, -1
  br i1 %.not53, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15NotifierDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.421.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @2, ptr noundef nonnull %i.k, ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 163 to ptr)) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15NotifierDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.h, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15NotifierDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.429.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.433.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.h, ptr noundef nonnull @3, ptr noundef nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !6
  %i.t = shl i64 %i.s, 3
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef %i.t) #5
  %i.u = load ptr, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %.not54 = icmp eq ptr %i.u, null
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.u to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.w = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.v, %i.x
  store atomic i64 %i.y, ptr %i.w monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !6
  %i.ac = shl i64 %i.ab, 5
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %1, i64 noundef 4, i64 noundef %i.ac) #5
  %i.ad = load ptr, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.not55 = icmp eq ptr %i.ad, null
  br i1 %.not55, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.l, ptr %i.e, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15NotifierDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.441.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.e, ptr noundef nonnull @4, ptr noundef nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ag = ptrtoint ptr %i.ad to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.ag, %i.aj
  store atomic i64 %i.ak, ptr %i.ai monotonic, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !6 ; 5 uses
  %.not57 = icmp eq i64 %i.am, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %i.am, 1
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.am, -2
  br label %.lr.ph

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15NotifierDetailsENtB6_5Debug3fmtB1L_, ptr %.sroa.445.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsg6ZEkMtNi4J_8iceoryx2, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.b, ptr noundef nonnull @5, ptr noundef nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !range !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.050.056.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.aq = ptrtoint ptr %.epil.init to i64
  %i.ar = load atomic i64, ptr %.epil.init monotonic, align 8
  %i.as = add i64 %i.ar, %i.aq
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.050.056.epil.init
  store i64 0, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load atomic i64, ptr %i.aw monotonic, align 8 ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %i.ay = phi ptr [ %i.ah, %bb.h ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store atomic i8 1, ptr %i.az monotonic, align 8
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.ba = phi ptr [ %i.ah, %.lr.ph.preheader.new ], [ %i.bq, %.lr.ph ] ; 2 uses
  %.sroa.050.056 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = load atomic i64, ptr %i.ba monotonic, align 8
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.050.056
  store i64 0, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load atomic i64, ptr %i.bh monotonic, align 8 ; 0 uses
  %i.bj = add nuw i64 %.sroa.050.056, 2           ; 2 uses
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = load atomic i64, ptr %i.bg monotonic, align 8
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.sroa.050.056
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 0, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.l, align 8, !nonnull !6, !align !7, !noundef !6 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load atomic i64, ptr %i.br monotonic, align 8 ; 0 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.j:                                             ; preds = %bb.d, %bb.g, %bb.i, %._crit_edge
  %.sroa.0.0 = phi i8 [ -1, %._crit_edge ], [ %i.q, %bb.d ], [ %i.af, %bb.g ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers12UniqueNodeIdE3addB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_RNvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSet7acquire(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noundef nonnull align 8 %i.b, i64 noundef %3) #5
  %i.c = load i8, ptr %i.a, align 8, !range !9, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !9, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.f, ptr %i.g, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = ptrtoint ptr %1 to i64
  %i.k = load atomic i64, ptr %1 monotonic, align 8
  %i.l = add i64 %i.k, %i.j
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.i ; 3 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 3 uses
  %i.p = and i64 %i.o, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = load atomic i64, ptr %i.q monotonic, align 8
  %i.t = add i64 %i.s, %i.r
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  %i.w = atomicrmw add ptr %i.n, i64 1 release, align 8 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = atomicrmw add ptr %i.x, i64 1 release, align 8 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.aa, ptr %.sroa.57.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ac = add i64 %i.o, 1
  %i.ad = cmpxchg ptr %i.n, i64 %i.o, i64 %i.ac acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.f:                                             ; preds = %bb.b, %bb.d
  %storemerge = phi i8 [ 0, %bb.d ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers12UniqueNodeIdE6removeB1j_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = ptrtoint ptr %0 to i64
  %i.e = load atomic i64, ptr %0 monotonic, align 8
  %i.f = add i64 %i.e, %i.d
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %1, align 8, !noundef !6   ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.0.copyload = load i64, ptr %i.m, align 8
  %i.n = tail call noundef i8 @_RNvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSet7release(ptr noundef nonnull align 8 %i.l, i64 noundef %i.h, i64 noundef %.sroa.03.0.copyload, i1 noundef zeroext %2) #5 ; 2 uses
  %i.o = icmp eq i8 %i.n, 2
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers12UniqueNodeIdENtB6_5Debug3fmtB1H_, ptr %.sroa.47.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsp_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerNtB5_15ContainerHandleNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.b, ptr noundef nonnull @9, ptr noundef nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = add i64 %i.j, 1
  %i.q = cmpxchg ptr %i.i, i64 %i.j, i64 %i.p monotonic monotonic, align 8 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.s = atomicrmw add ptr %i.r, i64 1 release, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i8 %i.n
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboard13ReaderDetailsE3addB1n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_RNvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSet7acquire(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noundef nonnull align 8 %i.b, i64 noundef %3) #5
  %i.c = load i8, ptr %i.a, align 8, !range !9, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !9, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.f, ptr %i.g, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = ptrtoint ptr %1 to i64
  %i.k = load atomic i64, ptr %1 monotonic, align 8
  %i.l = add i64 %i.k, %i.j
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.i ; 3 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 3 uses
  %i.p = and i64 %i.o, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = load atomic i64, ptr %i.q monotonic, align 8
  %i.t = add i64 %i.s, %i.r
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %2, i64 32, i1 false)
  %i.w = atomicrmw add ptr %i.n, i64 1 release, align 8 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = atomicrmw add ptr %i.x, i64 1 release, align 8 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.aa, ptr %.sroa.57.0..sroa_idx, align 8
end_hunk_0
