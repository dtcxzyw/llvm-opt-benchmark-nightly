Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_services_tunnel_end_to_end_tests_ponger.iceoryx2_services_tunnel_end_to_end_tests_ponger.f0e58c8986a519e6-cgu.11?download=true
inline.NumInlined: 456
inline.NumDeleted: 215
begin_hunk_0
@427 = private unnamed_addr constant [16 x i8] c"EventCreateError", align 1
@428 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic12MemoryConfigNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1V_INtNtNtBI_15dynamic_storage19posix_shared_memory7StorageINtB2R_16AllocatorDetailsB1V_EEEEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, [16 x i8] c"P\04\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsf_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_12MemoryConfigNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1s_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2o_16AllocatorDetailsB1s_EEEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger }>, align 8
@429 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11SharedStateNtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger }>, align 8
@430 = private unnamed_addr constant [20 x i8] c"DynamicMemoryBuilder", align 1
@431 = private unnamed_addr constant [12 x i8] c"shared_state", align 1
@432 = private unnamed_addr constant [15 x i8] c"SystemCorrupted", align 1
@433 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic10ViewConfigNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1T_INtNtNtBI_15dynamic_storage19posix_shared_memory7StorageINtB2P_16AllocatorDetailsB1T_EEEEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, [16 x i8] c"P\04\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsg_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_10ViewConfigNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1q_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2m_16AllocatorDetailsB1q_EEEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger }>, align 8
@434 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtBK_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBK_15dynamic_storage19posix_shared_memory7StorageINtBE_16AllocatorDetailsB1N_EEEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, [16 x i8] c"x\04\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7detailsINtB5_6MemoryNtNtNtBb_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageINtB5_16AllocatorDetailsB1k_EEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger }>, align 8
@435 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap11MetaSlotMapINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtB2I_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB2I_13shared_memory6common7details6MemoryB3Q_INtNtNtB2I_15dynamic_storage19posix_shared_memory7StorageINtB4N_16AllocatorDetailsB3Q_EEEENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerEEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, [16 x i8] c"\C8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsb_NtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cellINtB5_10UnsafeCellINtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap11MetaSlotMapINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtB2f_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB2f_13shared_memory6common7details6MemoryB3n_INtNtNtB2f_15dynamic_storage19posix_shared_memory7StorageINtB4k_16AllocatorDetailsB3n_EEEENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger }>, align 8
@436 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix11access_modeNtB5_10AccessModeNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@437 = private unnamed_addr constant [11 x i8] c"view_config", align 1
@438 = private unnamed_addr constant [12 x i8] c"mgmt_segment", align 1
@439 = private unnamed_addr constant [17 x i8] c"shared_memory_map", align 1
@440 = private unnamed_addr constant [11 x i8] c"current_idx", align 1
@441 = private unnamed_addr constant [11 x i8] c"access_mode", align 1
@442 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @437, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @438, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @439, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @440, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @441, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @355, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@443 = private unnamed_addr constant [11 x i8] c"DynamicView", align 1
@444 = private unnamed_addr constant [13 x i8] c"NoAttachments", align 1
@445 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13InternalStateNtNtNtB1H_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB1H_13shared_memory6common7details6MemoryB2V_INtNtNtB1H_15dynamic_storage19posix_shared_memory7StorageINtB3S_16AllocatorDetailsB2V_EEEEEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, [16 x i8] c"@\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsb_NtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cellINtB5_10UnsafeCellINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13InternalStateNtNtNtB1e_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB1e_13shared_memory6common7details6MemoryB2s_INtNtNtB1e_15dynamic_storage19posix_shared_memory7StorageINtB3p_16AllocatorDetailsB2s_EEEEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger }>, align 8
@446 = private unnamed_addr constant [13 x i8] c"DynamicMemory", align 1
@447 = private unnamed_addr constant [11 x i8] c"OutOfMemory", align 1
@448 = private unnamed_addr constant [15 x i8] c"ExceedsMaxLoans", align 1
@449 = private unnamed_addr constant [18 x i8] c"ExceedsMaxLoanSize", align 1
@450 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs4_NtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomicNtB5_10AtomicBoolNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@451 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, [16 x i8] c"0\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsH_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mappingNtB5_13MemoryMappingNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@452 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11memory_lock10MemoryLockEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs8Chj7Szqq0n_4core6optionINtB5_6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11memory_lock10MemoryLockENtNtB7_3fmt5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger }>, align 8
@453 = private unnamed_addr constant [12 x i8] c"SharedMemory", align 1
@454 = private unnamed_addr constant [13 x i8] c"has_ownership", align 1
@455 = private unnamed_addr constant [14 x i8] c"memory_mapping", align 1
@456 = private unnamed_addr constant [11 x i8] c"memory_lock", align 1
@457 = private unnamed_addr constant [14 x i8] c"mapping_offset", align 1
@458 = private unnamed_addr constant [8 x i8] c"FileName", align 1
@459 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@460 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4936744663215359221 to ptr), ptr inttoptr (i64 -1988294856289125911 to ptr) }>, align 8
@461 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 5542912636208556321 to ptr), ptr inttoptr (i64 8975304574204269066 to ptr) }>, align 8
@462 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1597696928759939439 to ptr), ptr inttoptr (i64 7152554174224047794 to ptr) }>, align 8
@463 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6609403323083466772 to ptr), ptr inttoptr (i64 6105495865353700220 to ptr) }>, align 8
@464 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -6636684957907591583 to ptr), ptr inttoptr (i64 -5637296917904666628 to ptr) }>, align 8
@465 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -6748148356712647237 to ptr), ptr inttoptr (i64 3103171844542900377 to ptr) }>, align 8
@466 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1113452225179201998 to ptr), ptr inttoptr (i64 6983151225712936991 to ptr) }>, align 8
@467 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 546683499752431649 to ptr), ptr inttoptr (i64 -445578486249741512 to ptr) }>, align 8
@468 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -4469758474679481158 to ptr), ptr inttoptr (i64 3922635022103066099 to ptr) }>, align 8
@469 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 840965747097937501 to ptr), ptr inttoptr (i64 5041810358414931096 to ptr) }>, align 8
@470 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6773619288303102376 to ptr), ptr inttoptr (i64 -1515993381910396888 to ptr) }>, align 8
@switch.table._RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix11access_modeNtB5_10AccessModeNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [4 x i8] c"\04\04\05\09", align 8
@switch.table._RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix11access_modeNtB5_10AccessModeNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.35 = private unnamed_addr constant [4 x ptr] [ptr @172, ptr @173, ptr @174, ptr @175], align 8
@switch.table._RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [5 x i8] c"\0D\08\05\17\0D", align 8
@switch.table._RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.36 = private unnamed_addr constant [5 x ptr] [ptr @209, ptr @210, ptr @174, ptr @211, ptr @212], align 8
@switch.table._RNvXs7_NtNtCsg6ZEkMtNi4J_8iceoryx24port8listenerNtB5_19ListenerCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [4 x i8] c"\1C\16 \15", align 8
@switch.table._RNvXs7_NtNtCsg6ZEkMtNi4J_8iceoryx24port8listenerNtB5_19ListenerCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.37 = private unnamed_addr constant [4 x ptr] [ptr @217, ptr @218, ptr @219, ptr @220], align 8
@switch.table._RNvXsa_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberNtB5_21SubscriberCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [4 x i8] c"\1E0 \15", align 8
@switch.table._RNvXsa_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberNtB5_21SubscriberCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.38 = private unnamed_addr constant [4 x ptr] [ptr @313, ptr @314, ptr @219, ptr @220], align 8
@switch.table._RNvXsa_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierNtB5_19NotifierCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\1C \15", align 8
@switch.table._RNvXsa_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierNtB5_19NotifierCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.39 = private unnamed_addr constant [3 x ptr] [ptr @315, ptr @219, ptr @220], align 8
@switch.table._RNvXse_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherNtB5_20PublisherCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [4 x i8] c"\1D\19 \15", align 8
@switch.table._RNvXse_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherNtB5_20PublisherCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.40 = private unnamed_addr constant [4 x ptr] [ptr @383, ptr @384, ptr @219, ptr @220], align 8
@switch.table._RNvXsh_NtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocatorNtB5_18AllocationStrategyNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\07\0A\06", align 8
@switch.table._RNvXsh_NtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocatorNtB5_18AllocationStrategyNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.41 = private unnamed_addr constant [3 x ptr] [ptr @393, ptr @394, ptr @395], align 8
@switch.table._RNvXsh_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierNtB5_19NotifierNotifyErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\12\0E\1A", align 8
@switch.table._RNvXsh_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierNtB5_19NotifierNotifyErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.42 = private unnamed_addr constant [3 x ptr] [ptr @404, ptr @405, ptr @406], align 8
@switch.table._RNvXsl_NtCs7gufeB8TUC6_12iceoryx2_cal5eventNtB5_17ListenerWaitErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\11\0F\0F", align 8
@switch.table._RNvXsl_NtCs7gufeB8TUC6_12iceoryx2_cal5eventNtB5_17ListenerWaitErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.43 = private unnamed_addr constant [3 x ptr] [ptr @409, ptr @171, ptr @410], align 8
@switch.table._RNvXsm_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_22WaitSetAttachmentErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [4 x i8] c"\14\0F\0D\15", align 8
@switch.table._RNvXsm_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_22WaitSetAttachmentErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.44 = private unnamed_addr constant [4 x ptr] [ptr @419, ptr @420, ptr @212, ptr @170], align 8
@switch.table._RNvXss_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB5_19NodeCreationFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\17\0D\0F", align 8
@switch.table._RNvXss_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB5_19NodeCreationFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.45 = private unnamed_addr constant [3 x ptr] [ptr @211, ptr @212, ptr @432], align 8
@switch.table._RNvXst_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_15WaitSetRunErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\17\0D\0D", align 8
@switch.table._RNvXst_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_15WaitSetRunErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.46 = private unnamed_addr constant [3 x ptr] [ptr @211, ptr @212, ptr @444], align 8
@switch.table._RNvXsw_NtCsg6ZEkMtNi4J_8iceoryx24portNtB5_9LoanErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [4 x i8] c"\0B\0F\12\0F", align 8
@switch.table._RNvXsw_NtCsg6ZEkMtNi4J_8iceoryx24portNtB5_9LoanErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.47 = private unnamed_addr constant [4 x ptr] [ptr @447, ptr @448, ptr @449, ptr @171], align 8

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef align 2 ptr @_RINvMNtNtCs5WK5l2q0aFk_12clap_builder4util9any_valueNtB3_8AnyValue12downcast_refNtNtNtB7_7builder7styling6StylesECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !27, !invariant.load !5
  %i.g = add nsw i64 %i.f, -1
  %i.h = and i64 %i.g, -16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !5, !nonnull !5
  call void %i.l(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.j) #17
  %i.m = load i128, ptr %i.a, align 16, !noundef !5
  %i.n = icmp eq i128 %i.m, 119784753396657968502841886220954650620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %. = select i1 %i.n, ptr %i.j, ptr null
  ret ptr %.
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_31find_connection_without_borrows0ECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E8as_sliceCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) #18 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit

