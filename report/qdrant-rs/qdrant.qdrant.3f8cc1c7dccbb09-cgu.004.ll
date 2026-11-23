Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.004?download=true
inline.NumInlined: 20024
inline.NumDeleted: 7135
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtB5_14FactoryWrapperINtNtB7_10fn_service16FnServiceFactoryNCINvNtCsgoPClq0H8JF_9actix_web7handler15handler_serviceNvNvXsl_NtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_apiNtB2G_24recover_partial_snapshotNtNtB1L_7service18HttpServiceFactory8register24recover_partial_snapshotTNtNtB2K_4auth17ActixAccessManageINtNtB1L_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtB2I_19CollectionShardPathEINtNtB6T_5query5QueryNtB2G_22SnapshotUploadingParamEINtNtCsijgt8TR13iC_15actix_multipart4form13MultipartFormNtB2G_16SnapshottingFormEEE0NCNCB1G_00NtB42_14ServiceRequestNtB42_15ServiceResponseNtNtNtB1L_5error5error5ErroruEEINtB7_14ServiceFactoryBaq_E11new_serviceB2M_:bb.a
  %.sroa.01.0.insert.ext = zext nneg i8 %i.a to i24
  store i24 %.sroa.01.0.insert.ext, ptr %i.b, align 1
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @943, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtB5_14FactoryWrapperINtNtB7_10fn_service16FnServiceFactoryNCINvNtCsgoPClq0H8JF_9actix_web7handler15handler_serviceNvNvXso_NtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_apiNtB2G_29recover_partial_snapshot_fromNtNtB1L_7service18HttpServiceFactory8register29recover_partial_snapshot_fromTINtNtB1L_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEIB5l_NtNtNtB2M_6common11http_client10HttpClientEIB5l_NtNtB2M_8settings13ServiceConfigEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtB2I_19CollectionShardPathEINtNtNtB1L_5types5query5QueryNtB2G_17SnapshottingParamEINtNtB9b_4json4JsonNtB2G_26PartialSnapshotRecoverFromENtNtB2K_4auth9ActixAuthEE0NCNCB1G_00NtB47_14ServiceRequestNtB47_15ServiceResponseNtNtNtB1L_5error5error5ErroruEEINtB7_14ServiceFactoryBbr_E11new_serviceB2M_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i8 @_RNvXs5_NtCs519D4kX01I1_13actix_service10fn_serviceINtB5_16FnServiceFactoryNCINvNtCsgoPClq0H8JF_9actix_web7handler15handler_serviceNvNvXso_NtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_apiNtB2c_29recover_partial_snapshot_fromNtNtB1h_7service18HttpServiceFactory8register29recover_partial_snapshot_fromTINtNtB1h_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEIB4R_NtNtNtB2i_6common11http_client10HttpClientEIB4R_NtNtB2i_8settings13ServiceConfigEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtB2e_19CollectionShardPathEINtNtNtB1h_5types5query5QueryNtB2c_17SnapshottingParamEINtNtB8H_4json4JsonNtB2c_26PartialSnapshotRecoverFromENtNtB2g_4auth9ActixAuthEE0NCNCB1c_00NtB3D_14ServiceRequestNtB3D_15ServiceResponseNtNtNtB1h_5error5error5ErroruEINtB7_14ServiceFactoryBaX_E11new_serviceB2i_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.b = tail call noundef dereferenceable_or_null(3) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 14689) 3, i64 noundef range(i64 1, 9) 1) #24 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.noexc, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtBM_14FactoryWrapperINtNtBO_10fn_service16FnServiceFactoryNCINvNtCsgoPClq0H8JF_9actix_web7handler15handler_serviceNvNvXso_NtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_apiNtB3n_29recover_partial_snapshot_fromNtNtB2s_7service18HttpServiceFactory8register29recover_partial_snapshot_fromTINtNtB2s_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEIB62_NtNtNtB3t_6common11http_client10HttpClientEIB62_NtNtB3t_8settings13ServiceConfigEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtB3p_19CollectionShardPathEINtNtNtB2s_5types5query5QueryNtB3n_17SnapshottingParamEINtNtB9S_4json4JsonNtB3n_26PartialSnapshotRecoverFromENtNtB3r_4auth9ActixAuthEE0NCNCB2n_00NtB4O_14ServiceRequestNtB4O_15ServiceResponseNtNtNtB2s_5error5error5ErroruEEINtBO_14ServiceFactoryBc8_E11new_service0E3newB3t_.exit, !prof !25

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 3) #25
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtBM_14FactoryWrapperINtNtBO_10fn_service16FnServiceFactoryNCINvNtCsgoPClq0H8JF_9actix_web7handler15handler_serviceNvNvXso_NtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_apiNtB3n_29recover_partial_snapshot_fromNtNtB2s_7service18HttpServiceFactory8register29recover_partial_snapshot_fromTINtNtB2s_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEIB62_NtNtNtB3t_6common11http_client10HttpClientEIB62_NtNtB3t_8settings13ServiceConfigEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtB3p_19CollectionShardPathEINtNtNtB2s_5types5query5QueryNtB3n_17SnapshottingParamEINtNtB9S_4json4JsonNtB3n_26PartialSnapshotRecoverFromENtNtB3r_4auth9ActixAuthEE0NCNCB2n_00NtB4O_14ServiceRequestNtB4O_15ServiceResponseNtNtNtB2s_5error5error5ErroruEEINtBO_14ServiceFactoryBc8_E11new_service0E3newB3t_.exit: ; preds = %bb.a
  %.sroa.01.0.insert.ext = zext nneg i8 %i.a to i24
  store i24 %.sroa.01.0.insert.ext, ptr %i.b, align 1
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @944, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtB5_14FactoryWrapperINtNtB7_10fn_service16FnServiceFactoryNCINvNtCsgoPClq0H8JF_9actix_web7handler15handler_serviceNvNvXsp_NtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_apiNtB2G_29get_partial_snapshot_manifestNtNtB1L_7service18HttpServiceFactory8register29get_partial_snapshot_manifestTINtNtB1L_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtB2I_19CollectionShardPathENtNtB2K_4auth9ActixAuthEE0NCNCB1G_00NtB47_14ServiceRequestNtB47_15ServiceResponseNtNtNtB1L_5error5error5ErroruEEINtB7_14ServiceFactoryB8i_E11new_serviceB2M_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i8 @_RNvXs5_NtCs519D4kX01I1_13actix_service10fn_serviceINtB5_16FnServiceFactoryNCINvNtCsgoPClq0H8JF_9actix_web7handler15handler_serviceNvNvXsp_NtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_apiNtB2c_29get_partial_snapshot_manifestNtNtB1h_7service18HttpServiceFactory8register29get_partial_snapshot_manifestTINtNtB1h_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtB2e_19CollectionShardPathENtNtB2g_4auth9ActixAuthEE0NCNCB1c_00NtB3D_14ServiceRequestNtB3D_15ServiceResponseNtNtNtB1h_5error5error5ErroruEINtB7_14ServiceFactoryB7O_E11new_serviceB2i_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.b = tail call noundef dereferenceable_or_null(3) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 14689) 3, i64 noundef range(i64 1, 9) 1) #24 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.noexc, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtBM_14FactoryWrapperINtNtBO_10fn_service16FnServiceFactoryNCINvNtCsgoPClq0H8JF_9actix_web7handler15handler_serviceNvNvXsp_NtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_apiNtB3n_29get_partial_snapshot_manifestNtNtB2s_7service18HttpServiceFactory8register29get_partial_snapshot_manifestTINtNtB2s_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtB3p_19CollectionShardPathENtNtB3r_4auth9ActixAuthEE0NCNCB2n_00NtB4O_14ServiceRequestNtB4O_15ServiceResponseNtNtNtB2s_5error5error5ErroruEEINtBO_14ServiceFactoryB8Z_E11new_service0E3newB3t_.exit, !prof !25

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 3) #25
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtBM_14FactoryWrapperINtNtBO_10fn_service16FnServiceFactoryNCINvNtCsgoPClq0H8JF_9actix_web7handler15handler_serviceNvNvXsp_NtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_apiNtB3n_29get_partial_snapshot_manifestNtNtB2s_7service18HttpServiceFactory8register29get_partial_snapshot_manifestTINtNtB2s_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtB3p_19CollectionShardPathENtNtB3r_4auth9ActixAuthEE0NCNCB2n_00NtB4O_14ServiceRequestNtB4O_15ServiceResponseNtNtNtB2s_5error5error5ErroruEEINtBO_14ServiceFactoryB8Z_E11new_service0E3newB3t_.exit: ; preds = %bb.a
  %.sroa.01.0.insert.ext = zext nneg i8 %i.a to i24
  store i24 %.sroa.01.0.insert.ext, ptr %i.b, align 1
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @945, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtB5_14FactoryWrapperINtNtB7_10fn_service16FnServiceFactoryNCNCNvXNtCsgoPClq0H8JF_9actix_web11app_serviceINtB1L_7AppInitINtNtB7_9transform14ApplyTransformNtNtNtB1N_10middleware8compress8CompressNtB1L_8AppEntryNtNtB1N_7service14ServiceRequestEINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB4I_8encoding7encoder7EncoderNtNtB4G_5boxed7BoxBodyEEEINtB7_14ServiceFactoryINtNtNtB4I_8requests7request7RequestINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB7w_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtB4I_5error12PayloadErrorEEL_EEEE11new_service00NCNCB1G_00B44_NtB46_15ServiceResponseNtNtNtB1N_5error5error5ErroruEEIB6w_B44_E11new_serviceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i8 @_RNvXs5_NtCs519D4kX01I1_13actix_service10fn_serviceINtB5_16FnServiceFactoryNCNCNvXNtCsgoPClq0H8JF_9actix_web11app_serviceINtB1h_7AppInitINtNtB7_9transform14ApplyTransformNtNtNtB1j_10middleware8compress8CompressNtB1h_8AppEntryNtNtB1j_7service14ServiceRequestEINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB4e_8encoding7encoder7EncoderNtNtB4c_5boxed7BoxBodyEEEINtB7_14ServiceFactoryINtNtNtB4e_8requests7request7RequestINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB72_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtB4e_5error12PayloadErrorEEL_EEEE11new_service00NCNCB1c_00B3A_NtB3C_15ServiceResponseNtNtNtB1j_5error5error5ErroruEIB62_B3A_E11new_serviceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.b = tail call noundef dereferenceable_or_null(3) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 14689) 3, i64 noundef range(i64 1, 9) 1) #24 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.noexc, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtBM_14FactoryWrapperINtNtBO_10fn_service16FnServiceFactoryNCNCNvXNtCsgoPClq0H8JF_9actix_web11app_serviceINtB2s_7AppInitINtNtBO_9transform14ApplyTransformNtNtNtB2u_10middleware8compress8CompressNtB2s_8AppEntryNtNtB2u_7service14ServiceRequestEINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB5p_8encoding7encoder7EncoderNtNtB5n_5boxed7BoxBodyEEEINtBO_14ServiceFactoryINtNtNtB5p_8requests7request7RequestINtNtCskKLDkoKarTP_4core3pin3PinIBv_DNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB8d_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtB5p_5error12PayloadErrorEEL_EEEE11new_service00NCNCB2n_00B4L_NtB4N_15ServiceResponseNtNtNtB2u_5error5error5ErroruEEIB7d_B4L_E11new_service0E3newCsl8OoimOLbh_6qdrant.exit, !prof !25

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 3) #25
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtBM_14FactoryWrapperINtNtBO_10fn_service16FnServiceFactoryNCNCNvXNtCsgoPClq0H8JF_9actix_web11app_serviceINtB2s_7AppInitINtNtBO_9transform14ApplyTransformNtNtNtB2u_10middleware8compress8CompressNtB2s_8AppEntryNtNtB2u_7service14ServiceRequestEINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyINtNtNtB5p_8encoding7encoder7EncoderNtNtB5n_5boxed7BoxBodyEEEINtBO_14ServiceFactoryINtNtNtB5p_8requests7request7RequestINtNtCskKLDkoKarTP_4core3pin3PinIBv_DNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB8d_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtB5p_5error12PayloadErrorEEL_EEEE11new_service00NCNCB2n_00B4L_NtB4N_15ServiceResponseNtNtNtB2u_5error5error5ErroruEEIB7d_B4L_E11new_service0E3newCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  %.sroa.01.0.insert.ext = zext nneg i8 %i.a to i24
  store i24 %.sroa.01.0.insert.ext, ptr %i.b, align 1
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @946, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtB5_14FactoryWrapperINtNtB7_10fn_service16FnServiceFactoryNCNCNvXNtCsgoPClq0H8JF_9actix_web11app_serviceINtB1L_7AppInitINtNtB7_9transform14ApplyTransformNtNtNtCsl8OoimOLbh_6qdrant5actix15actix_telemetry23ActixTelemetryTransformIB2E_NtNtNtB1N_10middleware6logger6LoggerIB2E_INtNtB4w_9condition9ConditionNtNtCsbEyXj2whuwq_10actix_cors7builder4CorsEIB2E_NtNtB4w_9normalize13NormalizePathIB2E_INtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition9ConditionNtNtB3f_4auth13AuthTransformEIB2E_NtNtB4w_8compress8CompressNtB1L_8AppEntryNtNtB1N_7service14ServiceRequestEB9l_EB9l_EB9l_EB9l_EB9l_EINtB4u_9StreamLogINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIBaz_IBaz_IBaz_INtNtNtBaF_8encoding7encoder7EncoderNtNtBaD_5boxed7BoxBodyEEBbD_EEBby_EEEINtB7_14ServiceFactoryINtNtNtBaF_8requests7request7RequestINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtBdU_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtBaF_5error12PayloadErrorEEL_EEEE11new_service00NCNCB1G_00B9l_NtB9n_15ServiceResponseNtNtNtB1N_5error5error5ErroruEEIBcU_B9l_E11new_serviceB3h_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i8 @_RNvXs5_NtCs519D4kX01I1_13actix_service10fn_serviceINtB5_16FnServiceFactoryNCNCNvXNtCsgoPClq0H8JF_9actix_web11app_serviceINtB1h_7AppInitINtNtB7_9transform14ApplyTransformNtNtNtCsl8OoimOLbh_6qdrant5actix15actix_telemetry23ActixTelemetryTransformIB2a_NtNtNtB1j_10middleware6logger6LoggerIB2a_INtNtB42_9condition9ConditionNtNtCsbEyXj2whuwq_10actix_cors7builder4CorsEIB2a_NtNtB42_9normalize13NormalizePathIB2a_INtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition9ConditionNtNtB2L_4auth13AuthTransformEIB2a_NtNtB42_8compress8CompressNtB1h_8AppEntryNtNtB1j_7service14ServiceRequestEB8R_EB8R_EB8R_EB8R_EB8R_EINtB40_9StreamLogINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIBa5_IBa5_IBa5_INtNtNtBab_8encoding7encoder7EncoderNtNtBa9_5boxed7BoxBodyEEBb9_EEBb4_EEEINtB7_14ServiceFactoryINtNtNtBab_8requests7request7RequestINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtBdq_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtBab_5error12PayloadErrorEEL_EEEE11new_service00NCNCB1c_00B8R_NtB8T_15ServiceResponseNtNtNtB1j_5error5error5ErroruEIBcq_B8R_E11new_serviceB2N_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.b = tail call noundef dereferenceable_or_null(3) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 14689) 3, i64 noundef range(i64 1, 9) 1) #24 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.noexc, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtBM_14FactoryWrapperINtNtBO_10fn_service16FnServiceFactoryNCNCNvXNtCsgoPClq0H8JF_9actix_web11app_serviceINtB2s_7AppInitINtNtBO_9transform14ApplyTransformNtNtNtCsl8OoimOLbh_6qdrant5actix15actix_telemetry23ActixTelemetryTransformIB3l_NtNtNtB2u_10middleware6logger6LoggerIB3l_INtNtB5d_9condition9ConditionNtNtCsbEyXj2whuwq_10actix_cors7builder4CorsEIB3l_NtNtB5d_9normalize13NormalizePathIB3l_INtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition9ConditionNtNtB3W_4auth13AuthTransformEIB3l_NtNtB5d_8compress8CompressNtB2s_8AppEntryNtNtB2u_7service14ServiceRequestEBa2_EBa2_EBa2_EBa2_EBa2_EINtB5b_9StreamLogINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIBbg_IBbg_IBbg_INtNtNtBbm_8encoding7encoder7EncoderNtNtBbk_5boxed7BoxBodyEEBck_EEBcf_EEEINtBO_14ServiceFactoryINtNtNtBbm_8requests7request7RequestINtNtCskKLDkoKarTP_4core3pin3PinIBv_DNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtBeB_6result6ResultNtNtCs14k, !prof !25

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 3) #25
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtBM_14FactoryWrapperINtNtBO_10fn_service16FnServiceFactoryNCNCNvXNtCsgoPClq0H8JF_9actix_web11app_serviceINtB2s_7AppInitINtNtBO_9transform14ApplyTransformNtNtNtCsl8OoimOLbh_6qdrant5actix15actix_telemetry23ActixTelemetryTransformIB3l_NtNtNtB2u_10middleware6logger6LoggerIB3l_INtNtB5d_9condition9ConditionNtNtCsbEyXj2whuwq_10actix_cors7builder4CorsEIB3l_NtNtB5d_9normalize13NormalizePathIB3l_INtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition9ConditionNtNtB3W_4auth13AuthTransformEIB3l_NtNtB5d_8compress8CompressNtB2s_8AppEntryNtNtB2u_7service14ServiceRequestEBa2_EBa2_EBa2_EBa2_EBa2_EINtB5b_9StreamLogINtNtNtCs6EFb6a2W5dE_10actix_http4body6either10EitherBodyIBbg_IBbg_IBbg_INtNtNtBbm_8encoding7encoder7EncoderNtNtBbk_5boxed7BoxBodyEEBck_EEBcf_EEEINtBO_14ServiceFactoryINtNtNtBbm_8requests7request7RequestINtNtCskKLDkoKarTP_4core3pin3PinIBv_DNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtBeB_6result6ResultNtNtCs14k: ; preds = %bb.a
  %.sroa.01.0.insert.ext = zext nneg i8 %i.a to i24
  store i24 %.sroa.01.0.insert.ext, ptr %i.b, align 1
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @947, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtB5_14FactoryWrapperINtNtB7_5apply12ApplyFactoryINtNtB7_9transform14ApplyTransformNtNtNtCsgoPClq0H8JF_9actix_web10middleware15default_headers14DefaultHeadersNtNtB28_5scope13ScopeEndpointNtNtB28_7service14ServiceRequestENCNvXs0_B3h_INtB3h_5ScopeB1u_ENtB3K_18HttpServiceFactory8registers1_0B3I_B3I_NtB3K_15ServiceResponseNtNtNtB28_5error5error5ErrorEEINtB7_14ServiceFactoryB3I_E11new_serviceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs3_NtCs519D4kX01I1_13actix_service5applyINtB5_12ApplyFactoryINtNtB7_9transform14ApplyTransformNtNtNtCsgoPClq0H8JF_9actix_web10middleware15default_headers14DefaultHeadersNtNtB1E_5scope13ScopeEndpointNtNtB1E_7service14ServiceRequestENCNvXs0_B2N_INtB2N_5ScopeB10_ENtB3g_18HttpServiceFactory8registers1_0B3e_B3e_NtB3g_15ServiceResponseNtNtNtB1E_5error5error5ErrorEINtB7_14ServiceFactoryB3e_E11new_serviceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i8 0, ptr %i.b, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !43924
  %i.c = tail call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 14689) 152, i64 noundef range(i64 1, 9) 8) #24, !noalias !43924 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtBM_14FactoryWrapperINtNtBO_5apply12ApplyFactoryINtNtBO_9transform14ApplyTransformNtNtNtCsgoPClq0H8JF_9actix_web10middleware15default_headers14DefaultHeadersNtNtB2P_5scope13ScopeEndpointNtNtB2P_7service14ServiceRequestENCNvXs0_B3Y_INtB3Y_5ScopeB2b_ENtB4r_18HttpServiceFactory8registers1_0B4p_B4p_NtB4r_15ServiceResponseNtNtNtB2P_5error5error5ErrorEEINtBO_14ServiceFactoryB4p_E11new_service0E3newCsl8OoimOLbh_6qdrant.exit, !prof !25

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #25
          to label %.noexc unwind label %common.ret.sink.split.i

