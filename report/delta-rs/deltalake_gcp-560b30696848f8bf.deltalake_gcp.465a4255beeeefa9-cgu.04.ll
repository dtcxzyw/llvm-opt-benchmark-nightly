inline.NumInlined: 194
inline.NumDeleted: 92
begin_hunk_0_@_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2r_6future6future6Futurep6OutputINtNtB2r_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2r_6marker4SendEL_EEEENtNtNtB2r_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp:bb.a
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.promoted = load ptr, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp.exit, %bb.a
  %1 = phi ptr [ %.sroa.07.0.sink.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp.exit ], [ %.promoted, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2r_6future6future6Futurep6OutputINtNtB2r_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2r_6marker4SendEL_EEEENtNtNtB2r_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp:bb.a
  br i1 %i.v, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.sroa.07.0.sink.i = phi ptr [ %.sroa.07.0.i, %bb.d ], [ %i.u, %bb.g ] ; 2 uses
  store ptr %.sroa.07.0.sink.i, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB4_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEECs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull %.sroa.01.0.i)
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2x_:bb.a
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.promoted = load ptr, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit, %bb.a
  %1 = phi ptr [ %.sroa.07.0.sink.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit ], [ %.promoted, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2x_:bb.a
  br i1 %i.v, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.sroa.07.0.sink.i = phi ptr [ %.sroa.07.0.i, %bb.d ], [ %i.u, %bb.g ] ; 2 uses
  store ptr %.sroa.07.0.sink.i, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2F_(ptr noundef nonnull %.sroa.01.0.i)
end_hunk_3
begin_hunk_4_@_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2x_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp:bb.a
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.promoted = load ptr, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3e_11ObjectStore13delete_stream00EEEECs62u4JVtZyFF_13deltalake_gcp.exit, %bb.a
  %1 = phi ptr [ %.sroa.07.0.sink.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3e_11ObjectStore13delete_stream00EEEECs62u4JVtZyFF_13deltalake_gcp.exit ], [ %.promoted, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
end_hunk_4
begin_hunk_5_@_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2x_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp:bb.a
  br i1 %i.v, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.sroa.07.0.sink.i = phi ptr [ %.sroa.07.0.i, %bb.d ], [ %i.u, %bb.g ] ; 2 uses
  store ptr %.sroa.07.0.sink.i, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2F_11ObjectStore13delete_stream00EEECs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull %.sroa.01.0.i)
end_hunk_5
