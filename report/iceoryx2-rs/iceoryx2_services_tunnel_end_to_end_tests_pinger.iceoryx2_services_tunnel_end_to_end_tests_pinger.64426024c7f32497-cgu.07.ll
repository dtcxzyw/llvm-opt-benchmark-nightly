Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_services_tunnel_end_to_end_tests_pinger.iceoryx2_services_tunnel_end_to_end_tests_pinger.64426024c7f32497-cgu.07?download=true
inline.NumInlined: 538
inline.NumDeleted: 325
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB6_6SenderNtNtNtBc_7service3ipc7ServiceE17update_connectionNCNCNvMs1_NtBa_9publisherINtB23_20PublisherSharedStateB16_E24force_update_connections00ECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger:bb.a
bb.q:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 312
  call void @_RNvXs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix11memory_lockNtB4_10MemoryLockNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cx) #20
  br label %bb.t

bb.r:                                             ; preds = %bb.m
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #22
  unreachable

bb.s:                                             ; preds = %bb.k, %bb.i
  %.sroa.819.0.ph.i = phi i8 [ %i.ci, %bb.k ], [ 8, %bb.i ]
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #20, !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.612.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.cy = load ptr, ptr %i.ac, align 8, !nonnull !5, !align !11, !noundef !5 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 3560
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !5, !noundef !5
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2592
  %.sroa.027.0.copyload = load i128, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.dd = load i128, ptr %i.dc, align 16, !noundef !5
  store i128 %.sroa.027.0.copyload, ptr %i.y, align 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i128 %i.dd, ptr %i.de, align 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store i128 %2, ptr %i.df, align 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  %i.dh = call noundef i8 @_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.dg, i1 noundef zeroext false, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.y) #20
  switch i8 %i.dh, label %default.unreachable39 [
    i8 0, label %bb.y
    i8 1, label %bb.z
    i8 2, label %bb.aa
  ]

bb.t:                                             ; preds = %bb.n, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i.i.i.i.i, %bb.q
  store i64 %i.cc, ptr %i.cn, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i8 %.sroa.819.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1127) %.sroa.612.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(1127) %.sroa.612.sroa.0.i, i64 1127, i1 false)
  %.sroa.612.sroa.5.0..sroa.612.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 1136
  store i128 %i.cj, ptr %.sroa.612.sroa.5.0..sroa.612.0..sroa_idx.sroa_idx.i, align 16
  %.sroa.612.sroa.6.0..sroa.612.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 1152
  store i8 %i.as, ptr %.sroa.612.sroa.6.0..sroa.612.0..sroa_idx.sroa_idx.i, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.612.sroa.0.i)
  %i.di = load ptr, ptr %i.ac, align 8, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 2656
  %i.dk = load i64, ptr %i.dj, align 16, !noundef !5 ; 2 uses
  %i.dl = icmp ult i64 %1, %i.dk
  br i1 %i.dl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 2648
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !5, !noundef !5
  %i.do = getelementptr inbounds nuw [1168 x i8], ptr %i.dn, i64 %1 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 16, !range !12, !noundef !5
  %.not31 = icmp eq i64 %i.dp, 2
  br i1 %.not31, label %bb.x, label %bb.w, !prof !8

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.dk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE22deliver_sample_historyCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 16 %4, ptr noundef nonnull align 16 %i.do) #20
  br label %bb.ab

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ac, ptr %i.aa, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @2, ptr noundef nonnull %i.aa, ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 167 to ptr)) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.ac, ptr %i.z, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22
  unreachable

default.unreachable39:                            ; preds = %bb.s
  unreachable

bb.y:                                             ; preds = %bb.z, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ab

bb.z:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.ac, ptr %i.x, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.ab, ptr %i.w, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXsY_NtNtCs8Chj7Szqq0n_4core3fmt3numoNtB7_5Debug3fmt, ptr %.sroa.422.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @2, ptr noundef nonnull %i.x, ptr noundef nonnull @6, ptr noundef nonnull %i.w) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.y

bb.aa:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.ac, ptr %i.v, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.414.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.ab, ptr %i.u, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsY_NtNtCs8Chj7Szqq0n_4core3fmt3numoNtB7_5Debug3fmt, ptr %.sroa.426.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.v, ptr noundef nonnull @6, ptr noundef nonnull %i.u) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.w, %bb.f, %bb.aa
  %.sroa.0.0 = phi i8 [ %.sroa.819.0.ph.i, %bb.aa ], [ -1, %bb.f ], [ -1, %bb.w ], [ -1, %bb.y ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_31find_connection_without_borrows0ECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E8as_sliceCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) #20 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit

bb.b:                                             ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit
  %i.f = icmp eq ptr %i.g, %i.d
  br i1 %i.f, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.052 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.7.051 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.052, i64 8 ; 2 uses
  %i.h = add i64 %.sroa.7.051, 1
  %i.i = load i64, ptr %.sroa.0.052, align 8, !noundef !5 ; 2 uses
  %i.j = tail call noundef align 16 ptr @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %1, i64 noundef %i.i) #20 ; 4 uses
  %.not6 = icmp eq ptr %i.j, null
  br i1 %.not6, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread.sink.split, label %bb.c

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread.sink.split: ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit, %bb.c, %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.051, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.l, align 8
  store i64 1, ptr %0, align 8
  br label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread: ; preds = %bb.b, %bb.a, %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread.sink.split
  ret void

bb.c:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2480 ; 2 uses
  %i.n = tail call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails18number_of_channelsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.m) #20 ; 2 uses
  %.not21.i = icmp eq i64 %i.n, 0
  br i1 %.not21.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 3368
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 3360
  br label %bb.d

bb.d:                                             ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i, %.lr.ph.i
  %.sroa.0.016.i = phi i1 [ false, %.lr.ph.i ], [ %i.t, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i ]
  %.sroa.03.015.i = phi i1 [ false, %.lr.ph.i ], [ %i.y, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i ]
  %.sroa.09.014.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aa, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i ] ; 5 uses
  %i.q = tail call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver8has_dataCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.m, i64 noundef %.sroa.09.014.i) #20
  %i.r = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %i.s = icmp ult i64 %.sroa.09.014.i, %i.r
  br i1 %i.s, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.014.i, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @338) #22
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i: ; preds = %bb.d
  %i.t = or i1 %.sroa.0.016.i, %i.q               ; 2 uses
  %i.u = load ptr, ptr %i.p, align 16, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.09.014.i
  %i.w = load i64, ptr %i.v, align 8, !noundef !5
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %.sroa.03.015.i, %i.x              ; 3 uses
  %i.z = and i1 %i.t, %i.y
  %i.aa = add nuw i64 %.sroa.09.014.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %i.n
  %or.cond.not.i = select i1 %i.z, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.not.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit, label %bb.d

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit: ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i
  br i1 %i.y, label %bb.b, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread.sink.split
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMs_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringE5drainINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs8Chj7Szqq0n_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #20 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvNtCs5WK5l2q0aFk_12clap_builder6derive12format_errorNtNtCs12z9vTL7JGI_41iceoryx2_services_tunnel_end_to_end_tests3cli4ArgsECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [712 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtCs12z9vTL7JGI_41iceoryx2_services_tunnel_end_to_end_tests3cliNtB5_4ArgsNtNtCs5WK5l2q0aFk_12clap_builder6derive14CommandFactory7command(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.a) #20
  %i.b = call noundef nonnull align 8 ptr @_RNvMNtCs5WK5l2q0aFk_12clap_builder5errorNtB2_5Error6formatCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.a) #20
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs5WK5l2q0aFk_12clap_builder7builder7command7CommandECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef align 8 dereferenceable(712) %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB23_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEEEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB4_14PolymorphicVecNtNtB8_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #20
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef align 16 dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i128, ptr %0, align 16, !range !17, !noundef !5
  %i.b = icmp eq i128 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.c) #20
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 16 dereferenceable(3648) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2480 ; 5 uses
  %i.b = load i64, ptr %i.a, align 16, !range !12, !noundef !5
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtBK_7service3ipc7ServiceEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXsf_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %i.a) #20
  tail call void @_RNvXs8_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtNtB9_20zero_copy_connection6common7details20SharedManagementDataENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %i.a) #20
  tail call void @_RNvXs1_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memoryNtB5_12SharedMemoryNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %i.a) #20
  tail call void @_RNvXs3_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mappingNtB5_13MemoryMappingNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %i.a) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2756
  %i.e = load i8, ptr %i.d, align 4, !range !16, !alias.scope !117, !noundef !5
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2752
  tail call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.g) #20
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i.i.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2784
  %i.i = load i64, ptr %i.h, align 16, !range !6, !alias.scope !118, !noundef !5
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtBK_7service3ipc7ServiceEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2792
  tail call void @_RNvXs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix11memory_lockNtB4_10MemoryLockNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #20
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtBK_7service3ipc7ServiceEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtBK_7service3ipc7ServiceEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i.i.i, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3352
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCelljEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #20
  tail call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment15DataSegmentViewNtNtNtBK_7service3ipc7ServiceEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 16 dereferenceable(3648) %0) #20
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11memory_lock10MemoryLockEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix11memory_lockNtB4_10MemoryLockNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #20
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptor14FileDescriptorEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef align 4 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4, !range !16, !noundef !5
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %0) #20
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB16_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB16_15dynamic_storage19posix_shared_memory7StorageINtB10_16AllocatorDetailsB29_EEENtB14_21SharedMemoryOpenErrorEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(1144) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !5
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtBK_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBK_15dynamic_storage19posix_shared_memory7StorageINtBE_16AllocatorDetailsB1N_EEEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs8_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageINtNtNtNtB9_13shared_memory6common7details16AllocatorDetailsNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(1144) %0) #20
  tail call void @_RNvXs1_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memoryNtB5_12SharedMemoryNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1144) %0) #20
  tail call void @_RNvXs3_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mappingNtB5_13MemoryMappingNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1144) %0) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.c = load i8, ptr %i.b, align 4, !range !16, !alias.scope !131, !noundef !5
  %i.d = icmp eq i8 %i.c, 2
  br i1 %i.d, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.e) #20
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.g = load i64, ptr %i.f, align 8, !range !6, !alias.scope !132, !noundef !5
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtBK_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBK_15dynamic_storage19posix_shared_memory7StorageINtBE_16AllocatorDetailsB1N_EEEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_RNvXs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix11memory_lockNtB4_10MemoryLockNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #20
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtBK_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBK_15dynamic_storage19posix_shared_memory7StorageINtBE_16AllocatorDetailsB1N_EEEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtBK_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBK_15dynamic_storage19posix_shared_memory7StorageINtBE_16AllocatorDetailsB1N_EEEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit: ; preds = %bb.d, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB16_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB16_15dynamic_storage19posix_shared_memory7StorageINtB10_16AllocatorDetailsB29_EEENtB14_23SharedMemoryCreateErrorEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(1144) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !5
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtBK_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBK_15dynamic_storage19posix_shared_memory7StorageINtBE_16AllocatorDetailsB1N_EEEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs8_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageINtNtNtNtB9_13shared_memory6common7details16AllocatorDetailsNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(1144) %0) #20
  tail call void @_RNvXs1_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memoryNtB5_12SharedMemoryNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1144) %0) #20
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE23receive_from_connectionCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 32, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 2480 ; 3 uses
  %i.p = tail call { i64, i64 } @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver7receiveCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.o, i64 noundef %4) #20 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1        ; 3 uses
  switch i64 %i.q, label %bb.c [
    i64 2, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.m, ptr %i.d, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.424.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.s = call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails20max_borrowed_samplesCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.o) #20
  store i64 %i.s, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.452.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.t, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.456.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.d, ptr noundef nonnull @63, ptr noundef nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.u, align 16
  store i128 2, ptr %0, align 16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %i.r, ptr %i.k, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 2464 ; 2 uses
  %i.w = load i128, ptr %i.v, align 16, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_15DataSegmentViewNtNtNtBb_7service3ipc7ServiceE29register_and_translate_offsetCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noundef nonnull align 8 %2, i64 noundef %i.r) #20
  %i.x = load i8, ptr %i.j, align 8, !range !13, !noundef !5
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.a
  store i128 0, ptr %0, align 16
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.z = load i64, ptr %2, align 16, !range !12, !noundef !5
  %.not = icmp eq i64 %i.z, 2
  br i1 %.not, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ac = load ptr, ptr %i.m, align 8, !nonnull !5, !align !11, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 336
  %.sroa.416.sroa.6.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details5chunkNtB2_5Chunk3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.416.sroa.6.0..sroa.416.0..sroa_idx.sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(888) %i.ad, i64 noundef %i.ab) #20
  store i128 1, ptr %0, align 16
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %i.w, ptr %.sroa.416.0..sroa_idx, align 16
  %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx, align 16
  %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.r, ptr %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.b, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.h:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !range !26, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.m, ptr %i.f, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.440.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.v, ptr %i.e, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsY_NtNtCs8Chj7Szqq0n_4core3fmt3numoNtB7_5Debug3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.ag, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offsetNtB5_13PointerOffsetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.f, ptr noundef nonnull @60, ptr noundef nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.ah, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.af, ptr %i.ai, align 1
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.m, ptr %i.i, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.428.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @2, ptr noundef nonnull %i.i, ptr noundef nonnull @61, ptr noundef nonnull inttoptr (i64 555 to ptr)) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.aj = load i64, ptr %i.k, align 8, !noundef !5
  %i.ak = call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver7releaseCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.o, i64 noundef %i.aj, i64 noundef %4) #20
  br i1 %i.ak, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i, %bb.h
  %storemerge = phi i128 [ 2, %bb.h ], [ 0, %bb.i ], [ 0, %bb.k ]
  store i128 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.g

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.m, ptr %i.h, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.432.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.a, ptr %i.g, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsQ_NtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connectionNtB5_20ZeroCopyReleaseErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.436.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 4, ptr noundef nonnull @2, ptr noundef nonnull %i.h, ptr noundef nonnull @62, ptr noundef nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE26prepare_connection_removalCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 16 %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3648 x i8], align 16             ; 4 uses
  %i.b = alloca [3648 x i8], align 16             ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [3648 x i8], align 16             ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [3648 x i8], align 16             ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 8 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.s = load i64, ptr %i.r, align 8, !range !6, !noundef !5
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtB9_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E8as_sliceCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) #20 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 1        ; 2 uses
  %i.w = icmp ult i64 %1, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.f, %bb.v, %bb.j, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread.a, %bb.d, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.x = extractvalue { ptr, i64 } %i.u, 0
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %1 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !range !6, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8            ; 7 uses
  %i.ac = trunc nuw i64 %i.z to i1
  br i1 %i.ac, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #22
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.ae = tail call noundef align 16 ptr @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.ad, i64 noundef %i.ab) #20 ; 4 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.c, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2480 ; 2 uses
  %i.ag = tail call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails18number_of_channelsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.af) #20 ; 2 uses
  %.not21.i = icmp eq i64 %i.ag, 0
  br i1 %.not21.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread.a, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 3368
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 3360
  br label %bb.h

