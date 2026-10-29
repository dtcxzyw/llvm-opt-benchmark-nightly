Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iox2_service.iox2_service.771596196ace3571-cgu.06?download=true
inline.NumInlined: 763
inline.NumDeleted: 336
begin_hunk_0_@_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE26prepare_connection_removalCsadSKrpJ73hd_12iox2_service:bb.a
bb.ac:                                            ; preds = %bb.ah, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.q, ptr %i.g, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.434.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.p, ptr %i.f, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.438.0..sroa_idx, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.n, ptr %i.dd, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.442.0..sroa_idx, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.m, ptr %i.de, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.446.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @1, ptr noundef nonnull %i.g, ptr noundef nonnull @91, ptr noundef nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.450.0..sroa_idx, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.p, ptr %i.df, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.454.0..sroa_idx, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.n, ptr %i.dg, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.458.0..sroa_idx, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.m, ptr %i.dh, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.462.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @92, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #18
  unreachable

bb.ad:                                            ; preds = %_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_40find_connection_without_data_and_borrows0ECsadSKrpJ73hd_12iox2_service.exit
  %i.di = tail call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E4pushCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bk, i64 noundef %i.ab) #17
  %.not81 = icmp eq i8 %i.di, 2
  br i1 %.not81, label %bb.af, label %bb.ab

bb.ae:                                            ; preds = %_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_40find_connection_without_data_and_borrows0ECsadSKrpJ73hd_12iox2_service.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call fastcc void @_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_31find_connection_without_borrows0ECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull align 8 %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bk) #17
  %i.dj = load i64, ptr %i.k, align 8, !range !12, !noundef !5
  %i.dk = trunc nuw i64 %i.dj to i1
  br i1 %i.dk, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.z, %bb.ad, %bb.ah, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCsadSKrpJ73hd_12iox2_service.exit.thread

