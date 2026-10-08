Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SystemRuntimeMacOSX?download=true
inline.NumInlined: 1782
inline.NumDeleted: 934
begin_hunk_0
$_ZTVSt15_Sp_counted_ptrIPN12lldb_private9QueueItemELN9__gnu_cxx12_Lock_policyE2EE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTV19SystemRuntimeMacOSX = unnamed_addr constant { [21 x ptr], [5 x ptr] } { [21 x ptr] [ptr null, ptr null, ptr @_ZN19SystemRuntimeMacOSXD1Ev, ptr @_ZN19SystemRuntimeMacOSXD0Ev, ptr @_ZN12lldb_private13SystemRuntime14ModulesDidLoadERKNS_10ModuleListE, ptr @_ZN12lldb_private13SystemRuntime9DidAttachEv, ptr @_ZN12lldb_private13SystemRuntime9DidLaunchEv, ptr @_ZN19SystemRuntimeMacOSX6DetachEv, ptr @_ZN19SystemRuntimeMacOSX25GetExtendedBacktraceTypesEv, ptr @_ZN19SystemRuntimeMacOSX26GetExtendedBacktraceThreadESt10shared_ptrIN12lldb_private6ThreadEENS1_11ConstStringE, ptr @_ZN19SystemRuntimeMacOSX32GetExtendedBacktraceForQueueItemESt10shared_ptrIN12lldb_private9QueueItemEENS1_11ConstStringE, ptr @_ZN19SystemRuntimeMacOSX17PopulateQueueListERN12lldb_private9QueueListE, ptr @_ZN19SystemRuntimeMacOSX30GetQueueNameFromThreadQAddressB5cxx11Em, ptr @_ZN19SystemRuntimeMacOSX28GetQueueIDFromThreadQAddressEm, ptr @_ZN19SystemRuntimeMacOSX44GetLibdispatchQueueAddressFromThreadQAddressEm, ptr @_ZN19SystemRuntimeMacOSX12GetQueueKindEm, ptr @_ZN19SystemRuntimeMacOSX28PopulatePendingItemsForQueueEPN12lldb_private5QueueE, ptr @_ZN19SystemRuntimeMacOSX17CompleteQueueItemEPN12lldb_private9QueueItemEm, ptr @_ZN19SystemRuntimeMacOSX32AddThreadExtendedInfoPacketHintsESt10shared_ptrIN12lldb_private14StructuredData6ObjectEE, ptr @_ZN19SystemRuntimeMacOSX31SafeToCallFunctionsOnThisThreadESt10shared_ptrIN12lldb_private6ThreadEE, ptr @_ZN19SystemRuntimeMacOSX13GetPluginNameEv], [5 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr null, ptr @_ZThn16_N19SystemRuntimeMacOSXD1Ev, ptr @_ZThn16_N19SystemRuntimeMacOSXD0Ev, ptr @_ZThn16_N19SystemRuntimeMacOSX13GetPluginNameEv] }, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"plo_pthread_tsd_base_offset\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"plo_pthread_tsd_base_address_offset\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"plo_pthread_tsd_entry_size\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"dti_queue_index\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"dti_voucher_index\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"dti_qos_class_index\00", align 1
@_ZZN19SystemRuntimeMacOSX31SafeToCallFunctionsOnThisThreadESt10shared_ptrIN12lldb_private6ThreadEEE15g_select_symbol = internal global %"class.lldb_private::ConstString" zeroinitializer, align 8
@_ZGVZN19SystemRuntimeMacOSX31SafeToCallFunctionsOnThisThreadESt10shared_ptrIN12lldb_private6ThreadEEE15g_select_symbol = internal global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"__select\00", align 1
@_ZZN19SystemRuntimeMacOSX29ReadLibdispatchOffsetsAddressEvE36g_dispatch_queue_offsets_symbol_name = internal global %"class.lldb_private::ConstString" zeroinitializer, align 8
@_ZGVZN19SystemRuntimeMacOSX29ReadLibdispatchOffsetsAddressEvE36g_dispatch_queue_offsets_symbol_name = internal global i64 0, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"dispatch_queue_offsets\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"libSystem.B.dylib\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"libdispatch.dylib\00", align 1
@_ZZN19SystemRuntimeMacOSX28ReadLibpthreadOffsetsAddressEvE39g_libpthread_layout_offsets_symbol_name = internal global %"class.lldb_private::ConstString" zeroinitializer, align 8
@_ZGVZN19SystemRuntimeMacOSX28ReadLibpthreadOffsetsAddressEvE39g_libpthread_layout_offsets_symbol_name = internal global i64 0, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"pthread_layout_offsets\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"libsystem_pthread.dylib\00", align 1
@_ZZN19SystemRuntimeMacOSX32ReadLibdispatchTSDIndexesAddressEvE37g_libdispatch_tsd_indexes_symbol_name = internal global %"class.lldb_private::ConstString" zeroinitializer, align 8
@_ZGVZN19SystemRuntimeMacOSX32ReadLibdispatchTSDIndexesAddressEvE37g_libdispatch_tsd_indexes_symbol_name = internal global i64 0, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"dispatch_tsd_indexes\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"__lldb_dispatch_tsd_indexes_s\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"dti_version\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"libdispatch\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Application Specific Backtrace\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"libBacktraceRecording.dylib\00", align 1
@_ZZN19SystemRuntimeMacOSX36BacktraceRecordingHeadersInitializedEvE41introspection_dispatch_queue_info_version = internal global %"class.lldb_private::ConstString" zeroinitializer, align 8
@_ZGVZN19SystemRuntimeMacOSX36BacktraceRecordingHeadersInitializedEvE41introspection_dispatch_queue_info_version = internal global i64 0, align 8
@.str.19 = private unnamed_addr constant [44 x i8] c"__introspection_dispatch_queue_info_version\00", align 1
@_ZZN19SystemRuntimeMacOSX36BacktraceRecordingHeadersInitializedEvE45introspection_dispatch_queue_info_data_offset = internal global %"class.lldb_private::ConstString" zeroinitializer, align 8
@_ZGVZN19SystemRuntimeMacOSX36BacktraceRecordingHeadersInitializedEvE45introspection_dispatch_queue_info_data_offset = internal global i64 0, align 8
@.str.20 = private unnamed_addr constant [48 x i8] c"__introspection_dispatch_queue_info_data_offset\00", align 1
@_ZZN19SystemRuntimeMacOSX36BacktraceRecordingHeadersInitializedEvE40introspection_dispatch_item_info_version = internal global %"class.lldb_private::ConstString" zeroinitializer, align 8
@_ZGVZN19SystemRuntimeMacOSX36BacktraceRecordingHeadersInitializedEvE40introspection_dispatch_item_info_version = internal global i64 0, align 8
@.str.21 = private unnamed_addr constant [43 x i8] c"__introspection_dispatch_item_info_version\00", align 1
@_ZZN19SystemRuntimeMacOSX36BacktraceRecordingHeadersInitializedEvE44introspection_dispatch_item_info_data_offset = internal global %"class.lldb_private::ConstString" zeroinitializer, align 8
@_ZGVZN19SystemRuntimeMacOSX36BacktraceRecordingHeadersInitializedEvE44introspection_dispatch_item_info_data_offset = internal global i64 0, align 8
@.str.22 = private unnamed_addr constant [47 x i8] c"__introspection_dispatch_item_info_data_offset\00", align 1
@.str.23 = private unnamed_addr constant [99 x i8] c"/opt-bench/work/llvm/llvm-project/lldb/source/Plugins/SystemRuntime/MacOSX/SystemRuntimeMacOSX.cpp\00", align 1
@__func__._ZN19SystemRuntimeMacOSX25PopulateQueuesUsingLibBTREmmmRN12lldb_private9QueueListE = private unnamed_addr constant [26 x i8] c"PopulateQueuesUsingLibBTR\00", align 1
@.str.24 = private unnamed_addr constant [155 x i8] c"SystemRuntimeMacOSX::PopulateQueuesUsingLibBTR added queue with dispatch_queue_t 0x%lx, serial number 0x%lx, running items %d, pending items %d, name '%s'\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"System runtime plugin for Mac OS X native libraries.\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.26 = private unnamed_addr constant [81 x i8] c"/opt-bench/work/llvm/llvm-project/lldb/include/lldb/Target/ProcessStructReader.h\00", align 1
@__func__._ZN12lldb_private19ProcessStructReaderC2EPNS_7ProcessEmNS_12CompilerTypeE = private unnamed_addr constant [20 x i8] c"ProcessStructReader\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"{0}\00", align 1
@_ZN4llvm9ErrorList2IDE = external global i8, align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN4llvm9ErrorListE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZN4llvm13ErrorInfoBase2IDE = external global i8, align 1
@_ZTVSt15_Sp_counted_ptrIPN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@.str.30 = private unnamed_addr constant [21 x i8] c"systemruntime-macosx\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@.str.33 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerImEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerImEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private14StructuredData7IntegerImEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN12lldb_private14StructuredData7IntegerImEE = linkonce_odr unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr null, ptr @_ZN12lldb_private14StructuredData6ObjectD2Ev, ptr @_ZN12lldb_private14StructuredData7IntegerImED0Ev, ptr @_ZNK12lldb_private14StructuredData6Object7IsValidEv, ptr @_ZN12lldb_private14StructuredData6Object5ClearEv, ptr @_ZNK12lldb_private14StructuredData7IntegerImE9SerializeERN4llvm4json7OStreamE, ptr @_ZNK12lldb_private14StructuredData7IntegerImE14GetDescriptionERNS_6StreamE] }, comdat, align 8
@.str.34 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private13HistoryThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private13HistoryThreadESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private13HistoryThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private13HistoryThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private13HistoryThreadESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@.str.35 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@_ZTVSt15_Sp_counted_ptrIPN12lldb_private5QueueELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private5QueueELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private5QueueELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private5QueueELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private5QueueELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVSt15_Sp_counted_ptrIPN12lldb_private9QueueItemELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private9QueueItemELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private9QueueItemELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private9QueueItemELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private9QueueItemELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8