bb.h:                                             ; preds = %3, %.lr.ph.i
  %.sroa.0.016.i = phi i1 [ false, %.lr.ph.i ], [ %2, %3 ]
  %.sroa.03.015.i = phi i1 [ false, %.lr.ph.i ], [ %i.aq, %3 ]
  %.sroa.09.014.i = phi i64 [ 0, %.lr.ph.i ], [ %4, %3 ] ; 5 uses
  %i.aj = tail call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver8has_dataCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.af, i64 noundef %.sroa.09.014.i) #20
  %2 = or i1 %.sroa.0.016.i, %i.aj                ; 3 uses
  %i.ak = load i64, ptr %i.ah, align 8, !noundef !5 ; 2 uses
  %i.al = icmp ult i64 %.sroa.09.014.i, %i.ak
  br i1 %i.al, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.014.i, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @338) #22
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i: ; preds = %bb.h
  %i.am = load ptr, ptr %i.ai, align 16, !nonnull !5, !noundef !5
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.sroa.09.014.i
  %i.ao = load i64, ptr %i.an, align 8, !noundef !5
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = or i1 %.sroa.03.015.i, %i.ap            ; 5 uses
  %i.ar = and i1 %2, %i.aq
  br i1 %i.ar, label %bb.j, label %3

3:                                                ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i
  %4 = add nuw i64 %.sroa.09.014.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %4, %i.ag
  br i1 %exitcond.not.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit, label %bb.h

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit: ; preds = %3
  %i.as = or i1 %i.aq, %2
  br i1 %i.as, label %bb.j, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread.a

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread.a: ; preds = %bb.g, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11remove_implCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([3648 x i8]) align 16 captures(none) dereferenceable(3648) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.ad, i64 noundef %i.ab) #20
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef align 16 dereferenceable(3648) %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.j:                                             ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 8 uses
  %i.au = tail call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E4pushCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.at, i64 noundef %i.ab) #20
  %.not80 = icmp eq i8 %i.au, 2
  br i1 %.not80, label %bb.c, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr @65, ptr %i.p, align 8, !captures !23
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 35, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr @66, ptr %i.o, align 8, !captures !23
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 67, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr @67, ptr %i.n, align 8, !captures !23
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 129, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @68, ptr %i.m, align 8, !captures !23
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 63, ptr %i.ay, align 8
  %i.az = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E8as_sliceCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at) #20, !noalias !616 ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 0      ; 3 uses
  %i.bb = extractvalue { ptr, i64 } %i.az, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  %.idx = shl nuw nsw i64 %i.bb, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_40find_connection_without_data_and_borrows0ECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i

