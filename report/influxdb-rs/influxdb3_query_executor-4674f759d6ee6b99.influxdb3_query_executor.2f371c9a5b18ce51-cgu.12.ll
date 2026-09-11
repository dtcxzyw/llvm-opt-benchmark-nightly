Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.12?download=true
inline.NumInlined: 5692
inline.NumDeleted: 2501
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMs0_NtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host9componentNtB20_21WasmComponentInstance3new00EEINtNtB1n_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs43kcu4yvms7_24influxdb3_query_executor:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMs6_NtNtCs7q2UDKzmthI_9iox_query4exec7contextNtB20_17IOxSessionContext26execute_stream_partitioned0s_0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 16 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CellINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMs6_NtNtCs7q2UDKzmthI_9iox_query4exec7contextNtB2c_17IOxSessionContext26execute_stream_partitioned0s_0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull align 16 %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMs6_NtNtCs7q2UDKzmthI_9iox_query4exec7contextNtB20_17IOxSessionContext26execute_stream_partitioned0s_0EEINtNtB1n_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 16 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CellINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMs6_NtNtCs7q2UDKzmthI_9iox_query4exec7contextNtB2c_17IOxSessionContext26execute_stream_partitioned0s_0EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull align 16 %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCINvMs0_NtNtCs7q2UDKzmthI_9iox_query4exec15cross_rt_streamINtBX_13CrossRtStreamINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEE21new_with_error_streamNtNtBZ_13query_tracing12TracedStreamNCINvMs1_BX_B1L_24new_with_df_error_streamB51_E0E00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(816) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CellNCNCINvMs0_NtNtCs7q2UDKzmthI_9iox_query4exec15cross_rt_streamINtB19_13CrossRtStreamINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEE21new_with_error_streamNtNtB1b_13query_tracing12TracedStreamNCINvMs1_B19_B1X_24new_with_df_error_streamB5e_E0E00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(816) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCINvMs0_NtNtCs7q2UDKzmthI_9iox_query4exec15cross_rt_streamINtBX_13CrossRtStreamINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEE21new_with_error_streamNtNtBZ_13query_tracing12TracedStreamNCINvMs1_BX_B1L_24new_with_df_error_streamB51_E0E00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(816) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CellNCNCINvMs0_NtNtCs7q2UDKzmthI_9iox_query4exec15cross_rt_streamINtB19_13CrossRtStreamINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEE21new_with_error_streamNtNtB1b_13query_tracing12TracedStreamNCINvMs1_B19_B1X_24new_with_df_error_streamB5e_E0E00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(816) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCNvCs43kcu4yvms7_24influxdb3_query_executor18query_database_sql00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(4992) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CellNCNCNvCs43kcu4yvms7_24influxdb3_query_executor18query_database_sql00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newB14_(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(4992) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCNvCs43kcu4yvms7_24influxdb3_query_executor18query_database_sql00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEEBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(4992) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CellNCNCNvCs43kcu4yvms7_24influxdb3_query_executor18query_database_sql00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newB14_(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(4992) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCNvCs43kcu4yvms7_24influxdb3_query_executor23query_database_influxql00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(3424) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CellNCNCNvCs43kcu4yvms7_24influxdb3_query_executor23query_database_influxql00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newB14_(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(3424) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCNvCs43kcu4yvms7_24influxdb3_query_executor23query_database_influxql00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEEBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(3424) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CellNCNCNvCs43kcu4yvms7_24influxdb3_query_executor23query_database_influxql00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newB14_(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(3424) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCNvMs0_NtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host9componentNtBW_21WasmComponentInstance3new00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CellNCNCNvMs0_NtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host9componentNtB18_21WasmComponentInstance3new00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCNvMs0_NtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host9componentNtBW_21WasmComponentInstance3new00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CellNCNCNvMs0_NtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host9componentNtB18_21WasmComponentInstance3new00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCNvMs6_NtNtCs7q2UDKzmthI_9iox_query4exec7contextNtBW_17IOxSessionContext26execute_stream_partitioned0s_0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(256) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CellNCNCNvMs6_NtNtCs7q2UDKzmthI_9iox_query4exec7contextNtB18_17IOxSessionContext26execute_stream_partitioned0s_0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(256) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCNvMs6_NtNtCs7q2UDKzmthI_9iox_query4exec7contextNtBW_17IOxSessionContext26execute_stream_partitioned0s_0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(256) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CellNCNCNvMs6_NtNtCs7q2UDKzmthI_9iox_query4exec7contextNtB18_17IOxSessionContext26execute_stream_partitioned0s_0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(256) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaENCINvMB6_SBT_16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB3D_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0EB3D_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE7reverseCs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.b, align 8, !nonnull !15, !noundef !15 ; 5 uses
  %.val7 = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val6, i64 448
  %i.d = load i8, ptr %i.c, align 8, !range !21, !noundef !15 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val7, i64 448
  %i.f = load i8, ptr %i.e, align 8, !range !21, !noundef !15
  %i.g = sub nsw i8 %i.d, %i.f
  switch i8 %i.g, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit.preheader
    i8 0, label %.split20
    i8 1, label %.split.preheader
  ]

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit.preheader: ; preds = %.split20, %bb.b
  %.not42 = icmp eq i64 %1, 2
  br i1 %.not42, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaENCINvMB6_SB12_16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB3N_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0EB3N_.exit, label %.lr.ph38

default.unreachable:                              ; preds = %.lr.ph, %.lr.ph38, %bb.b
  unreachable

.split20:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val6, i64 416
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !15, !noundef !15
  %i.j = getelementptr inbounds nuw i8, ptr %.val6, i64 424
  %i.k = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.val7, i64 416
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !15, !noundef !15
  %i.o = getelementptr inbounds nuw i8, ptr %.val7, i64 424
  %i.p = load i64, ptr %i.o, align 8, !noundef !15 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.p)
  %i.r = tail call i32 @memcmp(ptr nonnull %i.l, ptr nonnull %i.q, i64 %spec.store.select.i.i) ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub i64 %i.k, %i.p
  %spec.select.i.i = select i1 %i.t, i64 %i.u, i64 %i.s
  %i.v = icmp slt i64 %spec.select.i.i, 0
  br i1 %i.v, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %.split20, %bb.b
  %.not = icmp eq i64 %1, 2
  br i1 %.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaENCINvMB6_SB12_16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB3N_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0EB3N_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.split.preheader, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit12.thread22
  %i.w = phi i8 [ %i.z, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit12.thread22 ], [ %i.d, %.split.preheader ]
  %.val5 = phi ptr [ %.val4, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit12.thread22 ], [ %.val6, %.split.preheader ] ; 2 uses
  %.sroa.01.0.i34 = phi i64 [ %i.aq, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit12.thread22 ], [ 2, %.split.preheader ] ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i34
  %3 = add nsw i64 %.sroa.01.0.i34, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %.val4 = load ptr, ptr %i.x, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val4, i64 448
  %i.z = load i8, ptr %i.y, align 8, !range !21, !noundef !15 ; 2 uses
  %i.aa = sub nsw i8 %i.z, %i.w
  switch i8 %i.aa, label %default.unreachable [
    i8 -1, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaENCINvMB6_SB12_16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB3N_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0EB3N_.exit
    i8 0, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit12
    i8 1, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit12.thread22
  ]

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit12: ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.val4, i64 416
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !15, !noundef !15
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4, i64 424
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !15 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.val5, i64 416
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !15, !noundef !15
  %i.ai = getelementptr inbounds nuw i8, ptr %.val5, i64 424
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !15 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %spec.store.select.i.i9 = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.aj)
  %i.al = tail call i32 @memcmp(ptr nonnull %i.af, ptr nonnull %i.ak, i64 %spec.store.select.i.i9) ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %i.ae, %i.aj
  %spec.select.i.i10 = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i10, 0
  br i1 %i.ap, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaENCINvMB6_SB12_16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB3N_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0EB3N_.exit, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit12.thread22

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit12.thread22: ; preds = %.lr.ph, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit12
  %i.aq = add nuw nsw i64 %.sroa.01.0.i34, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaENCINvMB6_SB12_16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB3N_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0EB3N_.exit, label %.lr.ph

.lr.ph38:                                         ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit.preheader, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit17.thread
  %i.ar = phi i8 [ %i.au, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit17.thread ], [ %i.d, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit.preheader ]
  %.val3 = phi ptr [ %.val, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit17.thread ], [ %.val6, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit.preheader ] ; 2 uses
  %.sroa.01.1.i37 = phi i64 [ %i.bl, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit17.thread ], [ 2, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit.preheader ] ; 5 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i37
  %5 = add nsw i64 %.sroa.01.1.i37, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %.val = load ptr, ptr %i.as, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 448
  %i.au = load i8, ptr %i.at, align 8, !range !21, !noundef !15 ; 2 uses
  %i.av = sub nsw i8 %i.au, %i.ar
  switch i8 %i.av, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit17.thread
    i8 0, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit17
    i8 1, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaENCINvMB6_SB12_16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB3N_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0EB3N_.exit
  ]

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit17: ; preds = %.lr.ph38
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 416
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !15, !noundef !15
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 424
  %i.az = load i64, ptr %i.ay, align 8, !noundef !15 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.val3, i64 416
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !15, !noundef !15
  %i.bd = getelementptr inbounds nuw i8, ptr %.val3, i64 424
  %i.be = load i64, ptr %i.bd, align 8, !noundef !15 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %spec.store.select.i.i14 = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %i.be)
  %i.bg = tail call i32 @memcmp(ptr nonnull %i.ba, ptr nonnull %i.bf, i64 %spec.store.select.i.i14) ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp eq i32 %i.bg, 0
  %i.bj = sub i64 %i.az, %i.be
  %spec.select.i.i15 = select i1 %i.bi, i64 %i.bj, i64 %i.bh
  %i.bk = icmp slt i64 %spec.select.i.i15, 0
  br i1 %i.bk, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit17.thread, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaENCINvMB6_SB12_16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB3N_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0EB3N_.exit

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit17.thread: ; preds = %.lr.ph38, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit17
  %i.bl = add nuw nsw i64 %.sroa.01.1.i37, 1      ; 2 uses
  %exitcond46.not = icmp eq i64 %i.bl, %1
  br i1 %exitcond46.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaENCINvMB6_SB12_16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB3N_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0EB3N_.exit, label %.lr.ph38

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaENCINvMB6_SB12_16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB3N_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0EB3N_.exit: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit12, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit12.thread22, %.lr.ph, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit17, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit17.thread, %.lr.ph38, %.split.preheader, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit.preheader
  %.sroa.3.0.i = phi i1 [ true, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit.preheader ], [ false, %.split.preheader ], [ true, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit17 ], [ true, %.lr.ph38 ], [ true, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit17.thread ], [ false, %.lr.ph ], [ false, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit12.thread22 ], [ false, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit12 ]
  %.sroa.0.0.i = phi i64 [ 2, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit.preheader ], [ 2, %.split.preheader ], [ %.sroa.01.1.i37, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit17 ], [ %1, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit17.thread ], [ %.sroa.01.1.i37, %.lr.ph38 ], [ %.sroa.01.0.i34, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit12 ], [ %1, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB34_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0B34_.exit12.thread22 ], [ %.sroa.01.0.i34, %.lr.ph ] ; 2 uses
  %i.bm = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaENCINvMB6_SB12_16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB3N_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0EB3N_.exit
  br i1 %.sroa.3.0.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit11.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE7reverseCs43kcu4yvms7_24influxdb3_query_executor.exit

