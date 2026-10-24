Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iox2_service.iox2_service.771596196ace3571-cgu.06?download=true
inline.NumInlined: 763
inline.NumDeleted: 336
begin_hunk_0
@542 = private unnamed_addr constant [6 x i8] c"header", align 1
@543 = private unnamed_addr constant [11 x i8] c"user_header", align 1
@544 = private unnamed_addr constant [7 x i8] c"payload", align 1
@545 = private unnamed_addr constant [20 x i8] c"InsufficientCapacity", align 1
@546 = private unnamed_addr constant [15 x i8] c"AlreadyAttached", align 1
@547 = private unnamed_addr constant [19 x i8] c"NodeCreationFailure", align 1
@548 = private unnamed_addr constant [22 x i8] c"ServiceCreationFailure", align 1
@549 = private unnamed_addr constant [11 x i8] c"SyncFailure", align 1
@550 = private unnamed_addr constant [22 x i8] c"PublisherCreationError", align 1
@551 = private unnamed_addr constant [22 x i8] c"PublisherAlreadyExists", align 1
@552 = private unnamed_addr constant [21 x i8] c"NotifierAlreadyExists", align 1
@553 = private unnamed_addr constant [43 x i8] c"SubscriberBufferMustBeLargerThanHistorySize", align 1
@554 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage23DynamicStorageOpenErrorNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service }>, align 8
@555 = private unnamed_addr constant [23 x i8] c"DynamicStorageOpenError", align 1
@556 = private unnamed_addr constant [13 x i8] c"NoAttachments", align 1
@557 = private unnamed_addr constant [14 x i8] c"PublishFailure", align 1
@558 = private unnamed_addr constant [13 x i8] c"NotifyFailure", align 1
@559 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service15ServerSpinErrorNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service }>, align 8
@560 = private unnamed_addr constant [15 x i8] c"ServerSpinError", align 1
@561 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeKj8_ENtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service }>, align 8
@562 = private unnamed_addr constant [12 x i8] c"AttributeSet", align 1
@563 = private unnamed_addr constant [20 x i8] c"verify_max_notifiers", align 1
@564 = private unnamed_addr constant [20 x i8] c"verify_max_listeners", align 1
@565 = private unnamed_addr constant [25 x i8] c"verify_event_id_max_value", align 1
@566 = private unnamed_addr constant [15 x i8] c"verify_deadline", align 1
@567 = private unnamed_addr constant [29 x i8] c"verify_notifier_created_event", align 1
@568 = private unnamed_addr constant [29 x i8] c"verify_notifier_dropped_event", align 1
@569 = private unnamed_addr constant [26 x i8] c"verify_notifier_dead_event", align 1
@570 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @383, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @563, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @564, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @397, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @565, [8 x i8] c"\19\00\00\00\00\00\00\00", ptr @566, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @567, [8 x i8] c"\1D\00\00\00\00\00\00\00", ptr @568, [8 x i8] c"\1D\00\00\00\00\00\00\00", ptr @569, [8 x i8] c"\1A\00\00\00\00\00\00\00" }>, align 8
@switch.table._RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service15ServerSpinErrorNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service = private unnamed_addr constant [3 x i8] c"\10\13\0B", align 8
@switch.table._RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service15ServerSpinErrorNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service.62 = private unnamed_addr constant [3 x ptr] [ptr @373, ptr @374, ptr @375], align 8
@switch.table._RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder17publish_subscribe25PublishSubscribeOpenErrorNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service = private unnamed_addr constant [17 x i8] c"\0C\0F\11\1C\16$%3)*$\1C\17\17\0F\17\16", align 8
@switch.table._RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder17publish_subscribe25PublishSubscribeOpenErrorNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service.63 = private unnamed_addr constant [17 x ptr] [ptr @479, ptr @483, ptr @510, ptr @481, ptr @482, ptr @511, ptr @512, ptr @513, ptr @514, ptr @515, ptr @492, ptr @516, ptr @316, ptr @480, ptr @488, ptr @493, ptr @494], align 8
@switch.table._RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder17publish_subscribe27PublishSubscribeCreateErrorNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service = private unnamed_addr constant [7 x i8] c"\17+\0D\17\0F\1F\0F", align 8
@switch.table._RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder17publish_subscribe27PublishSubscribeCreateErrorNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service.64 = private unnamed_addr constant [7 x ptr] [ptr @480, ptr @553, ptr @315, ptr @316, ptr @483, ptr @533, ptr @488], align 8
@switch.table._RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder5event14EventOpenErrorNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service = private unnamed_addr constant [17 x i8] c"\0C\17\17\1C\16\0F\14  \1D\0F((!$\17\16", align 8
@switch.table._RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder5event14EventOpenErrorNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service.65 = private unnamed_addr constant [17 x ptr] [ptr @479, ptr @316, ptr @480, ptr @481, ptr @482, ptr @483, ptr @484, ptr @485, ptr @486, ptr @487, ptr @488, ptr @489, ptr @490, ptr @491, ptr @492, ptr @493, ptr @494], align 8
@switch.table._RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder5event16EventCreateErrorNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service = private unnamed_addr constant [6 x i8] c"\17\0F\1F\0D\0F\17", align 8
@switch.table._RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder5event16EventCreateErrorNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service.66 = private unnamed_addr constant [6 x ptr] [ptr @480, ptr @483, ptr @533, ptr @315, ptr @488, ptr @316], align 8
@switch.table._RNvXs4_NtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storageNtB5_25DynamicStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [4 x i8] c"\0D\17\14\0D", align 8
@switch.table._RNvXs4_NtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storageNtB5_25DynamicStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.67 = private unnamed_addr constant [4 x ptr] [ptr @315, ptr @316, ptr @317, ptr @318], align 8
@switch.table._RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [5 x i8] c"\0D\08\05\17\0D", align 8
@switch.table._RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.68 = private unnamed_addr constant [5 x ptr] [ptr @315, ptr @324, ptr @325, ptr @316, ptr @318], align 8
@switch.table._RNvXsG_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB5_15NodeListFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\17\09\0D", align 8
@switch.table._RNvXsG_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB5_15NodeListFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.69 = private unnamed_addr constant [3 x ptr] [ptr @316, ptr @376, ptr @318], align 8
@switch.table._RNvXsm_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_22WaitSetAttachmentErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [4 x i8] c"\14\0F\0D\15", align 8
@switch.table._RNvXsm_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_22WaitSetAttachmentErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.70 = private unnamed_addr constant [4 x ptr] [ptr @545, ptr @546, ptr @318, ptr @536], align 8
@switch.table._RNvXsm_NtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7serviceNtB5_13CreationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [7 x i8] c"\17\13\16\0B\16\16\15", align 8
@switch.table._RNvXsm_NtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7serviceNtB5_13CreationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.71 = private unnamed_addr constant [7 x ptr] [ptr @316, ptr @547, ptr @548, ptr @549, ptr @550, ptr @551, ptr @552], align 8
@switch.table._RNvXst_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_15WaitSetRunErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\17\0D\0D", align 8
@switch.table._RNvXst_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_15WaitSetRunErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.72 = private unnamed_addr constant [3 x ptr] [ptr @316, ptr @318, ptr @556], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMNtCs3stRo7scs5B_22iceoryx2_bb_elementary13cyclic_taggerNtB3_12CyclicTagger3tagINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender10ConnectionNtNtNtB1s_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull align 16 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1152
  %i.b = load atomic i8, ptr %0 monotonic, align 1
  store atomic i8 %i.b, ptr %i.a monotonic, align 16
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5eventNtB3_13DynamicConfig19remove_dead_node_idNCNvYNtNtB7_3ipc7ServiceINtNtB7_8internal15ServiceInternalB1K_E35___internal_remove_node_from_service0ECsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i64 @_RNvMs0_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB5_12UniqueNodeId8owner_id(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) #17
  %i.b = tail call noundef zeroext i1 @_RINvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15ListenerDetailsE7recoverNCINvMB1i_NtB1i_13DynamicConfig19remove_dead_node_idNCNvYNtNtB1m_3ipc7ServiceINtNtB1m_8internal15ServiceInternalB3A_E35___internal_remove_node_from_service0E0ECsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0, i64 noundef %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true) #17 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = tail call noundef i64 @_RNvMs0_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB5_12UniqueNodeId8owner_id(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) #17
  %i.e = tail call noundef zeroext i1 @_RINvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15NotifierDetailsE7recoverNCINvMB1i_NtB1i_13DynamicConfig19remove_dead_node_idNCNvYNtNtB1m_3ipc7ServiceINtNtB1m_8internal15ServiceInternalB3A_E35___internal_remove_node_from_service0Es_0ECsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.c, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true) #17 ; 0 uses
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11ipc_capable8internalINtB6_13HandleStorageNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux15pthread_mutex_tE7cleanupNCNvXsj_NtBa_5mutexINtB2K_11MutexHandleINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop0ECsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread21pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %0) #17, !noalias !34
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_RNCNvXsj_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB7_11MutexHandleINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop0CsadSKrpJ73hd_12iox2_service.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35
  store ptr %1, ptr %i.a, align 8, !noalias !35
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEENtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !35
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.a, ptr noundef nonnull @42, ptr noundef nonnull inttoptr (i64 179 to ptr)) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35
  br label %_RNCNvXsj_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB7_11MutexHandleINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop0CsadSKrpJ73hd_12iox2_service.exit

