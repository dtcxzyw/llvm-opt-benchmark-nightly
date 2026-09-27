Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_server-2fd1ca6f98033a04.influxdb3_server.82104fd7176bce33-cgu.09?download=true
inline.NumInlined: 2351
inline.NumDeleted: 844
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXst_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTQINtNtNtCs7Ez7UXBn1VF_7parquet4file6writer12TrackedWriteQINtNtB7_3vec3VechEENtNtB1y_8metadata16RowGroupMetaDataIB2o_INtNtBO_6option6OptionNtNtB1A_12bloom_filter4SbbfEEIB2o_IB3l_NtNtNtB1y_10page_index12column_index19ColumnIndexMetaDataEEIB2o_IB3l_NtNtB4n_12offset_index19OffsetIndexMetaDataEEEEp6OutputINtNtBO_6result6ResultuNtNtB1A_6errors12ParquetErrorENtNtBO_6marker4SendEL_EIBI_B1r_E9call_onceCsbakdBCgU4AF_16influxdb3_server:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !9, !invariant.load !6 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTQINtNtNtCs7Ez7UXBn1VF_7parquet4file6writer12TrackedWriteQINtNtB7_3vec3VechEENtNtB1y_8metadata16RowGroupMetaDataIB2o_INtNtBO_6option6OptionNtNtB1A_12bloom_filter4SbbfEEIB2o_IB3l_NtNtNtB1y_10page_index12column_index19ColumnIndexMetaDataEEIB2o_IB3l_NtNtB4n_12offset_index19OffsetIndexMetaDataEEEEp6OutputINtNtBO_6result6ResultuNtNtB1A_6errors12ParquetErrorENtNtBO_6marker4SendEL_ENtNtBM_4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !10, !invariant.load !6
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #28
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTQINtNtNtCs7Ez7UXBn1VF_7parquet4file6writer12TrackedWriteQINtNtB7_3vec3VechEENtNtB1y_8metadata16RowGroupMetaDataIB2o_INtNtBO_6option6OptionNtNtB1A_12bloom_filter4SbbfEEIB2o_IB3l_NtNtNtB1y_10page_index12column_index19ColumnIndexMetaDataEEIB2o_IB3l_NtNtB4n_12offset_index19OffsetIndexMetaDataEEEEp6OutputINtNtBO_6result6ResultuNtNtB1A_6errors12ParquetErrorENtNtBO_6marker4SendEL_ENtNtBM_4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !9, !invariant.load !6 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTQINtNtNtCs7Ez7UXBn1VF_7parquet4file6writer12TrackedWriteQINtNtB7_3vec3VechEENtNtB1y_8metadata16RowGroupMetaDataIB2o_INtNtBO_6option6OptionNtNtB1A_12bloom_filter4SbbfEEIB2o_IB3l_NtNtNtB1y_10page_index12column_index19ColumnIndexMetaDataEEIB2o_IB3l_NtNtB4n_12offset_index19OffsetIndexMetaDataEEEEp6OutputINtNtBO_6result6ResultuNtNtB1A_6errors12ParquetErrorENtNtBO_6marker4SendEL_ENtNtBM_4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit5, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !10, !invariant.load !6
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #28
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTQINtNtNtCs7Ez7UXBn1VF_7parquet4file6writer12TrackedWriteQINtNtB7_3vec3VechEENtNtB1y_8metadata16RowGroupMetaDataIB2o_INtNtBO_6option6OptionNtNtB1A_12bloom_filter4SbbfEEIB2o_IB3l_NtNtNtB1y_10page_index12column_index19ColumnIndexMetaDataEEIB2o_IB3l_NtNtB4n_12offset_index19OffsetIndexMetaDataEEEEp6OutputINtNtBO_6result6ResultuNtNtB1A_6errors12ParquetErrorENtNtBO_6marker4SendEL_ENtNtBM_4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit5

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTQINtNtNtCs7Ez7UXBn1VF_7parquet4file6writer12TrackedWriteQINtNtB7_3vec3VechEENtNtB1y_8metadata16RowGroupMetaDataIB2o_INtNtBO_6option6OptionNtNtB1A_12bloom_filter4SbbfEEIB2o_IB3l_NtNtNtB1y_10page_index12column_index19ColumnIndexMetaDataEEIB2o_IB3l_NtNtB4n_12offset_index19OffsetIndexMetaDataEEEEp6OutputINtNtBO_6result6ResultuNtNtB1A_6errors12ParquetErrorENtNtBO_6marker4SendEL_ENtNtBM_4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit5: ; preds = %bb.d, %bb.e
  ret void

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTQINtNtNtCs7Ez7UXBn1VF_7parquet4file6writer12TrackedWriteQINtNtB7_3vec3VechEENtNtB1y_8metadata16RowGroupMetaDataIB2o_INtNtBO_6option6OptionNtNtB1A_12bloom_filter4SbbfEEIB2o_IB3l_NtNtNtB1y_10page_index12column_index19ColumnIndexMetaDataEEIB2o_IB3l_NtNtB4n_12offset_index19OffsetIndexMetaDataEEEEp6OutputINtNtBO_6result6ResultuNtNtB1A_6errors12ParquetErrorENtNtBO_6marker4SendEL_ENtNtBM_4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtNtCs5SRHcsv2kA9_12futures_util6stream10try_streamINtB5_6MapErrINtB5_5MapOkIB18_INtNtB7_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body00ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB33_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB4r_5FrameB33_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB1o_B33_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE0ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextB1T_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtB1a_5MapOkIB1R_INtNtB9_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body00ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3N_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB5b_5FrameB3N_E4dataEEINtNtBb_3fns8MapErrFnNCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB28_B3N_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextB2D_(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtNtCs5SRHcsv2kA9_12futures_util6stream10try_streamINtB5_6MapErrINtB5_5MapOkIB18_INtNtB7_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0s0_0ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB36_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB4u_5FrameB36_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB1o_B36_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE0ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextB1T_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtB1a_5MapOkIB1R_INtNtB9_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0s0_0ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3Q_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB5e_5FrameB3Q_E4dataEEINtNtBb_3fns8MapErrFnNCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB28_B3Q_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextB2D_(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtNtCs5SRHcsv2kA9_12futures_util6stream10try_streamINtB5_6MapErrINtB5_5MapOkIB18_INtNtB7_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0s_0ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB35_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB4t_5FrameB35_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB1o_B35_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE0ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextB1T_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtB1a_5MapOkIB1R_INtNtB9_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0s_0ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3P_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB5d_5FrameB3P_E4dataEEINtNtBb_3fns8MapErrFnNCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB28_B3P_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextB2D_(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtNtCs5SRHcsv2kA9_12futures_util6stream10try_streamINtB5_6MapErrINtB5_5MapOkIB18_INtNtNtB7_6stream3map3MapINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB1S_6marker4SendEL_EENcNtINtNtB1S_6result6ResultB3I_NtNtB1S_7convert10InfallibleE2Ok0ENvYB3I_INtB5d_4IntoB3I_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB6g_5FrameB3I_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB1o_B3I_B5b_E0EB2S_9poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtB1a_5MapOkIB1R_IBW_INtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2h_6marker4SendEL_EENcNtINtNtB2h_6result6ResultB47_NtNtB2h_7convert10InfallibleE2Ok0ENvYB47_INtB5C_4IntoB47_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB6F_5FrameB47_E4dataEEINtNtBb_3fns8MapErrFnNCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB28_B47_B5A_E0EEB3h_9poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtNtCs5SRHcsv2kA9_12futures_util6stream10try_streamINtB5_6MapErrINtB5_5MapOkIB18_INtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB38_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB4w_5FrameB38_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB1o_B38_NtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE0ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtB1a_5MapOkIB1R_INtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3S_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB5g_5FrameB3S_E4dataEEINtNtBb_3fns8MapErrFnNCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB28_B3S_NtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 dereferenceable(144) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtNtCs5SRHcsv2kA9_12futures_util6stream10try_streamINtB5_6MapErrINtB5_5MapOkINtNtB7_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB2R_9Multipart16with_constraintsB1j_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB1J_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0ENCB2N_s_0ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtB1a_5MapOkINtNtB9_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB3B_9Multipart16with_constraintsB23_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2t_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0EEINtNtBb_3fns8MapErrFnNCB3x_s_0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtNtCs5SRHcsv2kA9_12futures_util6stream10try_streamINtB5_6MapErrINtB5_5MapOkINtNtB7_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB2R_9Multipart16with_constraintsB1j_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB1J_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0ENCB2N_s_0ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9size_hintCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtB1a_5MapOkINtNtB9_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB3B_9Multipart16with_constraintsB23_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2t_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0EEINtNtBb_3fns8MapErrFnNCB3x_s_0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9size_hintCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtNtBY_2io11async_write10AsyncWrite19poll_write_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(1136) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.idx = shl nuw nsw i64 %3, 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs2AWtUsOyxgP_3std2io7IoSliceE6map_orRShNCNvYINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtNtB2s_2io11async_write10AsyncWrite19poll_write_vectoreds_0ECsbakdBCgU4AF_16influxdb3_server.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs2AWtUsOyxgP_3std2io7IoSliceE6map_orRShNCNvYINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtNtB2s_2io11async_write10AsyncWrite19poll_write_vectoreds_0ECsbakdBCgU4AF_16influxdb3_server.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.d, %bb.b ], [ %2, %bb.a ]   ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !5459, !noundef !6 ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !5460, !noundef !6
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs2AWtUsOyxgP_3std2io7IoSliceE6map_orRShNCNvYINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtNtB2s_2io11async_write10AsyncWrite19poll_write_vectoreds_0ECsbakdBCgU4AF_16influxdb3_server.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs2AWtUsOyxgP_3std2io7IoSliceE6map_orRShNCNvYINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtNtB2s_2io11async_write10AsyncWrite19poll_write_vectoreds_0ECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.02.0.i = phi ptr [ %.val.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5461)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5462
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.j = load i8, ptr %i.i, align 8, !range !64, !alias.scope !5461, !noalias !5463, !noundef !6
  %i.k = and i8 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.a, align 8, !noalias !5462
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !5462
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.k, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !5462
  %i.m = call { i64, ptr } @_RNvXs1_NtCs8rTCm43AEA0_12tokio_rustls6commonINtB5_6StreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamNtNtNtCs62AB4KIMLyv_6rustls6server11server_conn16ServerConnectionENtNtNtB11_2io11async_write10AsyncWrite10poll_writeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5462
  ret { i64, ptr } %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCsPDBpS1owJq_14http_body_util6stream10StreamBodyINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream6MapErrINtBW_5MapOkIB1T_INtNtBY_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body00ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3O_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB5c_5FrameB3O_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB29_B3O_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE0EENtB5e_4Body13is_end_streamB2E_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsPDBpS1owJq_14http_body_util6stream10StreamBodyINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream6MapErrINtBW_5MapOkIB1T_INtNtBY_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body00ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3O_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB5c_5FrameB3O_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB29_B3O_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE0EENtB5e_4Body9size_hintB2E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 24)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCsPDBpS1owJq_14http_body_util6stream10StreamBodyINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream6MapErrINtBW_5MapOkIB1T_INtNtBY_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0s0_0ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3R_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB5f_5FrameB3R_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB29_B3R_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE0EENtB5h_4Body13is_end_streamB2E_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsPDBpS1owJq_14http_body_util6stream10StreamBodyINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream6MapErrINtBW_5MapOkIB1T_INtNtBY_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0s0_0ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3R_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB5f_5FrameB3R_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB29_B3R_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE0EENtB5h_4Body9size_hintB2E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 24)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCsPDBpS1owJq_14http_body_util6stream10StreamBodyINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream6MapErrINtBW_5MapOkIB1T_INtNtBY_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0s_0ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3Q_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB5e_5FrameB3Q_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB29_B3Q_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE0EENtB5g_4Body13is_end_streamB2E_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsPDBpS1owJq_14http_body_util6stream10StreamBodyINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream6MapErrINtBW_5MapOkIB1T_INtNtBY_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0s_0ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3Q_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB5e_5FrameB3Q_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB29_B3Q_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE0EENtB5g_4Body9size_hintB2E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 24)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCsPDBpS1owJq_14http_body_util6stream10StreamBodyINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream6MapErrINtBW_5MapOkIB1T_INtNtNtBY_6stream3map3MapINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2D_6marker4SendEL_EENcNtINtNtB2D_6result6ResultB4t_NtNtB2D_7convert10InfallibleE2Ok0ENvYB4t_INtB5Y_4IntoB4t_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB71_5FrameB4t_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB29_B4t_B5W_E0EENtB73_4Body13is_end_streamCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsPDBpS1owJq_14http_body_util6stream10StreamBodyINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream6MapErrINtBW_5MapOkIB1T_INtNtNtBY_6stream3map3MapINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2D_6marker4SendEL_EENcNtINtNtB2D_6result6ResultB4t_NtNtB2D_7convert10InfallibleE2Ok0ENvYB4t_INtB5Y_4IntoB4t_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB71_5FrameB4t_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB29_B4t_B5W_E0EENtB73_4Body9size_hintCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 24)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCsPDBpS1owJq_14http_body_util6stream10StreamBodyINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream6MapErrINtBW_5MapOkIB1T_INtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3T_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB5h_5FrameB3T_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB29_B3T_NtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE0EENtB5j_4Body13is_end_streamCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsPDBpS1owJq_14http_body_util6stream10StreamBodyINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream6MapErrINtBW_5MapOkIB1T_INtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3T_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB5h_5FrameB3T_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB29_B3T_NtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE0EENtB5j_4Body9size_hintCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 24)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @890, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @891, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtB7_5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtB7_5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtB7_5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @892, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @893, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @894, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @895, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @896, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtB7_5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtB7_5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtB7_5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @897, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @898, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @899, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @900, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @901, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @902, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @903, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorReENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorReENtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorReENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorReENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @904, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @905, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCs1LivM9IBWqb_12object_store5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs1LivM9IBWqb_12object_store5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs1LivM9IBWqb_12object_store5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @906, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCs8dx9gOL6MFw_26iox_query_influxql_rewrite5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCs8dx9gOL6MFw_26iox_query_influxql_rewrite5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs8dx9gOL6MFw_26iox_query_influxql_rewrite5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs8dx9gOL6MFw_26iox_query_influxql_rewrite5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @907, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @908, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs1LivM9IBWqb_12object_store4path5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs1LivM9IBWqb_12object_store4path5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs1LivM9IBWqb_12object_store4path5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @909, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error10QueryErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error10QueryErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs0_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_10QueryErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error10QueryErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error10QueryErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @910, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #11 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !32, !alias.scope !5466, !noundef !6 ; 2 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775799
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808       ; 2 uses
  %i.d = icmp ult i64 %i.c, 18
  %i.e = select i1 %i.d, i64 %i.c, i64 9
  switch i64 %i.e, label %bb.b [
    i64 0, label %_RNvXs4_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 1, label %_RNvXs4_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 2, label %_RNvXs4_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 3, label %_RNvXs4_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 4, label %_RNvXs4_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 5, label %_RNvXs4_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 6, label %bb.c
    i64 7, label %bb.d
    i64 8, label %bb.e
    i64 9, label %bb.f
    i64 10, label %_RNvXs4_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 11, label %_RNvXs4_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 12, label %_RNvXs4_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 13, label %_RNvXs4_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 14, label %_RNvXs4_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 15, label %_RNvXs4_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 16, label %_RNvXs4_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 17, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs4_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs4_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs4_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.f:                                             ; preds = %bb.a
  br label %_RNvXs4_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs4_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

_RNvXs4_NtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.19.0.i = phi ptr [ @495, %bb.g ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ @489, %bb.c ], [ @491, %bb.d ], [ @291, %bb.e ], [ @493, %bb.f ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.i, %bb.g ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %0, %bb.f ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ]
  %i.j = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %.sroa.19.0.i, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @911, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs2LSxCQSJWSD_5hyper5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs2LSxCQSJWSD_5hyper5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #9 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5469)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !5469, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noalias !5469, !noundef !6 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvXs1_NtCs2LSxCQSJWSD_5hyper5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noalias !5469, !nonnull !6, !align !20, !noundef !6
  br label %_RNvXs1_NtCs2LSxCQSJWSD_5hyper5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

_RNvXs1_NtCs2LSxCQSJWSD_5hyper5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi ptr [ %i.d, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs2LSxCQSJWSD_5hyper5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2LSxCQSJWSD_5hyper5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @912, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs4NRVxsYgnAr_4core5array17TryFromSliceErrorNtNtB6_5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs4NRVxsYgnAr_4core5array17TryFromSliceErrorNtNtB6_5error5Error5causeCsbakdBCgU4AF_16influxdb3_server(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs4NRVxsYgnAr_4core5array17TryFromSliceErrorNtNtB6_5error5Error6sourceCsbakdBCgU4AF_16influxdb3_server(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs4NRVxsYgnAr_4core5array17TryFromSliceErrorNtNtB6_5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs4NRVxsYgnAr_4core5array17TryFromSliceErrorNtNtB6_5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @913, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs4NRVxsYgnAr_4core7convert10InfallibleNtNtB6_5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs4NRVxsYgnAr_4core7convert10InfallibleNtNtB6_5error5Error5causeCsbakdBCgU4AF_16influxdb3_server(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs4NRVxsYgnAr_4core7convert10InfallibleNtNtB6_5error5Error6sourceCsbakdBCgU4AF_16influxdb3_server(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs4NRVxsYgnAr_4core7convert10InfallibleNtNtB6_5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs4NRVxsYgnAr_4core7convert10InfallibleNtNtB6_5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @914, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs4oFq2PzodUt_7reqwest5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs4oFq2PzodUt_7reqwest5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs4oFq2PzodUt_7reqwest5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @53, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs6P5GRezSnwZ_4http5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(2) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs1_NtCs6P5GRezSnwZ_4http5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs7Ez7UXBn1VF_7parquet6errors12ParquetErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs7Ez7UXBn1VF_7parquet6errors12ParquetErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs7Ez7UXBn1VF_7parquet6errors12ParquetErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @915, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs7_NtCs844E4pPEVZX_17influxdb3_catalog5errorNtB5_12CatalogErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @916, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs87O7Q65ve1k_7bitcode5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs87O7Q65ve1k_7bitcode5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsbakdBCgU4AF_16influxdb3_server(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs87O7Q65ve1k_7bitcode5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs87O7Q65ve1k_7bitcode5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @917, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @918, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs9h7Hq22ZyhR_15influxdb3_types4http5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsb_NtCs9h7Hq22ZyhR_15influxdb3_types4httpNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsaNmiEuYuYZf_9sqlparser6parser11ParserErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsaNmiEuYuYZf_9sqlparser6parser11ParserErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsaNmiEuYuYZf_9sqlparser6parser11ParserErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsaNmiEuYuYZf_9sqlparser6parser11ParserErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @919, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsbYyEjVLvvus_5tonic6status6StatusNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsbYyEjVLvvus_5tonic6status6StatusNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsbYyEjVLvvus_5tonic6status6StatusNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @920, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @921, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %0) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !70, !noundef !6
  switch i32 %i.a, label %default.unreachable [
    i32 0, label %_RNvXs0_NtCsh4GC5dvIChH_27influxdb3_processing_engine7managerNtB5_21ProcessingEngineErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %_RNvXs0_NtCsh4GC5dvIChH_27influxdb3_processing_engine7managerNtB5_21ProcessingEngineErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i32 6, label %_RNvXs0_NtCsh4GC5dvIChH_27influxdb3_processing_engine7managerNtB5_21ProcessingEngineErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i32 7, label %_RNvXs0_NtCsh4GC5dvIChH_27influxdb3_processing_engine7managerNtB5_21ProcessingEngineErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i32 8, label %_RNvXs0_NtCsh4GC5dvIChH_27influxdb3_processing_engine7managerNtB5_21ProcessingEngineErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i32 9, label %_RNvXs0_NtCsh4GC5dvIChH_27influxdb3_processing_engine7managerNtB5_21ProcessingEngineErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs0_NtCsh4GC5dvIChH_27influxdb3_processing_engine7managerNtB5_21ProcessingEngineErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs0_NtCsh4GC5dvIChH_27influxdb3_processing_engine7managerNtB5_21ProcessingEngineErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs0_NtCsh4GC5dvIChH_27influxdb3_processing_engine7managerNtB5_21ProcessingEngineErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs0_NtCsh4GC5dvIChH_27influxdb3_processing_engine7managerNtB5_21ProcessingEngineErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

_RNvXs0_NtCsh4GC5dvIChH_27influxdb3_processing_engine7managerNtB5_21ProcessingEngineErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.11.0.i = phi ptr [ undef, %bb.a ], [ @315, %bb.b ], [ @317, %bb.c ], [ @319, %bb.d ], [ @321, %bb.e ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %i.e, %bb.e ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ]
  %i.f = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %.sroa.11.0.i, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7plugins11PluginErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7plugins11PluginErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs1_NtCsh4GC5dvIChH_27influxdb3_processing_engine7pluginsNtB5_11PluginErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noundef nonnull align 8 %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7plugins11PluginErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7plugins11PluginErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @922, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsi8UQarL1hXO_2h25error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsi8UQarL1hXO_2h25error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsi8UQarL1hXO_2h25error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsi8UQarL1hXO_2h25error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @923, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsj9JzdWj4GcM_12arrow_schema5error10ArrowErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsj9JzdWj4GcM_12arrow_schema5error10ArrowErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsj9JzdWj4GcM_12arrow_schema5error10ArrowErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @924, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCslWccy9wMl4f_17datafusion_common5error11SchemaErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCslWccy9wMl4f_17datafusion_common5error11SchemaErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCslWccy9wMl4f_17datafusion_common5error11SchemaErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCslWccy9wMl4f_17datafusion_common5error11SchemaErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCslWccy9wMl4f_17datafusion_common5error11SchemaErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @925, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !45, !alias.scope !5472, !noundef !6
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 6, label %_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 7, label %_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 8, label %_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 9, label %bb.g
    i64 10, label %_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 11, label %bb.h
    i64 12, label %_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 13, label %bb.i
    i64 14, label %bb.j
    i64 15, label %_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit
    i64 16, label %bb.k
    i64 17, label %bb.l
    i64 18, label %bb.m
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !5472, !nonnull !6, !noundef !6
  br label %_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5472, !nonnull !6, !noundef !6
  br label %_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !5472, !nonnull !6, !noundef !6
  br label %_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !5472, !nonnull !6, !noundef !6
  br label %_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !5472, !nonnull !6, !noundef !6
  br label %_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !5472, !nonnull !6, !noundef !6
  br label %_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.i:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !5472, !nonnull !6, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !5472, !nonnull !6, !align !20, !noundef !6
  br label %_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.j:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !5472, !nonnull !6, !noundef !6
  br label %_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.k:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !5472, !nonnull !6, !noundef !6
  br label %_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.l:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !5472, !noundef !6
  %.not.i = icmp eq i64 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !5472, !nonnull !6
  %.sroa.0.1.i = select i1 %.not.i, ptr null, ptr %i.z
  br label %_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

bb.m:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !5472, !nonnull !6, !noundef !6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  br label %_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit

_RNvXsb_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.sroa.21.0.i = phi ptr [ @718, %bb.b ], [ @720, %bb.c ], [ @722, %bb.d ], [ @34, %bb.e ], [ @724, %bb.f ], [ @291, %bb.m ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ @726, %bb.g ], [ undef, %bb.a ], [ @663, %bb.h ], [ undef, %bb.a ], [ %i.r, %bb.i ], [ @291, %bb.j ], [ undef, %bb.a ], [ @291, %bb.k ], [ @291, %bb.l ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.ac, %bb.m ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.l, %bb.g ], [ null, %bb.a ], [ %i.n, %bb.h ], [ null, %bb.a ], [ %i.p, %bb.i ], [ %i.t, %bb.j ], [ null, %bb.a ], [ %i.v, %bb.k ], [ %.sroa.0.1.i, %bb.l ], [ null, %bb.a ]
  %i.ad = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ae = insertvalue { ptr, ptr } %i.ad, ptr %.sroa.21.0.i, 1
  ret { ptr, ptr } %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @926, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @927, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @51, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @928, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs5CfTnloWo2c_10serde_core2de5value5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs5CfTnloWo2c_10serde_core2de5value5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs5CfTnloWo2c_10serde_core2de5value5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @929, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode6NotEofNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode6NotEofNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode6NotEofNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode6NotEofNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @930, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsbakdBCgU4AF_16influxdb3_server(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @52, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @931, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_11descriptionCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @889, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_5causeCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_6sourceCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_7provideCsbakdBCgU4AF_16influxdb3_server(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @932, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsPDBpS1owJq_14http_body_util4fullINtB2_4FullNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE3newCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsPDBpS1owJq_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENCINvCs4dh2fNjPIep_13iox_http_util21bytes_to_request_bodyB1r_E0ENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsPDBpS1owJq_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENCINvCs4dh2fNjPIep_13iox_http_util21bytes_to_request_bodyB1r_E0ENtCshmaE5oGZBqQ_9http_body4Body13is_end_streamCsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsPDBpS1owJq_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENCINvCs4dh2fNjPIep_13iox_http_util21bytes_to_request_bodyB1r_E0ENtCshmaE5oGZBqQ_9http_body4Body9size_hintCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsPDBpS1owJq_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENCINvCs4dh2fNjPIep_13iox_http_util22bytes_to_response_bodyINtNtCscdodAO9FK5_5alloc3vec3VechEE0ENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsPDBpS1owJq_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENCINvCs4dh2fNjPIep_13iox_http_util22bytes_to_response_bodyINtNtCscdodAO9FK5_5alloc3vec3VechEE0ENtCshmaE5oGZBqQ_9http_body4Body13is_end_streamCsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsPDBpS1owJq_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENCINvCs4dh2fNjPIep_13iox_http_util22bytes_to_response_bodyINtNtCscdodAO9FK5_5alloc3vec3VechEE0ENtCshmaE5oGZBqQ_9http_body4Body9size_hintCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsPDBpS1owJq_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENCINvCs4dh2fNjPIep_13iox_http_util22bytes_to_response_bodyNtNtCscdodAO9FK5_5alloc6string6StringE0ENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsPDBpS1owJq_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENCINvCs4dh2fNjPIep_13iox_http_util22bytes_to_response_bodyNtNtCscdodAO9FK5_5alloc6string6StringE0ENtCshmaE5oGZBqQ_9http_body4Body13is_end_streamCsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsPDBpS1owJq_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENCINvCs4dh2fNjPIep_13iox_http_util22bytes_to_response_bodyNtNtCscdodAO9FK5_5alloc6string6StringE0ENtCshmaE5oGZBqQ_9http_body4Body9size_hintCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsPDBpS1owJq_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENCINvCs4dh2fNjPIep_13iox_http_util22bytes_to_response_bodyB1r_E0ENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsPDBpS1owJq_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENCINvCs4dh2fNjPIep_13iox_http_util22bytes_to_response_bodyB1r_E0ENtCshmaE5oGZBqQ_9http_body4Body13is_end_streamCsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsPDBpS1owJq_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENCINvCs4dh2fNjPIep_13iox_http_util22bytes_to_response_bodyB1r_E0ENtCshmaE5oGZBqQ_9http_body4Body9size_hintCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsPDBpS1owJq_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENCINvCs4dh2fNjPIep_13iox_http_util22bytes_to_response_bodyReE0ENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsPDBpS1owJq_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENCINvCs4dh2fNjPIep_13iox_http_util22bytes_to_response_bodyReE0ENtCshmaE5oGZBqQ_9http_body4Body13is_end_streamCsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsPDBpS1owJq_14http_body_util11combinators7map_errINtB4_6MapErrINtNtB8_4full4FullNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENCINvCs4dh2fNjPIep_13iox_http_util22bytes_to_response_bodyReE0ENtCshmaE5oGZBqQ_9http_body4Body9size_hintCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCsPDBpS1owJq_14http_body_util6streamINtB4_10StreamBodyINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream6MapErrINtB11_5MapOkIB1Y_INtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3Z_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB5n_5FrameB3Z_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB2f_B3Z_NtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE0EENtB5p_4Body10poll_frameCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(144), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCsPDBpS1owJq_14http_body_util6streamINtB4_10StreamBodyINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream6MapErrINtB11_5MapOkIB1Y_INtNtB13_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body00ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3V_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB5j_5FrameB3V_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB2f_B3V_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE0EENtB5l_4Body10poll_frameB2L_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCsPDBpS1owJq_14http_body_util6streamINtB4_10StreamBodyINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream6MapErrINtB11_5MapOkIB1Y_INtNtB13_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0s0_0ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3Y_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB5m_5FrameB3Y_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB2f_B3Y_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE0EENtB5o_4Body10poll_frameB2L_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCsPDBpS1owJq_14http_body_util6streamINtB4_10StreamBodyINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream6MapErrINtB11_5MapOkIB1Y_INtNtB13_7poll_fn6PollFnNCNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0s_0ENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3X_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB5l_5FrameB3X_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB2f_B3X_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE0EENtB5n_4Body10poll_frameB2L_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCsPDBpS1owJq_14http_body_util6streamINtB4_10StreamBodyINtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream6MapErrINtB11_5MapOkIB1Y_INtNtNtB13_6stream3map3MapINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2K_6marker4SendEL_EENcNtINtNtB2K_6result6ResultB4A_NtNtB2K_7convert10InfallibleE2Ok0ENvYB4A_INtB65_4IntoB4A_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB78_5FrameB4A_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB2f_B4A_B63_E0EENtB7a_4Body10poll_frameCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtCs2LSxCQSJWSD_5hyper5errorNtB2_5Error8new_user(i8 noundef range(i8 0, 9)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtCs2LSxCQSJWSD_5hyper5errorNtB2_5Error3new(i8 noundef range(i8 0, 12), i8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error17object_drop_frontNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropINtNtB4_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedINtNtB4_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error17object_drop_frontNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropINtNtB4_7wrapper12MessageErrorReEECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedINtNtB4_7wrapper12MessageErrorReEECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error17object_drop_frontReECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropINtB2_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error17context_drop_restNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropINtB2_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorEECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorEECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error17context_drop_restNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropINtB2_12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorEECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorEECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error17context_drop_restReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropINtB2_12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error17context_drop_restReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs2_NtCs2AWtUsOyxgP_3std9backtraceNtB5_9Backtrace7capture(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error11object_dropINtB2_12ContextErrorReNtB4_5ErrorEECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsaIKnL9StOw_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtB4_5ErrorEECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCsaIKnL9StOw_6anyhow5error22context_chain_downcastReECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaIKnL9StOw_6anyhow5error23context_chain_drop_restReECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvNtCsaIKnL9StOw_6anyhow5error17context_backtraceReECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

end_hunk_0
