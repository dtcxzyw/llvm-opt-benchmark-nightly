inline.NumInlined: 141
inline.NumDeleted: 85
begin_hunk_0_@_RNvXCs6KaIMXx2hZw_14deltalake_hdfsNtB2_11HdfsFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactory14parse_url_opts:bb.a
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !403
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreEECs6KaIMXx2hZw_14deltalake_hdfs.exit47

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreE9drop_slowCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n) #21
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreEECs6KaIMXx2hZw_14deltalake_hdfs.exit47
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4taskINtB5_4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB21_6future6future6Futurep6OutputINtNtB21_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB21_6marker4SendEL_EEEENtNtCsI2hFLkJvVt_12futures_task8arc_wake7ArcWake11wake_by_refCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = tail call noundef ptr @_RNvMsK_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBO_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB31_6future6future6Futurep6OutputINtNtB31_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB31_6marker4SendEL_EEEEE7upgradeCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit4, label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit4: ; preds = %bb.a, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %bb.h, %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.f = load ptr, ptr %i.a, align 8, !alias.scope !410, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !410
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB30_6marker4SendEL_EEEEE9drop_slowB5m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit unwind label %bb.i

bb.d:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 81
  store atomic i8 1, ptr %i.i monotonic, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.k = atomicrmw xchg ptr %i.j, i8 1 seq_cst, align 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  invoke void @_RNvMNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB2_15ReadyToRunQueueINtNtB6_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2p_6future6future6Futurep6OutputINtNtB2p_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2p_6marker4SendEL_EEEE7enqueueCs6KaIMXx2hZw_14deltalake_hdfs(ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.c)
          to label %bb.h unwind label %bb.b

bb.f:                                             ; preds = %bb.h, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.o = load ptr, ptr %i.a, align 8, !alias.scope !417, !nonnull !4, !noundef !4
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !417
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit4

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB30_6marker4SendEL_EEEEE9drop_slowB5m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #21
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit4

bb.h:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  invoke void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.s)
          to label %bb.f unwind label %bb.b

bb.i:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4taskINtB5_4TaskINtNtB9_15futures_ordered12OrderWrapperNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtCsI2hFLkJvVt_12futures_task8arc_wake7ArcWake11wake_by_refCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = tail call noundef ptr @_RNvMsK_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBO_15futures_ordered12OrderWrapperNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE7upgradeCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEECs6KaIMXx2hZw_14deltalake_hdfs.exit4, label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEECs6KaIMXx2hZw_14deltalake_hdfs.exit4: ; preds = %bb.a, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %bb.h, %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %i.f = load ptr, ptr %i.a, align 8, !alias.scope !424, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !424
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEECs6KaIMXx2hZw_14deltalake_hdfs.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEECs6KaIMXx2hZw_14deltalake_hdfs.exit unwind label %bb.i

bb.d:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 201
  store atomic i8 1, ptr %i.i monotonic, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.k = atomicrmw xchg ptr %i.j, i8 1 seq_cst, align 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  invoke void @_RNvMNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB2_15ReadyToRunQueueINtNtB6_15futures_ordered12OrderWrapperNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE7enqueueCs6KaIMXx2hZw_14deltalake_hdfs(ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.c)
          to label %bb.h unwind label %bb.b

bb.f:                                             ; preds = %bb.h, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.o = load ptr, ptr %i.a, align 8, !alias.scope !431, !nonnull !4, !noundef !4
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !431
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEECs6KaIMXx2hZw_14deltalake_hdfs.exit4

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #21
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEECs6KaIMXx2hZw_14deltalake_hdfs.exit4

bb.h:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  invoke void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.s)
          to label %bb.f unwind label %bb.b