bb.ag:                                            ; preds = %bb.ae
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !5
  %i.dn = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.q, ptr %i.j, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.412.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.p, ptr %i.i, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.416.0..sroa_idx, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.o, ptr %i.dp, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.420.0..sroa_idx, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.m, ptr %i.dq, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.424.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.j, ptr noundef nonnull @90, ptr noundef nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dr = call { i64, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E6removeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bk, i64 noundef %i.dm) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call fastcc void @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11remove_implCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 16 captures(none) dereferenceable(3648) %i.h, ptr noalias nofree noundef align 8 dereferenceable(200) %i.ad, i64 noundef %i.do) #17
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 16 dereferenceable(3648) %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ds = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E4pushCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bk, i64 noundef %i.ab) #17
  %.not82 = icmp eq i8 %i.ds, 2
  br i1 %.not82, label %bb.af, label %bb.ac, !prof !8
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE30finish_update_connection_cycleCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 16 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtB9_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) #17 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 3 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.thread, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.lr.ph

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.lr.ph: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1264
  br label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit: ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.lr.ph, %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.thread
  %.sroa.0.034 = phi ptr [ %i.c, %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.lr.ph ], [ %i.k, %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.thread ] ; 3 uses
  %.sroa.7.033 = phi i64 [ 0, %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.lr.ph ], [ %i.l, %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.thread ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 16 ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.7.033, 1
  %i.m = load i64, ptr %.sroa.0.034, align 8, !range !12, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.b, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.thread

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.thread: ; preds = %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 3 uses
  %i.q = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %i.a, align 8, !noundef !5
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.p
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 4 uses
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val5.i = load ptr, ptr %i.i, align 8, !noundef !5
  %i.x = getelementptr inbounds nuw [3648 x i8], ptr %.val5.i, i64 %i.t ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2480
  %i.z = load i64, ptr %i.y, align 16, !range !6, !noundef !5
  %.not.i = icmp eq i64 %i.z, 2
  br i1 %.not.i, label %bb.h, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit, !prof !7

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #18
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #18
  unreachable

_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.thread: ; preds = %bb.c, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE17remove_connectionCsadSKrpJ73hd_12iox2_service.exit, %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit, %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit
  %i.aa = icmp eq ptr %i.k, %i.e
  br i1 %i.aa, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.thread, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit

_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 3640
  %i.ac = load atomic i8, ptr %i.ab monotonic, align 8
  %i.ad = load atomic i8, ptr %i.j monotonic, align 16
  %i.ae = icmp eq i8 %i.ac, %i.ad
  br i1 %i.ae, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.thread, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit
  tail call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE26prepare_connection_removalCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 16 %0, i64 noundef %.sroa.7.033) #17
  %i.af = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtB9_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %0) #17 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 1      ; 2 uses
  %i.ah = icmp ult i64 %.sroa.7.033, %i.ag
  br i1 %i.ah, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE17remove_connectionCsadSKrpJ73hd_12iox2_service.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.033, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #18
  unreachable

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE17remove_connectionCsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.i
  %i.ai = extractvalue { ptr, i64 } %i.af, 0
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.sroa.7.033
  store i64 0, ptr %i.aj, align 8
  br label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.thread
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE7receiveCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 16 %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3648 x i8], align 16             ; 5 uses
  %.sroa.727.i = alloca [62 x i8], align 2        ; 6 uses
  %i.b = alloca [80 x i8], align 16               ; 8 uses
  %.sroa.3.sroa.3.i = alloca [62 x i8], align 2   ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.641 = alloca [62 x i8], align 2          ; 2 uses
  %i.e = alloca [80 x i8], align 16               ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.727.i)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1224
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !480, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1232 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1248
  %i.m = load i64, ptr %i.l, align 16, !noalias !480, !noundef !5
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %.sroa.638.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 2480 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i, %bb.c
  %.sroa.033.0.i = phi i64 [ 0, %bb.c ], [ %.sroa.15.0.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i ]
  %i.t = call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k) #17, !noalias !480 ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 3 uses
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.d
  %.sroa.15.0.i = phi i64 [ 0, %bb.d ], [ %i.ad, %.backedge.i.backedge ] ; 3 uses
  %.sroa.12.0.i = phi i64 [ %.sroa.033.0.i, %bb.d ], [ 0, %.backedge.i.backedge ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.u, %bb.d ], [ %.sink.i.ph.i.i, %.backedge.i.backedge ] ; 4 uses
  %.not.i.i.i = icmp eq i64 %.sroa.12.0.i, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %.backedge.i
  %i.y = icmp eq ptr %.sroa.0.0.i, %i.w
  br i1 %i.y, label %.critedge, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.i

bb.f:                                             ; preds = %.backedge.i
  %i.z = ptrtoint ptr %.sroa.0.0.i to i64
  %i.aa = sub nuw i64 %i.x, %i.z
  %i.ab = lshr exact i64 %i.aa, 3
  %.not.i.i.i.i = icmp ult i64 %.sroa.12.0.i, %i.ab
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %.sroa.12.0.i
  br i1 %.not.i.i.i.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.i, label %.critedge

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.ph.i.ph.i.i = phi ptr [ %i.ac, %bb.f ], [ %.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sink.i.ph.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.ph.i.i, i64 8
  %i.ad = add i64 %.sroa.15.0.i, 1
  %i.ae = load i64, ptr %.sroa.0.0.ph.i.ph.i.i, align 8, !noalias !480, !noundef !5 ; 5 uses
  %i.af = load i64, ptr %i.p, align 8, !noalias !480, !noundef !5 ; 2 uses
  %i.ag = icmp ult i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.i
  %.val.i.i = load ptr, ptr %i.o, align 8, !noalias !480, !noundef !5
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ae
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !480, !noundef !5 ; 4 uses
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.thread.i, label %bb.i

bb.h:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.i
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.ae, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #18, !noalias !480
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ak = load i64, ptr %i.q, align 8, !noalias !480, !noundef !5 ; 2 uses
  %i.al = icmp ult i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.val5.i.i = load ptr, ptr %i.r, align 8, !noalias !480, !noundef !5
  %i.am = getelementptr inbounds nuw [3648 x i8], ptr %.val5.i.i, i64 %i.ai ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2480 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 16, !range !6, !noalias !480, !noundef !5
  %.not.i.i = icmp eq i64 %i.ao, 2
  br i1 %.not.i.i, label %bb.l, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.i, !prof !7

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #18, !noalias !480
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #18, !noalias !480
  unreachable

_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 3368 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !480, !noundef !5 ; 2 uses
  %i.ar = icmp ult i64 %2, %i.aq
  br i1 %i.ar, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.i
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @539) #18, !noalias !480
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 3360 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 16, !noalias !480, !nonnull !5, !noundef !5
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %2
  %i.av = load i64, ptr %i.au, align 8, !noalias !480, !noundef !5
  %i.aw = call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails20max_borrowed_samplesCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.an) #17, !noalias !480
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %.backedge.i.backedge, label %bb.o