bb.d:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaENCINvMB6_SB12_16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB3N_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0EB3N_.exit
  %i.bo = or i64 %1, 1
  %i.bp = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 1
  %i.bs = xor i32 %i.br, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaENCINvMB8_SB17_16sort_unstable_byNCNvXs7_Cs43kcu4yvms7_24influxdb3_query_executorNtB3S_17QueryExecutorImplNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor13QueryExecutor14show_databases0E0EB3S_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.bs, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE7reverseCs43kcu4yvms7_24influxdb3_query_executor.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE7reverseCs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit11.i.i, %middle.block, %bb.a, %bb.c, %bb.d
  ret void

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit11.preheader.i.i: ; preds = %bb.c
  %i.bt = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6272)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit11.preheader.i.i
  %n.vec = and i64 %i.bt, 576460752303423484      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bv = xor i64 %index, -1
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 4 uses
  %i.bx = getelementptr [8 x i8], ptr %i.bu, i64 %i.bv ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bw, align 8, !alias.scope !6273, !noalias !6272
  %wide.load61 = load <2 x ptr>, ptr %i.by, align 8, !alias.scope !6273, !noalias !6272
  %i.bz = getelementptr i8, ptr %i.bx, i64 -8
  %i.ca = getelementptr i8, ptr %i.bx, i64 -24
  %wide.load62 = load <2 x i64>, ptr %i.bz, align 8, !alias.scope !6274, !noalias !6271
  %wide.load63 = load <2 x i64>, ptr %i.ca, align 8, !alias.scope !6274, !noalias !6271
  %reverse = shufflevector <2 x i64> %wide.load62, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse64 = shufflevector <2 x i64> %wide.load63, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <2 x i64> %reverse, ptr %i.bw, align 8, !alias.scope !6273, !noalias !6272
  store <2 x i64> %reverse64, ptr %i.cb, align 8, !alias.scope !6273, !noalias !6272
  %i.cc = getelementptr i8, ptr %i.bx, i64 -8
  %i.cd = getelementptr i8, ptr %i.bx, i64 -24
  %reverse65 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse66 = shufflevector <2 x ptr> %wide.load61, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse65, ptr %i.cc, align 8, !alias.scope !6274, !noalias !6271
  store <2 x ptr> %reverse66, ptr %i.cd, align 8, !alias.scope !6274, !noalias !6271
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !6269

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE7reverseCs43kcu4yvms7_24influxdb3_query_executor.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit11.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit11.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit11.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ck, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit11.i.i.preheader ] ; 3 uses
  %i.cf = xor i64 %.sroa.0.016.i.i, -1
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ch = getelementptr [8 x i8], ptr %i.bu, i64 %i.cf ; 2 uses
  %i.ci = load ptr, ptr %i.cg, align 8, !alias.scope !6273, !noalias !6272, !nonnull !15, !noundef !15
  %i.cj = load i64, ptr %i.ch, align 8, !alias.scope !6274, !noalias !6271
  store i64 %i.cj, ptr %i.cg, align 8, !alias.scope !6273, !noalias !6272
  store ptr %i.ci, ptr %i.ch, align 8, !alias.scope !6274, !noalias !6271
  %i.ck = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ck, %i.bt
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE7reverseCs43kcu4yvms7_24influxdb3_query_executor.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit11.i.i, !llvm.loop !6270
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7bounded7channelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor(i64 noundef %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @26, ptr noundef nonnull inttoptr (i64 81 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCseCDlJsl44RV_5tokio4sync15batch_semaphoreNtB2_9Semaphore3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, i64 noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %0, ptr %i.b, align 8
  %i.c = call { ptr, ptr } @_RINvNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan7channelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_7bounded9SemaphoreECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw15try_read_outputINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvMs0_NtNtCs7q2UDKzmthI_9iox_query4exec15cross_rt_streamINtB2f_13CrossRtStreamINtNtB15_6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEE21new_with_error_streamNtNtB2h_13query_tracing12TracedStreamNCINvMs1_B2f_B33_24new_with_df_error_streamB65_E0E00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6286)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCseCDlJsl44RV_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !6286
  br i1 %i.c, label %bb.b, label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvMs0_NtNtCs7q2UDKzmthI_9iox_query4exec15cross_rt_streamINtB2j_13CrossRtStreamINtNtB19_6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEE21new_with_error_streamNtNtB2l_13query_tracing12TracedStreamNCINvMs1_B2j_B37_24new_with_df_error_streamB69_E0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs43kcu4yvms7_24influxdb3_query_executor.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !6287
  store i32 2, ptr %i.d, align 8, !noalias !6287
  %i.e = load i32, ptr %i.a, align 8, !range !49, !noalias !6287, !noundef !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvMs0_NtNtCs7q2UDKzmthI_9iox_query4exec15cross_rt_streamINtB2f_13CrossRtStreamINtNtB15_6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEE21new_with_error_streamNtNtB2h_13query_tracing12TracedStreamNCINvMs1_B2f_B33_24new_with_df_error_streamB65_E0E00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #37
          to label %bb.d unwind label %bb.e, !noalias !6288

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %.body.i, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.x, %.body.i ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvMs0_NtNtCs7q2UDKzmthI_9iox_query4exec15cross_rt_streamINtB2r_13CrossRtStreamINtNtB4_6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEE21new_with_error_streamNtNtB2t_13query_tracing12TracedStreamNCINvMs1_B2r_B3f_24new_with_df_error_streamB6g_E0E00EEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(32) %i.a) #36
          to label %common.resume.i unwind label %bb.f, !noalias !6288

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38, !noalias !6288
  unreachable

