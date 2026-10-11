Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_py_api-5dda2891e7b58c19.influxdb3_py_api.ecd3ccd6b461bf56-cgu.04?download=true
inline.NumInlined: 297
inline.NumDeleted: 201
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNCINvNtNtNtBI_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3f_15PyPluginCallApi16write_sync_to_db00INtNtB4_6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00EEEB3h_:bb.a

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.m = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !211 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void %i.m(ptr noundef nonnull %.val.i)
          to label %bb.i unwind label %bb.k, !noalias !211

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !11, !invariant.load !4, !noalias !211 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBI_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2P_15PyPluginCallApi16write_sync_to_db00INtNtB4_6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00EEB2R_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !12, !invariant.load !4, !noalias !211
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13, !noalias !211
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBI_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2P_15PyPluginCallApi16write_sync_to_db00INtNtB4_6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00EEB2R_.exit

bb.k:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !11, !invariant.load !4, !noalias !211 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !12, !invariant.load !4, !noalias !211
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !noalias !211
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i.i.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i.i.i.i: ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNCINvNtNtNtBI_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3f_15PyPluginCallApi5querys0_00INtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EEEB3h_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !10, !noundef !4
  switch i32 %i.a, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBI_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2P_15PyPluginCallApi5querys0_00INtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EEB2R_.exit [
    i32 0, label %bb.b
    i32 1, label %bb.e
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBI_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2P_15PyPluginCallApi5querys0_00INtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EEB2R_.exit: ; preds = %bb.j, %bb.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !226, !noundef !4 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBI_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2P_15PyPluginCallApi5querys0_00INtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EEB2R_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !227
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBI_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2P_15PyPluginCallApi5querys0_00INtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EEB2R_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBI_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2P_15PyPluginCallApi5querys0_00INtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EEB2R_.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !228, !noundef !4
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBI_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2P_15PyPluginCallApi5querys0_00INtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EEB2R_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !228, !noundef !4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !228 ; 6 uses
  %i.l = icmp eq ptr %.val.i, null
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBI_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2P_15PyPluginCallApi5querys0_00INtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EEB2R_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.m = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !228 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void %i.m(ptr noundef nonnull %.val.i)
          to label %bb.i unwind label %bb.k, !noalias !228

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !11, !invariant.load !4, !noalias !228 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBI_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2P_15PyPluginCallApi5querys0_00INtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EEB2R_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !12, !invariant.load !4, !noalias !228
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13, !noalias !228
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBI_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2P_15PyPluginCallApi5querys0_00INtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EEB2R_.exit

bb.k:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !11, !invariant.load !4, !noalias !228 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !12, !invariant.load !4, !noalias !228
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !noalias !228
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i.i.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i.i.i.i: ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core7TrailerECskkCPRT7oCWw_16influxdb3_py_api(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !align !9, !noundef !4 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  invoke void %i.e(ptr noundef %.val1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskkCPRT7oCWw_16influxdb3_py_api.exit unwind label %bb.c, !inline_history !0

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !247, !noundef !4 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !248
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDG0_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL1_INtNtNtCseCDlJsl44RV_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBQ_6marker4SendNtB2F_4SyncEL_E9drop_slowB1B_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECskkCPRT7oCWw_16influxdb3_py_api.exit unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !251, !noundef !4 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECskkCPRT7oCWw_16influxdb3_py_api.exit3, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskkCPRT7oCWw_16influxdb3_py_api.exit
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !252
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECskkCPRT7oCWw_16influxdb3_py_api.exit3

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDG0_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL1_INtNtNtCseCDlJsl44RV_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBQ_6marker4SendNtB2F_4SyncEL_E9drop_slowB1B_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECskkCPRT7oCWw_16influxdb3_py_api.exit3

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECskkCPRT7oCWw_16influxdb3_py_api.exit3: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskkCPRT7oCWw_16influxdb3_py_api.exit, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking8schedule16BlockingScheduleECskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !283, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !286, !nonnull !4, !noundef !4
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !286
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECskkCPRT7oCWw_16influxdb3_py_api.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !289, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !289
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECskkCPRT7oCWw_16influxdb3_py_api.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !292, !noundef !4 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !293
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDG0_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL1_INtNtNtCseCDlJsl44RV_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBQ_6marker4SendNtB2F_4SyncEL_E9drop_slowB1B_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECskkCPRT7oCWw_16influxdb3_py_api.exit unwind label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.d, %bb.b, %bb.c, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !296, !noundef !4 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECskkCPRT7oCWw_16influxdb3_py_api.exit3, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECskkCPRT7oCWw_16influxdb3_py_api.exit
  %i.r = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !297
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECskkCPRT7oCWw_16influxdb3_py_api.exit3

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDG0_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL1_INtNtNtCseCDlJsl44RV_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBQ_6marker4SendNtB2F_4SyncEL_E9drop_slowB1B_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECskkCPRT7oCWw_16influxdb3_py_api.exit3

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECskkCPRT7oCWw_16influxdb3_py_api.exit3: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECskkCPRT7oCWw_16influxdb3_py_api.exit, %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.g, %bb.f, %bb.h
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1L_6string6StringEE00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3r_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core4CellINtNtNtB1g_8blocking4task12BlockingTaskIBC_NCNCINvNtNtNtB1g_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3S_15PyPluginCallApi16write_sync_to_db00INtNtB4_6result6ResultuNtNtBG_6string6StringEE00EENtNtB24_8schedule16BlockingScheduleEEEB3U_(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1L_6string6StringEE00EENtNtB19_8schedule16BlockingScheduleE15try_read_outputB3r_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !304
  store i32 2, ptr %i.d, align 8, !noalias !304
  %i.e = load i32, ptr %i.a, align 8, !range !10, !noalias !304, !noundef !4
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1H_6string6StringEE00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3n_.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #10
          to label %bb.d unwind label %bb.e, !noalias !304

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtBI_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3N_15PyPluginCallApi16write_sync_to_db00INtNtB4_6result6ResultuNtNtB29_6string6StringEE00EEEEB3P_(ptr noalias noundef align 8 dereferenceable(32) %i.a) #12
          to label %common.resume unwind label %bb.f, !noalias !304

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11, !noalias !304
  unreachable

_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1H_6string6StringEE00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3n_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.j = load i64, ptr %1, align 8, !range !7, !alias.scope !305, !noundef !4
  %3 = icmp eq i64 %i.j, 0
  br i1 %3, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1H_6string6StringEE00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3n_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !307, !noundef !4
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !307, !noundef !4 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !307 ; 6 uses
  %i.p = icmp eq ptr %.val.i.i, null
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !307 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !noalias !307

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !11, !invariant.load !4, !noalias !307 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !12, !invariant.load !4, !noalias !307
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13, !noalias !307
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !11, !invariant.load !4, !noalias !307 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !12, !invariant.load !4, !noalias !307
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13, !noalias !307
  br label %.body

bb.o:                                             ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit
  ret void

.body:                                            ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1H_6string6StringEE00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3n_.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1L_6string6StringEE00EENtNtB19_8schedule16BlockingScheduleE21drop_join_handle_slowB3r_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !310
  store i32 2, ptr %i.a, align 8, !noalias !310
  invoke void @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3j_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1F_6string6StringEE00EENtNtB13_8schedule16BlockingScheduleE9set_stageB3l_(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #11
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !310
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !12, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !12, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1L_6string6StringEE00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3r_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core4CellINtNtNtB1g_8blocking4task12BlockingTaskIBC_NCNCINvNtNtNtB1g_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3S_15PyPluginCallApi16write_sync_to_db00INtNtB4_6result6ResultuNtNtBG_6string6StringEE00EENtNtB24_8schedule16BlockingScheduleEEEB3U_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1L_6string6StringEE00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3r_.exit

_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1L_6string6StringEE00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3r_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_RNvMs6_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1L_6string6StringEE00EENtNtB19_8schedule16BlockingScheduleE4pollB3r_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1L_6string6StringEE00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3r_.exit
    i8 3, label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1L_6string6StringEE00EENtNtB19_8schedule16BlockingScheduleE10poll_innerB3r_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11poll_futureINtNtNtB6_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1H_6string6StringEE00EENtNtB15_8schedule16BlockingScheduleEB3n_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCseCDlJsl44RV_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !321
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !322
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3j_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1F_6string6StringEE00EENtNtB13_8schedule16BlockingScheduleE4pollB3l_(ptr noundef nonnull align 8 %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread71.i.i unwind label %bb.c, !noalias !321

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !321
  store i32 2, ptr %i.f, align 8, !noalias !321
  invoke void @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3j_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1F_6string6StringEE00EENtNtB13_8schedule16BlockingScheduleE9set_stageB3l_(ptr noundef nonnull align 8 %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !321

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11, !noalias !321
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !321
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !322 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #11, !noalias !322
  unreachable

.thread71.i.i:                                    ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !321
  %.sroa.044.0.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.044.0.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !322, !noundef !4
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread71.i.i
  %i.w = phi ptr [ %i.r, %.thread71.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11poll_futureINtNtNtB6_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1H_6string6StringEE00EENtNtB15_8schedule16BlockingScheduleEB3n_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1L_6string6StringEE00EENtNtB19_8schedule16BlockingScheduleE8completeB3r_:bb.a
bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !12, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !12, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %.noexc6, %.noexc, %bb.b, %bb.e, %bb.h, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXs_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking8scheduleNtB4_16BlockingScheduleNtNtB8_4task8Schedule7release(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core4CellINtNtNtB1g_8blocking4task12BlockingTaskIBC_NCNCINvNtNtNtB1g_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3S_15PyPluginCallApi16write_sync_to_db00INtNtB4_6result6ResultuNtNtBG_6string6StringEE00EENtNtB24_8schedule16BlockingScheduleEEEB3U_(ptr nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1L_6string6StringEE00EENtNtB19_8schedule16BlockingScheduleE8shutdownB3r_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1L_6string6StringEE00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3r_.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core4CellINtNtNtB1g_8blocking4task12BlockingTaskIBC_NCNCINvNtNtNtB1g_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3S_15PyPluginCallApi16write_sync_to_db00INtNtB4_6result6ResultuNtNtBG_6string6StringEE00EENtNtB24_8schedule16BlockingScheduleEEEB3U_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1L_6string6StringEE00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3r_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3j_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1F_6string6StringEE00EENtNtB13_8schedule16BlockingScheduleE9set_stageB3l_(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1H_6string6StringEE00EENtNtB15_8schedule16BlockingScheduleEB3n_.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1H_6string6StringEE00EENtNtB15_8schedule16BlockingScheduleEB3n_.exit

_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1H_6string6StringEE00EENtNtB15_8schedule16BlockingScheduleEB3n_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ undef, %bb.g ], [ %i.k, %bb.h ]
  %.sroa.6.0.i = phi ptr [ null, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !14, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3j_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1F_6string6StringEE00EENtNtB13_8schedule16BlockingScheduleE9set_stageB3l_(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1L_6string6StringEE00EENtNtB19_8schedule16BlockingScheduleE8completeB3r_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1L_6string6StringEE00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3r_.exit

_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1L_6string6StringEE00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3r_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB1H_6string6StringEE00EENtNtB15_8schedule16BlockingScheduleEB3n_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1L_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3r_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core4CellINtNtNtB1g_8blocking4task12BlockingTaskIBC_NCNCINvNtNtNtB1g_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3S_15PyPluginCallApi5querys0_00INtNtB4_6result6ResultINtNtBG_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB24_8schedule16BlockingScheduleEEEB3U_(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1L_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB19_8schedule16BlockingScheduleE15try_read_outputB3r_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !334
  store i32 2, ptr %i.d, align 8, !noalias !334
  %i.e = load i32, ptr %i.a, align 8, !range !10, !noalias !334, !noundef !4
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1H_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3n_.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #10
          to label %bb.d unwind label %bb.e, !noalias !334

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtBI_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3N_15PyPluginCallApi5querys0_00INtNtB4_6result6ResultINtNtB29_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EEEEB3P_(ptr noalias noundef align 8 dereferenceable(32) %i.a) #12
          to label %common.resume unwind label %bb.f, !noalias !334

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11, !noalias !334
  unreachable

_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1H_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3n_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.j = load i64, ptr %1, align 8, !range !7, !alias.scope !335, !noundef !4
  %3 = icmp eq i64 %i.j, 0
  br i1 %3, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1H_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3n_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !337, !noundef !4
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !337, !noundef !4 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !337 ; 6 uses
  %i.p = icmp eq ptr %.val.i.i, null
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !337 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !noalias !337

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !11, !invariant.load !4, !noalias !337 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !12, !invariant.load !4, !noalias !337
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13, !noalias !337
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !11, !invariant.load !4, !noalias !337 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !12, !invariant.load !4, !noalias !337
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13, !noalias !337
  br label %.body

bb.o:                                             ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit
  ret void

.body:                                            ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1H_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3n_.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1L_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB19_8schedule16BlockingScheduleE21drop_join_handle_slowB3r_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !340
  store i32 2, ptr %i.a, align 8, !noalias !340
  invoke void @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3j_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1F_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB13_8schedule16BlockingScheduleE9set_stageB3l_(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #11
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !340
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !12, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !12, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1L_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3r_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core4CellINtNtNtB1g_8blocking4task12BlockingTaskIBC_NCNCINvNtNtNtB1g_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3S_15PyPluginCallApi5querys0_00INtNtB4_6result6ResultINtNtBG_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB24_8schedule16BlockingScheduleEEEB3U_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1L_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3r_.exit

_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1L_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3r_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_RNvMs6_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1L_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB19_8schedule16BlockingScheduleE4pollB3r_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1L_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3r_.exit
    i8 3, label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1L_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB19_8schedule16BlockingScheduleE10poll_innerB3r_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11poll_futureINtNtNtB6_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1H_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB15_8schedule16BlockingScheduleEB3n_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCseCDlJsl44RV_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !351
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !352
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3j_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1F_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB13_8schedule16BlockingScheduleE4pollB3l_(ptr noundef nonnull align 8 %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread71.i.i unwind label %bb.c, !noalias !351

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !351
  store i32 2, ptr %i.f, align 8, !noalias !351
  invoke void @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3j_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1F_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB13_8schedule16BlockingScheduleE9set_stageB3l_(ptr noundef nonnull align 8 %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !351

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11, !noalias !351
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !351
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !352 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #11, !noalias !352
  unreachable

.thread71.i.i:                                    ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !351
  %.sroa.044.0.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.044.0.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !352, !noundef !4
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread71.i.i
  %i.w = phi ptr [ %i.r, %.thread71.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11poll_futureINtNtNtB6_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1H_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB15_8schedule16BlockingScheduleEB3n_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1L_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB19_8schedule16BlockingScheduleE8completeB3r_:bb.a

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !12, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !12, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %.noexc6, %.noexc, %bb.b, %bb.e, %bb.h, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXs_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking8scheduleNtB4_16BlockingScheduleNtNtB8_4task8Schedule7release(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core4CellINtNtNtB1g_8blocking4task12BlockingTaskIBC_NCNCINvNtNtNtB1g_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3S_15PyPluginCallApi5querys0_00INtNtB4_6result6ResultINtNtBG_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB24_8schedule16BlockingScheduleEEEB3U_(ptr nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1L_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB19_8schedule16BlockingScheduleE8shutdownB3r_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1L_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3r_.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core4CellINtNtNtB1g_8blocking4task12BlockingTaskIBC_NCNCINvNtNtNtB1g_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3S_15PyPluginCallApi5querys0_00INtNtB4_6result6ResultINtNtBG_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB24_8schedule16BlockingScheduleEEEB3U_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1L_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3r_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3j_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1F_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB13_8schedule16BlockingScheduleE9set_stageB3l_(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1H_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB15_8schedule16BlockingScheduleEB3n_.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1H_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB15_8schedule16BlockingScheduleEB3n_.exit

_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1H_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB15_8schedule16BlockingScheduleEB3n_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ undef, %bb.g ], [ %i.k, %bb.h ]
  %.sroa.6.0.i = phi ptr [ null, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !14, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3j_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1F_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB13_8schedule16BlockingScheduleE9set_stageB3l_(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1L_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB19_8schedule16BlockingScheduleE8completeB3r_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1L_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3r_.exit

_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3p_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1L_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3r_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3l_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB1H_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EENtNtB15_8schedule16BlockingScheduleEB3n_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2T_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core4CellINtNtNtB1g_8blocking4task12BlockingTaskNCNCINvNtNtNtB1g_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3O_15PyPluginCallApi16write_sync_to_db00INtNtB4_6result6ResultuNtNtBG_6string6StringEE00ENtNtB24_8schedule16BlockingScheduleEEEB3Q_(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB19_8schedule16BlockingScheduleE15try_read_outputB2T_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !364
  store i32 2, ptr %i.d, align 8, !noalias !364
  %i.e = load i32, ptr %i.a, align 8, !range !10, !noalias !364, !noundef !4
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2N_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB15_8schedule16BlockingScheduleE11take_output0B2P_.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #10
          to label %bb.e unwind label %bb.d, !noalias !364

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !range !10, !noalias !364, !noundef !4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %common.resume, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNCINvNtNtNtBI_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3f_15PyPluginCallApi16write_sync_to_db00INtNtB4_6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00EEEB3h_(ptr noalias noundef align 8 dereferenceable(32) %i.a) #12
          to label %common.resume unwind label %bb.g, !noalias !364

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11, !noalias !364
  unreachable

_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2N_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB15_8schedule16BlockingScheduleE11take_output0B2P_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !364
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.l = load i64, ptr %1, align 8, !range !7, !alias.scope !365, !noundef !4
  %3 = icmp eq i64 %i.l, 0
  br i1 %3, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2N_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB15_8schedule16BlockingScheduleE11take_output0B2P_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !367, !noundef !4
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.p, align 8, !alias.scope !367, !noundef !4 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.q, align 8, !alias.scope !367 ; 6 uses
  %i.r = icmp eq ptr %.val.i.i, null
  br i1 %i.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !367 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !noalias !367

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !11, !invariant.load !4, !noalias !367 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !12, !invariant.load !4, !noalias !367
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !noalias !367
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !11, !invariant.load !4, !noalias !367 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !12, !invariant.load !4, !noalias !367
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #13, !noalias !367
  br label %.body

bb.p:                                             ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit
  ret void

.body:                                            ; preds = %bb.n, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2N_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB15_8schedule16BlockingScheduleE11take_output0B2P_.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB19_8schedule16BlockingScheduleE21drop_join_handle_slowB2T_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !370
  store i32 2, ptr %i.a, align 8, !noalias !370
  invoke void @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2L_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB13_8schedule16BlockingScheduleE9set_stageB2N_(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #11
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !370
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !12, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !12, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2T_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core4CellINtNtNtB1g_8blocking4task12BlockingTaskNCNCINvNtNtNtB1g_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3O_15PyPluginCallApi16write_sync_to_db00INtNtB4_6result6ResultuNtNtBG_6string6StringEE00ENtNtB24_8schedule16BlockingScheduleEEEB3Q_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2T_.exit

_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2T_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_RNvMs6_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB19_8schedule16BlockingScheduleE4pollB2T_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2T_.exit
    i8 3, label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB19_8schedule16BlockingScheduleE10poll_innerB2T_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11poll_futureINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2N_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB15_8schedule16BlockingScheduleEB2P_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCseCDlJsl44RV_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !381
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !382
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2L_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB13_8schedule16BlockingScheduleE4pollB2N_(ptr noundef nonnull align 8 %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread71.i.i unwind label %bb.c, !noalias !381

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !381
  store i32 2, ptr %i.f, align 8, !noalias !381
  invoke void @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2L_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB13_8schedule16BlockingScheduleE9set_stageB2N_(ptr noundef nonnull align 8 %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !381

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11, !noalias !381
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !381
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !382 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #11, !noalias !382
  unreachable

.thread71.i.i:                                    ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !381
  %.sroa.044.0.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.044.0.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !382, !noundef !4
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread71.i.i
  %i.w = phi ptr [ %i.r, %.thread71.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11poll_futureINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2N_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB15_8schedule16BlockingScheduleEB2P_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
end_hunk_2
begin_hunk_3_@_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB19_8schedule16BlockingScheduleE8completeB2T_:bb.a

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !12, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !12, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %.noexc6, %.noexc, %bb.b, %bb.e, %bb.h, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXs_NtNtNtCseCDlJsl44RV_5tokio7runtime8blocking8scheduleNtB4_16BlockingScheduleNtNtB8_4task8Schedule7release(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core4CellINtNtNtB1g_8blocking4task12BlockingTaskNCNCINvNtNtNtB1g_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3O_15PyPluginCallApi16write_sync_to_db00INtNtB4_6result6ResultuNtNtBG_6string6StringEE00ENtNtB24_8schedule16BlockingScheduleEEEB3Q_(ptr nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB19_8schedule16BlockingScheduleE8shutdownB2T_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2T_.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core4CellINtNtNtB1g_8blocking4task12BlockingTaskNCNCINvNtNtNtB1g_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3O_15PyPluginCallApi16write_sync_to_db00INtNtB4_6result6ResultuNtNtBG_6string6StringEE00ENtNtB24_8schedule16BlockingScheduleEEEB3Q_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2T_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2L_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB13_8schedule16BlockingScheduleE9set_stageB2N_(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #11
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2N_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB15_8schedule16BlockingScheduleEB2P_.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2N_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB15_8schedule16BlockingScheduleEB2P_.exit

_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2N_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB15_8schedule16BlockingScheduleEB2P_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ undef, %bb.g ], [ %i.k, %bb.h ]
  %.sroa.6.0.i = phi ptr [ null, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !14, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2L_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB13_8schedule16BlockingScheduleE9set_stageB2N_(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB19_8schedule16BlockingScheduleE8completeB2T_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2T_.exit

_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2T_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2N_15PyPluginCallApi16write_sync_to_db00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCscdodAO9FK5_5alloc6string6StringEE00ENtNtB15_8schedule16BlockingScheduleEB2P_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2T_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core4CellINtNtNtB1g_8blocking4task12BlockingTaskNCNCINvNtNtNtB1g_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3O_15PyPluginCallApi5querys0_00INtNtB4_6result6ResultINtNtBG_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB24_8schedule16BlockingScheduleEEEB3Q_(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB19_8schedule16BlockingScheduleE15try_read_outputB2T_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !394
  store i32 2, ptr %i.d, align 8, !noalias !394
  %i.e = load i32, ptr %i.a, align 8, !range !10, !noalias !394, !noundef !4
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2N_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB15_8schedule16BlockingScheduleE11take_output0B2P_.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #10
          to label %bb.e unwind label %bb.d, !noalias !394

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !range !10, !noalias !394, !noundef !4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %common.resume, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNCINvNtNtNtBI_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3f_15PyPluginCallApi5querys0_00INtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00EEEB3h_(ptr noalias noundef align 8 dereferenceable(32) %i.a) #12
          to label %common.resume unwind label %bb.g, !noalias !394

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11, !noalias !394
  unreachable

_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2N_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB15_8schedule16BlockingScheduleE11take_output0B2P_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !394
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.l = load i64, ptr %1, align 8, !range !7, !alias.scope !395, !noundef !4
  %3 = icmp eq i64 %i.l, 0
  br i1 %3, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2N_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB15_8schedule16BlockingScheduleE11take_output0B2P_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !397, !noundef !4
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.p, align 8, !alias.scope !397, !noundef !4 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.q, align 8, !alias.scope !397 ; 6 uses
  %i.r = icmp eq ptr %.val.i.i, null
  br i1 %i.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !397 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !noalias !397

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !11, !invariant.load !4, !noalias !397 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !12, !invariant.load !4, !noalias !397
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !noalias !397
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !11, !invariant.load !4, !noalias !397 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !12, !invariant.load !4, !noalias !397
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #13, !noalias !397
  br label %.body

bb.p:                                             ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit
  ret void

.body:                                            ; preds = %bb.n, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2N_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB15_8schedule16BlockingScheduleE11take_output0B2P_.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB19_8schedule16BlockingScheduleE21drop_join_handle_slowB2T_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !400
  store i32 2, ptr %i.a, align 8, !noalias !400
  invoke void @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2L_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB13_8schedule16BlockingScheduleE9set_stageB2N_(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #11
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !400
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !12, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !12, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2T_.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core4CellINtNtNtB1g_8blocking4task12BlockingTaskNCNCINvNtNtNtB1g_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB3O_15PyPluginCallApi5querys0_00INtNtB4_6result6ResultINtNtBG_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB24_8schedule16BlockingScheduleEEEB3Q_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2T_.exit

_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2T_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskkCPRT7oCWw_16influxdb3_py_api.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_RNvMs6_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB19_8schedule16BlockingScheduleE4pollB2T_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2T_.exit
    i8 3, label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2R_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB19_8schedule16BlockingScheduleE10poll_innerB2T_.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11poll_futureINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2N_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB15_8schedule16BlockingScheduleEB2P_.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCseCDlJsl44RV_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !411
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !412
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2L_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB13_8schedule16BlockingScheduleE4pollB2N_(ptr noundef nonnull align 8 %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread71.i.i unwind label %bb.c, !noalias !411

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !411
  store i32 2, ptr %i.f, align 8, !noalias !411
  invoke void @_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2L_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB13_8schedule16BlockingScheduleE9set_stageB2N_(ptr noundef nonnull align 8 %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !411

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11, !noalias !411
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !411
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !412 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #11, !noalias !412
  unreachable

.thread71.i.i:                                    ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !411
  %.sroa.044.0.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.044.0.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !412, !noundef !4
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread71.i.i
  %i.w = phi ptr [ %i.r, %.thread71.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness11poll_futureINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMsg_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB2N_15PyPluginCallApi5querys0_00INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCs9xaRPakndqT_4pyo33err5PyErrEE00ENtNtB15_8schedule16BlockingScheduleEB2P_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
end_hunk_3