bb.b:                                             ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit
  %i.i = icmp eq ptr %i.j, %i.d
  br i1 %i.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0139 = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.7.0138 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0139, i64 8 ; 2 uses
  %i.k = add i64 %.sroa.7.0138, 1
  %i.l = load i64, ptr %.sroa.0.0139, align 8, !noundef !5 ; 4 uses
  %i.m = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit
  %.val.i = load ptr, ptr %1, align 8, !noundef !5
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.l
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 4 uses
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread.sink.split, label %bb.e

bb.d:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val5.i = load ptr, ptr %i.g, align 8, !noundef !5
  %i.t = getelementptr inbounds nuw [3648 x i8], ptr %.val5.i, i64 %i.p ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2480 ; 3 uses
  %i.v = load i64, ptr %i.u, align 16, !range !7, !noundef !5
  %.not.i = icmp eq i64 %i.v, 2
  br i1 %.not.i, label %bb.h, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit, !prof !8

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #19
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #19
  unreachable

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread.sink.split: ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit, %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0138, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread: ; preds = %bb.b, %bb.a, %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread.sink.split
  ret void

_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit: ; preds = %bb.f
  %i.y = tail call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails18number_of_channelsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 8 %i.u) #18 ; 2 uses
  %.not21.i = icmp eq i64 %i.y, 0
  br i1 %.not21.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 3368
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 3360
  br label %bb.i