.noexc:                                           ; preds = %bb.b
  unreachable

common.ret.sink.split.i:                          ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs519D4kX01I1_13actix_service5apply27ApplyServiceFactoryResponseINtNtBG_9transform14ApplyTransformNtNtNtCsgoPClq0H8JF_9actix_web10middleware15default_headers14DefaultHeadersNtNtB2m_5scope13ScopeEndpointNtNtB2m_7service14ServiceRequestENCNvXs0_B3v_INtB3v_5ScopeB1I_ENtB3Y_18HttpServiceFactory8registers1_0NCNCB4v_s1_00B3W_B3W_NtB3Y_15ServiceResponseNtNtNtB2m_5error5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(72) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtBJ_14FactoryWrapperINtNtBL_5apply12ApplyFactoryINtNtBL_9transform14ApplyTransformNtNtNtCsgoPClq0H8JF_9actix_web10middleware15default_headers14DefaultHeadersNtNtB2M_5scope13ScopeEndpointNtNtB2M_7service14ServiceRequestENCNvXs0_B3V_INtB3V_5ScopeB28_ENtB4o_18HttpServiceFactory8registers1_0B4m_B4m_NtB4o_15ServiceResponseNtNtNtB2M_5error5error5ErrorEEINtBL_14ServiceFactoryB4m_E11new_service0ECsl8OoimOLbh_6qdrant.exit unwind label %bb.c