bb.i:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEECs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1O_5slice4iter4IterINtNtNtB1O_3ops5range5RangeyEEEENCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs6KaIMXx2hZw_14deltalake_hdfs(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(40) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !432, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1w_5slice4iter4IterINtNtNtB1w_3ops5range5RangeyEEEENCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = load i64, ptr %0, align 8, !range !3, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  store i64 1, ptr %0, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noundef !4
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1s_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3K_5ErrorENtNtB1s_6marker4SendEL_EENCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB3K_11ObjectStore13delete_stream0EEB2t_9poll_nextCs6KaIMXx2hZw_14deltalake_hdfs(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !432, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %3, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1a_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3s_5ErrorENtNtB1a_6marker4SendEL_EENCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB3s_11ObjectStore13delete_stream0EB2b_9poll_nextCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = load i64, ptr %0, align 8, !range !433, !noundef !4
  switch i64 %i.d, label %bb.d [
    i64 2, label %bb.c
    i64 1, label %bb.e
  ]

3:                                                ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  store i64 2, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %3, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1r_ENtB6_5Debug3fmtCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !434, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !438
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !438
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !445, !noalias !446, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !445, !noalias !446, !noundef !4
  %i.g = add i64 %i.f, 1
  call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef %i.g), !noalias !445
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !445, !noalias !446, !noundef !4
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !440, !noalias !447
  %i.j = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs6Po7BT7Nknu_5alloc6string6StringB12_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterB13_B13_EECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !438
  %i.k = call noundef zeroext i1 @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j), !noalias !435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !438
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxENtB6_5Debug3fmtCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !434, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !451
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !451
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !458, !noalias !459, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !458, !noalias !459, !noundef !4
  %i.g = add i64 %i.f, 1
  call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringxEE3newCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef %i.g), !noalias !458
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !458, !noalias !459, !noundef !4
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !453, !noalias !460
  %i.j = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs6Po7BT7Nknu_5alloc6string6StringRxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterB13_xEECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !451
  %i.k = call noundef zeroext i1 @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j), !noalias !448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !451
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMaplINtNtNtCskQDtHcQtBkN_5tokio4sync7oneshot6SenderINtNtB8_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs387lRdTAbEW_11hdfs_native5error9HdfsErrorEEENtB6_5Debug3fmtCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !434, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !464
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !464
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !471, !noalias !472, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !471, !noalias !472, !noundef !4
  %i.g = add i64 %i.f, 1
  call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTlINtNtNtCskQDtHcQtBkN_5tokio4sync7oneshot6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs387lRdTAbEW_11hdfs_native5error9HdfsErrorEEEE3newCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef %i.g), !noalias !471
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !471, !noalias !472, !noundef !4
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !466, !noalias !473
  %i.j = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRlRINtNtNtCskQDtHcQtBkN_5tokio4sync7oneshot6SenderINtNtBa_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs387lRdTAbEW_11hdfs_native5error9HdfsErrorEEINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterlB15_EECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !464
  %i.k = call noundef zeroext i1 @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j), !noalias !461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !464
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs387lRdTAbEW_11hdfs_native6client13RuntimeHolderNtB6_5Debug3fmtCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !434, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.d = load i64, ptr %i.c, align 8, !range !3, !alias.scope !474, !noalias !477, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = trunc nuw i64 %i.d to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !479
  store ptr %i.e, ptr %i.a, align 8, !noalias !479
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !479
  br label %_RNvXsl_NtCs387lRdTAbEW_11hdfs_native6clientNtB5_13RuntimeHolderNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !479
  store ptr %i.e, ptr %i.b, align 8, !noalias !479
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !479
  br label %_RNvXsl_NtCs387lRdTAbEW_11hdfs_native6clientNtB5_13RuntimeHolderNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

_RNvXsl_NtCs387lRdTAbEW_11hdfs_native6clientNtB5_13RuntimeHolderNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs387lRdTAbEW_11hdfs_native6client6ClientNtB6_5Debug3fmtCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !434, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !480
  store ptr %i.b, ptr %i.a, align 8, !noalias !480
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 6, ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 11, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57, ptr noalias noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 6, ptr noundef nonnull readonly %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58, ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @59)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !480
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs387lRdTAbEW_11hdfs_native6client9MountLinkNtB6_5Debug3fmtCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !434, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !484
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.d, ptr %i.a, align 8, !noalias !484
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 11, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37, ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 9, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37, ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !484
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_5Debug3fmtCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !434, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !488, !noalias !491, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !488, !noalias !491, !noundef !4
  %i.f = tail call noundef zeroext i1 @_RNvXsh_NtCsbvkFyIu7lgC_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !488
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleNtB6_5Debug3fmtCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !434, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !493
  store ptr %i.b, ptr %i.a, align 8, !noalias !493
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 6, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !493
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeNtB6_5Debug3fmtCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !434, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !497
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.d, ptr %i.a, align 8, !noalias !497
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 9, ptr noundef nonnull align 8 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !497
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB5_7RuntimeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 9, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4taskINtB5_4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB21_6future6future6Futurep6OutputINtNtB21_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB21_6marker4SendEL_EEEENtNtNtB21_3ops4drop4Drop4dropCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 {
end_hunk_0