_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.thread.i: ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit.i, %bb.q, %bb.g
  %i.ay = call { i64, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E6removeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %.sroa.15.0.i) #17, !noalias !480 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !480
  call fastcc void @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11remove_implCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 16 captures(none) dereferenceable(3648) %i.a, ptr noalias nofree noundef align 8 dereferenceable(200) %i.o, i64 noundef %i.ae) #17, !noalias !480
  %i.az = load i64, ptr %i.s, align 16, !range !6, !alias.scope !481, !noalias !480, !noundef !5
  %i.ba = icmp eq i64 %i.az, 2
  br i1 %i.ba, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i, label %bb.n

bb.n:                                             ; preds = %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.thread.i
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details8ReceiverINtNtNtBK_15dynamic_storage19posix_shared_memory7StorageNtBE_20SharedManagementDataEEECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(1160) %i.s) #17, !noalias !480
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment15DataSegmentViewNtNtNtBK_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 16 dereferenceable(3648) %i.a) #17, !noalias !480
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.n, %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !480
  br label %bb.d

bb.o:                                             ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !480
  call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE23receive_from_connectionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 16 captures(none) dereferenceable(80) %i.b, ptr noundef nonnull align 16 %1, ptr noundef nonnull align 16 %i.am, i64 noundef %i.ae, i64 noundef %2) #17, !noalias !480
  %i.bb = load i128, ptr %i.b, align 16, !range !482, !noalias !480, !noundef !5 ; 2 uses
  %i.bc = icmp eq i128 %i.bb, 2
  %i.bd = load i8, ptr %.sroa.436.0..sroa_idx.i, align 16, !noalias !480 ; 2 uses
  %i.be = load i8, ptr %.sroa.537.0..sroa_idx.i, align 1, !noalias !480 ; 2 uses
  br i1 %i.bc, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.727.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.638.0..sroa_idx.i, i64 62, i1 false), !noalias !480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !480
  %i.bf = trunc nuw i128 %i.bb to i1
  br i1 %i.bf, label %.loopexit, label %bb.q

.loopexit:                                        ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.3.sroa.3.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.727.i, i64 62, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.727.i)
  store i128 1, ptr %0, align 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.bd, ptr %.sroa.3.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.be, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.615.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.3.sroa.3.i, i64 62, i1 false)
  br label %bb.ak

bb.q:                                             ; preds = %bb.p
  %i.bg = call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails18number_of_channelsCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.an) #17, !noalias !480 ; 2 uses
  %.not21.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not21.i.i, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i.i
  %.sroa.0.016.i.i = phi i1 [ %i.bk, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i.i ], [ false, %bb.q ]
  %.sroa.03.015.i.i = phi i1 [ %i.bp, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i.i ], [ false, %bb.q ]
  %.sroa.09.014.i.i = phi i64 [ %i.br, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i.i ], [ 0, %bb.q ] ; 5 uses
  %i.bh = call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver8has_dataCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.an, i64 noundef %.sroa.09.014.i.i) #17, !noalias !480
  %i.bi = load i64, ptr %i.ap, align 8, !noalias !480, !noundef !5 ; 2 uses
  %i.bj = icmp ult i64 %.sroa.09.014.i.i, %i.bi
  br i1 %i.bj, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.014.i.i, i64 noundef %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @539) #18, !noalias !480
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bk = or i1 %.sroa.0.016.i.i, %i.bh           ; 2 uses
  %i.bl = load ptr, ptr %i.as, align 16, !noalias !480, !nonnull !5, !noundef !5
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.sroa.09.014.i.i
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !480, !noundef !5
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = or i1 %.sroa.03.015.i.i, %i.bo          ; 3 uses
  %i.bq = and i1 %i.bk, %i.bp
  %i.br = add nuw i64 %.sroa.09.014.i.i, 1        ; 2 uses
  %i.bs = icmp uge i64 %i.br, %i.bg
  %or.cond.not.i.i = select i1 %i.bq, i1 true, i1 %i.bs
  br i1 %or.cond.not.i.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit.i, label %.lr.ph.i.i

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i.i
  br i1 %i.bp, label %.backedge.i.backedge, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.thread.i