@_ZN19SystemRuntimeMacOSXC1EPN12lldb_private7ProcessE = unnamed_addr alias void (ptr, ptr), ptr @_ZN19SystemRuntimeMacOSXC2EPN12lldb_private7ProcessE
@_ZN19SystemRuntimeMacOSXD1Ev = unnamed_addr alias void (ptr), ptr @_ZN19SystemRuntimeMacOSXD2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @lldb_initialize_SystemRuntimeMacOSX() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN12lldb_private13PluginManager14RegisterPluginEN4llvm9StringRefES2_PFPNS_13SystemRuntimeEPNS_7ProcessEE(ptr nonnull @.str.30, i64 20, ptr nonnull @.str.25, i64 52, ptr noundef nonnull @_ZN19SystemRuntimeMacOSX14CreateInstanceEPN12lldb_private7ProcessE) #19 ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19SystemRuntimeMacOSX10InitializeEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN12lldb_private13PluginManager14RegisterPluginEN4llvm9StringRefES2_PFPNS_13SystemRuntimeEPNS_7ProcessEE(ptr nonnull @.str.30, i64 20, ptr nonnull @.str.25, i64 52, ptr noundef nonnull @_ZN19SystemRuntimeMacOSX14CreateInstanceEPN12lldb_private7ProcessE) #19 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @lldb_terminate_SystemRuntimeMacOSX() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN12lldb_private13PluginManager16UnregisterPluginEPFPNS_13SystemRuntimeEPNS_7ProcessEE(ptr noundef nonnull @_ZN19SystemRuntimeMacOSX14CreateInstanceEPN12lldb_private7ProcessE) #19 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19SystemRuntimeMacOSX9TerminateEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN12lldb_private13PluginManager16UnregisterPluginEPFPNS_13SystemRuntimeEPNS_7ProcessEE(ptr noundef nonnull @_ZN19SystemRuntimeMacOSX14CreateInstanceEPN12lldb_private7ProcessE) #19 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN19SystemRuntimeMacOSX14CreateInstanceEPN12lldb_private7ProcessE(ptr noundef %0) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26, !noalias !232, !nonnull !27, !noundef !27 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 8, !noalias !232
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06.i.i.i.i.i.i = phi i32 [ %i.d, %bb.a ], [ %i.h, %bb.b ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp ne i32 %.06.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i)
  %i.e = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.f = cmpxchg weak ptr %i.c, i32 %.06.i.i.i.i.i.i, i32 %i.e acq_rel monotonic, align 8, !noalias !232 ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 1
  %i.h = extractvalue { i32, i1 } %i.f, 0
  br i1 %i.g, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.b, !llvm.loop !0

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = load atomic i32, ptr %i.c monotonic, align 8, !noalias !232
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31, !noalias !232
  br label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i