bb.c:                                             ; preds = %common.ret.sink.split.i
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtBJ_14FactoryWrapperINtNtBL_5apply12ApplyFactoryINtNtBL_9transform14ApplyTransformNtNtNtCsgoPClq0H8JF_9actix_web10middleware15default_headers14DefaultHeadersNtNtB2M_5scope13ScopeEndpointNtNtB2M_7service14ServiceRequestENCNvXs0_B3V_INtB3V_5ScopeB28_ENtB4o_18HttpServiceFactory8registers1_0B4m_B4m_NtB4o_15ServiceResponseNtNtNtB2M_5error5error5ErrorEEINtBL_14ServiceFactoryB4m_E11new_service0ECsl8OoimOLbh_6qdrant.exit: ; preds = %common.ret.sink.split.i
  resume { ptr, i32 } %i.e

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtBM_14FactoryWrapperINtNtBO_5apply12ApplyFactoryINtNtBO_9transform14ApplyTransformNtNtNtCsgoPClq0H8JF_9actix_web10middleware15default_headers14DefaultHeadersNtNtB2P_5scope13ScopeEndpointNtNtB2P_7service14ServiceRequestENCNvXs0_B3Y_INtB3Y_5ScopeB2b_ENtB4r_18HttpServiceFactory8registers1_0B4p_B4p_NtB4r_15ServiceResponseNtNtNtB2P_5error5error5ErrorEEINtBO_14ServiceFactoryB4p_E11new_service0E3newCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.c, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr @948, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtB5_14FactoryWrapperINtNtB7_5apply12ApplyFactoryNtNtCsgoPClq0H8JF_9actix_web8resource16ResourceEndpointNCNvXs1_B1w_NtB1w_8ResourceNtNtB1y_7service18HttpServiceFactory8register0NtB2Q_14ServiceRequestB3y_NtB2Q_15ServiceResponseNtNtNtB1y_5error5error5ErrorEEINtB7_14ServiceFactoryB3y_E11new_serviceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs3_NtCs519D4kX01I1_13actix_service5applyINtB5_12ApplyFactoryNtNtCsgoPClq0H8JF_9actix_web8resource16ResourceEndpointNCNvXs1_B12_NtB12_8ResourceNtNtB14_7service18HttpServiceFactory8register0NtB2m_14ServiceRequestB34_NtB2m_15ServiceResponseNtNtNtB14_5error5error5ErrorEINtB7_14ServiceFactoryB34_E11new_serviceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.b, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !43927
  %i.c = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 14689) 72, i64 noundef range(i64 1, 9) 8) #24, !noalias !43927 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtBM_14FactoryWrapperINtNtBO_5apply12ApplyFactoryNtNtCsgoPClq0H8JF_9actix_web8resource16ResourceEndpointNCNvXs1_B2d_NtB2d_8ResourceNtNtB2f_7service18HttpServiceFactory8register0NtB3x_14ServiceRequestB4f_NtB3x_15ServiceResponseNtNtNtB2f_5error5error5ErrorEEINtBO_14ServiceFactoryB4f_E11new_service0E3newCsl8OoimOLbh_6qdrant.exit, !prof !25

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #25
          to label %.noexc unwind label %common.ret.sink.split.i