.backedge.i.backedge:                             ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit.i, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i
  br label %.backedge.i

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !480
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.727.i)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.bd, ptr %i.bt, align 16
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.be, ptr %i.bu, align 1
  store i128 2, ptr %0, align 16
  br label %bb.ak

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.727.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @98, ptr %i.f, align 8, !captures !18
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 22, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  br label %.outer

.outer:                                           ; preds = %bb.af, %.critedge
  %.sroa.018.0.ph = phi i32 [ 0, %.critedge ], [ %i.cp, %bb.af ] ; 2 uses
  %.sroa.020.0.ph = phi i1 [ true, %.critedge ], [ false, %bb.af ]
  %.sroa.063.0.ph = phi i64 [ 0, %.critedge ], [ %i.cb, %bb.af ] ; 2 uses
  %i.ca = load i64, ptr %i.bx, align 8, !noundef !5 ; 2 uses
  %exitcond.not.i424431.not = icmp ult i64 %.sroa.063.0.ph, %i.ca
  br i1 %exitcond.not.i424431.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.outer, %bb.ac
  %umax.i434 = phi i64 [ %umax.i, %bb.ac ], [ %i.ca, %.outer ]
  %.sroa.063.0433 = phi i64 [ %i.cb, %bb.ac ], [ %.sroa.063.0.ph, %.outer ]
  %.sroa.018.0432 = phi i32 [ %.sroa.018.1, %bb.ac ], [ %.sroa.018.0.ph, %.outer ] ; 3 uses
  %.val.i = load ptr, ptr %i.bw, align 8, !noundef !5
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %exitcond.not.i = icmp eq i64 %i.cb, %umax.i434
  br i1 %exitcond.not.i, label %._crit_edge, label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.t
  %.sroa.03.0.i425 = phi i64 [ %.sroa.063.0433, %.lr.ph ], [ %i.cb, %bb.t ] ; 3 uses
  %i.cb = add i64 %.sroa.03.0.i425, 1             ; 6 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %.sroa.03.0.i425
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !5 ; 4 uses
  %i.ce = icmp eq i64 %i.cd, -1
  br i1 %i.ce, label %bb.t, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = load i64, ptr %i.by, align 8, !noundef !5 ; 2 uses
  %i.cg = icmp ult i64 %i.cd, %i.cf
  br i1 %i.cg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.val7.i = load ptr, ptr %i.bz, align 8, !noundef !5
  %i.ch = getelementptr inbounds nuw [3648 x i8], ptr %.val7.i, i64 %i.cd ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2480 ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 16, !range !6, !noundef !5
  %.not.i = icmp eq i64 %i.cj, 2
  br i1 %.not.i, label %bb.y, label %bb.z, !prof !7

bb.x:                                             ; preds = %bb.v
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #18
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 68, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #18
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.ck = call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver8has_dataCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.ci, i64 noundef %2) #17
  br i1 %i.ck, label %bb.aa, label %bb.ac