_RNCNvXsj_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB7_11MutexHandleINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop0CsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 41
  store atomic i8 0, ptr %i.d monotonic, align 1
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_31find_connection_without_borrows0ECsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) #17 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.thread, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit

bb.b:                                             ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit
  %i.i = icmp eq ptr %i.j, %i.d
  br i1 %i.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.thread, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0139 = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.7.0138 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0139, i64 8 ; 2 uses
  %i.k = add i64 %.sroa.7.0138, 1
  %i.l = load i64, ptr %.sroa.0.0139, align 8, !noundef !5 ; 4 uses
  %i.m = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit
  %.val.i = load ptr, ptr %1, align 8, !noundef !5
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.l
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 4 uses
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.thread.sink.split, label %bb.e

bb.d:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val5.i = load ptr, ptr %i.g, align 8, !noundef !5
  %i.t = getelementptr inbounds nuw [3648 x i8], ptr %.val5.i, i64 %i.p ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2480 ; 3 uses
  %i.v = load i64, ptr %i.u, align 16, !range !6, !noundef !5
  %.not.i = icmp eq i64 %i.v, 2
  br i1 %.not.i, label %bb.h, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit, !prof !7

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #18
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #18
  unreachable

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.thread.sink.split: ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit, %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0138, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.thread

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.thread: ; preds = %bb.b, %bb.a, %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.thread.sink.split
  ret void

_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.f
  %i.y = tail call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails18number_of_channelsCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.u) #17 ; 2 uses
  %.not21.i = icmp eq i64 %i.y, 0
  br i1 %.not21.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.thread.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 3368
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 3360
  br label %bb.i