.noexc:                                           ; preds = %bb.b
  unreachable

common.ret.sink.split.i:                          ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs519D4kX01I1_13actix_service5apply27ApplyServiceFactoryResponseNtNtCsgoPClq0H8JF_9actix_web8resource16ResourceEndpointNCNvXs1_B1K_NtB1K_8ResourceNtNtB1M_7service18HttpServiceFactory8register0NCNCB2D_00NtB34_14ServiceRequestB3W_NtB34_15ServiceResponseNtNtNtB1M_5error5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtBJ_14FactoryWrapperINtNtBL_5apply12ApplyFactoryNtNtCsgoPClq0H8JF_9actix_web8resource16ResourceEndpointNCNvXs1_B2a_NtB2a_8ResourceNtNtB2c_7service18HttpServiceFactory8register0NtB3u_14ServiceRequestB4c_NtB3u_15ServiceResponseNtNtNtB2c_5error5error5ErrorEEINtBL_14ServiceFactoryB4c_E11new_service0ECsl8OoimOLbh_6qdrant.exit unwind label %bb.c

bb.c:                                             ; preds = %common.ret.sink.split.i
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtBJ_14FactoryWrapperINtNtBL_5apply12ApplyFactoryNtNtCsgoPClq0H8JF_9actix_web8resource16ResourceEndpointNCNvXs1_B2a_NtB2a_8ResourceNtNtB2c_7service18HttpServiceFactory8register0NtB3u_14ServiceRequestB4c_NtB3u_15ServiceResponseNtNtNtB2c_5error5error5ErrorEEINtBL_14ServiceFactoryB4c_E11new_service0ECsl8OoimOLbh_6qdrant.exit: ; preds = %common.ret.sink.split.i
  resume { ptr, i32 } %i.e

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs1_NtCs519D4kX01I1_13actix_service5boxedINtBM_14FactoryWrapperINtNtBO_5apply12ApplyFactoryNtNtCsgoPClq0H8JF_9actix_web8resource16ResourceEndpointNCNvXs1_B2d_NtB2d_8ResourceNtNtB2f_7service18HttpServiceFactory8register0NtB3x_14ServiceRequestB4f_NtB3x_15ServiceResponseNtNtNtB2f_5error5error5ErrorEEINtBO_14ServiceFactoryB4f_E11new_service0E3newCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr @949, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca i64, align 8                  ; 5 uses
  %.sroa.6 = alloca i64, align 8                  ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43937)
  %i.b = load i64, ptr %1, align 8, !range !28, !alias.scope !43937, !noundef !24
  %i.c = trunc nuw i64 %i.b to i1                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink.i.sroa.gep16 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !43937, !noundef !24
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !43937, !noundef !24
  %.not.i = icmp sgt i8 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !43937 ; 5 uses
  %.val21.i = load i64, ptr %i.h, align 8, !alias.scope !43937 ; 2 uses
  br i1 %.not.i, label %2, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i

2:                                                ; preds = %bb.c
  %.not.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i, label %bb.d

bb.d:                                             ; preds = %2
  %i.i = getelementptr inbounds i8, ptr %.val.i, i64 -16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !43938
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i, !prof !30

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i, i64 noundef %.val21.i) #25, !noalias !43938
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.c, %bb.d, %2
  %.sroa.06.0.i = phi ptr [ %.val.i, %bb.d ], [ inttoptr (i64 16 to ptr), %2 ], [ %.val.i, %bb.c ]
  store ptr %.sroa.06.0.i, ptr %.sink.i.sroa.gep16, align 8, !alias.scope !43936
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.b, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i ], [ %.sink.i.sroa.gep16, %bb.b ]
  %.sroa.58.0.sink.i = phi i64 [ %.val21.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i ], [ %i.e, %bb.b ]
  %i.l = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i ], [ 1, %bb.b ]
  store i64 %.sroa.58.0.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !43936
  store i64 %i.l, ptr %i.a, align 8, !alias.scope !43936
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43940)
  %i.n = load i64, ptr %i.m, align 8, !range !28, !alias.scope !43940, !noundef !24
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !43940, !noundef !24
  br label %bb.m

bb.g:                                             ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !43940, !noundef !24
  %.not.i1 = icmp sgt i8 %i.s, -1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i11 = load ptr, ptr %i.p, align 8, !alias.scope !43940 ; 5 uses
  %.val21.i12 = load i64, ptr %i.t, align 8, !alias.scope !43940 ; 2 uses
  br i1 %.not.i1, label %bb.h, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i13 = icmp eq ptr %.val.i11, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds i8, ptr %.val.i11, i64 -16
  %i.v = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !43941
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.j, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4, !prof !30

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11, i64 noundef %.val21.i12) #25
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.j
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4: ; preds = %bb.g, %bb.i, %bb.h
  %.sroa.06.0.i6 = phi ptr [ %.val.i11, %bb.i ], [ inttoptr (i64 16 to ptr), %bb.h ], [ %.val.i11, %bb.g ]
  %i.x = ptrtoint ptr %.sroa.06.0.i6 to i64
  store i64 %i.x, ptr %.sroa.4, align 8, !alias.scope !43939
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !43942
  %.not.i.i.i.i = icmp slt i8 %i.aa, 0
  %or.cond.i.not = select i1 %i.c, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit unwind label %bb.n

bb.m:                                             ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4, %bb.f
  %.sink.i7.sroa.phi = phi ptr [ %.sroa.6, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4 ], [ %.sroa.4, %bb.f ]
  %.sroa.58.0.sink.i8 = phi i64 [ %.val21.i12, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4 ], [ %i.q, %bb.f ]
  %storemerge.i9 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4 ], [ 1, %bb.f ]
  store i64 %.sroa.58.0.sink.i8, ptr %.sink.i7.sroa.phi, align 8, !alias.scope !43939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %storemerge.i9, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload = load i64, ptr %.sroa.4, align 8
  store i64 %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload = load i64, ptr %.sroa.6, align 8
  store i64 %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.n:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs2_NtNtCsl8OoimOLbh_6qdrant7tracing6configNtB5_12LoggerConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i1 = alloca [40 x i8], align 8         ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [80 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43950)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !43951
  %i.i = load i64, ptr %i.h, align 8, !range !39, !alias.scope !43950, !noundef !24
  %.not.i = icmp eq i64 %i.i, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.h), !noalias !43949
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.f, align 8, !noalias !43951
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !43950, !noundef !24
  %.not10.i = icmp eq ptr %i.k, null
  br i1 %.not10.i, label %_RNvXs_NtNtCsl8OoimOLbh_6qdrant7tracing7defaultNtB4_6ConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !43951
  invoke void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBQ_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j)
          to label %bb.g unwind label %bb.f, !noalias !43949

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #26
          to label %common.resume unwind label %bb.h, !noalias !43949