_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i: ; preds = %bb.c, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.l = phi ptr [ %i.k, %bb.c ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ]
  %i.m = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  store i32 0, ptr %i.c, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !34
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !1
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !1
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

bb.e:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i1.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i1.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.c, align 8, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.o, %bb.f ], [ %i.y, %bb.g ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.z, label %bb.h, label %_ZN12lldb_private7Process9GetTargetEv.exit, !prof !39

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

_ZN12lldb_private7Process9GetTargetEv.exit:       ; preds = %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  %i.aa = tail call noundef ptr @_ZN12lldb_private6Target26GetExecutableModulePointerEv(ptr noundef nonnull align 8 dereferenceable(2200) %i.l) #19 ; 3 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN12lldb_private7Process9GetTargetEv.exit
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(952) %i.aa) #19 ; 4 uses
  %.not15 = icmp eq ptr %i.ae, null
  br i1 %.not15, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 68 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !269 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 312
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i32 %i.ak(ptr noundef nonnull align 8 dereferenceable(200) %i.ae) #19, !inline_history !229 ; 2 uses
  store i32 %i.al, ptr %i.af, align 4, !tbaa !269
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.am = phi i32 [ %i.al, %bb.k ], [ %i.ag, %bb.j ]
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %.thread, label %.thread27

.thread:                                          ; preds = %_ZN12lldb_private7Process9GetTargetEv.exit, %bb.i, %bb.l
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !26, !noalias !270, !nonnull !27, !noundef !27 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 7 uses
  %i.aq = load atomic i32, ptr %i.ap monotonic, align 8, !noalias !270
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.thread
  %.06.i.i.i.i.i.i16 = phi i32 [ %i.aq, %.thread ], [ %i.au, %bb.m ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i17 = icmp ne i32 %.06.i.i.i.i.i.i16, 0
  tail call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i17)
  %i.ar = add nsw i32 %.06.i.i.i.i.i.i16, 1
  %i.as = cmpxchg weak ptr %i.ap, i32 %.06.i.i.i.i.i.i16, i32 %i.ar acq_rel monotonic, align 8, !noalias !270 ; 2 uses
  %i.at = extractvalue { i32, i1 } %i.as, 1
  %i.au = extractvalue { i32, i1 } %i.as, 0
  br i1 %i.at, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i18, label %bb.m, !llvm.loop !0

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i18: ; preds = %bb.m
  %i.av = load atomic i32, ptr %i.ap monotonic, align 8, !noalias !270
  %.not.i.i.i.i19 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i19, label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i20, label %bb.n