bb.i:                                             ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i, %.lr.ph.i
  %.sroa.0.016.i = phi i1 [ false, %.lr.ph.i ], [ %i.ae, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i ]
  %.sroa.03.015.i = phi i1 [ false, %.lr.ph.i ], [ %i.aj, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i ]
  %.sroa.09.014.i = phi i64 [ 0, %.lr.ph.i ], [ %i.al, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i ] ; 5 uses
  %i.ab = tail call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver8has_dataCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.u, i64 noundef %.sroa.09.014.i) #17
  %i.ac = load i64, ptr %i.z, align 8, !noundef !5 ; 2 uses
  %i.ad = icmp ult i64 %.sroa.09.014.i, %i.ac
  br i1 %i.ad, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.014.i, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @539) #18
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.i
  %i.ae = or i1 %.sroa.0.016.i, %i.ab             ; 2 uses
  %i.af = load ptr, ptr %i.aa, align 16, !nonnull !5, !noundef !5
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.09.014.i
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !5
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = or i1 %.sroa.03.015.i, %i.ai            ; 3 uses
  %i.ak = and i1 %i.ae, %i.aj
  %i.al = add nuw i64 %.sroa.09.014.i, 1          ; 2 uses
  %3 = icmp uge i64 %i.al, %i.y
  %or.cond.not.i = select i1 %i.ak, i1 true, i1 %3
  br i1 %or.cond.not.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit, label %bb.i

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit: ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i
  br i1 %i.aj, label %bb.b, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.thread.sink.split
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i1, i8 } @_RINvMse_NtCsg6ZEkMtNi4J_8iceoryx27waitsetINtB6_7WaitSetNtNtNtB8_7service3ipc7ServiceE16handle_deadlinesQNCNvNtNtCsadSKrpJ73hd_12iox2_service7command9discovery9discoverys0_0EB1M_(ptr noundef nonnull align 16 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 3 uses
  %i.n = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.n, align 8
  store ptr @26, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 60, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = load i64, ptr %i.p, align 16, !noundef !5 ; 2 uses
  %i.r = icmp ult i64 %i.q, 9223372036854775807
  br i1 %i.r, label %_RNvMst_NtCs8Chj7Szqq0n_4core4cellINtB5_7RefCellINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEE6borrowCsadSKrpJ73hd_12iox2_service.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18
  unreachable

_RNvMst_NtCs8Chj7Szqq0n_4core4cellINtB5_7RefCellINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEE6borrowCsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.a
  %i.s = add nuw nsw i64 %i.q, 1
  store i64 %i.s, ptr %i.p, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.u, ptr %i.j, align 8, !noalias !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !44
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.w = load i32, ptr %i.v, align 8, !range !9, !noalias !44, !noundef !5
  call void @_RNvMs8_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtB5_4Time14now_with_clock(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i32 noundef %i.w) #17, !noalias !44
  %i.x = load i32, ptr %i.h, align 8, !range !10, !noalias !44, !noundef !5
  %.not.i = icmp eq i32 %i.x, 2                   ; 2 uses
  br i1 %.not.i, label %bb.p, label %bb.c

bb.c:                                             ; preds = %_RNvMst_NtCs8Chj7Szqq0n_4core4cellINtB5_7RefCellINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEE6borrowCsadSKrpJ73hd_12iox2_service.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !44
  %i.y = call { i64, i32 } @_RNvMs8_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtB5_4Time11as_duration(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i) #17, !noalias !44 ; 2 uses
  %i.z = extractvalue { i64, i32 } %i.y, 0
  %i.aa = extractvalue { i64, i32 } %i.y, 1       ; 2 uses
  %i.ab = zext i64 %i.z to i128
  %i.ac = mul nuw nsw i128 %i.ab, 1000000000
  %i.ad = icmp ult i32 %i.aa, 1000000000
  call void @llvm.assume(i1 %i.ad)
  %i.ae = zext nneg i32 %i.aa to i128
  %i.af = add nuw nsw i128 %i.ac, %i.ae           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 16, !noalias !45, !noundef !5 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %_RNvMst_NtCs8Chj7Szqq0n_4core4cellINtB5_7RefCelloE6borrowCsadSKrpJ73hd_12iox2_service.exit.i.i, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs8Chj7Szqq0n_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18, !noalias !45
  unreachable

_RNvMst_NtCs8Chj7Szqq0n_4core4cellINtB5_7RefCelloE6borrowCsadSKrpJ73hd_12iox2_service.exit.i.i: ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ak = load i128, ptr %i.aj, align 16, !noalias !45, !noundef !5
  %i.al = load i64, ptr %i.u, align 16, !noalias !45, !noundef !5 ; 3 uses
  %i.am = icmp ult i64 %i.al, 9223372036854775807
  br i1 %i.am, label %_RNvMst_NtCs8Chj7Szqq0n_4core4cellINtB5_7RefCellINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue10AttachmentEE6borrowCsadSKrpJ73hd_12iox2_service.exit.i.i, label %bb.e, !prof !8

bb.e:                                             ; preds = %_RNvMst_NtCs8Chj7Szqq0n_4core4cellINtB5_7RefCelloE6borrowCsadSKrpJ73hd_12iox2_service.exit.i.i
  call void @_RNvNtCs8Chj7Szqq0n_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18, !noalias !45
  unreachable

_RNvMst_NtCs8Chj7Szqq0n_4core4cellINtB5_7RefCellINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue10AttachmentEE6borrowCsadSKrpJ73hd_12iox2_service.exit.i.i: ; preds = %_RNvMst_NtCs8Chj7Szqq0n_4core4cellINtB5_7RefCelloE6borrowCsadSKrpJ73hd_12iox2_service.exit.i.i
  %i.an = add nuw nsw i64 %i.al, 1
  store i64 %i.an, ptr %i.u, align 16, !noalias !45
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ap = load ptr, ptr %i.ao, align 16, !noalias !45, !nonnull !5, !noundef !5 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !45, !noundef !5 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.ar, 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i.i
  %i.at = icmp eq i64 %i.ar, 0
  br i1 %i.at, label %_RINvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queueNtB6_13DeadlineQueue23handle_missed_deadlinesNCINvB2_16missed_deadlinesNCINvMse_NtCsg6ZEkMtNi4J_8iceoryx27waitsetINtB2d_7WaitSetNtNtNtB2f_7service3ipc7ServiceE16handle_deadlinesQNCNvNtNtCsadSKrpJ73hd_12iox2_service7command9discovery9discoverys0_0E0E0EB3V_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMst_NtCs8Chj7Szqq0n_4core4cellINtB5_7RefCellINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue10AttachmentEE6borrowCsadSKrpJ73hd_12iox2_service.exit.i.i
  %i.au = ptrtoint ptr %0 to i64                  ; 4 uses
  %.sroa.46.0..sroa_idx.i.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.57.0..sroa_idx.i.i7.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.68.0..sroa_idx.i.i8.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.515.0..sroa_idx.i.i10.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.616.0..sroa_idx.i.i11.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.68.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.515.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.616.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val17.i.i9.i.i = load ptr, ptr %1, align 8, !nonnull !5, !align !11 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.sroa.0.017.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %i.av, %bb.j ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 48 ; 2 uses
  %i.aw = load i128, ptr %.sroa.0.017.i.i, align 16, !noalias !45, !noundef !5 ; 3 uses
  %i.ax = icmp eq i128 %i.aw, 0
  br i1 %i.ax, label %bb.g, label %bb.k

._crit_edge.loopexit.i.i:                         ; preds = %bb.j
  %.pre.i.i = load i64, ptr %i.u, align 16, !noalias !45
  %i.ay = add i64 %.pre.i.i, -1
  %.pre.i = load i64, ptr %i.ag, align 16, !noalias !44
  br label %_RINvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queueNtB6_13DeadlineQueue23handle_missed_deadlinesNCINvB2_16missed_deadlinesNCINvMse_NtCsg6ZEkMtNi4J_8iceoryx27waitsetINtB2d_7WaitSetNtNtNtB2f_7service3ipc7ServiceE16handle_deadlinesQNCNvNtNtCsadSKrpJ73hd_12iox2_service7command9discovery9discoverys0_0E0E0EB3V_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 32
  %i.ba = load i64, ptr %i.az, align 16, !noalias !45, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !45
  store i64 %i.ba, ptr %i.f, align 8, !noalias !46
  %i.bb = call noundef align 4 ptr @_RINvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE3getB18_ECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) #17, !noalias !46 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !46
  %i.bc = load i32, ptr %i.bb, align 4, !noalias !46, !noundef !5
  store i32 1, ptr %i.e, align 8, !noalias !46
  store i32 %i.bc, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 4, !noalias !46
  store i64 %i.au, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !46
  store i64 %i.ba, ptr %.sroa.68.0..sroa_idx.i.i.i.i, align 8, !noalias !46
  call fastcc void @_RNvXs1_NtNtNtCs8Chj7Szqq0n_4core3ops8function5implsQNCNvNtNtCsadSKrpJ73hd_12iox2_service7command9discovery9discoverys0_0INtB7_5FnMutTINtNtCsg6ZEkMtNi4J_8iceoryx27waitset19WaitSetAttachmentIdNtNtNtB2c_7service3ipc7ServiceEEE8call_mutBW_(ptr nonnull %.val17.i.i9.i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46
  br label %_RNCINvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queueNtB8_13DeadlineQueue16missed_deadlinesNCINvMse_NtCsg6ZEkMtNi4J_8iceoryx27waitsetINtB1I_7WaitSetNtNtNtB1K_7service3ipc7ServiceE16handle_deadlinesQNCNvNtNtCsadSKrpJ73hd_12iox2_service7command9discovery9discoverys0_0E0E0B3q_.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !46
  store i32 0, ptr %i.d, align 8, !noalias !46
  store i64 %i.au, ptr %.sroa.515.0..sroa_idx.i.i.i.i, align 8, !noalias !46
  store i64 %i.ba, ptr %.sroa.616.0..sroa_idx.i.i.i.i, align 8, !noalias !46
  call fastcc void @_RNvXs1_NtNtNtCs8Chj7Szqq0n_4core3ops8function5implsQNCNvNtNtCsadSKrpJ73hd_12iox2_service7command9discovery9discoverys0_0INtB7_5FnMutTINtNtCsg6ZEkMtNi4J_8iceoryx27waitset19WaitSetAttachmentIdNtNtNtB2c_7service3ipc7ServiceEEE8call_mutBW_(ptr nonnull %.val17.i.i9.i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46
  br label %_RNCINvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queueNtB8_13DeadlineQueue16missed_deadlinesNCINvMse_NtCsg6ZEkMtNi4J_8iceoryx27waitsetINtB1I_7WaitSetNtNtNtB1K_7service3ipc7ServiceE16handle_deadlinesQNCNvNtNtCsadSKrpJ73hd_12iox2_service7command9discovery9discoverys0_0E0E0B3q_.exit.i.i

_RNCINvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queueNtB8_13DeadlineQueue16missed_deadlinesNCINvMse_NtCsg6ZEkMtNi4J_8iceoryx27waitsetINtB1I_7WaitSetNtNtNtB1K_7service3ipc7ServiceE16handle_deadlinesQNCNvNtNtCsadSKrpJ73hd_12iox2_service7command9discovery9discoverys0_0E0E0B3q_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !45
  br label %bb.j

bb.j:                                             ; preds = %_RNCINvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queueNtB8_13DeadlineQueue16missed_deadlinesNCINvMse_NtCsg6ZEkMtNi4J_8iceoryx27waitsetINtB1I_7WaitSetNtNtNtB1K_7service3ipc7ServiceE16handle_deadlinesQNCNvNtNtCsadSKrpJ73hd_12iox2_service7command9discovery9discoverys0_0E0E0B3q_.exit13.i.i, %bb.k, %_RNCINvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queueNtB8_13DeadlineQueue16missed_deadlinesNCINvMse_NtCsg6ZEkMtNi4J_8iceoryx27waitsetINtB1I_7WaitSetNtNtNtB1K_7service3ipc7ServiceE16handle_deadlinesQNCNvNtNtCsadSKrpJ73hd_12iox2_service7command9discovery9discoverys0_0E0E0B3q_.exit.i.i
  %i.bd = icmp eq ptr %i.av, %i.as
  br i1 %i.bd, label %._crit_edge.loopexit.i.i, label %bb.f

bb.k:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 16
  %i.bf = load i128, ptr %i.be, align 16, !noalias !45, !noundef !5 ; 2 uses
  %i.bg = sub i128 %i.af, %i.bf
  %i.bh = call i128 @llvm.usub.sat.i128(i128 %i.ak, i128 %i.bf)
  %i.bi = udiv i128 %i.bh, %i.aw
  %i.bj = udiv i128 %i.bg, %i.aw
  %i.bk = icmp ult i128 %i.bi, %i.bj
  br i1 %i.bk, label %bb.l, label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 32
  %i.bm = load i64, ptr %i.bl, align 16, !noalias !45, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !45
  store i64 %i.bm, ptr %i.c, align 8, !noalias !47
  %i.bn = call noundef align 4 ptr @_RINvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE3getB18_ECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #17, !noalias !47 ; 2 uses
  %.not.i.i5.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i5.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !47
  %i.bo = load i32, ptr %i.bn, align 4, !noalias !47, !noundef !5
  store i32 1, ptr %i.b, align 8, !noalias !47
  store i32 %i.bo, ptr %.sroa.46.0..sroa_idx.i.i6.i.i, align 4, !noalias !47
  store i64 %i.au, ptr %.sroa.57.0..sroa_idx.i.i7.i.i, align 8, !noalias !47
  store i64 %i.bm, ptr %.sroa.68.0..sroa_idx.i.i8.i.i, align 8, !noalias !47
  call fastcc void @_RNvXs1_NtNtNtCs8Chj7Szqq0n_4core3ops8function5implsQNCNvNtNtCsadSKrpJ73hd_12iox2_service7command9discovery9discoverys0_0INtB7_5FnMutTINtNtCsg6ZEkMtNi4J_8iceoryx27waitset19WaitSetAttachmentIdNtNtNtB2c_7service3ipc7ServiceEEE8call_mutBW_(ptr nonnull %.val17.i.i9.i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !47
  br label %_RNCINvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queueNtB8_13DeadlineQueue16missed_deadlinesNCINvMse_NtCsg6ZEkMtNi4J_8iceoryx27waitsetINtB1I_7WaitSetNtNtNtB1K_7service3ipc7ServiceE16handle_deadlinesQNCNvNtNtCsadSKrpJ73hd_12iox2_service7command9discovery9discoverys0_0E0E0B3q_.exit13.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !47
  store i32 0, ptr %i.a, align 8, !noalias !47
  store i64 %i.au, ptr %.sroa.515.0..sroa_idx.i.i10.i.i, align 8, !noalias !47
  store i64 %i.bm, ptr %.sroa.616.0..sroa_idx.i.i11.i.i, align 8, !noalias !47
  call fastcc void @_RNvXs1_NtNtNtCs8Chj7Szqq0n_4core3ops8function5implsQNCNvNtNtCsadSKrpJ73hd_12iox2_service7command9discovery9discoverys0_0INtB7_5FnMutTINtNtCsg6ZEkMtNi4J_8iceoryx27waitset19WaitSetAttachmentIdNtNtNtB2c_7service3ipc7ServiceEEE8call_mutBW_(ptr nonnull %.val17.i.i9.i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !47
  br label %_RNCINvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queueNtB8_13DeadlineQueue16missed_deadlinesNCINvMse_NtCsg6ZEkMtNi4J_8iceoryx27waitsetINtB1I_7WaitSetNtNtNtB1K_7service3ipc7ServiceE16handle_deadlinesQNCNvNtNtCsadSKrpJ73hd_12iox2_service7command9discovery9discoverys0_0E0E0B3q_.exit13.i.i

end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE23receive_from_connectionCsadSKrpJ73hd_12iox2_service:bb.a

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %i.r, ptr %i.k, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 2464 ; 2 uses
  %i.w = load i128, ptr %i.v, align 16, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_15DataSegmentViewNtNtNtBb_7service3ipc7ServiceE29register_and_translate_offsetCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noundef nonnull align 8 %2, i64 noundef %i.r) #17
  %i.x = load i8, ptr %i.j, align 8, !range !20, !noundef !5
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.a
  store i128 0, ptr %0, align 16
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.z = load i64, ptr %2, align 16, !range !6, !noundef !5
  %.not = icmp eq i64 %i.z, 2
  br i1 %.not, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ac = load ptr, ptr %i.m, align 8, !nonnull !5, !align !22, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 336
  %.sroa.416.sroa.6.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details5chunkNtB2_5Chunk3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.416.sroa.6.0..sroa.416.0..sroa_idx.sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(888) %i.ad, i64 noundef %i.ab) #17
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
  %i.af = load i8, ptr %i.ae, align 1, !range !21, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.m, ptr %i.f, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.440.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.v, ptr %i.e, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsY_NtNtCs8Chj7Szqq0n_4core3fmt3numoNtB7_5Debug3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.ag, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offsetNtB5_13PointerOffsetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.f, ptr noundef nonnull @81, ptr noundef nonnull %i.e) #17
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
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.428.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.i, ptr noundef nonnull @82, ptr noundef nonnull inttoptr (i64 555 to ptr)) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.aj = load i64, ptr %i.k, align 8, !noundef !5
  %i.ak = call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver7releaseCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.o, i64 noundef %i.aj, i64 noundef %4) #17
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
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.432.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.a, ptr %i.g, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsQ_NtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connectionNtB5_20ZeroCopyReleaseErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.436.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 4, ptr noundef nonnull @1, ptr noundef nonnull %i.h, ptr noundef nonnull @83, ptr noundef nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE26prepare_connection_removalCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 16 %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3648 x i8], align 16             ; 5 uses
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
  %i.s = load i64, ptr %i.r, align 8, !range !12, !noundef !5
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.b, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCsadSKrpJ73hd_12iox2_service.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.u = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtB9_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) #17 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 1        ; 2 uses
  %i.w = icmp ult i64 %1, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCsadSKrpJ73hd_12iox2_service.exit.thread: ; preds = %bb.f, %bb.af, %bb.o, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.x = extractvalue { ptr, i64 } %i.u, 0
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %1 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !range !12, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8            ; 9 uses
  %i.ac = trunc nuw i64 %i.z to i1
  br i1 %i.ac, label %bb.e, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCsadSKrpJ73hd_12iox2_service.exit.thread

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !472, !noundef !5 ; 2 uses
  %i.ag = icmp ult i64 %i.ab, %i.af
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !472, !noundef !5
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ab
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !472, !noundef !5 ; 4 uses
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCsadSKrpJ73hd_12iox2_service.exit.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #18, !noalias !472
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !472, !noundef !5 ; 2 uses
  %i.am = icmp ult i64 %i.ai, %i.al
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.val5.i = load ptr, ptr %i.an, align 8, !alias.scope !472, !noundef !5
  %i.ao = getelementptr inbounds nuw [3648 x i8], ptr %.val5.i, i64 %i.ai ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2480 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 16, !range !6, !noalias !472, !noundef !5
  %.not.i = icmp eq i64 %i.aq, 2
  br i1 %.not.i, label %bb.k, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCsadSKrpJ73hd_12iox2_service.exit, !prof !7

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #18, !noalias !472
  unreachable

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #18, !noalias !472
  unreachable