bb.g:                                             ; preds = %bb.e
  %.sroa.06.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !43951
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx.i, i64 40, i1 false), !noalias !43951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !43951
  br label %_RNvXs_NtNtCsl8OoimOLbh_6qdrant7tracing7defaultNtB4_6ConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !43949
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCsl8OoimOLbh_6qdrant7tracing7defaultNtB4_6ConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.d, %bb.g
  %.sroa.0.0.i = phi ptr [ %.sroa.06.0.copyload.i, %bb.g ], [ null, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.o = load i8, ptr %i.n, align 8, !range !27, !alias.scope !43950, !noundef !24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 193
  %i.q = load i8, ptr %i.p, align 1, !range !105, !alias.scope !43950, !noundef !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !43950
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.0.0.i, ptr %i.r, align 8, !alias.scope !43949
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false), !noalias !43950
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i8 %i.o, ptr %i.s, align 8, !alias.scope !43949
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 73
  store i8 %i.q, ptr %i.t, align 1, !alias.scope !43949
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !43951
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43952)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.v = load i8, ptr %i.u, align 8, !range !27, !alias.scope !43952, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !43953
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !range !39, !alias.scope !43952, !noundef !24
  %.not11.i = icmp eq i64 %i.x, -1
  br i1 %.not11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvXs_NtNtCsl8OoimOLbh_6qdrant7tracing7defaultNtB4_6ConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %.noexc unwind label %bb.u

bb.j:                                             ; preds = %_RNvXs_NtNtCsl8OoimOLbh_6qdrant7tracing7defaultNtB4_6ConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  store i64 -1, ptr %i.d, align 8, !noalias !43953
  br label %.noexc

.noexc:                                           ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !43953
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !range !39, !alias.scope !43952, !noundef !24
  %.not12.i = icmp eq i64 %i.z, -1
  br i1 %.not12.i, label %bb.l, label %bb.k
end_hunk_0
begin_hunk_1_@_RNvXs7_NtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_opsNtB5_19ConsensusOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone:bb.a
    i64 2, label %bb.dt
    i64 3, label %bb.du
    i64 4, label %bb.dv
    i64 5, label %bb.dw
  ]

bb.dr:                                            ; preds = %.noexc5.i
  %i.mn = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.mp = load i32, ptr %i.mo, align 8, !alias.scope !44204, !noundef !24
  %i.mq = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.mr = load i32, ptr %i.mq, align 8, !range !113, !alias.scope !44204, !noundef !24 ; 2 uses
  %i.ms = trunc nuw i32 %i.mr to i1
  %i.mt = getelementptr inbounds nuw i8, ptr %.val, i64 124
  %i.mu = load i32, ptr %i.mt, align 4, !alias.scope !44204
  %.sroa.524.0.i.i.i.i = select i1 %i.ms, i32 %i.mu, i32 undef
  %i.mv = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.mw = load <2 x i64>, ptr %i.mv, align 8, !alias.scope !44204
  %i.mx = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %i.my = load i8, ptr %i.mx, align 4, !range !26, !alias.scope !44204, !noundef !24
  %i.mz = getelementptr inbounds nuw i8, ptr %.val, i64 149
  %i.na = load i8, ptr %i.mz, align 1, !range !116, !alias.scope !44204, !noundef !24
  %i.nb = load i64, ptr %i.mn, align 8, !range !40, !alias.scope !44204, !noundef !24
  %.not31.i.i.i.i = icmp eq i64 %i.nb, -2
  br i1 %.not31.i.i.i.i, label %bb.dy, label %bb.dx

bb.ds:                                            ; preds = %.noexc5.i
  %i.nc = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.nd = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ne = load i32, ptr %i.nd, align 8, !alias.scope !44204, !noundef !24
  %i.nf = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ng = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.nh = load i8, ptr %i.ng, align 4, !range !35, !alias.scope !44204, !noundef !24
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.nj = load <2 x i32>, ptr %i.nc, align 8, !alias.scope !44204
  store <2 x i32> %i.nj, ptr %i.ni, align 8, !alias.scope !44202, !noalias !44164
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.nk = load <2 x i64>, ptr %i.nf, align 8, !alias.scope !44204
  store <2 x i64> %i.nk, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44202, !noalias !44164
  %.sroa.75.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i32 %i.ne, ptr %.sroa.75.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44202, !noalias !44164
  %.sroa.86.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  store i8 %i.nh, ptr %.sroa.86.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44202, !noalias !44164
  br label %.noexc25.i.i.i

bb.dt:                                            ; preds = %.noexc5.i
  %i.nl = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.nn = load i32, ptr %i.nm, align 8, !alias.scope !44204, !noundef !24
  %i.no = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.np = load i32, ptr %i.no, align 8, !range !113, !alias.scope !44204, !noundef !24 ; 2 uses
  %i.nq = trunc nuw i32 %i.np to i1
  %i.nr = getelementptr inbounds nuw i8, ptr %.val, i64 124
  %i.ns = load i32, ptr %i.nr, align 4, !alias.scope !44204
  %.sroa.518.0.i.i.i.i = select i1 %i.nq, i32 %i.ns, i32 undef
  %i.nt = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.nu = load <2 x i64>, ptr %i.nt, align 8, !alias.scope !44204
  %i.nv = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %i.nw = load i8, ptr %i.nv, align 4, !range !26, !alias.scope !44204, !noundef !24
  %i.nx = getelementptr inbounds nuw i8, ptr %.val, i64 149
  %i.ny = load i8, ptr %i.nx, align 1, !range !116, !alias.scope !44204, !noundef !24
  %i.nz = load i64, ptr %i.nl, align 8, !range !40, !alias.scope !44204, !noundef !24
  %.not29.i.i.i.i = icmp eq i64 %i.nz, -2
  br i1 %.not29.i.i.i.i, label %bb.ea, label %bb.dz

bb.du:                                            ; preds = %.noexc5.i
  %i.oa = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ob, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.oa, i64 32, i1 false), !alias.scope !44205, !noalias !44149
  br label %.noexc25.i.i.i

bb.dv:                                            ; preds = %.noexc5.i
  %i.oc = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.od = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.od, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.oc, i64 32, i1 false), !alias.scope !44205, !noalias !44149
  br label %.noexc25.i.i.i

bb.dw:                                            ; preds = %.noexc5.i
  %i.oe = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.of = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.og = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.og, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.of, i64 32, i1 false), !alias.scope !44205, !noalias !44149
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.oh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oe)
          to label %.noexc25.i.i.i unwind label %bb.fv, !noalias !44149

bb.dx:                                            ; preds = %bb.dr
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.mn) #30
          to label %.noexc26.i.i.i unwind label %bb.fv, !noalias !44149

.noexc26.i.i.i:                                   ; preds = %bb.dx
  %.sroa.026.0.copyload.i.i.i.i = load i64, ptr %i.s, align 8, !noalias !44206
  br label %bb.dy

bb.dy:                                            ; preds = %.noexc26.i.i.i, %bb.dr
  %.sroa.026.0.i.i.i.i = phi i64 [ %.sroa.026.0.copyload.i.i.i.i, %.noexc26.i.i.i ], [ -2, %bb.dr ]
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %.sroa.026.0.i.i.i.i, ptr %i.oi, align 8, !alias.scope !44202, !noalias !44164
  %.sroa.0.sroa.4.0..sroa_idx.i20.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.sroa.4.0..sroa_idx.i20.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.ml, i64 96, i1 false), !noalias !44207
  %.sroa.4.0..sroa_idx.i21.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  store i32 %i.mr, ptr %.sroa.4.0..sroa_idx.i21.i.i.i, align 8, !alias.scope !44202, !noalias !44164
  %.sroa.5.0..sroa_idx.i22.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 116
  store i32 %.sroa.524.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i22.i.i.i, align 4, !alias.scope !44202, !noalias !44164
  %.sroa.6.0..sroa_idx.i23.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  store <2 x i64> %i.mw, ptr %.sroa.6.0..sroa_idx.i23.i.i.i, align 8, !alias.scope !44202, !noalias !44164
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 136
  store i32 %i.mp, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44202, !noalias !44164
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 140
  store i8 %i.my, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44202, !noalias !44164
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 141
  store i8 %i.na, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 1, !alias.scope !44202, !noalias !44164
  br label %.noexc25.i.i.i