bb.l:                                             ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i
  %i.be = icmp eq ptr %i.bf, %i.bc
  br i1 %i.be, label %_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_40find_connection_without_data_and_borrows0ECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i: ; preds = %bb.k, %bb.l
  %.sroa.0.0.i153 = phi ptr [ %i.bf, %bb.l ], [ %i.ba, %bb.k ] ; 2 uses
  %.sroa.7.0.i152 = phi i64 [ %i.bg, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i153, i64 8 ; 2 uses
  %i.bg = add i64 %.sroa.7.0.i152, 1
  %i.bh = load i64, ptr %.sroa.0.0.i153, align 8, !noalias !616, !noundef !5 ; 2 uses
  %i.bi = tail call noundef align 16 ptr @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.ad, i64 noundef %i.bh) #20, !noalias !616 ; 4 uses
  %.not6.i = icmp eq ptr %i.bi, null
  br i1 %.not6.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2480 ; 2 uses
  %i.bk = tail call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails18number_of_channelsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.bj) #20, !noalias !616 ; 2 uses
  %.not21.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not21.i.i, label %bb.p, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 3368
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 3360
  br label %bb.n

bb.n:                                             ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i, %.lr.ph.i.i
  %.sroa.0.016.i.i = phi i1 [ false, %.lr.ph.i.i ], [ %i.bq, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i ]
  %.sroa.03.015.i.i = phi i1 [ false, %.lr.ph.i.i ], [ %i.bv, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i ]
  %.sroa.09.014.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bx, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i ] ; 5 uses
  %i.bn = tail call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver8has_dataCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.bj, i64 noundef %.sroa.09.014.i.i) #20, !noalias !616
  %i.bo = load i64, ptr %i.bl, align 8, !noalias !616, !noundef !5 ; 2 uses
  %i.bp = icmp ult i64 %.sroa.09.014.i.i, %i.bo
  br i1 %i.bp, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.014.i.i, i64 noundef %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @338) #22, !noalias !616
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i: ; preds = %bb.n
  %i.bq = or i1 %.sroa.0.016.i.i, %i.bn           ; 3 uses
  %i.br = load ptr, ptr %i.bm, align 16, !noalias !616, !nonnull !5, !noundef !5
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.sroa.09.014.i.i
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !616, !noundef !5
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = or i1 %.sroa.03.015.i.i, %i.bu          ; 3 uses
  %i.bw = and i1 %i.bq, %i.bv
  %i.bx = add nuw i64 %.sroa.09.014.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bx, %i.bk
  %or.cond.not.i.i = select i1 %i.bw, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.not.i.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i, label %bb.n

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i: ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i
  %i.by = or i1 %i.bq, %i.bv
  br i1 %i.by, label %bb.l, label %bb.p