bb.i:                                             ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i, %.lr.ph.i
  %.sroa.0.016.i = phi i1 [ false, %.lr.ph.i ], [ %i.ae, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i ]
  %.sroa.03.015.i = phi i1 [ false, %.lr.ph.i ], [ %i.aj, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i ]
  %.sroa.09.014.i = phi i64 [ 0, %.lr.ph.i ], [ %i.al, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i ] ; 5 uses
  %i.ab = tail call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver8has_dataCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 8 %i.u, i64 noundef %.sroa.09.014.i) #18
  %i.ac = load i64, ptr %i.z, align 8, !noundef !5 ; 2 uses
  %i.ad = icmp ult i64 %.sroa.09.014.i, %i.ac
  br i1 %i.ad, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.014.i, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @408) #19
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i: ; preds = %bb.i
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
  br i1 %or.cond.not.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit, label %bb.i

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit: ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i
  br i1 %i.aj, label %bb.b, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread.sink.split
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMsd_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB6_14WaitSetBuilder6createNtNtNtB8_7service3ipc7ServiceECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(192) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [136 x i8], align 8               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [80 x i8], align 16               ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [80 x i8], align 16               ; 7 uses
  %i.k = alloca [80 x i8], align 16               ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [1 x i8], align 1                 ; 5 uses
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @31, ptr %i.l, align 8, !captures !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 24, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.o = tail call noundef i32 @_RNvMs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queueNtB5_20DeadlineQueueBuilder3new() #18
  call void @_RNvMs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queueNtB5_20DeadlineQueueBuilder6create(ptr noalias nofree noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.j, i32 noundef %i.o) #18
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.q = load i32, ptr %i.p, align 8, !range !10, !noundef !5
  %.not = icmp eq i32 %i.q, 2
  br i1 %.not, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue13DeadlineQueueNtNtB11_5clock9TimeErrorEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.g, ptr noundef nonnull align 16 dereferenceable(80) %i.j, i64 80, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.s = load i32, ptr %i.r, align 8, !range !10, !noundef !5
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.j, label %bb.c, !prof !8

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue13DeadlineQueueNtNtB11_5clock9TimeErrorEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.m, ptr %i.i, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsU_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_14WaitSetBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.h, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.415.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @25, ptr noundef nonnull %i.i, ptr noundef nonnull @36, ptr noundef nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i8 0, ptr %0, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 2, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.k, ptr noundef nonnull align 16 dereferenceable(80) %i.j, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor5epollNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll12EpollBuilderINtB7_14ReactorBuilderNtBR_5EpollE3new(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.e) #18
  call void @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor5epollNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll12EpollBuilderINtB7_14ReactorBuilderNtBR_5EpollE6create(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(136) %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.w = load i8, ptr %i.v, align 4, !range !11, !noundef !5
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = load i8, ptr %i.f, align 8, !range !12, !noundef !5
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.c
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.0.sroa.0.sroa.6.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %i.k, i64 80, i1 false)
  %i.aa = load i8, ptr %i.m, align 1, !range !12, !noundef !5
  %.sroa.0.sroa.0.sroa.4.sroa.5.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.sroa.0.sroa.5.sroa.4.sroa.5.0..sroa.0.sroa.0.sroa.5.sroa.4.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.sroa.4.sroa.5.0..sroa.0.sroa.0.sroa.5.sroa.4.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.sroa.4.sroa.5.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, i8 0, i64 24, i1 false)
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.aa, ptr %.sroa.8.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue13DeadlineQueueNtNtB11_5clock9TimeErrorEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit, %bb.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.m, ptr %i.d, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsU_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_14WaitSetBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.l, ptr %i.c, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.442.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @25, ptr noundef nonnull %i.d, ptr noundef nonnull @33, ptr noundef nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.m, ptr %i.b, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsU_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_14WaitSetBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.a, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.446.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @25, ptr noundef nonnull %i.b, ptr noundef nonnull @32, ptr noundef nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %bb.h ]
  store i8 %.sink, ptr %0, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 2, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue10AttachmentENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #18
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue10AttachmentENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #18
  br label %bb.f