._crit_edge:                                      ; preds = %.outer, %bb.ac, %bb.t
  %.sroa.018.0.lcssa = phi i32 [ %.sroa.018.1, %bb.ac ], [ %.sroa.018.0432, %bb.t ], [ %.sroa.018.0.ph, %.outer ]
  %i.cl = icmp ne i32 %.sroa.018.0.lcssa, 0
  %or.cond.not = select i1 %.sroa.020.0.ph, i1 %i.cl, i1 false
  br i1 %or.cond.not, label %bb.aj, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 3368
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !5 ; 2 uses
  %i.co = icmp ult i64 %2, %i.cn
  br i1 %i.co, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @539) #18
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.aa
  %i.cp = add i32 %.sroa.018.0432, 1              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 3360
  %i.cr = load ptr, ptr %i.cq, align 16, !nonnull !5, !noundef !5
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %2
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !5
  %i.cu = call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails20max_borrowed_samplesCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.ci) #17
  %.not = icmp ult i64 %i.ct, %i.cu
  br i1 %.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit, %bb.z
  %.sroa.018.1 = phi i32 [ %i.cp, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit ], [ %.sroa.018.0432, %bb.z ] ; 2 uses
  %i.cv = load i64, ptr %i.bx, align 8, !noundef !5 ; 2 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.cb)
  %exitcond.not.i424.not = icmp ult i64 %i.cb, %i.cv
  br i1 %exitcond.not.i424.not, label %.lr.ph, label %._crit_edge

bb.ad:                                            ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE23receive_from_connectionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 16 captures(none) dereferenceable(80) %i.e, ptr noundef nonnull align 16 %1, ptr noundef nonnull align 16 %i.ch, i64 noundef %.sroa.03.0.i425, i64 noundef %2) #17
  %i.cw = load i128, ptr %i.e, align 16, !range !482, !noundef !5 ; 2 uses
  %i.cx = icmp eq i128 %i.cw, 2
  %i.cy = load i8, ptr %.sroa.452.0..sroa_idx, align 16 ; 2 uses
  %i.cz = load i8, ptr %.sroa.553.0..sroa_idx, align 1 ; 2 uses
  br i1 %i.cx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.cy, ptr %i.da, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.cz, ptr %i.db, align 1
  store i128 2, ptr %0, align 16
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.641, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.654.0..sroa_idx, i64 62, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dc = trunc nuw i128 %i.cw to i1
  br i1 %i.dc, label %bb.ag, label %.outer

bb.ag:                                            ; preds = %bb.af
  store i128 1, ptr %0, align 16
  %.sroa.339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.cy, ptr %.sroa.339.0..sroa_idx, align 16
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.cz, ptr %.sroa.540.0..sroa_idx, align 1
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.641.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.641, i64 62, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.ag, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ak

bb.ai:                                            ; preds = %._crit_edge
  store i128 0, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.458.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.462.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.d, ptr noundef nonnull @99, ptr noundef nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.dd, align 16
  store i128 2, ptr %0, align 16
  br label %bb.ah

bb.ak:                                            ; preds = %bb.s, %.loopexit, %bb.ai, %bb.ah
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs3_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtB1g_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB1g_13shared_memory6common7details6MemoryB2o_INtNtNtB1g_15dynamic_storage19posix_shared_memory7StorageINtB3l_16AllocatorDetailsB2o_EEEENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE3newCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [200 x i8], align 8               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB2_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitjEE14new_with_allocCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1) #17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  call void @_RNvMNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB2_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap13FreeListEntryEE14new_with_allocCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %1) #17
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  call void @_RNvMNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB2_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitINtNtB1v_6option6OptionINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtB2N_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB2N_13shared_memory6common7details6MemoryB3V_INtNtNtB2N_15dynamic_storage19posix_shared_memory7StorageINtB4S_16AllocatorDetailsB3V_EEEEEEE14new_with_allocCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %1) #17
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  call void @_RNvMNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB2_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitjEE14new_with_allocCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %1) #17
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i64 %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  store i64 %1, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  store i64 %1, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 3 uses
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i8 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i64 0, ptr %i.g, align 8
  %.not10.i = icmp eq i64 %1, 0
  br i1 %.not10.i, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtB1g_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB1g_13shared_memory6common7details6MemoryB2o_INtNtNtB1g_15dynamic_storage19posix_shared_memory7StorageINtB3l_16AllocatorDetailsB2o_EEEENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE26initialize_data_structuresCsadSKrpJ73hd_12iox2_service.exit, label %.lr.ph.i
end_hunk_0