bb.p:                                             ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i, %bb.m, %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i
  %i.bz = tail call { i64, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E6removeCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.at, i64 noundef %.sroa.7.0.i152) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11remove_implCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([3648 x i8]) align 16 captures(none) dereferenceable(3648) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.ad, i64 noundef %i.bh) #20
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef align 16 dereferenceable(3648) %i.l) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ca = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E4pushCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.at, i64 noundef %i.ab) #20
  %.not83 = icmp eq i8 %i.ca, 2
  br i1 %.not83, label %bb.v, label %bb.q

_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_40find_connection_without_data_and_borrows0ECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit: ; preds = %bb.l, %bb.k
  br i1 %i.aq, label %bb.u, label %bb.t

bb.q:                                             ; preds = %bb.p
  br i1 %i.aq, label %bb.s, label %bb.r, !prof !8

bb.r:                                             ; preds = %bb.t, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.q, ptr %i.d, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.466.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.p, ptr %i.c, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.470.0..sroa_idx, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.o, ptr %i.cb, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.474.0..sroa_idx, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.m, ptr %i.cc, align 8
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.478.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @2, ptr noundef nonnull %i.d, ptr noundef nonnull @69, ptr noundef nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11remove_implCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([3648 x i8]) align 16 captures(none) dereferenceable(3648) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.ad, i64 noundef %i.ab) #20
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef align 16 dereferenceable(3648) %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

bb.s:                                             ; preds = %bb.x, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.q, ptr %i.g, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.434.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.p, ptr %i.f, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.438.0..sroa_idx, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.n, ptr %i.cd, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.442.0..sroa_idx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.m, ptr %i.ce, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.446.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @2, ptr noundef nonnull %i.g, ptr noundef nonnull @70, ptr noundef nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.450.0..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.p, ptr %i.cf, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.454.0..sroa_idx, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.n, ptr %i.cg, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.458.0..sroa_idx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.m, ptr %i.ch, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.462.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @71, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #22
  unreachable

bb.t:                                             ; preds = %_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_40find_connection_without_data_and_borrows0ECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit
  %i.ci = tail call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E4pushCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.at, i64 noundef %i.ab) #20
  %.not81 = icmp eq i8 %i.ci, 2
  br i1 %.not81, label %bb.v, label %bb.r

bb.u:                                             ; preds = %_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_40find_connection_without_data_and_borrows0ECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call fastcc void @_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_31find_connection_without_borrows0ECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull align 8 %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at) #20
  %i.cj = load i64, ptr %i.k, align 8, !range !6, !noundef !5
  %i.ck = trunc nuw i64 %i.cj to i1
  br i1 %i.ck, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.p, %bb.t, %bb.x, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.c