_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.i
  %i.ar = tail call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails18number_of_channelsCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.ap) #17 ; 2 uses
  %.not21.i = icmp eq i64 %i.ar, 0
  br i1 %.not21.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit.thread.a, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCsadSKrpJ73hd_12iox2_service.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 3368
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 3360
  br label %bb.l

bb.l:                                             ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i, %.lr.ph.i
  %.sroa.0.016.i = phi i1 [ false, %.lr.ph.i ], [ %2, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i ]
  %.sroa.03.015.i = phi i1 [ false, %.lr.ph.i ], [ %i.bb, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i ]
  %.sroa.09.014.i = phi i64 [ 0, %.lr.ph.i ], [ %3, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i ] ; 5 uses
  %i.au = tail call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver8has_dataCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.ap, i64 noundef %.sroa.09.014.i) #17
  %i.av = load i64, ptr %i.as, align 8, !noundef !5 ; 2 uses
  %i.aw = icmp ult i64 %.sroa.09.014.i, %i.av
  br i1 %i.aw, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.014.i, i64 noundef %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @539) #18
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.l
  %2 = or i1 %.sroa.0.016.i, %i.au                ; 3 uses
  %i.ax = load ptr, ptr %i.at, align 16, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.09.014.i
  %i.az = load i64, ptr %i.ay, align 8, !noundef !5
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = or i1 %.sroa.03.015.i, %i.ba            ; 5 uses
  %i.bc = and i1 %2, %i.bb
  %3 = add nuw i64 %.sroa.09.014.i, 1             ; 2 uses
  %4 = icmp uge i64 %3, %i.ar
  %or.cond.not.i = select i1 %i.bc, i1 true, i1 %4
  br i1 %or.cond.not.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit, label %bb.l

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit: ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i
  %i.bd = or i1 %i.bb, %2
  br i1 %i.bd, label %bb.o, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit.thread.a

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit.thread.a: ; preds = %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCsadSKrpJ73hd_12iox2_service.exit, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11remove_implCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 16 captures(none) dereferenceable(3648) %i.a, ptr noalias nofree noundef align 8 dereferenceable(200) %i.ad, i64 noundef %i.ab) #17
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 2480 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 16, !range !6, !alias.scope !473, !noundef !5
  %i.bg = icmp eq i64 %i.bf, 2
  br i1 %i.bg, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit, label %bb.n