bb.j:                                             ; preds = %bb.b
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue13DeadlineQueueNtNtB11_5clock9TimeErrorEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef align 16 dereferenceable(80) %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #19
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i1, i8 } @_RINvMse_NtCsg6ZEkMtNi4J_8iceoryx27waitsetINtB6_7WaitSetNtNtNtB8_7service3ipc7ServiceE16handle_deadlinesQNCINvCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger10run_pongerNtNtCs12z9vTL7JGI_41iceoryx2_services_tunnel_end_to_end_tests7payload14ComplexPayloadE0EB1J_(ptr noundef nonnull align 16 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.g, align 8
  store ptr @46, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 60, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = load i64, ptr %i.i, align 16, !noundef !5 ; 2 uses
  %i.k = icmp ult i64 %i.j, 9223372036854775807
  br i1 %i.k, label %_RNvMst_NtCs8Chj7Szqq0n_4core4cellINtB5_7RefCellINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEE6borrowCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #19
  unreachable

_RNvMst_NtCs8Chj7Szqq0n_4core4cellINtB5_7RefCellINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEE6borrowCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit: ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.j, 1
  store i64 %i.l, ptr %i.i, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 3, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = call { i32, i32 } @_RINvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queueNtB6_13DeadlineQueue16missed_deadlinesNCINvMse_NtCsg6ZEkMtNi4J_8iceoryx27waitsetINtB1G_7WaitSetNtNtNtB1I_7service3ipc7ServiceE16handle_deadlinesQNCINvCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger10run_pongerNtNtCs12z9vTL7JGI_41iceoryx2_services_tunnel_end_to_end_tests7payload14ComplexPayloadE0E0EB3l_(ptr noundef nonnull align 16 %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c) #18
  %i.t = extractvalue { i32, i32 } %i.s, 0
  %.not = icmp ne i32 %i.t, 2                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMst_NtCs8Chj7Szqq0n_4core4cellINtB5_7RefCellINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEE6borrowCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE23receive_from_connectionCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger:bb.a

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %i.r, ptr %i.k, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 2464 ; 2 uses
  %i.w = load i128, ptr %i.v, align 16, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_15DataSegmentViewNtNtNtBb_7service3ipc7ServiceE29register_and_translate_offsetCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noundef nonnull align 8 %2, i64 noundef %i.r) #18
  %i.x = load i8, ptr %i.j, align 8, !range !12, !noundef !5
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.a
  store i128 0, ptr %0, align 16
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.z = load i64, ptr %2, align 16, !range !7, !noundef !5
  %.not = icmp eq i64 %i.z, 2
  br i1 %.not, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ac = load ptr, ptr %i.m, align 8, !nonnull !5, !align !16, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 336
  %.sroa.416.sroa.6.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details5chunkNtB2_5Chunk3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.416.sroa.6.0..sroa.416.0..sroa_idx.sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(888) %i.ad, i64 noundef %i.ab) #18
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
  %i.af = load i8, ptr %i.ae, align 1, !range !24, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.m, ptr %i.f, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.440.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.v, ptr %i.e, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsY_NtNtCs8Chj7Szqq0n_4core3fmt3numoNtB7_5Debug3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.ag, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offsetNtB5_13PointerOffsetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @25, ptr noundef nonnull %i.f, ptr noundef nonnull @109, ptr noundef nonnull %i.e) #18
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
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.428.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @25, ptr noundef nonnull %i.i, ptr noundef nonnull @110, ptr noundef nonnull inttoptr (i64 555 to ptr)) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.aj = load i64, ptr %i.k, align 8, !noundef !5
  %i.ak = call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver7releaseCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 8 %i.o, i64 noundef %i.aj, i64 noundef %4) #18
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
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.432.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.a, ptr %i.g, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsQ_NtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connectionNtB5_20ZeroCopyReleaseErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.436.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 4, ptr noundef nonnull @25, ptr noundef nonnull %i.h, ptr noundef nonnull @111, ptr noundef nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE26prepare_connection_removalCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 16 %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.s = load i64, ptr %i.r, align 8, !range !17, !noundef !5
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.b, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.u = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtB9_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E8as_sliceCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) #18 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 1        ; 2 uses
  %i.w = icmp ult i64 %1, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread: ; preds = %bb.f, %bb.af, %bb.o, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.x = extractvalue { ptr, i64 } %i.u, 0
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %1 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !range !17, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8            ; 9 uses
  %i.ac = trunc nuw i64 %i.z to i1
  br i1 %i.ac, label %bb.e, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !681, !noundef !5 ; 2 uses
  %i.ag = icmp ult i64 %i.ab, %i.af
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !681, !noundef !5
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ab
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !681, !noundef !5 ; 4 uses
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #19, !noalias !681
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !681, !noundef !5 ; 2 uses
  %i.am = icmp ult i64 %i.ai, %i.al
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.val5.i = load ptr, ptr %i.an, align 8, !alias.scope !681, !noundef !5
  %i.ao = getelementptr inbounds nuw [3648 x i8], ptr %.val5.i, i64 %i.ai ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2480 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 16, !range !7, !noalias !681, !noundef !5
  %.not.i = icmp eq i64 %i.aq, 2
  br i1 %.not.i, label %bb.k, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit, !prof !8

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #19, !noalias !681
  unreachable

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #19, !noalias !681
  unreachable