bb.n:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i18
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31, !noalias !270
  br label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i20

_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i20: ; preds = %bb.n, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i18
  %i.ay = phi ptr [ %i.ax, %bb.n ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i18 ] ; 2 uses
  %i.az = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i20
  store i32 0, ptr %i.ap, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !34
  %i.bd = load ptr, ptr %i.ao, align 8, !tbaa !36
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #19, !inline_history !1
  %i.bg = load ptr, ptr %i.ao, align 8, !tbaa !36
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #19, !inline_history !1
  br label %_ZN12lldb_private7Process9GetTargetEv.exit24

bb.p:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i20
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i1.i21 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i1.i21, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ap, align 8, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22

bb.r:                                             ; preds = %bb.p
  %i.bl = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i23 = phi i32 [ %i.bb, %bb.q ], [ %i.bl, %bb.r ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i23, 1
  br i1 %i.bm, label %bb.s, label %_ZN12lldb_private7Process9GetTargetEv.exit24, !prof !39

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #19
  br label %_ZN12lldb_private7Process9GetTargetEv.exit24

_ZN12lldb_private7Process9GetTargetEv.exit24:     ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22, %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 804
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !271
  switch i32 %i.bo, label %.thread27 [
    i32 1, label %bb.t
    i32 9, label %bb.t
    i32 5, label %bb.t
    i32 26, label %bb.t
    i32 27, label %bb.t
    i32 28, label %bb.t
    i32 29, label %bb.t
    i32 30, label %bb.t
  ]

bb.t:                                             ; preds = %_ZN12lldb_private7Process9GetTargetEv.exit24, %_ZN12lldb_private7Process9GetTargetEv.exit24, %_ZN12lldb_private7Process9GetTargetEv.exit24, %_ZN12lldb_private7Process9GetTargetEv.exit24, %_ZN12lldb_private7Process9GetTargetEv.exit24, %_ZN12lldb_private7Process9GetTargetEv.exit24, %_ZN12lldb_private7Process9GetTargetEv.exit24, %_ZN12lldb_private7Process9GetTargetEv.exit24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 800
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !272
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.u, label %.thread27

bb.u:                                             ; preds = %bb.t
  %i.bs = tail call noalias noundef nonnull dereferenceable(664) ptr @_Znwm(i64 noundef 664) #20 ; 2 uses
  tail call void @_ZN19SystemRuntimeMacOSXC1EPN12lldb_private7ProcessE(ptr noundef nonnull align 8 dereferenceable(658) %i.bs, ptr noundef nonnull %0) #19
  br label %.thread27

.thread27:                                        ; preds = %bb.t, %_ZN12lldb_private7Process9GetTargetEv.exit24, %bb.l, %bb.u
  %.012 = phi ptr [ %i.bs, %bb.u ], [ null, %bb.l ], [ null, %_ZN12lldb_private7Process9GetTargetEv.exit24 ], [ null, %bb.t ]
  ret ptr %.012
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZN12lldb_private6Target26GetExecutableModulePointerEv(ptr noundef nonnull align 8 dereferenceable(2200)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19SystemRuntimeMacOSXC2EPN12lldb_private7ProcessE(ptr noundef nonnull align 8 dereferenceable(658) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN12lldb_private13SystemRuntimeC2EPNS_7ProcessE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #19
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTV19SystemRuntimeMacOSX, i64 16), ptr %0, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV19SystemRuntimeMacOSX, i64 184), ptr %i.a, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  store i32 1, ptr %i.c, align 8, !tbaa !276
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZN12lldb_private21AppleGetQueuesHandlerC1EPNS_7ProcessE(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef %1) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @_ZN12lldb_private27AppleGetPendingItemsHandlerC1EPNS_7ProcessE(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef %1) #19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @_ZN12lldb_private23AppleGetItemInfoHandlerC1EPNS_7ProcessE(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef %1) #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408
  tail call void @_ZN12lldb_private29AppleGetThreadItemInfoHandlerC1EPNS_7ProcessE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef %1) #19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 -1, ptr %i.h, align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.j, align 8, !tbaa !95
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 544
  store <8 x i16> <i16 -1, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1>, ptr %i.k, align 8, !tbaa !277
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 560
  store <8 x i16> <i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1>, ptr %i.l, align 8, !tbaa !277
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 576
  store i16 0, ptr %i.m, align 8, !tbaa !278
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 -1, i64 24, i1 false)
  store i64 0, ptr %i.o, align 8
  store i16 -1, ptr %i.o, align 8, !tbaa !96
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 -1, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.q, i8 -1, i64 10, i1 false)
  tail call void @_ZN12lldb_private39RegisterAbortWithPayloadFrameRecognizerEPNS_7ProcessE(ptr noundef %1) #19
  ret void
}