bb.n:                                             ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit.thread.a
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details8ReceiverINtNtNtBK_15dynamic_storage19posix_shared_memory7StorageNtBE_20SharedManagementDataEEECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(1160) %i.be) #17
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment15DataSegmentViewNtNtNtBK_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 16 dereferenceable(3648) %i.a) #17
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit: ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit.thread.a, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCsadSKrpJ73hd_12iox2_service.exit.thread

bb.o:                                             ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 8 uses
  %i.bi = tail call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E4pushCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh, i64 noundef %i.ab) #17
  %.not80 = icmp eq i8 %i.bi, 2
  br i1 %.not80, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCsadSKrpJ73hd_12iox2_service.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr @86, ptr %i.p, align 8, !captures !18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 35, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr @87, ptr %i.o, align 8, !captures !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 67, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr @88, ptr %i.n, align 8, !captures !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 129, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @89, ptr %i.m, align 8, !captures !18
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 63, ptr %i.bm, align 8
  %i.bn = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bh) #17, !noalias !474 ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0      ; 3 uses
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  %.idx = shl nuw nsw i64 %i.bp, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx
  %i.br = icmp eq i64 %i.bp, 0
  br i1 %i.br, label %_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_40find_connection_without_data_and_borrows0ECsadSKrpJ73hd_12iox2_service.exit, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.i