bb.w:                                             ; preds = %bb.u
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !5
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.q, ptr %i.j, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.412.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.p, ptr %i.i, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.416.0..sroa_idx, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.o, ptr %i.cp, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.420.0..sroa_idx, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.m, ptr %i.cq, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.424.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @2, ptr noundef nonnull %i.j, ptr noundef nonnull @69, ptr noundef nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cr = call { i64, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E6removeCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.at, i64 noundef %i.cm) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11remove_implCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([3648 x i8]) align 16 captures(none) dereferenceable(3648) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.ad, i64 noundef %i.co) #20
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef align 16 dereferenceable(3648) %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cs = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E4pushCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.at, i64 noundef %i.ab) #20
  %.not82 = icmp eq i8 %i.cs, 2
  br i1 %.not82, label %bb.v, label %bb.s, !prof !21
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE30finish_update_connection_cycleCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 16 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtB9_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E8as_sliceCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) #20 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 3 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.lr.ph

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.lr.ph: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1264
  br label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit: ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.lr.ph, %bb.c
  %.sroa.0.014 = phi ptr [ %i.c, %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.lr.ph ], [ %i.h, %bb.c ] ; 3 uses
  %.sroa.7.013 = phi i64 [ 0, %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.lr.ph ], [ %i.i, %bb.c ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 16 ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.7.013, 1
  %i.j = load i64, ptr %.sroa.0.014, align 8, !range !6, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread: ; preds = %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  %i.n = tail call noundef align 16 ptr @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.a, i64 noundef %i.m) #20 ; 2 uses
  %.not6 = icmp eq ptr %i.n, null
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE17remove_connectionCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit, %bb.d, %bb.b, %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit
  %i.o = icmp eq ptr %i.h, %i.e
  br i1 %i.o, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 3640
  %i.q = load atomic i8, ptr %i.p monotonic, align 8
  %i.r = load atomic i8, ptr %i.g monotonic, align 16
  %i.s = icmp eq i8 %i.q, %i.r
  br i1 %i.s, label %bb.c, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE26prepare_connection_removalCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 16 %0, i64 noundef %.sroa.7.013) #20
  %i.t = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtB9_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E8as_sliceCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %0) #20 ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 1        ; 2 uses
  %i.v = icmp ult i64 %.sroa.7.013, %i.u
  br i1 %i.v, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE17remove_connectionCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.013, i64 noundef %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #22
  unreachable

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE17remove_connectionCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit: ; preds = %bb.e
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.sroa.7.013
  store i64 0, ptr %i.x, align 8
  br label %bb.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE7receiveCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 16 %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3648 x i8], align 16             ; 4 uses
  %.sroa.727.i = alloca [62 x i8], align 2        ; 6 uses
  %i.b = alloca [80 x i8], align 16               ; 8 uses
  %.sroa.3.sroa.3.i = alloca [62 x i8], align 2   ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.641 = alloca [62 x i8], align 2          ; 2 uses
  %i.e = alloca [80 x i8], align 16               ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.727.i)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1224
  %i.i = load i64, ptr %i.h, align 8, !range !6, !noalias !619, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1232 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1248
  %i.m = load i64, ptr %i.l, align 16, !noalias !619, !noundef !5
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %.sroa.638.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread.i, %bb.c
  %.sroa.033.0.i = phi i64 [ 0, %bb.c ], [ %.sroa.15.0.i, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread.i ]
  %i.p = call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E8as_sliceCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k) #20, !noalias !619 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 3 uses
  %i.r = extractvalue { ptr, i64 } %i.p, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.d
  %.sroa.15.0.i = phi i64 [ 0, %bb.d ], [ %i.z, %.backedge.i.backedge ] ; 3 uses
  %.sroa.12.0.i = phi i64 [ %.sroa.033.0.i, %bb.d ], [ 0, %.backedge.i.backedge ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.q, %bb.d ], [ %.sink.i.ph.i.i, %.backedge.i.backedge ] ; 4 uses
  %.not.i.i.i = icmp eq i64 %.sroa.12.0.i, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f, !prof !21

bb.e:                                             ; preds = %.backedge.i
  %i.u = icmp eq ptr %.sroa.0.0.i, %i.s
  br i1 %i.u, label %.critedge, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i

bb.f:                                             ; preds = %.backedge.i
  %i.v = ptrtoint ptr %.sroa.0.0.i to i64
  %i.w = sub nuw i64 %i.t, %i.v
  %i.x = lshr exact i64 %i.w, 3
  %.not.i.i.i.i = icmp ult i64 %.sroa.12.0.i, %i.x
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %.sroa.12.0.i
  br i1 %.not.i.i.i.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i, label %.critedge

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.ph.i.ph.i.i = phi ptr [ %i.y, %bb.f ], [ %.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sink.i.ph.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.ph.i.i, i64 8
  %i.z = add i64 %.sroa.15.0.i, 1
  %i.aa = load i64, ptr %.sroa.0.0.ph.i.ph.i.i, align 8, !noalias !619, !noundef !5 ; 3 uses
  %i.ab = call noundef align 16 ptr @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.o, i64 noundef %i.aa) #20, !noalias !619 ; 5 uses
  %.not41.i = icmp eq ptr %i.ab, null
  br i1 %.not41.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2480 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 3368 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !619, !noundef !5 ; 2 uses
  %i.af = icmp ult i64 %2, %i.ae
  br i1 %i.af, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @338) #22, !noalias !619
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i: ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 3360 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 16, !noalias !619, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %2
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !619, !noundef !5
  %i.ak = call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails20max_borrowed_samplesCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.ac) #20, !noalias !619
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %.backedge.i.backedge, label %bb.i

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread.i: ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i, %bb.k, %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEENtNtNtB8_6traits8iterator8Iterator4nextCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i
  %i.am = call { i64, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E6removeCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %.sroa.15.0.i) #20, !noalias !619 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !619
  call void @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11remove_implCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([3648 x i8]) align 16 captures(none) dereferenceable(3648) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.o, i64 noundef %i.aa) #20, !noalias !619
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef align 16 dereferenceable(3648) %i.a) #20, !noalias !619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !619
  br label %bb.d

