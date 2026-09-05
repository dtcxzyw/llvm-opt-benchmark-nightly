Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_conformance_tests_common-f849a92dbd610037.iceoryx2_conformance_tests_common.375569554446ae94-cgu.10?download=true
inline.NumInlined: 9002
inline.NumDeleted: 2149
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0
@1372 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBE_5local7ServiceyuyINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests14active_request14active_request16CustomUserHeaderKmadcb_Kyd928_EENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1373 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBE_5local7ServiceyuyuENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1374 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBE_5local7ServiceyyyuENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1375 = private unnamed_addr constant [7 x i8] c"BestFit", align 1
@1376 = private unnamed_addr constant [10 x i8] c"PowerOfTwo", align 1
@1377 = private unnamed_addr constant [6 x i8] c"Static", align 1
@1378 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe16PublisherDetailsEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsb_NtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cellINtB5_10UnsafeCellINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe16PublisherDetailsEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1379 = private unnamed_addr constant [21 x i8] c"SubscriberSharedState", align 1
@1380 = private unnamed_addr constant [8 x i8] c"receiver", align 1
@1381 = private unnamed_addr constant [20 x i8] c"publisher_list_state", align 1
@1382 = private unnamed_addr constant [24 x i8] c"ExceedsMaxActiveRequests", align 1
@1383 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1384 = private unnamed_addr constant [9 x i8] c"SendError", align 1
@1385 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_3ipc7ServiceINtNtNtBE_7builder10blackboard19BlackboardResourcesB1v_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsN_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceINtNtNtB5_7builder10blackboard19BlackboardResourcesB12_EENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1386 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder15CustomKeyMarkerENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1387 = private unnamed_addr constant [17 x i8] c"ReaderSharedState", align 1
@1388 = private unnamed_addr constant [4 x i8] c"_key", align 1
@1389 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests18service_blackboard18service_blackboard3FooENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1390 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDatajENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1391 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDatayENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1392 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_5local7ServiceINtNtNtBE_7builder10blackboard19BlackboardResourcesB1v_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsN_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceINtNtNtB5_7builder10blackboard19BlackboardResourcesB12_EENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1393 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage13process_local14StorageDetailsNtNtNtNtB1g_20zero_copy_connection6common7details20SharedManagementDataEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsW_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage13process_local14StorageDetailsNtNtNtNtBN_20zero_copy_connection6common7details20SharedManagementDataEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1394 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs4_NtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomicNtB5_10AtomicBoolNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@1395 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage13process_local13ConfigurationNtNtNtNtBD_20zero_copy_connection6common7details20SharedManagementDataENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1396 = private unnamed_addr constant [13 x i8] c"has_ownership", align 1
@1397 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1398 = private unnamed_addr constant [4 x i8] c"Path", align 1
@1399 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder15CustomKeyMarkerENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1400 = private unnamed_addr constant [17 x i8] c"WriterSharedState", align 1
@1401 = private unnamed_addr constant [21 x i8] c"dynamic_writer_handle", align 1
@1402 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests18service_blackboard18service_blackboard3FooENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1403 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDatajENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1404 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDatayENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1405 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00(\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsb_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB5_10TypeDetailNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@1406 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_details10TypeDetailNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1407 = private unnamed_addr constant [18 x i8] c"MessageTypeDetails", align 1
@1408 = private unnamed_addr constant [6 x i8] c"header", align 1
@1409 = private unnamed_addr constant [11 x i8] c"user_header", align 1
@1410 = private unnamed_addr constant [7 x i8] c"payload", align 1
@1411 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBK_7service14ipc_threadsafe7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"0\0E\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXs7_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1412 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBK_7service14ipc_threadsafe7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"\00\05\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXs7_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1413 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsb_NtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cellINtB5_10UnsafeCellINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1414 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs5kzjBmDVxDj_21iceoryx2_bb_container5queue9MetaQueueNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsb_NtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cellINtB5_10UnsafeCellINtNtCs5kzjBmDVxDj_21iceoryx2_bb_container5queue9MetaQueueNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1415 = private unnamed_addr constant [14 x i8] c"request_sender", align 1
@1416 = private unnamed_addr constant [17 x i8] c"response_receiver", align 1
@1417 = private unnamed_addr constant [13 x i8] c"client_handle", align 1
@1418 = private unnamed_addr constant [17 x i8] c"server_list_state", align 1
@1419 = private unnamed_addr constant [22 x i8] c"active_request_counter", align 1
@1420 = private unnamed_addr constant [21 x i8] c"available_channel_ids", align 1
@1421 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @1234, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @1415, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @1416, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @1417, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @1418, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @1419, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @1420, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @1239, [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@1422 = private unnamed_addr constant [17 x i8] c"ClientSharedState", align 1
@1423 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBK_7service16local_threadsafe7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"\10\0F\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXs7_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1424 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBK_7service16local_threadsafe7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"\00\05\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXs7_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service16local_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1425 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsl_NtCs8tG85QUCESg_24iceoryx2_bb_system_types4pathNtB5_4PathNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@1426 = private unnamed_addr constant [19 x i8] c"data_segment_suffix", align 1
@1427 = private unnamed_addr constant [28 x i8] c"static_config_storage_suffix", align 1
@1428 = private unnamed_addr constant [29 x i8] c"dynamic_config_storage_suffix", align 1
@1429 = private unnamed_addr constant [17 x i8] c"connection_suffix", align 1
@1430 = private unnamed_addr constant [23 x i8] c"event_connection_suffix", align 1
@1431 = private unnamed_addr constant [22 x i8] c"blackboard_mgmt_suffix", align 1
@1432 = private unnamed_addr constant [22 x i8] c"blackboard_data_suffix", align 1
@1433 = private unnamed_addr constant [26 x i8] c"cleanup_dead_nodes_on_open", align 1
@1434 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @128, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @1426, [8 x i8] c"\13\00\00\00\00\00\00\00", ptr @1427, [8 x i8] c"\1C\00\00\00\00\00\00\00", ptr @1428, [8 x i8] c"\1D\00\00\00\00\00\00\00", ptr @1429, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @1430, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @1431, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @1432, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @1433, [8 x i8] c"\1A\00\00\00\00\00\00\00" }>, align 8
@1435 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket20UnixDatagramReceiverECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"\18\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2m_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socketNtB6_20UnixDatagramReceiverNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@1436 = private unnamed_addr constant [8 x i8] c"Listener", align 1
@1437 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11socket_pair15StreamingSocketECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"\0C\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs16_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix11socket_pairNtB6_15StreamingSocketNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@1438 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event24process_local_socketpair13ConfigurationNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1439 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsT_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB5_14UniqueClientIdNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@1440 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1441 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsc_NtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomicNtB5_9AtomicU64NtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@1442 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1443 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDatauENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1444 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDatauENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1445 = private unnamed_addr constant [9 x i8] c"client_id", align 1
@1446 = private unnamed_addr constant [19 x i8] c"client_shared_state", align 1
@1447 = private unnamed_addr constant [18 x i8] c"request_id_counter", align 1
@1448 = private unnamed_addr constant [16 x i8] c"_request_payload", align 1
@1449 = private unnamed_addr constant [15 x i8] c"_request_header", align 1
@1450 = private unnamed_addr constant [17 x i8] c"_response_payload", align 1
@1451 = private unnamed_addr constant [16 x i8] c"_response_header", align 1
@1452 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @1445, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @1446, [8 x i8] c"\13\00\00\00\00\00\00\00", ptr @1447, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @1448, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @1449, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @1450, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @1451, [8 x i8] c"\10\00\00\00\00\00\00\00" }>, align 8
@1453 = private unnamed_addr constant [6 x i8] c"Client", align 1
@1454 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder19CustomPayloadMarkerENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1455 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder18CustomHeaderMarkerENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1456 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder18CustomHeaderMarkerENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1457 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataShENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1458 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDatahENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1459 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataSyENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1460 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests6client6client16CustomUserHeaderKm54ce48_Ky925_EENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1461 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests6client6client16CustomUserHeaderKm96e563_Ky11211cd73_EENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1462 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataoENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1463 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDatamENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1464 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDatatENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1465 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests6client6client16CustomUserHeaderKm15c23_Ky5d94073_EENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1466 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests6client6client16CustomUserHeaderKmc0a83_Ky2f926773_EENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1467 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests14active_request14active_request16CustomUserHeaderKm2d8fb1b_Ky36e9078_EENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1468 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests14active_request14active_request16CustomUserHeaderKm73d7b_Ky8c868_EENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1469 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests14active_request14active_request16CustomUserHeaderKm1176ab_Ky11a208_EENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1470 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests14active_request14active_request16CustomUserHeaderKmadcb_Kyd928_EENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1471 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB25_7service16local_threadsafe7ServiceEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1472 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB25_7service3ipc7ServiceEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service3ipc7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1473 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB25_7service5local7ServiceEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service5local7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1474 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier10ConnectionNtNtNtB2A_7service3ipc7ServiceEEEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier10ConnectionNtNtNtB2n_7service3ipc7ServiceEEEENtNtB1J_3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1475 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15ListenerDetailsEENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1476 = private unnamed_addr constant [19 x i8] c"ListenerConnections", align 1
@1477 = private unnamed_addr constant [10 x i8] c"list_state", align 1
@1478 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier10ConnectionNtNtNtB2A_7service5local7ServiceEEEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier10ConnectionNtNtNtB2n_7service5local7ServiceEEEENtNtB1J_3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1479 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory9publisherNtB5_20LocalPublisherConfigNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@1480 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe17SubscriberDetailsEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsb_NtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cellINtB5_10UnsafeCellINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe17SubscriberDetailsEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1481 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs5kzjBmDVxDj_21iceoryx2_bb_container5queue9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerEEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs8Chj7Szqq0n_4core6optionINtB5_6OptionINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs5kzjBmDVxDj_21iceoryx2_bb_container5queue9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerEEENtNtB7_3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1482 = private unnamed_addr constant [21 x i8] c"subscriber_list_state", align 1
@1483 = private unnamed_addr constant [7 x i8] c"history", align 1
@1484 = private unnamed_addr constant [9 x i8] c"is_active", align 1
@1485 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @1234, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @1077, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @1482, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @1483, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @1484, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @1239, [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@1486 = private unnamed_addr constant [20 x i8] c"PublisherSharedState", align 1
@1487 = private unnamed_addr constant [14 x i8] c"monitor_suffix", align 1
@1488 = private unnamed_addr constant [20 x i8] c"static_config_suffix", align 1
@1489 = private unnamed_addr constant [18 x i8] c"service_tag_suffix", align 1
@1490 = private unnamed_addr constant [15 x i8] c"port_tag_suffix", align 1
@1491 = private unnamed_addr constant [18 x i8] c"global_mgmt_suffix", align 1
@1492 = private unnamed_addr constant [30 x i8] c"cleanup_dead_nodes_on_creation", align 1
@1493 = private unnamed_addr constant [33 x i8] c"cleanup_dead_nodes_on_destruction", align 1
@1494 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @128, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @1487, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @1488, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @1489, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @1490, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @1491, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @1492, [8 x i8] c"\1E\00\00\00\00\00\00\00", ptr @1493, [8 x i8] c"!\00\00\00\00\00\00\00" }>, align 8
@1495 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"0\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsH_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mappingNtB5_13MemoryMappingNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@1496 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11memory_lock10MemoryLockEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs8Chj7Szqq0n_4core6optionINtB5_6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11memory_lock10MemoryLockENtNtB7_3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common }>, align 8
@1497 = private unnamed_addr constant [12 x i8] c"SharedMemory", align 1
@1498 = private unnamed_addr constant [14 x i8] c"memory_mapping", align 1
@1499 = private unnamed_addr constant [11 x i8] c"memory_lock", align 1
@1500 = private unnamed_addr constant [14 x i8] c"mapping_offset", align 1
@1501 = private unnamed_addr constant [8 x i8] c"FileName", align 1
@1502 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00H\08\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsp_NtCsg6ZEkMtNi4J_8iceoryx26configNtB5_7ServiceNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@1503 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\008\06\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCsg6ZEkMtNi4J_8iceoryx26configNtB5_4NodeNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@1504 = private unnamed_addr constant [9 x i8] c"root_path", align 1
@1505 = private unnamed_addr constant [16 x i8] c"creation_timeout", align 1
@llvm.used = appending global [360 x ptr] [ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6client1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clients0_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clients1_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clients2_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clients3_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clients4_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clients5_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clients6_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clients7_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clients8_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clients9_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsA_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsB_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsC_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clients_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsa_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsb_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsc_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsd_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientse_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsf_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsg_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsh_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsi_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsj_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsk_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsl_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsm_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsn_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientso_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsp_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsq_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsr_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientss_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientst_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsu_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsv_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsw_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsx_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsy_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12client_tests16local_threadsafe6clientsz_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12writer_tests5local6writer1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12writer_tests5local6writers0_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12writer_tests5local6writers1_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12writer_tests5local6writers2_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12writer_tests5local6writers3_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12writer_tests5local6writers4_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12writer_tests5local6writers5_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12writer_tests5local6writers6_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12writer_tests5local6writers7_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12writer_tests5local6writers8_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12writer_tests5local6writers9_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12writer_tests5local6writers_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common12writer_tests5local6writersa_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common14listener_tests5local8listener1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common14listener_tests5local8listeners_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common14notifier_tests14ipc_threadsafe8notifier1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common14notifier_tests14ipc_threadsafe8notifiers0_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common14notifier_tests14ipc_threadsafe8notifiers_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publisher1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishers0_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishers1_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishers2_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishers3_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishers4_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishers5_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishers6_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishers7_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishers8_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishers9_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishers_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishersa_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishersb_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishersc_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishersd_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publisherse_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishersf_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishersg_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishersh_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishersi_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishersj_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishersk_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishersl_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishersm_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishersn_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publisherso_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common15publisher_tests3ipc9publishersp_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_event1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_events0_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_events1_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_events2_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_events3_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_events4_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_events5_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_events6_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_events7_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_events8_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_events9_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsA_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsB_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsC_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsD_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsE_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsF_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsG_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsH_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsI_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsJ_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsK_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsL_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsM_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsN_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsO_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsP_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsQ_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_events_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsa_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsb_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsc_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsd_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventse_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsf_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsg_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsh_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsi_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsj_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsk_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsl_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsm_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsn_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventso_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsp_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsq_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsr_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventss_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventst_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsu_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsv_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsw_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsx_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsy_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common19service_event_tests14ipc_threadsafe13service_eventsz_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common20active_request_tests14ipc_threadsafe14active_request1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common20active_request_tests14ipc_threadsafe14active_requests0_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common20active_request_tests14ipc_threadsafe14active_requests1_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common20active_request_tests14ipc_threadsafe14active_requests2_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common20active_request_tests14ipc_threadsafe14active_requests3_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common20active_request_tests14ipc_threadsafe14active_requests4_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common20active_request_tests14ipc_threadsafe14active_requests5_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common20active_request_tests14ipc_threadsafe14active_requests6_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common20active_request_tests14ipc_threadsafe14active_requests7_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common20active_request_tests14ipc_threadsafe14active_requests8_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common20active_request_tests14ipc_threadsafe14active_requests9_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common20active_request_tests14ipc_threadsafe14active_requests_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common20active_request_tests14ipc_threadsafe14active_requestsa_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common22pending_response_tests3ipc16pending_response1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common22pending_response_tests3ipc16pending_responses0_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common22pending_response_tests3ipc16pending_responses1_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common22pending_response_tests3ipc16pending_responses2_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common22pending_response_tests3ipc16pending_responses3_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common22pending_response_tests3ipc16pending_responses_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribe1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes0_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes10_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes11_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes12_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes13_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes14_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes15_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes16_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes17_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes18_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes19_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1A_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1B_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1C_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1D_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1E_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1F_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1G_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1H_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1I_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1J_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1K_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1L_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1M_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1N_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1a_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1b_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1c_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1d_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1e_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1f_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1g_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1h_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1i_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1j_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1k_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1l_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1m_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1n_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1o_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1p_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1q_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1r_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1s_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1t_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1u_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1v_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1w_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1x_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1y_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes1z_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes2_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes3_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes4_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes5_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes6_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes7_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes8_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes9_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesA_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesB_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesC_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesD_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesE_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesF_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesG_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesH_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesI_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesJ_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesK_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesL_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesM_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesN_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesO_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesP_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesQ_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesR_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesS_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesT_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesU_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesV_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesW_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesX_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesY_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesZ_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribes_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesa_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesb_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesc_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesd_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribese_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesf_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesg_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesh_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesi_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesj_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesk_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesl_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesm_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesn_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribeso_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesp_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesq_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesr_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribess_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribest_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesu_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesv_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesw_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesx_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesy_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common31service_publish_subscribe_tests14ipc_threadsafe25service_publish_subscribesz_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_builder1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_builders0_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_builders1_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_builders2_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_builders3_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_builders4_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_builders5_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_builders6_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_builders7_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_builders8_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_builders9_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersA_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersB_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersC_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersD_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersE_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_builders_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersa_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersb_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersc_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersd_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_builderse_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersf_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersg_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersh_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersi_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersj_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersk_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersl_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersm_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersn_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_builderso_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersp_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersq_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersr_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_builderss_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_builderst_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersu_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersv_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersw_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersx_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersy_1__6___CTOR, ptr @_RNvNvNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common38service_request_response_builder_tests14ipc_threadsafe32service_request_response_buildersz_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7service1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7services0_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7services1_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7services2_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7services3_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7services4_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7services5_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7services6_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7services7_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7services8_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7services9_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7services_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7servicesa_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7servicesb_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7servicesc_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7servicesd_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7servicese_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7servicesf_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7servicesg_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7servicesh_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe10blackboard7servicesi_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7service1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7services0_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7services1_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7services2_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7services3_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7services4_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7services5_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7services6_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7services7_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7services8_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7services9_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7services_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7servicesa_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7servicesb_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7servicesc_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7servicesd_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7servicese_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7servicesf_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7servicesg_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7servicesh_1__6___CTOR, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests14ipc_threadsafe17publish_subscribe7servicesi_1__6___CTOR], section "llvm.metadata"
@switch.table._RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client17ClientCreateErrorNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common = private unnamed_addr constant [4 x i8] c"\19\1A \15", align 8
@switch.table._RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client17ClientCreateErrorNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.705 = private unnamed_addr constant [4 x ptr] [ptr @1050, ptr @1051, ptr @1052, ptr @1053], align 8
@switch.table._RNvXs4_NtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocatorNtB5_15AllocationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [5 x i8] c"\0A\0C\10\0B\0D", align 8
@switch.table._RNvXs4_NtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocatorNtB5_15AllocationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.706 = private unnamed_addr constant [5 x ptr] [ptr @1040, ptr @1041, ptr @1042, ptr @1043, ptr @1044], align 8
@switch.table._RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [5 x i8] c"\0D\08\05\17\0D", align 8
@switch.table._RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.707 = private unnamed_addr constant [5 x ptr] [ptr @1069, ptr @1070, ptr @1071, ptr @1072, ptr @1044], align 8
@switch.table._RNvXsh_NtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocatorNtB5_18AllocationStrategyNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\07\0A\06", align 8
@switch.table._RNvXsh_NtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocatorNtB5_18AllocationStrategyNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.708 = private unnamed_addr constant [3 x ptr] [ptr @1375, ptr @1376, ptr @1377], align 8

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service14ipc_threadsafe7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerEuE13write_from_fnNCNvMs9_NtNtB8_4port9publisherINtB4o_9PublisherB1b_SB2M_uE10loan_slice0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.017 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 8 ; 2 uses
  %i.h = tail call noundef i64 @_RNvXs_NtCs7iP7wj4erds_20iceoryx2_pal_testing16lifetime_trackerNtB4_15LifetimeTrackerNtNtCs8Chj7Szqq0n_4core7default7Default7default() #24
  store i64 %i.h, ptr %.sroa.0.017, align 8
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service14ipc_threadsafe7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninithENtNtB1f_7builder18CustomHeaderMarkerE13write_from_fnNCNvMs9_NtNtB8_4port9publisherINtB3M_9PublisherB1b_ShB2O_E10loan_slice0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp samesign eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 0, i64 %i.b, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service14ipc_threadsafe7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninithEuE13write_from_fnNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe75receive_does_not_return_error_when_pub_goes_out_of_scope_after_reallocationB1b_E0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = icmp samesign eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.i = trunc i64 %n.vec to i8                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %vec.ind, ptr %next.gep, align 1
  store <16 x i8> %step.add, ptr %i.j, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val13 = phi i8 [ %i.i, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.d, -8                     ; 4 uses
  %i.l = getelementptr i8, ptr %i.b, i64 %n.vec14
  %i.m = trunc i64 %n.vec14 to i8
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %bc.resume.val13, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind16 = phi <8 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next19, %vec.epilog.vector.body ] ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.b, i64 %index15
  store <8 x i8> %vec.ind16, ptr %next.gep17, align 1
  %index.next18 = add nuw i64 %index15, 8         ; 2 uses
  %vec.ind.next19 = add <8 x i8> %vec.ind16, splat (i8 8)
  %i.n = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !42

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.d, %n.vec14
  br i1 %cmp.n20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.011.ph = phi ptr [ %i.b, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ]
  %.sroa.7.010.ph = phi i8 [ 0, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.011 = phi ptr [ %i.o, %.lr.ph ], [ %.sroa.0.011.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.7.010 = phi i8 [ %i.p, %.lr.ph ], [ %.sroa.7.010.ph, %.lr.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 1 ; 2 uses
  %i.p = add i8 %.sroa.7.010, 1
  store i8 %.sroa.7.010, ptr %.sroa.0.011, align 1
  %i.q = icmp eq ptr %i.o, %i.e
  br i1 %i.q, label %._crit_edge, label %.lr.ph, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service14ipc_threadsafe7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninithEuE13write_from_fnNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe75receive_does_not_return_error_when_pub_goes_out_of_scope_after_reallocationB1b_Es_0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = icmp samesign eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.i = trunc i64 %n.vec to i8                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %vec.ind, ptr %next.gep, align 1
  store <16 x i8> %step.add, ptr %i.j, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val13 = phi i8 [ %i.i, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.d, -8                     ; 4 uses
  %i.l = getelementptr i8, ptr %i.b, i64 %n.vec14
  %i.m = trunc i64 %n.vec14 to i8
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %bc.resume.val13, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind16 = phi <8 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next19, %vec.epilog.vector.body ] ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.b, i64 %index15
  store <8 x i8> %vec.ind16, ptr %next.gep17, align 1
  %index.next18 = add nuw i64 %index15, 8         ; 2 uses
  %vec.ind.next19 = add <8 x i8> %vec.ind16, splat (i8 8)
  %i.n = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.d, %n.vec14
  br i1 %cmp.n20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.011.ph = phi ptr [ %i.b, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ]
  %.sroa.7.010.ph = phi i8 [ 0, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.011 = phi ptr [ %i.o, %.lr.ph ], [ %.sroa.0.011.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.7.010 = phi i8 [ %i.p, %.lr.ph ], [ %.sroa.7.010.ph, %.lr.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 1 ; 2 uses
  %i.p = add i8 %.sroa.7.010, 1
  store i8 %.sroa.7.010, ptr %.sroa.0.011, align 1
  %i.q = icmp eq ptr %i.o, %i.e
  br i1 %i.q, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service14ipc_threadsafe7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninithEuE13write_from_fnNCNvMs9_NtNtB8_4port9publisherINtB3d_9PublisherB1b_ShuE10loan_slice0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp samesign eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 0, i64 %i.b, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service14ipc_threadsafe7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninityEINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests9publisher9publisher16CustomUserHeaderKm33b146_Ky3ab7e173_EE13write_from_fnNCNvMs9_NtNtB8_4port9publisherINtB4W_9PublisherB1b_SyB2O_E10loan_slice0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.idx = shl i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %.idx, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service14ipc_threadsafe7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninityEuE13write_from_fnNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe20sliced_service_worksB1b_E0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = add i64 %i.d, 2305843009213693951
  %i.g = and i64 %i.f, 2305843009213693951        ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.i = icmp samesign ult i64 %i.g, 7
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.h, 4611686018427387896
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.011 = phi ptr [ %i.b, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 9 uses
  %.sroa.7.010 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 8
  %i.k = mul i64 %.sroa.7.010, 25
  store i64 %i.k, ptr %.sroa.0.011, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 16
  %i.m = mul i64 %.sroa.7.010, 25
  %i.n = add i64 %i.m, 25
  store i64 %i.n, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 24
  %i.p = mul i64 %.sroa.7.010, 25
  %i.q = add i64 %i.p, 50
  store i64 %i.q, ptr %i.l, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 32
  %i.s = mul i64 %.sroa.7.010, 25
  %i.t = add i64 %i.s, 75
  store i64 %i.t, ptr %i.o, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 40
  %i.v = mul i64 %.sroa.7.010, 25
  %i.w = add i64 %i.v, 100
  store i64 %i.w, ptr %i.r, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 48
  %i.y = mul i64 %.sroa.7.010, 25
  %i.z = add i64 %i.y, 125
  store i64 %i.z, ptr %i.u, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 56
  %i.ab = mul i64 %.sroa.7.010, 25
  %i.ac = add i64 %i.ab, 150
  store i64 %i.ac, ptr %i.x, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 64 ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.7.010, 8         ; 2 uses
  %i.af = mul i64 %.sroa.7.010, 25
  %i.ag = add i64 %i.af, 175
  store i64 %i.ag, ptr %i.aa, align 8
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.011.epil.init = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.7.010.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0.011.epil = phi ptr [ %i.ah, %.lr.ph.epil ], [ %.sroa.0.011.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.sroa.7.010.epil = phi i64 [ %i.ai, %.lr.ph.epil ], [ %.sroa.7.010.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.011.epil, i64 8
  %i.ai = add nuw nsw i64 %.sroa.7.010.epil, 1
  %i.aj = mul i64 %.sroa.7.010.epil, 25
  store i64 %i.aj, ptr %.sroa.0.011.epil, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !47

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service14ipc_threadsafe7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninityEuE13write_from_fnNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe27slice_aligned_service_worksB1b_E0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = add i64 %i.d, 2305843009213693951
  %i.g = and i64 %i.f, 2305843009213693951        ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.i = icmp samesign ult i64 %i.g, 7
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.h, 4611686018427387896
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.011 = phi ptr [ %i.b, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 9 uses
  %.sroa.7.010 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 8
  %i.k = mul i64 %.sroa.7.010, 25
  store i64 %i.k, ptr %.sroa.0.011, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 16
  %i.m = mul i64 %.sroa.7.010, 25
  %i.n = add i64 %i.m, 25
  store i64 %i.n, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 24
  %i.p = mul i64 %.sroa.7.010, 25
  %i.q = add i64 %i.p, 50
  store i64 %i.q, ptr %i.l, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 32
  %i.s = mul i64 %.sroa.7.010, 25
  %i.t = add i64 %i.s, 75
  store i64 %i.t, ptr %i.o, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 40
  %i.v = mul i64 %.sroa.7.010, 25
  %i.w = add i64 %i.v, 100
  store i64 %i.w, ptr %i.r, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 48
  %i.y = mul i64 %.sroa.7.010, 25
  %i.z = add i64 %i.y, 125
  store i64 %i.z, ptr %i.u, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 56
  %i.ab = mul i64 %.sroa.7.010, 25
  %i.ac = add i64 %i.ab, 150
  store i64 %i.ac, ptr %i.x, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 64 ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.7.010, 8         ; 2 uses
  %i.af = mul i64 %.sroa.7.010, 25
  %i.ag = add i64 %i.af, 175
  store i64 %i.ag, ptr %i.aa, align 8
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.011.epil.init = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.7.010.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0.011.epil = phi ptr [ %i.ah, %.lr.ph.epil ], [ %.sroa.0.011.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.sroa.7.010.epil = phi i64 [ %i.ai, %.lr.ph.epil ], [ %.sroa.7.010.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.011.epil, i64 8
  %i.ai = add nuw nsw i64 %.sroa.7.010.epil, 1
  %i.aj = mul i64 %.sroa.7.010.epil, 25
  store i64 %i.aj, ptr %.sroa.0.011.epil, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !48

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service14ipc_threadsafe7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninityEuE13write_from_fnNCNvMs9_NtNtB8_4port9publisherINtB3d_9PublisherB1b_SyuE10loan_slice0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.idx = shl i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %.idx, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service16local_threadsafe7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerEuE13write_from_fnNCNvMs9_NtNtB8_4port9publisherINtB4q_9PublisherB1b_SB2O_uE10loan_slice0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.017 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 8 ; 2 uses
  %i.h = tail call noundef i64 @_RNvXs_NtCs7iP7wj4erds_20iceoryx2_pal_testing16lifetime_trackerNtB4_15LifetimeTrackerNtNtCs8Chj7Szqq0n_4core7default7Default7default() #24
  store i64 %i.h, ptr %.sroa.0.017, align 8
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service16local_threadsafe7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninithENtNtB1f_7builder18CustomHeaderMarkerE13write_from_fnNCNvMs9_NtNtB8_4port9publisherINtB3O_9PublisherB1b_ShB2Q_E10loan_slice0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp samesign eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 0, i64 %i.b, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service16local_threadsafe7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninithEuE13write_from_fnNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe75receive_does_not_return_error_when_pub_goes_out_of_scope_after_reallocationB1b_E0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = icmp samesign eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.i = trunc i64 %n.vec to i8                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %vec.ind, ptr %next.gep, align 1
  store <16 x i8> %step.add, ptr %i.j, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val13 = phi i8 [ %i.i, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.d, -8                     ; 4 uses
  %i.l = getelementptr i8, ptr %i.b, i64 %n.vec14
  %i.m = trunc i64 %n.vec14 to i8
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %bc.resume.val13, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind16 = phi <8 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next19, %vec.epilog.vector.body ] ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.b, i64 %index15
  store <8 x i8> %vec.ind16, ptr %next.gep17, align 1
  %index.next18 = add nuw i64 %index15, 8         ; 2 uses
  %vec.ind.next19 = add <8 x i8> %vec.ind16, splat (i8 8)
  %i.n = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !50

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.d, %n.vec14
  br i1 %cmp.n20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.011.ph = phi ptr [ %i.b, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ]
  %.sroa.7.010.ph = phi i8 [ 0, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.011 = phi ptr [ %i.o, %.lr.ph ], [ %.sroa.0.011.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.7.010 = phi i8 [ %i.p, %.lr.ph ], [ %.sroa.7.010.ph, %.lr.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 1 ; 2 uses
  %i.p = add i8 %.sroa.7.010, 1
  store i8 %.sroa.7.010, ptr %.sroa.0.011, align 1
  %i.q = icmp eq ptr %i.o, %i.e
  br i1 %i.q, label %._crit_edge, label %.lr.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service16local_threadsafe7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninithEuE13write_from_fnNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe75receive_does_not_return_error_when_pub_goes_out_of_scope_after_reallocationB1b_Es_0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = icmp samesign eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.i = trunc i64 %n.vec to i8                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %vec.ind, ptr %next.gep, align 1
  store <16 x i8> %step.add, ptr %i.j, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val13 = phi i8 [ %i.i, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.d, -8                     ; 4 uses
  %i.l = getelementptr i8, ptr %i.b, i64 %n.vec14
  %i.m = trunc i64 %n.vec14 to i8
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %bc.resume.val13, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind16 = phi <8 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next19, %vec.epilog.vector.body ] ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.b, i64 %index15
  store <8 x i8> %vec.ind16, ptr %next.gep17, align 1
  %index.next18 = add nuw i64 %index15, 8         ; 2 uses
  %vec.ind.next19 = add <8 x i8> %vec.ind16, splat (i8 8)
  %i.n = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !53

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.d, %n.vec14
  br i1 %cmp.n20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.011.ph = phi ptr [ %i.b, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ]
  %.sroa.7.010.ph = phi i8 [ 0, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.011 = phi ptr [ %i.o, %.lr.ph ], [ %.sroa.0.011.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.7.010 = phi i8 [ %i.p, %.lr.ph ], [ %.sroa.7.010.ph, %.lr.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 1 ; 2 uses
  %i.p = add i8 %.sroa.7.010, 1
  store i8 %.sroa.7.010, ptr %.sroa.0.011, align 1
  %i.q = icmp eq ptr %i.o, %i.e
  br i1 %i.q, label %._crit_edge, label %.lr.ph, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service16local_threadsafe7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninithEuE13write_from_fnNCNvMs9_NtNtB8_4port9publisherINtB3f_9PublisherB1b_ShuE10loan_slice0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp samesign eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 0, i64 %i.b, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service16local_threadsafe7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninityEINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests9publisher9publisher16CustomUserHeaderKm33b146_Ky3ab7e173_EE13write_from_fnNCNvMs9_NtNtB8_4port9publisherINtB4Y_9PublisherB1b_SyB2Q_E10loan_slice0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.idx = shl i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %.idx, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service16local_threadsafe7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninityEuE13write_from_fnNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe20sliced_service_worksB1b_E0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = add i64 %i.d, 2305843009213693951
  %i.g = and i64 %i.f, 2305843009213693951        ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.i = icmp samesign ult i64 %i.g, 7
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.h, 4611686018427387896
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.011 = phi ptr [ %i.b, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 9 uses
  %.sroa.7.010 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 8
  %i.k = mul i64 %.sroa.7.010, 25
  store i64 %i.k, ptr %.sroa.0.011, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 16
  %i.m = mul i64 %.sroa.7.010, 25
  %i.n = add i64 %i.m, 25
  store i64 %i.n, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 24
  %i.p = mul i64 %.sroa.7.010, 25
  %i.q = add i64 %i.p, 50
  store i64 %i.q, ptr %i.l, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 32
  %i.s = mul i64 %.sroa.7.010, 25
  %i.t = add i64 %i.s, 75
  store i64 %i.t, ptr %i.o, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 40
  %i.v = mul i64 %.sroa.7.010, 25
  %i.w = add i64 %i.v, 100
  store i64 %i.w, ptr %i.r, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 48
  %i.y = mul i64 %.sroa.7.010, 25
  %i.z = add i64 %i.y, 125
  store i64 %i.z, ptr %i.u, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 56
  %i.ab = mul i64 %.sroa.7.010, 25
  %i.ac = add i64 %i.ab, 150
  store i64 %i.ac, ptr %i.x, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 64 ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.7.010, 8         ; 2 uses
  %i.af = mul i64 %.sroa.7.010, 25
  %i.ag = add i64 %i.af, 175
  store i64 %i.ag, ptr %i.aa, align 8
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.011.epil.init = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.7.010.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0.011.epil = phi ptr [ %i.ah, %.lr.ph.epil ], [ %.sroa.0.011.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.sroa.7.010.epil = phi i64 [ %i.ai, %.lr.ph.epil ], [ %.sroa.7.010.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.011.epil, i64 8
  %i.ai = add nuw nsw i64 %.sroa.7.010.epil, 1
  %i.aj = mul i64 %.sroa.7.010.epil, 25
  store i64 %i.aj, ptr %.sroa.0.011.epil, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !55

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service16local_threadsafe7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninityEuE13write_from_fnNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe27slice_aligned_service_worksB1b_E0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = add i64 %i.d, 2305843009213693951
  %i.g = and i64 %i.f, 2305843009213693951        ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.i = icmp samesign ult i64 %i.g, 7
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.h, 4611686018427387896
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.011 = phi ptr [ %i.b, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 9 uses
  %.sroa.7.010 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 8
  %i.k = mul i64 %.sroa.7.010, 25
  store i64 %i.k, ptr %.sroa.0.011, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 16
  %i.m = mul i64 %.sroa.7.010, 25
  %i.n = add i64 %i.m, 25
  store i64 %i.n, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 24
  %i.p = mul i64 %.sroa.7.010, 25
  %i.q = add i64 %i.p, 50
  store i64 %i.q, ptr %i.l, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 32
  %i.s = mul i64 %.sroa.7.010, 25
  %i.t = add i64 %i.s, 75
  store i64 %i.t, ptr %i.o, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 40
  %i.v = mul i64 %.sroa.7.010, 25
  %i.w = add i64 %i.v, 100
  store i64 %i.w, ptr %i.r, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 48
  %i.y = mul i64 %.sroa.7.010, 25
  %i.z = add i64 %i.y, 125
  store i64 %i.z, ptr %i.u, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 56
  %i.ab = mul i64 %.sroa.7.010, 25
  %i.ac = add i64 %i.ab, 150
  store i64 %i.ac, ptr %i.x, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 64 ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.7.010, 8         ; 2 uses
  %i.af = mul i64 %.sroa.7.010, 25
  %i.ag = add i64 %i.af, 175
  store i64 %i.ag, ptr %i.aa, align 8
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.011.epil.init = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.7.010.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0.011.epil = phi ptr [ %i.ah, %.lr.ph.epil ], [ %.sroa.0.011.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.sroa.7.010.epil = phi i64 [ %i.ai, %.lr.ph.epil ], [ %.sroa.7.010.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.011.epil, i64 8
  %i.ai = add nuw nsw i64 %.sroa.7.010.epil, 1
  %i.aj = mul i64 %.sroa.7.010.epil, 25
  store i64 %i.aj, ptr %.sroa.0.011.epil, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !56

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service16local_threadsafe7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninityEuE13write_from_fnNCNvMs9_NtNtB8_4port9publisherINtB3f_9PublisherB1b_SyuE10loan_slice0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.idx = shl i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %.idx, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service3ipc7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerEuE13write_from_fnNCNvMs9_NtNtB8_4port9publisherINtB4c_9PublisherB1b_SB2A_uE10loan_slice0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.017 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 8 ; 2 uses
  %i.h = tail call noundef i64 @_RNvXs_NtCs7iP7wj4erds_20iceoryx2_pal_testing16lifetime_trackerNtB4_15LifetimeTrackerNtNtCs8Chj7Szqq0n_4core7default7Default7default() #24
  store i64 %i.h, ptr %.sroa.0.017, align 8
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service3ipc7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninithENtNtB1f_7builder18CustomHeaderMarkerE13write_from_fnNCNvMs9_NtNtB8_4port9publisherINtB3A_9PublisherB1b_ShB2C_E10loan_slice0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp samesign eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 0, i64 %i.b, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service3ipc7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninithEuE13write_from_fnNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe75receive_does_not_return_error_when_pub_goes_out_of_scope_after_reallocationB1b_E0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = icmp samesign eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.i = trunc i64 %n.vec to i8                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %vec.ind, ptr %next.gep, align 1
  store <16 x i8> %step.add, ptr %i.j, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val13 = phi i8 [ %i.i, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.d, -8                     ; 4 uses
  %i.l = getelementptr i8, ptr %i.b, i64 %n.vec14
  %i.m = trunc i64 %n.vec14 to i8
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %bc.resume.val13, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind16 = phi <8 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next19, %vec.epilog.vector.body ] ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.b, i64 %index15
  store <8 x i8> %vec.ind16, ptr %next.gep17, align 1
  %index.next18 = add nuw i64 %index15, 8         ; 2 uses
  %vec.ind.next19 = add <8 x i8> %vec.ind16, splat (i8 8)
  %i.n = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !58

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.d, %n.vec14
  br i1 %cmp.n20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.011.ph = phi ptr [ %i.b, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ]
  %.sroa.7.010.ph = phi i8 [ 0, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.011 = phi ptr [ %i.o, %.lr.ph ], [ %.sroa.0.011.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.7.010 = phi i8 [ %i.p, %.lr.ph ], [ %.sroa.7.010.ph, %.lr.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 1 ; 2 uses
  %i.p = add i8 %.sroa.7.010, 1
  store i8 %.sroa.7.010, ptr %.sroa.0.011, align 1
  %i.q = icmp eq ptr %i.o, %i.e
  br i1 %i.q, label %._crit_edge, label %.lr.ph, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service3ipc7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninithEuE13write_from_fnNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe75receive_does_not_return_error_when_pub_goes_out_of_scope_after_reallocationB1b_Es_0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = icmp samesign eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.i = trunc i64 %n.vec to i8                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %vec.ind, ptr %next.gep, align 1
  store <16 x i8> %step.add, ptr %i.j, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val13 = phi i8 [ %i.i, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.d, -8                     ; 4 uses
  %i.l = getelementptr i8, ptr %i.b, i64 %n.vec14
  %i.m = trunc i64 %n.vec14 to i8
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %bc.resume.val13, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind16 = phi <8 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next19, %vec.epilog.vector.body ] ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.b, i64 %index15
  store <8 x i8> %vec.ind16, ptr %next.gep17, align 1
  %index.next18 = add nuw i64 %index15, 8         ; 2 uses
  %vec.ind.next19 = add <8 x i8> %vec.ind16, splat (i8 8)
  %i.n = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !61

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.d, %n.vec14
  br i1 %cmp.n20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.011.ph = phi ptr [ %i.b, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ]
  %.sroa.7.010.ph = phi i8 [ 0, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.011 = phi ptr [ %i.o, %.lr.ph ], [ %.sroa.0.011.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.7.010 = phi i8 [ %i.p, %.lr.ph ], [ %.sroa.7.010.ph, %.lr.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 1 ; 2 uses
  %i.p = add i8 %.sroa.7.010, 1
  store i8 %.sroa.7.010, ptr %.sroa.0.011, align 1
  %i.q = icmp eq ptr %i.o, %i.e
  br i1 %i.q, label %._crit_edge, label %.lr.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service3ipc7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninithEuE13write_from_fnNCNvMs9_NtNtB8_4port9publisherINtB31_9PublisherB1b_ShuE10loan_slice0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp samesign eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 0, i64 %i.b, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service3ipc7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninityEINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests9publisher9publisher16CustomUserHeaderKm33b146_Ky3ab7e173_EE13write_from_fnNCNvMs9_NtNtB8_4port9publisherINtB4K_9PublisherB1b_SyB2C_E10loan_slice0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.idx = shl i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %.idx, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service3ipc7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninityEuE13write_from_fnNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe20sliced_service_worksB1b_E0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = add i64 %i.d, 2305843009213693951
  %i.g = and i64 %i.f, 2305843009213693951        ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.i = icmp samesign ult i64 %i.g, 7
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.h, 4611686018427387896
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.011 = phi ptr [ %i.b, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 9 uses
  %.sroa.7.010 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 8
  %i.k = mul i64 %.sroa.7.010, 25
  store i64 %i.k, ptr %.sroa.0.011, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 16
  %i.m = mul i64 %.sroa.7.010, 25
  %i.n = add i64 %i.m, 25
  store i64 %i.n, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 24
  %i.p = mul i64 %.sroa.7.010, 25
  %i.q = add i64 %i.p, 50
  store i64 %i.q, ptr %i.l, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 32
  %i.s = mul i64 %.sroa.7.010, 25
  %i.t = add i64 %i.s, 75
  store i64 %i.t, ptr %i.o, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 40
  %i.v = mul i64 %.sroa.7.010, 25
  %i.w = add i64 %i.v, 100
  store i64 %i.w, ptr %i.r, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 48
  %i.y = mul i64 %.sroa.7.010, 25
  %i.z = add i64 %i.y, 125
  store i64 %i.z, ptr %i.u, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 56
  %i.ab = mul i64 %.sroa.7.010, 25
  %i.ac = add i64 %i.ab, 150
  store i64 %i.ac, ptr %i.x, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 64 ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.7.010, 8         ; 2 uses
  %i.af = mul i64 %.sroa.7.010, 25
  %i.ag = add i64 %i.af, 175
  store i64 %i.ag, ptr %i.aa, align 8
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.011.epil.init = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.7.010.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0.011.epil = phi ptr [ %i.ah, %.lr.ph.epil ], [ %.sroa.0.011.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.sroa.7.010.epil = phi i64 [ %i.ai, %.lr.ph.epil ], [ %.sroa.7.010.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.011.epil, i64 8
  %i.ai = add nuw nsw i64 %.sroa.7.010.epil, 1
  %i.aj = mul i64 %.sroa.7.010.epil, 25
  store i64 %i.aj, ptr %.sroa.0.011.epil, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !63

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service3ipc7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninityEuE13write_from_fnNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe27slice_aligned_service_worksB1b_E0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = add i64 %i.d, 2305843009213693951
  %i.g = and i64 %i.f, 2305843009213693951        ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.i = icmp samesign ult i64 %i.g, 7
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.h, 4611686018427387896
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.011 = phi ptr [ %i.b, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 9 uses
  %.sroa.7.010 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 8
  %i.k = mul i64 %.sroa.7.010, 25
  store i64 %i.k, ptr %.sroa.0.011, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 16
  %i.m = mul i64 %.sroa.7.010, 25
  %i.n = add i64 %i.m, 25
  store i64 %i.n, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 24
  %i.p = mul i64 %.sroa.7.010, 25
  %i.q = add i64 %i.p, 50
  store i64 %i.q, ptr %i.l, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 32
  %i.s = mul i64 %.sroa.7.010, 25
  %i.t = add i64 %i.s, 75
  store i64 %i.t, ptr %i.o, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 40
  %i.v = mul i64 %.sroa.7.010, 25
  %i.w = add i64 %i.v, 100
  store i64 %i.w, ptr %i.r, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 48
  %i.y = mul i64 %.sroa.7.010, 25
  %i.z = add i64 %i.y, 125
  store i64 %i.z, ptr %i.u, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 56
  %i.ab = mul i64 %.sroa.7.010, 25
  %i.ac = add i64 %i.ab, 150
  store i64 %i.ac, ptr %i.x, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 64 ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.7.010, 8         ; 2 uses
  %i.af = mul i64 %.sroa.7.010, 25
  %i.ag = add i64 %i.af, 175
  store i64 %i.ag, ptr %i.aa, align 8
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.011.epil.init = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.7.010.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0.011.epil = phi ptr [ %i.ah, %.lr.ph.epil ], [ %.sroa.0.011.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.sroa.7.010.epil = phi i64 [ %i.ai, %.lr.ph.epil ], [ %.sroa.7.010.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.011.epil, i64 8
  %i.ai = add nuw nsw i64 %.sroa.7.010.epil, 1
  %i.aj = mul i64 %.sroa.7.010.epil, 25
  store i64 %i.aj, ptr %.sroa.0.011.epil, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !64

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service3ipc7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninityEuE13write_from_fnNCNvMs9_NtNtB8_4port9publisherINtB31_9PublisherB1b_SyuE10loan_slice0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.idx = shl i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %.idx, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service5local7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerEuE13write_from_fnNCNvMs9_NtNtB8_4port9publisherINtB4e_9PublisherB1b_SB2C_uE10loan_slice0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.017 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 8 ; 2 uses
  %i.h = tail call noundef i64 @_RNvXs_NtCs7iP7wj4erds_20iceoryx2_pal_testing16lifetime_trackerNtB4_15LifetimeTrackerNtNtCs8Chj7Szqq0n_4core7default7Default7default() #24
  store i64 %i.h, ptr %.sroa.0.017, align 8
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service5local7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninithENtNtB1f_7builder18CustomHeaderMarkerE13write_from_fnNCNvMs9_NtNtB8_4port9publisherINtB3C_9PublisherB1b_ShB2E_E10loan_slice0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp samesign eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 0, i64 %i.b, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service5local7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninithEuE13write_from_fnNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe75receive_does_not_return_error_when_pub_goes_out_of_scope_after_reallocationB1b_E0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = icmp samesign eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.i = trunc i64 %n.vec to i8                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %vec.ind, ptr %next.gep, align 1
  store <16 x i8> %step.add, ptr %i.j, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val13 = phi i8 [ %i.i, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.d, -8                     ; 4 uses
  %i.l = getelementptr i8, ptr %i.b, i64 %n.vec14
  %i.m = trunc i64 %n.vec14 to i8
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %bc.resume.val13, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind16 = phi <8 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next19, %vec.epilog.vector.body ] ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.b, i64 %index15
  store <8 x i8> %vec.ind16, ptr %next.gep17, align 1
  %index.next18 = add nuw i64 %index15, 8         ; 2 uses
  %vec.ind.next19 = add <8 x i8> %vec.ind16, splat (i8 8)
  %i.n = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.d, %n.vec14
  br i1 %cmp.n20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.011.ph = phi ptr [ %i.b, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ]
  %.sroa.7.010.ph = phi i8 [ 0, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.011 = phi ptr [ %i.o, %.lr.ph ], [ %.sroa.0.011.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.7.010 = phi i8 [ %i.p, %.lr.ph ], [ %.sroa.7.010.ph, %.lr.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 1 ; 2 uses
  %i.p = add i8 %.sroa.7.010, 1
  store i8 %.sroa.7.010, ptr %.sroa.0.011, align 1
  %i.q = icmp eq ptr %i.o, %i.e
  br i1 %i.q, label %._crit_edge, label %.lr.ph, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service5local7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninithEuE13write_from_fnNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe75receive_does_not_return_error_when_pub_goes_out_of_scope_after_reallocationB1b_Es_0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = icmp samesign eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.i = trunc i64 %n.vec to i8                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %vec.ind, ptr %next.gep, align 1
  store <16 x i8> %step.add, ptr %i.j, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val13 = phi i8 [ %i.i, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.d, -8                     ; 4 uses
  %i.l = getelementptr i8, ptr %i.b, i64 %n.vec14
  %i.m = trunc i64 %n.vec14 to i8
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %bc.resume.val13, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind16 = phi <8 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next19, %vec.epilog.vector.body ] ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.b, i64 %index15
  store <8 x i8> %vec.ind16, ptr %next.gep17, align 1
  %index.next18 = add nuw i64 %index15, 8         ; 2 uses
  %vec.ind.next19 = add <8 x i8> %vec.ind16, splat (i8 8)
  %i.n = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.d, %n.vec14
  br i1 %cmp.n20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.011.ph = phi ptr [ %i.b, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ]
  %.sroa.7.010.ph = phi i8 [ 0, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.011 = phi ptr [ %i.o, %.lr.ph ], [ %.sroa.0.011.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.7.010 = phi i8 [ %i.p, %.lr.ph ], [ %.sroa.7.010.ph, %.lr.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 1 ; 2 uses
  %i.p = add i8 %.sroa.7.010, 1
  store i8 %.sroa.7.010, ptr %.sroa.0.011, align 1
  %i.q = icmp eq ptr %i.o, %i.e
  br i1 %i.q, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service5local7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninithEuE13write_from_fnNCNvMs9_NtNtB8_4port9publisherINtB33_9PublisherB1b_ShuE10loan_slice0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp samesign eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 0, i64 %i.b, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service5local7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninityEINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests9publisher9publisher16CustomUserHeaderKm33b146_Ky3ab7e173_EE13write_from_fnNCNvMs9_NtNtB8_4port9publisherINtB4M_9PublisherB1b_SyB2E_E10loan_slice0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.idx = shl i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %.idx, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service5local7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninityEuE13write_from_fnNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe20sliced_service_worksB1b_E0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = add i64 %i.d, 2305843009213693951
  %i.g = and i64 %i.f, 2305843009213693951        ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.i = icmp samesign ult i64 %i.g, 7
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.h, 4611686018427387896
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.011 = phi ptr [ %i.b, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 9 uses
  %.sroa.7.010 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 8
  %i.k = mul i64 %.sroa.7.010, 25
  store i64 %i.k, ptr %.sroa.0.011, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 16
  %i.m = mul i64 %.sroa.7.010, 25
  %i.n = add i64 %i.m, 25
  store i64 %i.n, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 24
  %i.p = mul i64 %.sroa.7.010, 25
  %i.q = add i64 %i.p, 50
  store i64 %i.q, ptr %i.l, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 32
  %i.s = mul i64 %.sroa.7.010, 25
  %i.t = add i64 %i.s, 75
  store i64 %i.t, ptr %i.o, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 40
  %i.v = mul i64 %.sroa.7.010, 25
  %i.w = add i64 %i.v, 100
  store i64 %i.w, ptr %i.r, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 48
  %i.y = mul i64 %.sroa.7.010, 25
  %i.z = add i64 %i.y, 125
  store i64 %i.z, ptr %i.u, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 56
  %i.ab = mul i64 %.sroa.7.010, 25
  %i.ac = add i64 %i.ab, 150
  store i64 %i.ac, ptr %i.x, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 64 ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.7.010, 8         ; 2 uses
  %i.af = mul i64 %.sroa.7.010, 25
  %i.ag = add i64 %i.af, 175
  store i64 %i.ag, ptr %i.aa, align 8
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.011.epil.init = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.7.010.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0.011.epil = phi ptr [ %i.ah, %.lr.ph.epil ], [ %.sroa.0.011.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.sroa.7.010.epil = phi i64 [ %i.ai, %.lr.ph.epil ], [ %.sroa.7.010.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.011.epil, i64 8
  %i.ai = add nuw nsw i64 %.sroa.7.010.epil, 1
  %i.aj = mul i64 %.sroa.7.010.epil, 25
  store i64 %i.aj, ptr %.sroa.0.011.epil, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !71

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMs1_NtCsg6ZEkMtNi4J_8iceoryx217sample_mut_uninitINtB6_15SampleMutUninitNtNtNtB8_7service5local7ServiceSINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninityEuE13write_from_fnNCINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe27slice_aligned_service_worksB1b_E0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = add i64 %i.d, 2305843009213693951
  %i.g = and i64 %i.f, 2305843009213693951        ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.i = icmp samesign ult i64 %i.g, 7
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.h, 4611686018427387896
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.011 = phi ptr [ %i.b, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 9 uses
  %.sroa.7.010 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 8
  %i.k = mul i64 %.sroa.7.010, 25
  store i64 %i.k, ptr %.sroa.0.011, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 16
  %i.m = mul i64 %.sroa.7.010, 25
  %i.n = add i64 %i.m, 25
  store i64 %i.n, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 24
  %i.p = mul i64 %.sroa.7.010, 25
  %i.q = add i64 %i.p, 50
  store i64 %i.q, ptr %i.l, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 32
  %i.s = mul i64 %.sroa.7.010, 25
  %i.t = add i64 %i.s, 75
  store i64 %i.t, ptr %i.o, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 40
  %i.v = mul i64 %.sroa.7.010, 25
  %i.w = add i64 %i.v, 100
  store i64 %i.w, ptr %i.r, align 8
end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBE_5local7ServiceyuyuENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBE_5local7ServiceyuyuENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBE_5local7ServiceyyyuENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder15CustomKeyMarkerENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests18service_blackboard18service_blackboard3FooENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDatajENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDatayENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsW_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage13process_local14StorageDetailsNtNtNtNtBN_20zero_copy_connection6common7details20SharedManagementDataEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage13process_local13ConfigurationNtNtNtNtBD_20zero_copy_connection6common7details20SharedManagementDataENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt22wide_pointer_fmt_inner(i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt17pointer_fmt_inner(i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder15CustomKeyMarkerENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests18service_blackboard18service_blackboard3FooENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDatajENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDatayENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_details10TypeDetailNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event24process_local_socketpair13ConfigurationNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataNtNtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_tracker15LifetimeTrackerENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDatauENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDatauENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder19CustomPayloadMarkerENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder18CustomHeaderMarkerENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder18CustomHeaderMarkerENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataShENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDatahENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataSyENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests6client6client16CustomUserHeaderKm54ce48_Ky925_EENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests6client6client16CustomUserHeaderKm96e563_Ky11211cd73_EENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataoENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDatamENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDatatENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests6client6client16CustomUserHeaderKm15c23_Ky5d94073_EENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXst_NtCs8Chj7Szqq0n_4core3fmtINtNtB7_6marker11PhantomDataINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests6client6client16CustomUserHeaderKmc0a83_Ky2f926773_EENtB5_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests14active_request14active_request16CustomUserHeaderKm2d8fb1b_Ky36e9078_EENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests14active_request14active_request16CustomUserHeaderKm73d7b_Ky8c868_EENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests14active_request14active_request16CustomUserHeaderKm1176ab_Ky11a208_EENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataINtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests14active_request14active_request16CustomUserHeaderKmadcb_Kyd928_EENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier10ConnectionNtNtNtB2n_7service3ipc7ServiceEEEENtNtB1J_3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15ListenerDetailsEENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier10ConnectionNtNtNtB2n_7service5local7ServiceEEEENtNtB1J_3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateINtNtNtBa_5slice4iter4IterB14_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRbINtNtNtBa_5slice4iter4IterbEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRjINtNtNtBa_5slice4iter4IterjEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #22

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { noinline noreturn nounwind }
attributes #26 = { inlinehint nounwind }
attributes #27 = { noinline nounwind }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, null, null}
!1 = distinct !{ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, null, null, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"rustc version 1.100.0-nightly (0ed41eb41 2026-09-04)"}
!6 = !{}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = !{!"branch_weights", i32 8, i32 24}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{i64 0, i64 3}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{i64 -1, i64 -9223372036854775808}
!14 = !{i128 0, i128 2}
!15 = !{i64 8}
!16 = !{i64 0, i64 -9223372036854775808}
!17 = !{i64 1, i64 536870913}
!18 = !{i64 0, i64 2}
!19 = !{i64 1, i64 -9223372036854775807}
!20 = !{i8 0, i8 3}
!21 = !{i64 -1, i64 3}
!22 = !{i64 -2, i64 -9223372036854775808}
!23 = !{!"address", !"read_provenance"}
!24 = !{i8 0, i8 2}
!25 = !{i64 -3, i64 -9223372036854775808}
!26 = !{i64 -1, i64 -9223372036854775803}
!27 = !{i64 16}
!28 = !{i8 0, i8 7}
!29 = !{i32 0, i32 1000000000}
!30 = !{i8 0, i8 14}
!31 = !{i8 -1, i8 5}
!32 = !{!"branch_weights", i32 6002, i32 2000, i32 1, i32 1}
!33 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!34 = !{i8 0, i8 5}
!35 = !{i64 0, i64 -9223372036854775807}
!36 = !{!"branch_weights", i32 1, i32 127}
!37 = !{i128 0, i128 3}
!38 = !{!"branch_weights", i32 127, i32 255873}
!39 = !{i8 0, i8 4}
!40 = !{i64 4}
!41 = distinct !{!41, !7, !8}
!42 = distinct !{!42, !7, !8}
!43 = distinct !{!43, !8, !7}
!44 = distinct !{!44, !7, !8}
!45 = distinct !{!45, !7, !8}
!46 = distinct !{!46, !8, !7}
!47 = distinct !{!47, !10}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !7, !8}
!50 = distinct !{!50, !7, !8}
!51 = distinct !{!51, !8, !7}
!52 = distinct !{!52, !7, !8}
!53 = distinct !{!53, !7, !8}
!54 = distinct !{!54, !8, !7}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !7, !8}
!58 = distinct !{!58, !7, !8}
!59 = distinct !{!59, !8, !7}
!60 = distinct !{!60, !7, !8}
!61 = distinct !{!61, !7, !8}
!62 = distinct !{!62, !8, !7}
!63 = distinct !{!63, !10}
!64 = distinct !{!64, !10}
!65 = distinct !{!65, !7, !8}
!66 = distinct !{!66, !7, !8}
!67 = distinct !{!67, !8, !7}
!68 = distinct !{!68, !7, !8}
!69 = distinct !{!69, !7, !8}
!70 = distinct !{!70, !8, !7}
!71 = distinct !{!71, !10}
!72 = distinct !{!72, !10}
!73 = distinct !{!73, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!74 = distinct !{!74, !73, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!75 = !{!74}
!76 = distinct !{!76, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!77 = distinct !{!77, !76, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!78 = !{!77}
!79 = distinct !{!79, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!80 = distinct !{!80, !79, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!81 = !{!80}
!82 = distinct !{!82, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!83 = distinct !{!83, !82, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!84 = !{!83}
!85 = distinct !{!85, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!86 = distinct !{!86, !85, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!87 = !{!86}
!88 = distinct !{!88, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!89 = distinct !{!89, !88, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!90 = !{!89}
!91 = distinct !{!91, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!92 = distinct !{!92, !91, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!93 = !{!92}
!94 = distinct !{!94, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!95 = distinct !{!95, !94, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!96 = distinct !{!96, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!97 = distinct !{!97, !96, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!98 = distinct !{!98, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!99 = distinct !{!99, !98, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!100 = !{!95}
!101 = !{!97}
!102 = !{!99}
!103 = !{!99, !97, !95}
!104 = distinct !{!104, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!105 = distinct !{!105, !104, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!106 = distinct !{!106, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!107 = distinct !{!107, !106, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!108 = distinct !{!108, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!109 = distinct !{!109, !108, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!110 = !{!105}
!111 = !{!107}
!112 = !{!109}
!113 = !{!109, !107, !105}
!114 = distinct !{!114, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!115 = distinct !{!115, !114, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!116 = distinct !{!116, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!117 = distinct !{!117, !116, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!118 = distinct !{!118, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!119 = distinct !{!119, !118, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!120 = !{!115}
!121 = !{!117}
!122 = !{!119}
!123 = !{!119, !117, !115}
!124 = distinct !{!124, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!125 = distinct !{!125, !124, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!126 = !{!125}
!127 = distinct !{!127, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!128 = distinct !{!128, !127, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!129 = !{!128}
!130 = distinct !{!130, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!131 = distinct !{!131, !130, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!132 = !{!131}
!133 = distinct !{!133, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!134 = distinct !{!134, !133, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!135 = !{!134}
!136 = distinct !{!136, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!137 = distinct !{!137, !136, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!138 = !{!137}
!139 = distinct !{!139, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!140 = distinct !{!140, !139, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!141 = !{!140}
!142 = distinct !{!142, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!143 = distinct !{!143, !142, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!144 = !{!143}
!145 = distinct !{!145, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!146 = distinct !{!146, !145, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!147 = distinct !{!147, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!148 = distinct !{!148, !147, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!149 = distinct !{!149, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!150 = distinct !{!150, !149, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!151 = !{!146}
!152 = !{!148}
!153 = !{!150}
!154 = !{!150, !148, !146}
!155 = distinct !{!155, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!156 = distinct !{!156, !155, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!157 = distinct !{!157, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!158 = distinct !{!158, !157, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!159 = distinct !{!159, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!160 = distinct !{!160, !159, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!161 = !{!156}
!162 = !{!158}
!163 = !{!160}
!164 = !{!160, !158, !156}
!165 = distinct !{!165, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!166 = distinct !{!166, !165, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!167 = distinct !{!167, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!168 = distinct !{!168, !167, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!169 = distinct !{!169, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!170 = distinct !{!170, !169, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!171 = !{!166}
!172 = !{!168}
!173 = !{!170}
!174 = !{!170, !168, !166}
!175 = distinct !{!175, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!176 = distinct !{!176, !175, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!177 = !{!176}
!178 = distinct !{!178, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!179 = distinct !{!179, !178, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!180 = !{!179}
!181 = distinct !{!181, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!182 = distinct !{!182, !181, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!183 = !{!182}
!184 = distinct !{!184, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!185 = distinct !{!185, !184, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!186 = !{!185}
!187 = distinct !{!187, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!188 = distinct !{!188, !187, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!189 = !{!188}
!190 = distinct !{!190, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!191 = distinct !{!191, !190, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!192 = !{!191}
!193 = distinct !{!193, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!194 = distinct !{!194, !193, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!195 = !{!194}
!196 = distinct !{!196, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!197 = distinct !{!197, !196, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!198 = distinct !{!198, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!199 = distinct !{!199, !198, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!200 = distinct !{!200, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!201 = distinct !{!201, !200, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!202 = !{!197}
!203 = !{!199}
!204 = !{!201}
!205 = !{!201, !199, !197}
!206 = distinct !{!206, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!207 = distinct !{!207, !206, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
!208 = distinct !{!208, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common"}
!209 = distinct !{!209, !208, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common: argument 0"}
end_hunk_1
