inline.NumInlined: 238
inline.NumDeleted: 109
begin_hunk_0_@_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowB36_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.d, align 8, !alias.scope !69
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit.i.i, %bb.a
  %1 = phi ptr [ %.sroa.07.0.sink.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit.i.i ], [ %.pre.i.i, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.g = load atomic ptr, ptr %i.f acquire, align 8, !noalias !69 ; 5 uses
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !69, !nonnull !4, !noundef !4 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowB36_:bb.a
  br i1 %i.x, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.sroa.07.0.sink.i.i.i = phi ptr [ %.sroa.07.0.i.i.i, %bb.d ], [ %i.w, %bb.g ] ; 2 uses
  store ptr %.sroa.07.0.sink.i.i.i, ptr %i.d, align 8, !alias.scope !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  %i.y = getelementptr inbounds i8, ptr %.sroa.01.0.i.i.i, i64 -16 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2r_6future6future6Futurep6OutputINtNtB2r_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2r_6marker4SendEL_EEEENtNtNtB2r_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs7JU2D1aBbVY_15deltalake_mount.exit, %bb.a
  %1 = phi ptr [ %.sroa.07.0.sink.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs7JU2D1aBbVY_15deltalake_mount.exit ], [ %.pre, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2r_6future6future6Futurep6OutputINtNtB2r_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2r_6marker4SendEL_EEEENtNtNtB2r_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  br i1 %i.v, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.sroa.07.0.sink.i = phi ptr [ %.sroa.07.0.i, %bb.d ], [ %i.u, %bb.g ] ; 2 uses
  store ptr %.sroa.07.0.sink.i, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 -16 ; 2 uses
end_hunk_3
begin_hunk_4_@_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4r_13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendIBH_DNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4E_13delete_stream00EEEECs7JU2D1aBbVY_15deltalake_mount.exit, %bb.a
  %1 = phi ptr [ %.sroa.07.0.sink.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendIBH_DNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4E_13delete_stream00EEEECs7JU2D1aBbVY_15deltalake_mount.exit ], [ %.pre, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
end_hunk_4
begin_hunk_5_@_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4r_13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  br i1 %i.v, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.sroa.07.0.sink.i = phi ptr [ %.sroa.07.0.i, %bb.d ], [ %i.u, %bb.g ] ; 2 uses
  store ptr %.sroa.07.0.sink.i, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 -16 ; 2 uses
end_hunk_5
begin_hunk_6_@_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2x_:bb.a
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit, %bb.a
  %1 = phi ptr [ %.sroa.07.0.sink.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit ], [ %.pre, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
end_hunk_6
begin_hunk_7_@_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2x_:bb.a
  br i1 %i.v, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.sroa.07.0.sink.i = phi ptr [ %.sroa.07.0.i, %bb.d ], [ %i.u, %bb.g ] ; 2 uses
  store ptr %.sroa.07.0.sink.i, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 -16 ; 2 uses
end_hunk_7
begin_hunk_8_@_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2x_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB3e_11ObjectStore13delete_stream00EEEECs7JU2D1aBbVY_15deltalake_mount.exit, %bb.a
  %1 = phi ptr [ %.sroa.07.0.sink.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB3e_11ObjectStore13delete_stream00EEEECs7JU2D1aBbVY_15deltalake_mount.exit ], [ %.pre, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
end_hunk_8
begin_hunk_9_@_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2x_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  br i1 %i.v, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.sroa.07.0.sink.i = phi ptr [ %.sroa.07.0.i, %bb.d ], [ %i.u, %bb.g ] ; 2 uses
  store ptr %.sroa.07.0.sink.i, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 -16 ; 2 uses
end_hunk_9