declare void @_ZN12lldb_private13SystemRuntimeC2EPNS_7ProcessE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN12lldb_private21AppleGetQueuesHandlerC1EPNS_7ProcessE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #2

declare void @_ZN12lldb_private27AppleGetPendingItemsHandlerC1EPNS_7ProcessE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #2

declare void @_ZN12lldb_private23AppleGetItemInfoHandlerC1EPNS_7ProcessE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #2

declare void @_ZN12lldb_private29AppleGetThreadItemInfoHandlerC1EPNS_7ProcessE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #2

declare void @_ZN12lldb_private39RegisterAbortWithPayloadFrameRecognizerEPNS_7ProcessE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19SystemRuntimeMacOSXD2Ev(ptr noundef nonnull align 8 dead_on_return(658) dereferenceable(658) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.lldb_private::Status", align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTV19SystemRuntimeMacOSX, i64 16), ptr %0, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV19SystemRuntimeMacOSX, i64 184), ptr %i.a, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #19 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #21
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 576
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(3224) %i.e) #19, !inline_history !279
  br i1 %i.i, label %bb.c, label %_ZN19SystemRuntimeMacOSX5ClearEb.exit

bb.c:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !98   ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZN19SystemRuntimeMacOSX5ClearEb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !97
  call void @_ZN12lldb_private7Process23ClearBreakpointSiteByIDEm(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %1, ptr noundef nonnull align 8 dereferenceable(3224) %i.l, i64 noundef %i.k) #19
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #19
  br label %_ZN19SystemRuntimeMacOSX5ClearEb.exit