bb.dz:                                            ; preds = %bb.dt
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.nl) #30
          to label %.noexc27.i.i.i unwind label %bb.fv, !noalias !44149

.noexc27.i.i.i:                                   ; preds = %bb.dz
  %.sroa.020.0.copyload.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !44206
  br label %bb.ea

bb.ea:                                            ; preds = %.noexc27.i.i.i, %bb.dt
  %.sroa.020.0.i.i.i.i = phi i64 [ %.sroa.020.0.copyload.i.i.i.i, %.noexc27.i.i.i ], [ -2, %bb.dt ]
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %.sroa.020.0.i.i.i.i, ptr %i.oj, align 8, !alias.scope !44202, !noalias !44164
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.08.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.mk, i64 96, i1 false), !noalias !44207
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  store i32 %i.np, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44202, !noalias !44164
  %.sroa.510.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 116
  store i32 %.sroa.518.0.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44202, !noalias !44164
  %.sroa.611.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  store <2 x i64> %i.nu, ptr %.sroa.611.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44202, !noalias !44164
  %.sroa.813.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 136
  store i32 %i.nn, ptr %.sroa.813.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44202, !noalias !44164
  %.sroa.914.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 140
  store i8 %i.nw, ptr %.sroa.914.0..sroa_idx.i.i.i.i, align 4, !alias.scope !44202, !noalias !44164
  %.sroa.1015.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 141
  store i8 %i.ny, ptr %.sroa.1015.0..sroa_idx.i.i.i.i, align 1, !alias.scope !44202, !noalias !44164
  br label %.noexc25.i.i.i

bb.eb:                                            ; preds = %bb.c
  %i.ok = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !44164
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44209)
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ok)
          to label %.noexc6.i unwind label %bb.fw

.noexc6.i:                                        ; preds = %bb.eb
  %i.ol = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.om = load i32, ptr %i.ol, align 8, !alias.scope !44210, !noundef !24
  %i.on = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.oo = load i64, ptr %i.on, align 8, !alias.scope !44210, !noundef !24
  %i.op = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.oq = load i8, ptr %i.op, align 4, !range !94, !alias.scope !44210, !noundef !24
  %i.or = getelementptr inbounds nuw i8, ptr %.val, i64 45
  %i.os = load i8, ptr %i.or, align 1, !range !124, !alias.scope !44210, !noundef !24
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i32 %i.om, ptr %i.ot, align 8, !alias.scope !44208, !noalias !44164
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %i.oo, ptr %i.ou, align 8, !alias.scope !44208, !noalias !44164
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  store i8 %i.oq, ptr %i.ov, align 4, !alias.scope !44208, !noalias !44164
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ao, i64 37
  store i8 %i.os, ptr %i.ow, align 1, !alias.scope !44208, !noalias !44164
  %i.ox = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ox, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !noalias !44151
  store i64 7, ptr %i.as, align 8, !alias.scope !44149, !noalias !44148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !44164
  br label %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_ops24CollectionMetaOperationsENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.ec:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.075.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44211)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !44212
  %i.oy = getelementptr inbounds nuw i8, ptr %.val, i64 32
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oy)
          to label %.noexc7.i unwind label %bb.fw

.noexc7.i:                                        ; preds = %bb.ec
  %i.oz = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !44212
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44214)
  %i.pa = load i64, ptr %i.oz, align 8, !range !28, !alias.scope !44215, !noundef !24
  %i.pb = trunc nuw i64 %i.pa to i1               ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %.sink.i.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sink.i.sroa.gep4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  br i1 %i.pb, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %.noexc7.i
  %i.pd = load i64, ptr %i.pc, align 8, !alias.scope !44215, !noundef !24
  br label %bb.ei

bb.ee:                                            ; preds = %.noexc7.i
  %i.pe = getelementptr inbounds nuw i8, ptr %.val, i64 31
  %i.pf = load i8, ptr %i.pe, align 1, !alias.scope !44215, !noundef !24
  %.not.i.i28.i.i.i = icmp sgt i8 %i.pf, -1
  %i.pg = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.val.i.i37.i.i.i = load ptr, ptr %i.pc, align 8, !alias.scope !44215 ; 5 uses
  %.val21.i.i38.i.i.i = load i64, ptr %i.pg, align 8, !alias.scope !44215 ; 2 uses
  br i1 %.not.i.i28.i.i.i, label %2, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i

2:                                                ; preds = %bb.ee
  %.not.i.i.i.i39.i.i.i = icmp eq ptr %.val.i.i37.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i39.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %2
  %i.ph = getelementptr inbounds i8, ptr %.val.i.i37.i.i.i, i64 -16
  %i.pi = atomicrmw add ptr %i.ph, i64 1 monotonic, align 8, !noalias !44216
  %i.pj = icmp slt i64 %i.pi, 0
  br i1 %i.pj, label %bb.eg, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i, !prof !30

bb.eg:                                            ; preds = %bb.ef
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i37.i.i.i, i64 noundef %.val21.i.i38.i.i.i) #25
          to label %.noexc.i40.i.i.i unwind label %bb.eh, !noalias !44217

.noexc.i40.i.i.i:                                 ; preds = %bb.eg
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i: ; preds = %bb.ee, %bb.ef, %2
  %.sroa.06.0.i.i33.i.i.i = phi ptr [ %.val.i.i37.i.i.i, %bb.ef ], [ inttoptr (i64 16 to ptr), %2 ], [ %.val.i.i37.i.i.i, %bb.ee ]
  store ptr %.sroa.06.0.i.i33.i.i.i, ptr %.sink.i.sroa.gep4.i.i.i.i, align 8, !alias.scope !44213, !noalias !44212
  br label %bb.ei

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.ek, %bb.ej, %bb.eh
  %.pn.i36.i.i.i = phi { ptr, i32 } [ %i.pk, %bb.eh ], [ %i.pn, %bb.ek ], [ %i.pn, %bb.ej ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #26
          to label %bb.fx unwind label %bb.el, !noalias !44217

bb.eh:                                            ; preds = %bb.eg
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit.i.i.i.i

bb.ei:                                            ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i, %bb.ed
  %.sink.i.sroa.phi.i34.i.i.i = phi ptr [ %.sink.i.sroa.gep.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i ], [ %.sink.i.sroa.gep4.i.i.i.i, %bb.ed ]
  %.sroa.58.0.sink.i.i35.i.i.i = phi i64 [ %.val21.i.i38.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i ], [ %i.pd, %bb.ed ]
  %i.pl = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i ], [ 1, %bb.ed ]
  store i64 %.sroa.58.0.sink.i.i35.i.i.i, ptr %.sink.i.sroa.phi.i34.i.i.i, align 8, !alias.scope !44213, !noalias !44212
  store i64 %i.pl, ptr %i.q, align 8, !alias.scope !44213, !noalias !44212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !44212
  %i.pm = getelementptr inbounds nuw i8, ptr %.val, i64 56
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_yEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pm)
          to label %_RNvXs1N_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_14CreateShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.ej, !noalias !44217

bb.ej:                                            ; preds = %bb.ei
  %i.pn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.q, i64 23
  %i.pp = load i8, ptr %i.po, align 1, !alias.scope !44218, !noalias !44212
  %.not.i.i.i.i.i.i.i.i = icmp slt i8 %i.pp, 0
  %or.cond.i.not.i.i.i.i = select i1 %i.pb, i1 true, i1 %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.not.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep4.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.el, !noalias !44217