bb.q:                                             ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit.i
  %i.bs = icmp eq ptr %i.bt, %i.bq
  br i1 %i.bs, label %_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_40find_connection_without_data_and_borrows0ECsadSKrpJ73hd_12iox2_service.exit, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.i

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.p, %bb.q
  %.sroa.0.0.i84236 = phi ptr [ %i.bt, %bb.q ], [ %i.bo, %bb.p ] ; 2 uses
  %.sroa.7.0.i235 = phi i64 [ %i.bu, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i84236, i64 8 ; 2 uses
  %i.bu = add i64 %.sroa.7.0.i235, 1
  %i.bv = load i64, ptr %.sroa.0.0.i84236, align 8, !noalias !474, !noundef !5 ; 4 uses
  %i.bw = load i64, ptr %i.ae, align 8, !noalias !475, !noundef !5 ; 2 uses
  %i.bx = icmp ult i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.i
  %.val.i.i = load ptr, ptr %i.ad, align 8, !noalias !475, !noundef !5
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bv
  %i.bz = load i64, ptr %i.by, align 8, !noalias !474, !noundef !5 ; 4 uses
  %i.ca = icmp eq i64 %i.bz, -1
  br i1 %i.ca, label %bb.z, label %bb.t

bb.s:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCsadSKrpJ73hd_12iox2_service.exit.i
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #18, !noalias !474
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cb = load i64, ptr %i.ak, align 8, !noalias !475, !noundef !5 ; 2 uses
  %i.cc = icmp ult i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.val5.i.i = load ptr, ptr %i.an, align 8, !noalias !475, !noundef !5
  %i.cd = getelementptr inbounds nuw [3648 x i8], ptr %.val5.i.i, i64 %i.bz ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2480 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 16, !range !6, !noalias !474, !noundef !5
  %.not.i.i = icmp eq i64 %i.cf, 2
  br i1 %.not.i.i, label %bb.w, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.i, !prof !7

bb.v:                                             ; preds = %bb.t
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.bz, i64 noundef %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #18, !noalias !474
  unreachable

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #18, !noalias !474
  unreachable

_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.u
  %i.cg = tail call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails18number_of_channelsCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.ce) #17, !noalias !474 ; 2 uses
  %.not21.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not21.i.i, label %bb.z, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 3368
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 3360
  br label %bb.x