_ZN19SystemRuntimeMacOSX5ClearEb.exit:            ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i, %bb.c, %bb.d
  store ptr null, ptr %i.d, align 8, !tbaa !97
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.m, align 8, !tbaa !98
  %i.n = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 408
  call void @_ZN12lldb_private29AppleGetThreadItemInfoHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.o) #19
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZN12lldb_private23AppleGetItemInfoHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.p) #19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @_ZN12lldb_private27AppleGetPendingItemsHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.q) #19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZN12lldb_private21AppleGetQueuesHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.r) #19
  call void @_ZN12lldb_private13SystemRuntimeD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19SystemRuntimeMacOSX5ClearEb(ptr noundef nonnull align 8 dereferenceable(658) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.lldb_private::Status", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #21
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 576
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(3224) %i.d) #19
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !98   ; 2 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !97
  call void @_ZN12lldb_private7Process23ClearBreakpointSiteByIDEm(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(3224) %i.k, i64 noundef %i.j) #19
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  br i1 %1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.c, align 8, !tbaa !97
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.l, align 8, !tbaa !98
  %i.m = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #19 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare void @_ZN12lldb_private29AppleGetThreadItemInfoHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN12lldb_private23AppleGetItemInfoHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN12lldb_private27AppleGetPendingItemsHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN12lldb_private21AppleGetQueuesHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN12lldb_private13SystemRuntimeD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn16_N19SystemRuntimeMacOSXD1Ev(ptr noundef %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN19SystemRuntimeMacOSXD1Ev(ptr noundef nonnull align 8 dead_on_return(658) dereferenceable(658) %i.a) #19
  ret void
}

end_hunk_0