_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvMs0_NtNtCs7q2UDKzmthI_9iox_query4exec15cross_rt_streamINtB2f_13CrossRtStreamINtNtB15_6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEE21new_with_error_streamNtNtB2h_13query_tracing12TracedStreamNCINvMs1_B2f_B33_24new_with_df_error_streamB65_E0E00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !6289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6287
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6290)
  %i.j = load i64, ptr %1, align 8, !range !14, !alias.scope !6291, !noalias !6292, !noundef !15
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvMs0_NtNtCs7q2UDKzmthI_9iox_query4exec15cross_rt_streamINtB2f_13CrossRtStreamINtNtB15_6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEE21new_with_error_streamNtNtB2h_13query_tracing12TracedStreamNCINvMs1_B2f_B33_24new_with_df_error_streamB65_E0E00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6293)
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !6294, !noalias !6292, !noundef !15
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !6294, !noalias !6292, !noundef !15 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !6294, !noalias !6292 ; 6 uses
  %i.q = icmp eq ptr %.val.i.i.i, null
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.r = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !15, !noalias !6294 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.r(ptr noundef nonnull %.val.i.i.i)
          to label %bb.k unwind label %bb.l, !noalias !6294

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !31, !invariant.load !15, !noalias !6294 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !32, !invariant.load !15, !noalias !6294
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) %i.w) #39, !noalias !6294
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i