bb.el:                                            ; preds = %bb.ek, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.pq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !44217
  unreachable

_RNvXs1N_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_14CreateShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.ei
  %i.pr = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.ps = load i8, ptr %i.pr, align 8, !range !124, !alias.scope !44219, !noundef !24
  %.sroa.075.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.075.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.075.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !44220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.075.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !44220
  %.sroa.075.48..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.075.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.075.48..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !44220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !44212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !44212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !44212
  %i.pt = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pt, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.075.i.i.i, i64 72, i1 false), !noalias !44151
  %.sroa.676.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  store i8 %i.ps, ptr %.sroa.676.0..sroa_idx.i.i.i, align 8, !alias.scope !44149, !noalias !44148
  store i64 8, ptr %i.as, align 8, !alias.scope !44149, !noalias !44148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.075.i.i.i)
  br label %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_ops24CollectionMetaOperationsENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.em:                                            ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44221)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !44222
  %i.pu = getelementptr inbounds nuw i8, ptr %.val, i64 32
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pu)
          to label %.noexc8.i unwind label %bb.fw

.noexc8.i:                                        ; preds = %bb.em
  %i.pv = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i41.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44224)
  %i.pw = load i64, ptr %i.pv, align 8, !range !28, !alias.scope !44225, !noundef !24
  %i.px = trunc nuw i64 %i.pw to i1
  %i.py = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  br i1 %i.px, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %.noexc8.i
  %i.pz = load i64, ptr %i.py, align 8, !alias.scope !44225, !noundef !24
  br label %_RNvXs1T_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_12DropShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.eo:                                            ; preds = %.noexc8.i
  %i.qa = getelementptr inbounds nuw i8, ptr %.val, i64 31
  %i.qb = load i8, ptr %i.qa, align 1, !alias.scope !44225, !noundef !24
  %.not.i.i42.i.i.i = icmp sgt i8 %i.qb, -1
  %i.qc = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.val.i.i53.i.i.i = load ptr, ptr %i.py, align 8, !alias.scope !44225 ; 5 uses
  %.val21.i.i54.i.i.i = load i64, ptr %i.qc, align 8, !alias.scope !44225 ; 2 uses
  br i1 %.not.i.i42.i.i.i, label %bb.ep, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i

bb.ep:                                            ; preds = %bb.eo
  %.not.i.i.i.i55.i.i.i = icmp eq ptr %.val.i.i53.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i55.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.qd = getelementptr inbounds i8, ptr %.val.i.i53.i.i.i, i64 -16
  %i.qe = atomicrmw add ptr %i.qd, i64 1 monotonic, align 8, !noalias !44226
  %i.qf = icmp slt i64 %i.qe, 0
  br i1 %i.qf, label %bb.er, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i, !prof !30

bb.er:                                            ; preds = %bb.eq
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i53.i.i.i, i64 noundef %.val21.i.i54.i.i.i) #25
          to label %.noexc.i56.i.i.i unwind label %bb.es, !noalias !44227

.noexc.i56.i.i.i:                                 ; preds = %bb.er
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i: ; preds = %bb.eo, %bb.eq, %bb.ep
  %.sroa.06.0.i.i47.i.i.i = phi ptr [ %.val.i.i53.i.i.i, %bb.eq ], [ inttoptr (i64 16 to ptr), %bb.ep ], [ %.val.i.i53.i.i.i, %bb.eo ]
  %i.qg = ptrtoint ptr %.sroa.06.0.i.i47.i.i.i to i64
  store i64 %i.qg, ptr %.sroa.4.i41.i.i.i, align 8, !alias.scope !44223, !noalias !44222
  br label %_RNvXs1T_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_12DropShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.es:                                            ; preds = %bb.er
  %i.qh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #26
          to label %bb.fx unwind label %bb.et, !noalias !44227

bb.et:                                            ; preds = %bb.es
  %i.qi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !44227
  unreachable

_RNvXs1T_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_12DropShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i, %bb.en
  %.sink.i.sroa.phi.i48.i.i.i = phi ptr [ %.sroa.6.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i ], [ %.sroa.4.i41.i.i.i, %bb.en ]
  %.sroa.58.0.sink.i.i49.i.i.i = phi i64 [ %.val21.i.i54.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i ], [ %i.pz, %bb.en ]
  %storemerge.i.i50.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i ], [ 1, %bb.en ]
  store i64 %.sroa.58.0.sink.i.i49.i.i.i, ptr %.sink.i.sroa.phi.i48.i.i.i, align 8, !alias.scope !44223, !noalias !44222
  %.sroa.679.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.679.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !44151
  %.sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.0..sroa.4.i41.i.i.0..sroa.4.i41.i.0..sroa.4.i41.i.0..sroa.4.i41.0..sroa.4.i41.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.i41.i.i.i, align 8, !noalias !44222
  %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i, align 8, !noalias !44222
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i41.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !44222
  %i.qj = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %storemerge.i.i50.i.i.i, ptr %i.qj, align 8, !alias.scope !44149, !noalias !44148
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %.sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.0..sroa.4.i41.i.i.0..sroa.4.i41.i.0..sroa.4.i41.i.0..sroa.4.i41.0..sroa.4.i41.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !44149, !noalias !44148
  %.sroa.578.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i, ptr %.sroa.578.0..sroa_idx.i.i.i, align 8, !alias.scope !44149, !noalias !44148
  store i64 9, ptr %i.as, align 8, !alias.scope !44149, !noalias !44148
  br label %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_ops24CollectionMetaOperationsENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.eu:                                            ; preds = %bb.c
  %i.qk = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !44229
  %i.ql = getelementptr inbounds nuw i8, ptr %.val, i64 112
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ql)
          to label %.noexc9.i unwind label %bb.fw

.noexc9.i:                                        ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !44229
  %i.qm = getelementptr inbounds nuw i8, ptr %.val, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !44230
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qm)
          to label %.noexc.i60.i.i.i unwind label %bb.ex, !noalias !44231

.noexc.i60.i.i.i:                                 ; preds = %.noexc9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !44230
  %i.qn = getelementptr inbounds nuw i8, ptr %.val, i64 160
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qn)
          to label %bb.ey unwind label %bb.ev, !noalias !44232

bb.ev:                                            ; preds = %.noexc.i60.i.i.i
  %i.qo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #26
          to label %.body.i58.i.i.i unwind label %bb.ew, !noalias !44232

bb.ew:                                            ; preds = %bb.ev
  %i.qp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !44232
  unreachable

.body.i58.i.i.i:                                  ; preds = %bb.fb, %bb.ex, %bb.ev
  %.pn.i59.i.i.i = phi { ptr, i32 } [ %i.qv, %bb.fb ], [ %i.qq, %bb.ex ], [ %i.qo, %bb.ev ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #26
          to label %bb.fx unwind label %bb.fd, !noalias !44231

bb.ex:                                            ; preds = %.noexc9.i
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i58.i.i.i

bb.ey:                                            ; preds = %.noexc.i60.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !44233
  %i.qr = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qr, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !44233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !44230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !44230
  %i.qs = load i64, ptr %i.qk, align 8, !range !91, !alias.scope !44234, !noundef !24
  %.not.i61.i.i.i = icmp eq i64 %i.qs, -1
  br i1 %.not.i61.i.i.i, label %bb.fa, label %bb.ez
end_hunk_1
begin_hunk_2_@_RNvXsad_NtCs607s0NAIaWN_7segment5typesNtB6_19PayloadSchemaParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone:bb.a
  %i.bu = load i8, ptr %i.bt, align 1, !range !27, !noundef !24
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.bq, ptr %i.bv, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.bu, ptr %.sroa.414.0..sroa_idx, align 1
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.bs, ptr %.sroa.515.0..sroa_idx, align 2
  store i64 7, ptr %0, align 8
  br label %bb.t

bb.r:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load <4 x i8>, ptr %i.bw, align 8
  store <4 x i8> %i.by, ptr %i.bx, align 8
  store i64 8, ptr %0, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load <4 x i8>, ptr %i.bz, align 8
  store <4 x i8> %i.cb, ptr %i.ca, align 8
  store i64 9, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtCsPYQCUnoTxQ_10collection9hash_ringNtB5_14HashRingFilterNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1109, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @993, i64 noundef 4, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1108, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1110, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @995)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = load i64, ptr %1, align 8, !range !39, !noundef !24
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !39, !noundef !24
  %.not4 = icmp eq i64 %i.i, -1
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !44717)
  call void @llvm.experimental.noalias.scope.decl(metadata !44718)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.j unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  store i64 -1, ptr %i.e, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !39, !noundef !24
  %.not5 = icmp eq i64 %i.k, -1
  br i1 %.not5, label %bb.l, label %bb.k