bb.x:                                             ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i.i, %.lr.ph.i.i
  %.sroa.0.016.i.i = phi i1 [ false, %.lr.ph.i.i ], [ %i.cm, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i.i ]
  %.sroa.03.015.i.i = phi i1 [ false, %.lr.ph.i.i ], [ %i.cr, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i.i ]
  %.sroa.09.014.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ct, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i.i ] ; 5 uses
  %i.cj = tail call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver8has_dataCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.ce, i64 noundef %.sroa.09.014.i.i) #17, !noalias !474
  %i.ck = load i64, ptr %i.ch, align 8, !noalias !474, !noundef !5 ; 2 uses
  %i.cl = icmp ult i64 %.sroa.09.014.i.i, %i.ck
  br i1 %i.cl, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.014.i.i, i64 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @539) #18, !noalias !474
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i.i: ; preds = %bb.x
  %i.cm = or i1 %.sroa.0.016.i.i, %i.cj           ; 3 uses
  %i.cn = load ptr, ptr %i.ci, align 16, !noalias !474, !nonnull !5, !noundef !5
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.sroa.09.014.i.i
  %i.cp = load i64, ptr %i.co, align 8, !noalias !474, !noundef !5
  %i.cq = icmp ne i64 %i.cp, 0
  %i.cr = or i1 %.sroa.03.015.i.i, %i.cq          ; 3 uses
  %i.cs = and i1 %i.cm, %i.cr
  %i.ct = add nuw i64 %.sroa.09.014.i.i, 1        ; 2 uses
  %5 = icmp uge i64 %i.ct, %i.cg
  %or.cond.not.i.i = select i1 %i.cs, i1 true, i1 %5
  br i1 %or.cond.not.i.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit.i, label %bb.x

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i.i
  %i.cu = or i1 %i.cm, %i.cr
  br i1 %i.cu, label %bb.q, label %bb.z

bb.z:                                             ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit.i, %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.i, %bb.r
  %i.cv = tail call { i64, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E6removeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh, i64 noundef %.sroa.7.0.i235) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call fastcc void @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11remove_implCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 16 captures(none) dereferenceable(3648) %i.l, ptr noalias nofree noundef align 8 dereferenceable(200) %i.ad, i64 noundef %i.bv) #17
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 16 dereferenceable(3648) %i.l) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cw = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E4pushCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh, i64 noundef %i.ab) #17
  %.not83 = icmp eq i8 %i.cw, 2
  br i1 %.not83, label %bb.af, label %bb.aa

_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_40find_connection_without_data_and_borrows0ECsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.q, %bb.p
  br i1 %i.bb, label %bb.ae, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bb, label %bb.ac, label %bb.ab, !prof !7

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.q, ptr %i.d, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.466.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.p, ptr %i.c, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.470.0..sroa_idx, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.o, ptr %i.cx, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.474.0..sroa_idx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.m, ptr %i.cy, align 8
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.478.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.d, ptr noundef nonnull @90, ptr noundef nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11remove_implCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 16 captures(none) dereferenceable(3648) %i.b, ptr noalias nofree noundef align 8 dereferenceable(200) %i.ad, i64 noundef %i.ab) #17
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 16 dereferenceable(3648) %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.ac:                                            ; preds = %bb.ah, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.q, ptr %i.g, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.434.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.p, ptr %i.f, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.438.0..sroa_idx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.n, ptr %i.cz, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.442.0..sroa_idx, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.m, ptr %i.da, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.446.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @1, ptr noundef nonnull %i.g, ptr noundef nonnull @91, ptr noundef nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.450.0..sroa_idx, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.p, ptr %i.db, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.454.0..sroa_idx, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.n, ptr %i.dc, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.458.0..sroa_idx, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.m, ptr %i.dd, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.462.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @92, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #18
  unreachable

bb.ad:                                            ; preds = %_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_40find_connection_without_data_and_borrows0ECsadSKrpJ73hd_12iox2_service.exit
  %i.de = tail call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E4pushCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh, i64 noundef %i.ab) #17
  %.not81 = icmp eq i8 %i.de, 2
  br i1 %.not81, label %bb.af, label %bb.ab

bb.ae:                                            ; preds = %_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_40find_connection_without_data_and_borrows0ECsadSKrpJ73hd_12iox2_service.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call fastcc void @_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_31find_connection_without_borrows0ECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull align 8 %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bh) #17
  %i.df = load i64, ptr %i.k, align 8, !range !12, !noundef !5
  %i.dg = trunc nuw i64 %i.df to i1
  br i1 %i.dg, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.z, %bb.ad, %bb.ah, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCsadSKrpJ73hd_12iox2_service.exit.thread

bb.ag:                                            ; preds = %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !noundef !5
  %i.dj = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.q, ptr %i.j, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.412.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.p, ptr %i.i, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.416.0..sroa_idx, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.o, ptr %i.dl, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.420.0..sroa_idx, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.m, ptr %i.dm, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.424.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.j, ptr noundef nonnull @90, ptr noundef nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dn = call { i64, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E6removeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh, i64 noundef %i.di) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call fastcc void @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11remove_implCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 16 captures(none) dereferenceable(3648) %i.h, ptr noalias nofree noundef align 8 dereferenceable(200) %i.ad, i64 noundef %i.dk) #17
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 16 dereferenceable(3648) %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.do = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E4pushCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh, i64 noundef %i.ab) #17
  %.not82 = icmp eq i8 %i.do, 2
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
end_hunk_1
begin_hunk_2_@_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE30finish_update_connection_cycleCsadSKrpJ73hd_12iox2_service:bb.a
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
  %3 = icmp uge i64 %i.br, %i.bg
  %or.cond.not.i.i = select i1 %i.bq, i1 true, i1 %3
  br i1 %or.cond.not.i.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit.i, label %.lr.ph.i.i

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i.i
  br i1 %i.bp, label %.backedge.i.backedge, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCsadSKrpJ73hd_12iox2_service.exit.thread.i