bb.i:                                             ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !619
  call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE23receive_from_connectionCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef align 16 captures(none) dereferenceable(80) %i.b, ptr noundef nonnull align 16 %1, ptr noundef nonnull align 16 %i.ab, i64 noundef %i.aa, i64 noundef %2) #20, !noalias !619
  %i.an = load i128, ptr %i.b, align 16, !range !620, !noalias !619, !noundef !5 ; 2 uses
  %i.ao = icmp eq i128 %i.an, 2
  %i.ap = load i8, ptr %.sroa.436.0..sroa_idx.i, align 16, !noalias !619 ; 2 uses
  %i.aq = load i8, ptr %.sroa.537.0..sroa_idx.i, align 1, !noalias !619 ; 2 uses
  br i1 %i.ao, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.727.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.638.0..sroa_idx.i, i64 62, i1 false), !noalias !619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !619
  %i.ar = trunc nuw i128 %i.an to i1
  br i1 %i.ar, label %.loopexit, label %bb.k

.loopexit:                                        ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.3.sroa.3.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.727.i, i64 62, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.727.i)
  store i128 1, ptr %0, align 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.ap, ptr %.sroa.3.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.aq, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.615.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.3.sroa.3.i, i64 62, i1 false)
  br label %bb.x

bb.k:                                             ; preds = %bb.j
  %i.as = call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails18number_of_channelsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.ac) #20, !noalias !619 ; 2 uses
  %.not21.i.i = icmp eq i64 %i.as, 0
  br i1 %.not21.i.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i
  %.sroa.0.016.i.i = phi i1 [ %i.aw, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i ], [ false, %bb.k ]
  %.sroa.03.015.i.i = phi i1 [ %i.bb, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i ], [ false, %bb.k ]
  %.sroa.09.014.i.i = phi i64 [ %i.bd, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i ], [ 0, %bb.k ] ; 5 uses
  %i.at = call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver8has_dataCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.ac, i64 noundef %.sroa.09.014.i.i) #20, !noalias !619
  %i.au = load i64, ptr %i.ad, align 8, !noalias !619, !noundef !5 ; 2 uses
  %i.av = icmp ult i64 %.sroa.09.014.i.i, %i.au
  br i1 %i.av, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.014.i.i, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @338) #22, !noalias !619
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i: ; preds = %.lr.ph.i.i
  %i.aw = or i1 %.sroa.0.016.i.i, %i.at           ; 2 uses
  %i.ax = load ptr, ptr %i.ag, align 16, !noalias !619, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.09.014.i.i
  %i.az = load i64, ptr %i.ay, align 8, !noalias !619, !noundef !5
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = or i1 %.sroa.03.015.i.i, %i.ba          ; 3 uses
  %i.bc = and i1 %i.aw, %i.bb
  %i.bd = add nuw i64 %.sroa.09.014.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.as
  %or.cond.not.i.i = select i1 %i.bc, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.not.i.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i, label %.lr.ph.i.i

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i: ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i
  br i1 %i.bb, label %.backedge.i.backedge, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.thread.i

.backedge.i.backedge:                             ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i
  br label %.backedge.i

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !619
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.727.i)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.ap, ptr %i.be, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.aq, ptr %i.bf, align 1
  store i128 2, ptr %0, align 16
  br label %bb.x

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.727.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @77, ptr %i.f, align 8, !captures !23
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 22, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.bi = call { i64, ptr } @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE24next_available_key_afterCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.bh, i64 noundef 0) #20 ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bi, 1      ; 2 uses
  %.not68118123 = icmp eq ptr %i.bj, null
  br i1 %.not68118123, label %.outer._crit_edge.thread, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.critedge
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %i.bk = phi ptr [ %i.bj, %.lr.ph.lr.ph ], [ %i.cl, %.outer ]
  %.pn = phi { i64, ptr } [ %i.bi, %.lr.ph.lr.ph ], [ %i.ck, %.outer ]
  %.sroa.020.0.ph125 = phi i1 [ true, %.lr.ph.lr.ph ], [ false, %.outer ]
  %.sroa.018.0.ph124 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %i.bu, %.outer ]
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.q
  %i.bl = phi ptr [ %i.bk, %.lr.ph ], [ %i.cb, %bb.q ] ; 4 uses
  %.pn.pn = phi { i64, ptr } [ %.pn, %.lr.ph ], [ %i.ca, %bb.q ]
  %.sroa.018.0119 = phi i32 [ %.sroa.018.0.ph124, %.lr.ph ], [ %.sroa.018.1, %bb.q ] ; 2 uses
  %i.bm = extractvalue { i64, ptr } %.pn.pn, 0    ; 2 uses
  %i.bn = add i64 %i.bm, 1                        ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 2480 ; 2 uses
  %i.bp = call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver8has_dataCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.bo, i64 noundef %2) #20
  br i1 %i.bp, label %bb.o, label %bb.q