_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit: ; preds = %bb.i
  %i.ar = tail call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails18number_of_channelsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 8 %i.ap) #18 ; 2 uses
  %.not21.i = icmp eq i64 %i.ar, 0
  br i1 %.not21.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread.a, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 3368
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 3360
  br label %bb.l

bb.l:                                             ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i, %.lr.ph.i
  %.sroa.0.016.i = phi i1 [ false, %.lr.ph.i ], [ %2, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i ]
  %.sroa.03.015.i = phi i1 [ false, %.lr.ph.i ], [ %i.bb, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i ]
  %.sroa.09.014.i = phi i64 [ 0, %.lr.ph.i ], [ %3, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i ] ; 5 uses
  %i.au = tail call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver8has_dataCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 8 %i.ap, i64 noundef %.sroa.09.014.i) #18
  %i.av = load i64, ptr %i.as, align 8, !noundef !5 ; 2 uses
  %i.aw = icmp ult i64 %.sroa.09.014.i, %i.av
  br i1 %i.aw, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.014.i, i64 noundef %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @408) #19
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i: ; preds = %bb.l
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
  br i1 %or.cond.not.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit, label %bb.l

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit: ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i
  %i.bd = or i1 %i.bb, %2
  br i1 %i.bd, label %bb.o, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread.a

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread.a: ; preds = %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11remove_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef align 16 captures(none) dereferenceable(3648) %i.a, ptr noalias nofree noundef align 8 dereferenceable(200) %i.ad, i64 noundef %i.ab) #18
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 2480 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 16, !range !7, !alias.scope !682, !noundef !5
  %i.bg = icmp eq i64 %i.bf, 2
  br i1 %i.bg, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit, label %bb.n

bb.n:                                             ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread.a
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details8ReceiverINtNtNtBK_15dynamic_storage19posix_shared_memory7StorageNtBE_20SharedManagementDataEEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef align 8 dereferenceable(1160) %i.be) #18
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment15DataSegmentViewNtNtNtBK_7service3ipc7ServiceEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull align 16 dereferenceable(3648) %i.a) #18
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit: ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread.a, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread

bb.o:                                             ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 8 uses
  %i.bi = tail call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E4pushCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh, i64 noundef %i.ab) #18
  %.not80 = icmp eq i8 %i.bi, 2
  br i1 %.not80, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr @114, ptr %i.p, align 8, !captures !9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 35, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr @115, ptr %i.o, align 8, !captures !9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 67, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr @116, ptr %i.n, align 8, !captures !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 129, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @117, ptr %i.m, align 8, !captures !9
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 63, ptr %i.bm, align 8
  %i.bn = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E8as_sliceCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bh) #18, !noalias !683 ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0      ; 3 uses
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  %.idx = shl nuw nsw i64 %i.bp, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx
  %i.br = icmp eq i64 %i.bp, 0
  br i1 %i.br, label %_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_40find_connection_without_data_and_borrows0ECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i

bb.q:                                             ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i
  %i.bs = icmp eq ptr %i.bt, %i.bq
  br i1 %i.bs, label %_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_40find_connection_without_data_and_borrows0ECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i: ; preds = %bb.p, %bb.q
  %.sroa.0.0.i84236 = phi ptr [ %i.bt, %bb.q ], [ %i.bo, %bb.p ] ; 2 uses
  %.sroa.7.0.i235 = phi i64 [ %i.bu, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i84236, i64 8 ; 2 uses
  %i.bu = add i64 %.sroa.7.0.i235, 1
  %i.bv = load i64, ptr %.sroa.0.0.i84236, align 8, !noalias !683, !noundef !5 ; 4 uses
  %i.bw = load i64, ptr %i.ae, align 8, !noalias !684, !noundef !5 ; 2 uses
  %i.bx = icmp ult i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i
  %.val.i.i = load ptr, ptr %i.ad, align 8, !noalias !684, !noundef !5
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bv
  %i.bz = load i64, ptr %i.by, align 8, !noalias !683, !noundef !5 ; 4 uses
  %i.ca = icmp eq i64 %i.bz, -1
  br i1 %i.ca, label %bb.z, label %bb.t

bb.s:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #19, !noalias !683
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cb = load i64, ptr %i.ak, align 8, !noalias !684, !noundef !5 ; 2 uses
  %i.cc = icmp ult i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.val5.i.i = load ptr, ptr %i.an, align 8, !noalias !684, !noundef !5
  %i.cd = getelementptr inbounds nuw [3648 x i8], ptr %.val5.i.i, i64 %i.bz ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2480 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 16, !range !7, !noalias !683, !noundef !5
  %.not.i.i = icmp eq i64 %i.cf, 2
  br i1 %.not.i.i, label %bb.w, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i, !prof !8

bb.v:                                             ; preds = %bb.t
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.bz, i64 noundef %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #19, !noalias !683
  unreachable

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #19, !noalias !683
  unreachable

_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i: ; preds = %bb.u
  %i.cg = tail call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails18number_of_channelsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 8 %i.ce) #18, !noalias !683 ; 2 uses
  %.not21.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not21.i.i, label %bb.z, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 3368
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 3360
  br label %bb.x