bb.h:                                             ; preds = %bb.n, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.l, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #26
          to label %bb.v unwind label %bb.u

bb.i:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !44718, !noundef !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !44717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.p unwind label %bb.o

bb.l:                                             ; preds = %bb.g
  store i64 -1, ptr %i.d, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !39, !noundef !24
  %.not6 = icmp eq i64 %i.q, -1
  br i1 %.not6, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.s, %bb.o
  %.pn = phi { ptr, i32 } [ %i.v, %bb.s ], [ %i.r, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types9MinShouldEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #26
          to label %bb.h unwind label %bb.u

bb.o:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.m, %bb.t
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %bb.t ], [ -1, %bb.m ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.0.0, ptr %i.u, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.s:                                             ; preds = %bb.q
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #26
          to label %bb.n unwind label %bb.u

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.u:                                             ; preds = %bb.s, %bb.n, %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.v:                                             ; preds = %bb.h
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !28, !noundef !24
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.c, align 8, !noundef !24
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.f = load i8, ptr %i.e, align 1, !noundef !24
  %.not = icmp sgt i8 %i.f, -1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %.val21 = load i64, ptr %i.g, align 8           ; 2 uses
  br i1 %.not, label %2, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

2:                                                ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit, label %bb.d

bb.d:                                             ; preds = %2
  %i.h = getelementptr inbounds i8, ptr %.val, i64 -16
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit, !prof !30

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val, i64 noundef %.val21) #25
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c, %bb.d, %2
  %.sroa.06.0 = phi ptr [ %.val, %bb.d ], [ inttoptr (i64 16 to ptr), %2 ], [ %.val, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.06.0, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit, %bb.b
  %.sink = phi i64 [ 16, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit ], [ 8, %bb.b ]
  %.sroa.58.0.sink = phi i64 [ %.val21, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit ], [ %i.d, %bb.b ]
  %storemerge = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.b ]
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  store i64 %.sroa.58.0.sink, ptr %.sroa.412.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsh_NtNtCsjZG7hsAZr3B_5tokio4time5errorNtB5_7ElapsedNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1112, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1111)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_Cs54nuPOFLmP7_8hashringINtB5_8HashRingINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCsllwMOZTb81t_9siphasher3sip11SipHasher24EENtNtB1I_3fmt5Debug3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1115, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1116, i64 noundef 12, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1113, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @993, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsq_NtCsPYQCUnoTxQ_10collection6configNtB5_16CollectionParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [80 x i8], align 8          ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.57 = alloca [24 x i8], align 8           ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 8, !range !37, !noundef !24 ; 3 uses
  %i.e = icmp eq i64 %i.d, -1                     ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_RNvXs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
  store i64 -1, ptr %i.b, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.i = load i64, ptr %i.h, align 8, !range !126, !alias.scope !44722, !noundef !24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 158
  %i.k = load i8, ptr %i.j, align 2, !range !35, !alias.scope !44722, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.not.i = icmp eq i64 %i.d, 2
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.i, ptr noundef nonnull readonly align 8 dereferenceable(80) %.sroa.4.0..sroa_idx.i, i64 80, i1 false), !noalias !44723
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.m = load i32, ptr %i.l, align 8, !range !127, !alias.scope !44722, !noundef !24 ; 3 uses
  %.not29.i = icmp eq i32 %i.m, -1
  br i1 %.not29.i, label %_RNvXs3L_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %narrow33.i = tail call i32 @llvm.usub.sat.i32(i32 %i.m, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 4 uses
  switch i32 %narrow33.i, label %default.unreachable [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !44722
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.q = load i16, ptr %i.p, align 8, !alias.scope !44722
  %i.r = zext i16 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 32
  %.sroa.424.sroa.0.0.insert.ext.i = zext i32 %i.o to i64
  %.sroa.424.sroa.0.0.insert.insert.i = or disjoint i64 %i.s, %.sroa.424.sroa.0.0.insert.ext.i
  br label %_RNvXs3L_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.f
  %.sroa.7.0.copyload18.i = load i64, ptr %i.n, align 4, !alias.scope !44722
  br label %_RNvXs3L_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.f
  %.sroa.7.0.copyload20.i = load i64, ptr %i.n, align 4, !alias.scope !44722
  br label %_RNvXs3L_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.j:                                             ; preds = %bb.f
  %.sroa.7.0.copyload22.i = load i64, ptr %i.n, align 4, !alias.scope !44722
  br label %_RNvXs3L_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXs3L_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.e, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.55.0.i = phi i64 [ undef, %bb.e ], [ %.sroa.424.sroa.0.0.insert.insert.i, %bb.g ], [ %.sroa.7.0.copyload18.i, %bb.h ], [ %.sroa.7.0.copyload20.i, %bb.i ], [ %.sroa.7.0.copyload22.i, %bb.j ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 157
  %i.u = load i8, ptr %i.t, align 1, !range !27, !alias.scope !44722, !noundef !24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 159
  %i.w = load i8, ptr %i.v, align 1, !range !105, !alias.scope !44722, !noundef !24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.y = load i8, ptr %i.x, align 8, !range !116, !alias.scope !44722, !noundef !24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.aa = load i8, ptr %i.z, align 4, !range !26, !alias.scope !44722, !noundef !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.i, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  store i64 %i.d, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 %i.m, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i64 %.sroa.55.0.i, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store i8 %i.aa, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 109
  store i8 %i.u, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 110
  store i8 %i.k, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 111
  store i8 %i.w, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i8 %i.y, ptr %.sroa.12.0..sroa_idx, align 8
  br label %bb.k

bb.k:                                             ; preds = %_RNvXs3L_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.ad = load i8, ptr %i.ac, align 4, !range !27, !noundef !24
  %i.ae = load <2 x i32>, ptr %i.ab, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ag = load i32, ptr %i.af, align 8, !range !129, !noundef !24
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ai = load i32, ptr %i.ah, align 8, !range !113, !noundef !24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = load i64, ptr %1, align 8, !range !28, !noundef !24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 189
  %i.ap = load i8, ptr %i.ao, align 1, !range !27, !noundef !24
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 190
  %i.ar = load i8, ptr %i.aq, align 2, !range !67, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i64, ptr %i.as, align 8, !range !28, !noundef !24
  %i.au = trunc nuw i64 %i.at to i1
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av)
          to label %bb.p unwind label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.p
  %.sroa.06.0 = phi i64 [ 1, %bb.p ], [ 0, %bb.k ]
  %i.aw = trunc nuw i64 %i.al to i1
  %.sroa.53.0 = select i1 %i.aw, i64 %i.an, i64 undef
  %i.ax = trunc nuw i32 %i.ai to i1
  %.sroa.5.0 = select i1 %i.ax, i32 %i.ak, i32 undef
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ay, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i8 %i.ad, ptr %i.ba, align 4
  store <2 x i32> %i.ae, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %i.ag, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.ai, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %.sroa.5.0, ptr %i.bd, align 4
  store i64 %i.al, ptr %0, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.53.0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 189
  store i8 %i.ap, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 190
  store i8 %i.ar, ptr %i.bg, align 2
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.06.0, ptr %i.bh, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_2