.outer._crit_edge:                                ; preds = %bb.q
  %i.bq = icmp ne i32 %.sroa.018.1, 0
  %or.cond.not = select i1 %.sroa.020.0.ph125, i1 %i.bq, i1 false
  br i1 %or.cond.not, label %bb.w, label %.outer._crit_edge.thread

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 3368
  %i.bs = load i64, ptr %i.br, align 8, !noundef !5 ; 2 uses
  %i.bt = icmp ult i64 %2, %i.bs
  br i1 %i.bt, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @338) #22
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit: ; preds = %bb.o
  %i.bu = add i32 %.sroa.018.0119, 1              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 3360
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !5, !noundef !5
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %2
  %i.by = load i64, ptr %i.bx, align 8, !noundef !5
  %i.bz = call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails20max_borrowed_samplesCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.bo) #20
  %.not = icmp ult i64 %i.by, %i.bz
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit, %bb.n
  %.sroa.018.1 = phi i32 [ %i.bu, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit ], [ %.sroa.018.0119, %bb.n ] ; 2 uses
  %i.ca = call { i64, ptr } @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE24next_available_key_afterCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.bh, i64 noundef %i.bn) #20 ; 2 uses
  %i.cb = extractvalue { i64, ptr } %i.ca, 1      ; 2 uses
  %.not68 = icmp eq ptr %i.cb, null
  br i1 %.not68, label %.outer._crit_edge, label %bb.n

bb.r:                                             ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cc = load ptr, ptr %i.g, align 8, !nonnull !5, !align !11, !noundef !5
  call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE23receive_from_connectionCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef align 16 captures(none) dereferenceable(80) %i.e, ptr noundef nonnull align 16 %i.cc, ptr noundef nonnull align 16 %i.bl, i64 noundef %i.bm, i64 noundef %2) #20
  %i.cd = load i128, ptr %i.e, align 16, !range !620, !noundef !5 ; 2 uses
  %i.ce = icmp eq i128 %i.cd, 2
  %i.cf = load i8, ptr %.sroa.452.0..sroa_idx, align 16 ; 2 uses
  %i.cg = load i8, ptr %.sroa.553.0..sroa_idx, align 1 ; 2 uses
  br i1 %i.ce, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.cf, ptr %i.ch, align 16
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.cg, ptr %i.ci, align 1
  store i128 2, ptr %0, align 16
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.641, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.654.0..sroa_idx, i64 62, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cj = trunc nuw i128 %i.cd to i1
  br i1 %i.cj, label %bb.u, label %.outer

bb.u:                                             ; preds = %bb.t
  store i128 1, ptr %0, align 16
  %.sroa.339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.cf, ptr %.sroa.339.0..sroa_idx, align 16
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.cg, ptr %.sroa.540.0..sroa_idx, align 1
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.641.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.641, i64 62, i1 false)
  br label %bb.v

.outer:                                           ; preds = %bb.t
  %i.ck = call { i64, ptr } @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE24next_available_key_afterCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noundef nonnull align 8 %i.bh, i64 noundef %i.bn) #20 ; 2 uses
  %i.cl = extractvalue { i64, ptr } %i.ck, 1      ; 2 uses
  %.not68118 = icmp eq ptr %i.cl, null
  br i1 %.not68118, label %.outer._crit_edge.thread, label %.lr.ph

bb.v:                                             ; preds = %bb.s, %bb.u, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

.outer._crit_edge.thread:                         ; preds = %.outer, %.critedge, %.outer._crit_edge
  store i128 0, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.w:                                             ; preds = %.outer._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.458.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger, ptr %.sroa.462.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.d, ptr noundef nonnull @78, ptr noundef nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.cm, align 16
  store i128 2, ptr %0, align 16
  br label %bb.v

bb.x:                                             ; preds = %bb.m, %.loopexit, %.outer._crit_edge.thread, %bb.v
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE23push_with_overflow_implCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !627, !noundef !5
  %i.i = sub i64 %i.h, %i.b
  %i.j = urem i64 %i.i, %i.b
  %i.k = add i64 %i.b, -1
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !627, !noundef !5
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load <2 x i64>, ptr %i.l, align 8, !noalias !628
  store <2 x i64> %i.n, ptr %i.m, align 8, !alias.scope !626
  br label %_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit

_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.o = phi i64 [ %i.b, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  %storemerge = phi i64 [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.p = icmp eq i64 %i.d, 0
  br i1 %i.p, label %bb.d, label %_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE14unchecked_pushCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit

bb.d:                                             ; preds = %_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #22, !noalias !629
  unreachable

_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE14unchecked_pushCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit: ; preds = %_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !629, !noundef !5 ; 2 uses
end_hunk_1