bb.x:                                             ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i, %.lr.ph.i.i
  %.sroa.0.016.i.i = phi i1 [ false, %.lr.ph.i.i ], [ %i.cm, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i ]
  %.sroa.03.015.i.i = phi i1 [ false, %.lr.ph.i.i ], [ %i.cr, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i ]
  %.sroa.09.014.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ct, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i ] ; 5 uses
  %i.cj = tail call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver8has_dataCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 8 %i.ce, i64 noundef %.sroa.09.014.i.i) #18, !noalias !683
  %i.ck = load i64, ptr %i.ch, align 8, !noalias !683, !noundef !5 ; 2 uses
  %i.cl = icmp ult i64 %.sroa.09.014.i.i, %i.ck
  br i1 %i.cl, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.014.i.i, i64 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @408) #19, !noalias !683
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i: ; preds = %bb.x
  %i.cm = or i1 %.sroa.0.016.i.i, %i.cj           ; 3 uses
  %i.cn = load ptr, ptr %i.ci, align 16, !noalias !683, !nonnull !5, !noundef !5
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.sroa.09.014.i.i
  %i.cp = load i64, ptr %i.co, align 8, !noalias !683, !noundef !5
  %i.cq = icmp ne i64 %i.cp, 0
  %i.cr = or i1 %.sroa.03.015.i.i, %i.cq          ; 3 uses
  %i.cs = and i1 %i.cm, %i.cr
  %i.ct = add nuw i64 %.sroa.09.014.i.i, 1        ; 2 uses
  %5 = icmp uge i64 %i.ct, %i.cg
  %or.cond.not.i.i = select i1 %i.cs, i1 true, i1 %5
  br i1 %or.cond.not.i.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i, label %bb.x

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i: ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i
  %i.cu = or i1 %i.cm, %i.cr
  br i1 %i.cu, label %bb.q, label %bb.z

bb.z:                                             ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i, %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i, %bb.r
  %i.cv = tail call { i64, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E6removeCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh, i64 noundef %.sroa.7.0.i235) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call fastcc void @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11remove_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef align 16 captures(none) dereferenceable(3648) %i.l, ptr noalias nofree noundef align 8 dereferenceable(200) %i.ad, i64 noundef %i.bv) #18
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef align 16 dereferenceable(3648) %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cw = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E4pushCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh, i64 noundef %i.ab) #18
  %.not83 = icmp eq i8 %i.cw, 2
  br i1 %.not83, label %bb.af, label %bb.aa

_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_40find_connection_without_data_and_borrows0ECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit: ; preds = %bb.q, %bb.p
  br i1 %i.bb, label %bb.ae, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bb, label %bb.ac, label %bb.ab, !prof !8

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.q, ptr %i.d, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.466.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.p, ptr %i.c, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.470.0..sroa_idx, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.o, ptr %i.cx, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.474.0..sroa_idx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.m, ptr %i.cy, align 8
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.478.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @25, ptr noundef nonnull %i.d, ptr noundef nonnull @118, ptr noundef nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11remove_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef align 16 captures(none) dereferenceable(3648) %i.b, ptr noalias nofree noundef align 8 dereferenceable(200) %i.ad, i64 noundef %i.ab) #18
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef align 16 dereferenceable(3648) %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.ac:                                            ; preds = %bb.ah, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.q, ptr %i.g, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.434.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.p, ptr %i.f, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.438.0..sroa_idx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.n, ptr %i.cz, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.442.0..sroa_idx, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.m, ptr %i.da, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.446.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @25, ptr noundef nonnull %i.g, ptr noundef nonnull @119, ptr noundef nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.450.0..sroa_idx, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.p, ptr %i.db, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.454.0..sroa_idx, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.n, ptr %i.dc, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.458.0..sroa_idx, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.m, ptr %i.dd, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.462.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @120, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #19
  unreachable

bb.ad:                                            ; preds = %_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_40find_connection_without_data_and_borrows0ECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit
  %i.de = tail call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E4pushCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh, i64 noundef %i.ab) #18
  %.not81 = icmp eq i8 %i.de, 2
  br i1 %.not81, label %bb.af, label %bb.ab

bb.ae:                                            ; preds = %_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_40find_connection_without_data_and_borrows0ECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call fastcc void @_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_31find_connection_without_borrows0ECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull align 8 %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bh) #18
  %i.df = load i64, ptr %i.k, align 8, !range !17, !noundef !5
  %i.dg = trunc nuw i64 %i.df to i1
  br i1 %i.dg, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.z, %bb.ad, %bb.ah, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE12get_mut_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread

bb.ag:                                            ; preds = %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !noundef !5
  %i.dj = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.q, ptr %i.j, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.412.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.p, ptr %i.i, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.416.0..sroa_idx, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.o, ptr %i.dl, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.420.0..sroa_idx, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.m, ptr %i.dm, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.424.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @25, ptr noundef nonnull %i.j, ptr noundef nonnull @118, ptr noundef nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dn = call { i64, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E6removeCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh, i64 noundef %i.di) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call fastcc void @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11remove_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef align 16 captures(none) dereferenceable(3648) %i.h, ptr noalias nofree noundef align 8 dereferenceable(200) %i.ad, i64 noundef %i.dk) #18
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef align 16 dereferenceable(3648) %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.do = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E4pushCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh, i64 noundef %i.ab) #18
  %.not82 = icmp eq i8 %i.do, 2
  br i1 %.not82, label %bb.af, label %bb.ac, !prof !13
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE30finish_update_connection_cycleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 16 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtB9_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E8as_sliceCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) #18 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 3 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.lr.ph

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.lr.ph: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1264
  br label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit: ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.lr.ph, %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread
  %.sroa.0.034 = phi ptr [ %i.c, %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.lr.ph ], [ %i.k, %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread ] ; 3 uses
  %.sroa.7.033 = phi i64 [ 0, %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.lr.ph ], [ %i.l, %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 16 ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.7.033, 1
  %i.m = load i64, ptr %.sroa.0.034, align 8, !range !17, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.b, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread: ; preds = %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtBa_6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit
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
  br i1 %i.u, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2_@_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE30finish_update_connection_cycleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger:bb.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE7receiveCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 16 %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.i = load i64, ptr %i.h, align 8, !range !17, !noalias !689, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1232 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1248
  %i.m = load i64, ptr %i.l, align 16, !noalias !689, !noundef !5
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

bb.d:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i, %bb.c
  %.sroa.033.0.i = phi i64 [ 0, %bb.c ], [ %.sroa.15.0.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i ]
  %i.t = call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E8as_sliceCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k) #18, !noalias !689 ; 2 uses
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
  br i1 %.not.i.i.i, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %.backedge.i
  %i.y = icmp eq ptr %.sroa.0.0.i, %i.w
  br i1 %i.y, label %.critedge, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i

bb.f:                                             ; preds = %.backedge.i
  %i.z = ptrtoint ptr %.sroa.0.0.i to i64
  %i.aa = sub nuw i64 %i.x, %i.z
  %i.ab = lshr exact i64 %i.aa, 3
  %.not.i.i.i.i = icmp ult i64 %.sroa.12.0.i, %i.ab
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %.sroa.12.0.i
  br i1 %.not.i.i.i.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i, label %.critedge

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.ph.i.ph.i.i = phi ptr [ %i.ac, %bb.f ], [ %.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sink.i.ph.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.ph.i.i, i64 8
  %i.ad = add i64 %.sroa.15.0.i, 1
  %i.ae = load i64, ptr %.sroa.0.0.ph.i.ph.i.i, align 8, !noalias !689, !noundef !5 ; 5 uses
  %i.af = load i64, ptr %i.p, align 8, !noalias !689, !noundef !5 ; 2 uses
  %i.ag = icmp ult i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i
  %.val.i.i = load ptr, ptr %i.o, align 8, !noalias !689, !noundef !5
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ae
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !689, !noundef !5 ; 4 uses
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread.i, label %bb.i

bb.h:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEEENtNtNtB8_6traits8iterator8Iterator4nextCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.ae, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #19, !noalias !689
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ak = load i64, ptr %i.q, align 8, !noalias !689, !noundef !5 ; 2 uses
  %i.al = icmp ult i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.val5.i.i = load ptr, ptr %i.r, align 8, !noalias !689, !noundef !5
  %i.am = getelementptr inbounds nuw [3648 x i8], ptr %.val5.i.i, i64 %i.ai ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2480 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 16, !range !7, !noalias !689, !noundef !5
  %.not.i.i = icmp eq i64 %i.ao, 2
  br i1 %.not.i.i, label %bb.l, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i, !prof !8

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #19, !noalias !689
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #19, !noalias !689
  unreachable

_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 3368 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !689, !noundef !5 ; 2 uses
  %i.ar = icmp ult i64 %2, %i.aq
  br i1 %i.ar, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @408) #19, !noalias !689
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i: ; preds = %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 3360 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 16, !noalias !689, !nonnull !5, !noundef !5
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %2
  %i.av = load i64, ptr %i.au, align 8, !noalias !689, !noundef !5
  %i.aw = call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails20max_borrowed_samplesCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 8 %i.an) #18, !noalias !689
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %.backedge.i.backedge, label %bb.o

_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread.i: ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i, %bb.q, %bb.g
  %i.ay = call { i64, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E6removeCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %.sroa.15.0.i) #18, !noalias !689 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !689
  call fastcc void @_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11remove_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef align 16 captures(none) dereferenceable(3648) %i.a, ptr noalias nofree noundef align 8 dereferenceable(200) %i.o, i64 noundef %i.ae) #18, !noalias !689
  %i.az = load i64, ptr %i.s, align 16, !range !7, !alias.scope !690, !noalias !689, !noundef !5
  %i.ba = icmp eq i64 %i.az, 2
  br i1 %i.ba, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i, label %bb.n

bb.n:                                             ; preds = %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread.i
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details8ReceiverINtNtNtBK_15dynamic_storage19posix_shared_memory7StorageNtBE_20SharedManagementDataEEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef align 8 dereferenceable(1160) %i.s) #18, !noalias !689
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment15DataSegmentViewNtNtNtBK_7service3ipc7ServiceEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull align 16 dereferenceable(3648) %i.a) #18, !noalias !689
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i: ; preds = %bb.n, %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !689
  br label %bb.d