bb.l:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !31, !invariant.load !15, !noalias !6294 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.body.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !32, !invariant.load !15, !noalias !6294
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) %i.ac) #39, !noalias !6294
  br label %.body.i

.body.i:                                          ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !6292
  br label %common.resume.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB7_4CoreINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvMs0_NtNtCs7q2UDKzmthI_9iox_query4exec15cross_rt_streamINtB2f_13CrossRtStreamINtNtB15_6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEE21new_with_error_streamNtNtB2h_13query_tracing12TracedStreamNCINvMs1_B2f_B33_24new_with_df_error_streamB65_E0E00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i
  store i64 0, ptr %1, align 8, !alias.scope !6286, !noalias !6292
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !6292
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvMs0_NtNtCs7q2UDKzmthI_9iox_query4exec15cross_rt_streamINtB2j_13CrossRtStreamINtNtB19_6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEE21new_with_error_streamNtNtB2l_13query_tracing12TracedStreamNCINvMs1_B2j_B37_24new_with_df_error_streamB69_E0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs43kcu4yvms7_24influxdb3_query_executor.exit

_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvMs0_NtNtCs7q2UDKzmthI_9iox_query4exec15cross_rt_streamINtB2j_13CrossRtStreamINtNtB19_6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEE21new_with_error_streamNtNtB2l_13query_tracing12TracedStreamNCINvMs1_B2j_B37_24new_with_df_error_streamB69_E0E00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