.backedge.i.backedge:                             ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCsadSKrpJ73hd_12iox2_service.exit.i, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit.i
  br label %.backedge.i

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !480
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.727.i)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.bd, ptr %i.bs, align 16
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.be, ptr %i.bt, align 1
  store i128 2, ptr %0, align 16
  br label %bb.ak

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.727.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @98, ptr %i.f, align 8, !captures !18
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 22, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  br label %.outer

.outer:                                           ; preds = %bb.af, %.critedge
  %.sroa.018.0.ph = phi i32 [ 0, %.critedge ], [ %i.co, %bb.af ] ; 2 uses
  %.sroa.020.0.ph = phi i1 [ true, %.critedge ], [ false, %bb.af ]
  %.sroa.063.0.ph = phi i64 [ 0, %.critedge ], [ %i.ca, %bb.af ] ; 2 uses
  %i.bz = load i64, ptr %i.bw, align 8, !noundef !5 ; 2 uses
  %exitcond.not.i424431.not = icmp ult i64 %.sroa.063.0.ph, %i.bz
  br i1 %exitcond.not.i424431.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.outer, %bb.ac
  %umax.i434 = phi i64 [ %umax.i, %bb.ac ], [ %i.bz, %.outer ]
  %.sroa.063.0433 = phi i64 [ %i.ca, %bb.ac ], [ %.sroa.063.0.ph, %.outer ]
  %.sroa.018.0432 = phi i32 [ %.sroa.018.1, %bb.ac ], [ %.sroa.018.0.ph, %.outer ] ; 3 uses
  %.val.i = load ptr, ptr %i.bv, align 8, !noundef !5
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %exitcond.not.i = icmp eq i64 %i.ca, %umax.i434
  br i1 %exitcond.not.i, label %._crit_edge, label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.t
  %.sroa.03.0.i425 = phi i64 [ %.sroa.063.0433, %.lr.ph ], [ %i.ca, %bb.t ] ; 3 uses
  %i.ca = add i64 %.sroa.03.0.i425, 1             ; 6 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %.sroa.03.0.i425
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !5 ; 4 uses
  %i.cd = icmp eq i64 %i.cc, -1
  br i1 %i.cd, label %bb.t, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = load i64, ptr %i.bx, align 8, !noundef !5 ; 2 uses
  %i.cf = icmp ult i64 %i.cc, %i.ce
  br i1 %i.cf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.val7.i = load ptr, ptr %i.by, align 8, !noundef !5
  %i.cg = getelementptr inbounds nuw [3648 x i8], ptr %.val7.i, i64 %i.cc ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2480 ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 16, !range !6, !noundef !5
  %.not.i = icmp eq i64 %i.ci, 2
  br i1 %.not.i, label %bb.y, label %bb.z, !prof !7

bb.x:                                             ; preds = %bb.v
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.cc, i64 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #18
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 68, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #18
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.cj = call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver8has_dataCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.ch, i64 noundef %2) #17
  br i1 %i.cj, label %bb.aa, label %bb.ac

._crit_edge:                                      ; preds = %.outer, %bb.ac, %bb.t
  %.sroa.018.0.lcssa = phi i32 [ %.sroa.018.1, %bb.ac ], [ %.sroa.018.0432, %bb.t ], [ %.sroa.018.0.ph, %.outer ]
  %i.ck = icmp ne i32 %.sroa.018.0.lcssa, 0
  %or.cond.not = select i1 %.sroa.020.0.ph, i1 %i.ck, i1 false
  br i1 %or.cond.not, label %bb.aj, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 3368
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !5 ; 2 uses
  %i.cn = icmp ult i64 %2, %i.cm
  br i1 %i.cn, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @539) #18
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.aa
  %i.co = add i32 %.sroa.018.0432, 1              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 3360
  %i.cq = load ptr, ptr %i.cp, align 16, !nonnull !5, !noundef !5
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %2
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !5
  %i.ct = call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails20max_borrowed_samplesCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.ch) #17
  %.not = icmp ult i64 %i.cs, %i.ct
  br i1 %.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit, %bb.z
  %.sroa.018.1 = phi i32 [ %i.co, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit ], [ %.sroa.018.0432, %bb.z ] ; 2 uses
  %i.cu = load i64, ptr %i.bw, align 8, !noundef !5 ; 2 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %i.cu, i64 %i.ca)
  %exitcond.not.i424.not = icmp ult i64 %i.ca, %i.cu
  br i1 %exitcond.not.i424.not, label %.lr.ph, label %._crit_edge

bb.ad:                                            ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCsadSKrpJ73hd_12iox2_service.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE23receive_from_connectionCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 16 captures(none) dereferenceable(80) %i.e, ptr noundef nonnull align 16 %1, ptr noundef nonnull align 16 %i.cg, i64 noundef %.sroa.03.0.i425, i64 noundef %2) #17
  %i.cv = load i128, ptr %i.e, align 16, !range !482, !noundef !5 ; 2 uses
  %i.cw = icmp eq i128 %i.cv, 2
  %i.cx = load i8, ptr %.sroa.452.0..sroa_idx, align 16 ; 2 uses
  %i.cy = load i8, ptr %.sroa.553.0..sroa_idx, align 1 ; 2 uses
  br i1 %i.cw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.cx, ptr %i.cz, align 16
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.cy, ptr %i.da, align 1
  store i128 2, ptr %0, align 16
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.641, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.654.0..sroa_idx, i64 62, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.db = trunc nuw i128 %i.cv to i1
  br i1 %i.db, label %bb.ag, label %.outer

bb.ag:                                            ; preds = %bb.af
  store i128 1, ptr %0, align 16
  %.sroa.339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.cx, ptr %.sroa.339.0..sroa_idx, align 16
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.cy, ptr %.sroa.540.0..sroa_idx, align 1
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
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.dc, align 16
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
end_hunk_2