bb.o:                                             ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !689
  call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE23receive_from_connectionCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef align 16 captures(none) dereferenceable(80) %i.b, ptr noundef nonnull align 16 %1, ptr noundef nonnull align 16 %i.am, i64 noundef %i.ae, i64 noundef %2) #18, !noalias !689
  %i.bb = load i128, ptr %i.b, align 16, !range !691, !noalias !689, !noundef !5 ; 2 uses
  %i.bc = icmp eq i128 %i.bb, 2
  %i.bd = load i8, ptr %.sroa.436.0..sroa_idx.i, align 16, !noalias !689 ; 2 uses
  %i.be = load i8, ptr %.sroa.537.0..sroa_idx.i, align 1, !noalias !689 ; 2 uses
  br i1 %i.bc, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.727.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.638.0..sroa_idx.i, i64 62, i1 false), !noalias !689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !689
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
  %i.bg = call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails18number_of_channelsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 8 %i.an) #18, !noalias !689 ; 2 uses
  %.not21.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not21.i.i, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i
  %.sroa.0.016.i.i = phi i1 [ %i.bk, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i ], [ false, %bb.q ]
  %.sroa.03.015.i.i = phi i1 [ %i.bp, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i ], [ false, %bb.q ]
  %.sroa.09.014.i.i = phi i64 [ %i.br, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i ], [ 0, %bb.q ] ; 5 uses
  %i.bh = call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver8has_dataCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 8 %i.an, i64 noundef %.sroa.09.014.i.i) #18, !noalias !689
  %i.bi = load i64, ptr %i.ap, align 8, !noalias !689, !noundef !5 ; 2 uses
  %i.bj = icmp ult i64 %.sroa.09.014.i.i, %i.bi
  br i1 %i.bj, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.014.i.i, i64 noundef %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @408) #19, !noalias !689
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bk = or i1 %.sroa.0.016.i.i, %i.bh           ; 2 uses
  %i.bl = load ptr, ptr %i.as, align 16, !noalias !689, !nonnull !5, !noundef !5
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.sroa.09.014.i.i
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !689, !noundef !5
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = or i1 %.sroa.03.015.i.i, %i.bo          ; 3 uses
  %i.bq = and i1 %i.bk, %i.bp
  %i.br = add nuw i64 %.sroa.09.014.i.i, 1        ; 2 uses
  %3 = icmp uge i64 %i.br, %i.bg
  %or.cond.not.i.i = select i1 %i.bq, i1 true, i1 %3
  br i1 %or.cond.not.i.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i, label %.lr.ph.i.i

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i: ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i
  br i1 %i.bp, label %.backedge.i.backedge, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.thread.i

.backedge.i.backedge:                             ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i
  br label %.backedge.i

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !689
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
  store ptr @126, ptr %i.f, align 8, !captures !9
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
  %i.ci = load i64, ptr %i.ch, align 16, !range !7, !noundef !5
  %.not.i = icmp eq i64 %i.ci, 2
  br i1 %.not.i, label %bb.y, label %bb.z, !prof !8

bb.x:                                             ; preds = %bb.v
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.cc, i64 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #19
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 68, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #19
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.cj = call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver8has_dataCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 8 %i.ch, i64 noundef %2) #18
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
  br i1 %i.cn, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @408) #19
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit: ; preds = %bb.aa
  %i.co = add i32 %.sroa.018.0432, 1              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 3360
  %i.cq = load ptr, ptr %i.cp, align 16, !nonnull !5, !noundef !5
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %2
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !5
  %i.ct = call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails20max_borrowed_samplesCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 8 %i.ch) #18
  %.not = icmp ult i64 %i.cs, %i.ct
  br i1 %.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit, %bb.z
  %.sroa.018.1 = phi i32 [ %i.co, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit ], [ %.sroa.018.0432, %bb.z ] ; 2 uses
  %i.cu = load i64, ptr %i.bw, align 8, !noundef !5 ; 2 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %i.cu, i64 %i.ca)
  %exitcond.not.i424.not = icmp ult i64 %i.ca, %i.cu
  br i1 %exitcond.not.i424.not, label %.lr.ph, label %._crit_edge

bb.ad:                                            ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE23receive_from_connectionCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef align 16 captures(none) dereferenceable(80) %i.e, ptr noundef nonnull align 16 %1, ptr noundef nonnull align 16 %i.cg, i64 noundef %.sroa.03.0.i425, i64 noundef %2) #18
  %i.cv = load i128, ptr %i.e, align 16, !range !691, !noundef !5 ; 2 uses
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
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.458.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.462.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @25, ptr noundef nonnull %i.d, ptr noundef nonnull @127, ptr noundef nonnull %i.c) #18
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
define internal fastcc void @_RNvMs3_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtB1g_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB1g_13shared_memory6common7details6MemoryB2o_INtNtNtB1g_15dynamic_storage19posix_shared_memory7StorageINtB3l_16AllocatorDetailsB2o_EEEENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE3newCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(200) %0) unnamed_addr #0 {
.lr.ph.i:
  %i.a = alloca [1152 x i8], align 8              ; 8 uses
  %i.b = alloca [200 x i8], align 8               ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB2_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitjEE14new_with_allocCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 256) #18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  call void @_RNvMNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB2_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap13FreeListEntryEE14new_with_allocCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 256) #18
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  call void @_RNvMNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB2_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitINtNtB1v_6option6OptionINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtB2N_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB2N_13shared_memory6common7details6MemoryB3V_INtNtNtB2N_15dynamic_storage19posix_shared_memory7StorageINtB4S_16AllocatorDetailsB3V_EEEEEEE14new_with_allocCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 256) #18
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  call void @_RNvMNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB2_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitjEE14new_with_allocCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 256) #18
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 256, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
end_hunk_2
