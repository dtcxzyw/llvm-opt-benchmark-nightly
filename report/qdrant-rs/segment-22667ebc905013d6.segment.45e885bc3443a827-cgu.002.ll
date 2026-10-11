Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.002?download=true
inline.NumInlined: 8609
inline.NumDeleted: 4831
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtCsgNzSnKyKfuE_6either6EitherINtNtNtBa_7sources5empty5EmptyTxmEEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBa_6traits12double_ended19DoubleEndedIteratorp4ItemB1W_EL_EENCNvXNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_index19numeric_field_indexINtB3K_21NumericFieldIndexViewINtNtB3M_7storage17NumericIndexInnerxEIB5C_dEEINtNtB3M_8read_ops11StreamRangeNtNtNtB3S_10data_types8order_by10OrderValueE12stream_range0ENtNtB2F_8iterator8Iterator8try_folduNCINvNvB7O_4find5checkTB6Q_mEQNCNvMNtNtNtB3S_7segment9read_view8order_byINtB8Z_15SegmentReadViewNtNtNtNtB3S_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtB3Q_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB3S_15payload_storage20payload_storage_enum18PayloadStorageEnumB9W_NtNtNtB3S_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB3O_16field_index_base11field_index10FieldIndexEBcd_NtB91_10VectorDataE29filtered_read_by_value_streams_0E0INtNtNtBc_3ops12control_flow11ControlFlowB8K_EEB3S_:bb.a
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %2, ptr %i.c, align 8, !noalias !1169
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %i.e, align 8, !noalias !1169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1169
  call void @_RNvXs0_NtCsgNzSnKyKfuE_6either8iteratorINtB7_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyTxmEEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBV_6traits12double_ended19DoubleEndedIteratorp4ItemB1F_EL_EENtNtB2o_8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !1168
  %i.f = load i64, ptr %i.b, align 8, !range !16, !noalias !1169, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.j = load i64, ptr %i.h, align 8, !noalias !1169, !noundef !5
  %i.k = load i32, ptr %i.i, align 8, !noalias !1169, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1170
  store i64 0, ptr %i.a, align 8, !noalias !1170
  store i64 %i.j, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1170
  store i32 %i.k, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1170
  %i.l = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtNtCs607s0NAIaWN_7segment7segment9read_view8order_byINtBV_15SegmentReadViewNtNtNtNtBZ_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtBZ_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBZ_15payload_storage20payload_storage_enum18PayloadStorageEnumB29_NtNtNtBZ_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB3n_11field_index16field_index_base11field_index10FieldIndexEB4w_NtBX_10VectorDataE29filtered_read_by_value_streams_0INtB7_5FnMutTRTNtNtNtBZ_10data_types8order_by10OrderValuemEEE8call_mutBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a), !noalias !1171
  br i1 %i.l, label %bb.c, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1169
  store i64 2, ptr %0, align 8, !alias.scope !1172, !noalias !1173
  br label %_RINvYINtCsgNzSnKyKfuE_6either6EitherINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyTxmEEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBF_6traits12double_ended19DoubleEndedIteratorp4ItemB1p_EL_EENtNtB28_8iterator8Iterator8try_folduNCINvNtNtBF_8adapters3map12map_try_foldB1p_TNtNtNtCs607s0NAIaWN_7segment10data_types8order_by10OrderValuemEuINtNtNtBH_3ops12control_flow11ControlFlowB4p_ENCNvXNtNtNtNtB4w_5index11field_index13numeric_index19numeric_field_indexINtB6h_21NumericFieldIndexViewINtNtB6j_7storage17NumericIndexInnerxEIB7R_dEEINtNtB6j_8read_ops11StreamRangeB4q_E12stream_range0NCINvNvB38_4find5checkB4p_QNCNvMNtNtNtB4w_7segment9read_view8order_byINtB9X_15SegmentReadViewNtNtNtNtB4w_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtB6n_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB4w_15payload_storage20payload_storage_enum18PayloadStorageEnumBaU_NtNtNtB4w_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB6l_16field_index_base11field_index10FieldIndexEBdb_NtB9Z_1

bb.c:                                             ; preds = %bb.b
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !1173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1170
  store i64 0, ptr %0, align 8, !alias.scope !1174, !noalias !1173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1169
  br label %_RINvYINtCsgNzSnKyKfuE_6either6EitherINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyTxmEEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBF_6traits12double_ended19DoubleEndedIteratorp4ItemB1p_EL_EENtNtB28_8iterator8Iterator8try_folduNCINvNtNtBF_8adapters3map12map_try_foldB1p_TNtNtNtCs607s0NAIaWN_7segment10data_types8order_by10OrderValuemEuINtNtNtBH_3ops12control_flow11ControlFlowB4p_ENCNvXNtNtNtNtB4w_5index11field_index13numeric_index19numeric_field_indexINtB6h_21NumericFieldIndexViewINtNtB6j_7storage17NumericIndexInnerxEIB7R_dEEINtNtB6j_8read_ops11StreamRangeB4q_E12stream_range0NCINvNvB38_4find5checkB4p_QNCNvMNtNtNtB4w_7segment9read_view8order_byINtB9X_15SegmentReadViewNtNtNtNtB4w_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtB6n_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB4w_15payload_storage20payload_storage_enum18PayloadStorageEnumBaU_NtNtNtB4w_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB6l_16field_index_base11field_index10FieldIndexEBdb_NtB9Z_1

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1169
  call void @_RNvXs0_NtCsgNzSnKyKfuE_6either8iteratorINtB7_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyTxmEEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBV_6traits12double_ended19DoubleEndedIteratorp4ItemB1F_EL_EENtNtB2o_8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !1168
  %i.m = load i64, ptr %i.b, align 8, !range !16, !noalias !1169, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.b, label %._crit_edge.i

_RINvYINtCsgNzSnKyKfuE_6either6EitherINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyTxmEEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBF_6traits12double_ended19DoubleEndedIteratorp4ItemB1p_EL_EENtNtB28_8iterator8Iterator8try_folduNCINvNtNtBF_8adapters3map12map_try_foldB1p_TNtNtNtCs607s0NAIaWN_7segment10data_types8order_by10OrderValuemEuINtNtNtBH_3ops12control_flow11ControlFlowB4p_ENCNvXNtNtNtNtB4w_5index11field_index13numeric_index19numeric_field_indexINtB6h_21NumericFieldIndexViewINtNtB6j_7storage17NumericIndexInnerxEIB7R_dEEINtNtB6j_8read_ops11StreamRangeB4q_E12stream_range0NCINvNvB38_4find5checkB4p_QNCNvMNtNtNtB4w_7segment9read_view8order_byINtB9X_15SegmentReadViewNtNtNtNtB4w_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtB6n_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB4w_15payload_storage20payload_storage_enum18PayloadStorageEnumBaU_NtNtNtB4w_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB6l_16field_index_base11field_index10FieldIndexEBdb_NtB9Z_1: ; preds = %._crit_edge.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterINtCsgNzSnKyKfuE_6either6EitherINtNtB8_5chain5ChainIBO_INtNtNtCs9XvERIT2X68_9itertools8adaptors8coalesce10CoalesceByINtNtB2N_10merge_join7MergeByINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4KeysymEB48_NtB3I_8MergeLteEINtB2J_22DedupPred2CoalescePredNtB2J_7DedupEqENtB2J_7NoCountENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB6u_13PointMappings13iter_external0EIBO_IB2H_IB3G_IB49_NtCs4R3jSB693Zs_4uuid4UuidmEB8c_B5a_EB5q_B6a_ENCB6r_s_0EEIB1O_IBO_IB2j_IBY_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterTymEEENCNvMNtNtB6w_10compressed20external_to_internalNtBax_28CompressedExternalToInternal8num_iter0EIBY_IB9v_IB9X_TB8h_mEEENCNvBaw_9uuid_iter0EENCNvMNtBaz_25compressed_point_mappingsNtBcL_23CompressedPointMappings13iter_external0EIBO_IB1s_INtNtNtNtB6w_15disk_id_tracker6reader4iter7E2iIterNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileENCNvNtBek_8mappings11live_filter0ENCNvMs0_BfZ_INtBfZ_15DiskMappingsRefBf1_E13iter_external0EEENCINvMNtNtNtNtB6y_5index20struct_payload_index9read_view19condition_converterINtBhz_26StructPayloadIndexReadViewNtNtNtB6y_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtB6w_15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB6y_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtBhD_11field_index16field_index_base11field_index10FieldIndexE19condition_converterBjf_Es3_0ENCBht_s4_0ENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtBog_7HashSetmNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtNtBa_6traits7collect6ExtendmE6extendBX_E0ENtNtBpU_8iterator8Iterator4folduNCINvNvBqA_8for_each4callTmuENCINvXs1i_NtBoi_3mapINtBrJ_7HashMapmuBp0_EIBpQ_Brv_E6extendBN_E0E0EB6y_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(376) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1181, !noalias !1182, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1183
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !alias.scope !1181, !noalias !1182
  store <2 x ptr> %i.e, ptr %i.a, align 16, !noalias !1184
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx.i, align 16, !noalias !1184
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1184
  call void @_RINvXs0_NtCsgNzSnKyKfuE_6either8iteratorINtB8_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtBU_3map3MapINtNtNtCs9XvERIT2X68_9itertools8adaptors8coalesce10CoalesceByINtNtB24_10merge_join7MergeByINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4KeysymEB3p_NtB2Z_8MergeLteEINtB20_22DedupPred2CoalescePredNtB20_7DedupEqENtB20_7NoCountENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB5L_13PointMappings13iter_external0EIB1I_IB1Y_IB2X_IB3q_NtCs4R3jSB693Zs_4uuid4UuidmEB7u_B4r_EB4H_B5r_ENCB5I_s_0EEIBD_IB1I_IBQ_INtNtBU_10filter_map9FilterMapINtNtBU_9enumerate9EnumerateINtNtNtBY_5slice4iter4IterTymEEENCNvMNtNtB5N_10compressed20external_to_internalNtBae_28CompressedExternalToInternal8num_iter0EIB8I_IB9c_IB9E_TB7z_mEEENCNvBad_9uuid_iter0EENCNvMNtBag_25compressed_point_mappingsNtBct_23CompressedPointMappings13iter_external0EIB1I_INtNtBU_6filter6FilterINtNtNtNtB5N_15disk_id_tracker6reader4iter7E2iIterNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileENCNvNtBek_8mappings11live_filter0ENCNvMs0_BfZ_INtBfZ_15DiskMappingsRefBf1_E13iter_external0EEENtNtNtBW_6traits8iterator8Iterator4folduNCINvBdU_11filter_foldNtNtB5P_5types15ExtendedPointIduNCINvMNtNtNtNtB5P_5index20struct_payload_index9read_view19condition_converterINtBj5_26StructPayloadIndexReadViewNtNtNtB5P_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtB5N_15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB5P_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtBj9_11field_index16field_index_base11field_index10FieldIndexE19condition_converterBkL_Es3_0NCINvB8K_15filter_map_foldBir_muNCBiZ_s4_0NCINvB1K_8map_foldmTmuEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtBqE_7HashSetmNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtBhv_7collect6ExtendmE6extendIB8I_IBdS_BC_BiX_EBpX_EE0NCINvNvBhr_8for_each4callBqq_NCINvXs1i_NtBqG_3mapINtBtM_7HashMapmuBro_EIBse_Bqq_E6extendIB1I_BsK_Bqv_EE0E0E0E0E0EB5P_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1183
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_10take_while9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashEIB1s_IB1I_mEB3h_EENCNvMNtNtNtB2b_9geo_index19immutable_geo_index9lifecycleNtB3B_17ImmutableGeoIndex18stored_sub_regionss0_0ENCB3w_s1_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB6g_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_6filter6FilterINtNtB8_6copied6CopiedB3h_ENCNCB3w_s1_00EuINtNtNtBc_3ops12control_flow11ControlFlowmENCINvNvXsi_B6g_B6t_B5n_8try_fold7flattenB7f_uB8h_QNCINvNvB5n_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBam_6UniqueINtB6g_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB27_EIBbe_BX_B7f_B5c_ENCNvXNtB3B_8read_opsB4o_NtNtB3D_8read_ops12GeoIndexRead8iterator0EEB5n_4next0E0E0E0B8h_EB2f_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !22, !alias.scope !1206, !noalias !1207, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashEIB1c_IB1s_mEB31_EENCNvMNtNtNtB1V_9geo_index19immutable_geo_index9lifecycleNtB3l_17ImmutableGeoIndex18stored_sub_regionss0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1R_TRmB6d_EEINtNtB8_6filter6FilterINtNtB8_6copied6CopiedB31_ENCNCB3g_s1_00EuINtNtNtBc_3ops12control_flow11ControlFlowmENCB3g_s1_0NCINvNvMsg_NtB8_7flattenINtB8p_13FlattenCompatppE13iter_try_fold7flattenB6l_uB7n_NCINvNvXsi_B8p_B8C_B4W_8try_fold7flattenB6l_uB7n_QNCINvNvB4W_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBaV_6UniqueINtB8p_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB1R_EIBbN_BV_B6l_B84_ENCNvXNtB3l_8read_opsB48_NtNtB3n_8read_ops12GeoIndexRead8iterator0EEB4W_4next0E0E0E0E0B7n_EB1Z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1209, !noalias !1210, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.f, align 8, !alias.scope !1209, !noalias !1210 ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1211, !noalias !1212, !nonnull !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1211, !noalias !1212
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1211, !noalias !1212, !nonnull !5
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1211, !noalias !1212, !nonnull !5
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i.i, i64 %i.h)
  %.val.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1206, !noalias !1207
  %.val.i.i6.i.i = load ptr, ptr %0, align 8, !nonnull !5, !align !11 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i6.i.i, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i6.i.i, i64 80
  %exitcond.not.i.i26.not = icmp ult i64 %.promoted.i.i, %i.h
  br i1 %exitcond.not.i.i26.not, label %.lr.ph, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashEIB1c_IB1s_mEB31_EENCNvMNtNtNtB1V_9geo_index19immutable_geo_index9lifecycleNtB3l_17ImmutableGeoIndex18stored_sub_regionss0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1R_TRmB6d_EEINtNtB8_6filter6FilterINtNtB8_6copied6CopiedB31_ENCNCB3g_s1_00EuINtNtNtBc_3ops12control_flow11ControlFlowmENCB3g_s1_0NCINvNvMsg_NtB8_7flattenINtB8p_13FlattenCompatppE13iter_try_fold7flattenB6l_uB7n_NCINvNvXsi_B8p_B8C_B4W_8try_fold7flattenB6l_uB7n_QNCINvNvB4W_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBaV_6UniqueINtB8p_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB1R_EIBbN_BV_B6l_B84_ENCNvXNtB3l_8read_opsB48_NtNtB3n_8read_ops12GeoIndexRead8iterator0EEB4W_4next0E0E0E0E0B7n_EB1Z_.exit

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldTRNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashTRmB26_EEINtNtB6_6filter6FilterINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItermEENCNCNvMNtNtNtB15_9geo_index19immutable_geo_index9lifecycleNtB3y_17ImmutableGeoIndex18stored_sub_regionss1_00EuINtNtNtBa_3ops12control_flow11ControlFlowmENCB3t_s1_0NCINvNvMsg_NtB6_7flattenINtB6d_13FlattenCompatppE13iter_try_fold7flattenB2e_uB5b_NCINvNvXsi_B6d_B6q_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB2e_uB5b_QNCINvNvB7E_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtB9d_6UniqueINtB6d_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB11_EIBa5_INtNtB6_10take_while9TakeWhileINtNtB6_3zip3ZipIB2X_B11_EIBbM_B2W_B2W_EENCB3t_s0_0EB2e_B5S_ENCNvXNtB3y_8read_opsB4l_NtNtB3A_8read_ops12GeoIndexRead8iterator0EEB7E_4next0E0E0E0E0B19_.exit.i.i.i
  %exitcond.not.i.i = icmp eq i64 %i.r, %umax.i.i
  br i1 %exitcond.not.i.i, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashEIB1c_IB1s_mEB31_EENCNvMNtNtNtB1V_9geo_index19immutable_geo_index9lifecycleNtB3l_17ImmutableGeoIndex18stored_sub_regionss0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1R_TRmB6d_EEINtNtB8_6filter6FilterINtNtB8_6copied6CopiedB31_ENCNCB3g_s1_00EuINtNtNtBc_3ops12control_flow11ControlFlowmENCB3g_s1_0NCINvNvMsg_NtB8_7flattenINtB8p_13FlattenCompatppE13iter_try_fold7flattenB6l_uB7n_NCINvNvXsi_B8p_B8C_B4W_8try_fold7flattenB6l_uB7n_QNCINvNvB4W_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBaV_6UniqueINtB8p_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB1R_EIBbN_BV_B6l_B84_ENCNvXNtB3l_8read_opsB48_NtNtB3n_8read_ops12GeoIndexRead8iterator0EEB4W_4next0E0E0E0E0B7n_EB1Z_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.q = phi i64 [ %i.r, %bb.c ], [ %.promoted.i.i, %bb.b ] ; 3 uses
  %i.r = add i64 %i.q, 1                          ; 3 uses
  store i64 %i.r, ptr %i.f, align 8, !alias.scope !1209, !noalias !1210
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i, i64 %i.q
  %i.t = tail call noundef zeroext i1 @_RNvMs6_NtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hashNtB5_7GeoHash11starts_with(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s, i64 noundef %.val.i.i.i), !noalias !1213
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  store i8 1, ptr %i.a, align 8, !alias.scope !1206, !noalias !1214
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashEIB1c_IB1s_mEB31_EENCNvMNtNtNtB1V_9geo_index19immutable_geo_index9lifecycleNtB3l_17ImmutableGeoIndex18stored_sub_regionss0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1R_TRmB6d_EEINtNtB8_6filter6FilterINtNtB8_6copied6CopiedB31_ENCNCB3g_s1_00EuINtNtNtBc_3ops12control_flow11ControlFlowmENCB3g_s1_0NCINvNvMsg_NtB8_7flattenINtB8p_13FlattenCompatppE13iter_try_fold7flattenB6l_uB7n_NCINvNvXsi_B8p_B8C_B4W_8try_fold7flattenB6l_uB7n_QNCINvNvB4W_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBaV_6UniqueINtB8p_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB1R_EIBbN_BV_B6l_B84_ENCNvXNtB3l_8read_opsB48_NtNtB3n_8read_ops12GeoIndexRead8iterator0EEB4W_4next0E0E0E0E0B7n_EB1Z_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.u = add i64 %i.q, %i.k                       ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i.i, i64 %i.u
  %i.x = load i32, ptr %i.w, align 4, !noalias !1215, !noundef !5 ; 2 uses
  %i.y = load i32, ptr %i.v, align 4, !noalias !1215, !noundef !5 ; 2 uses
  %i.z = zext i32 %i.x to i64                     ; 2 uses
  %i.aa = zext i32 %i.y to i64                    ; 3 uses
  %i.ab = load i64, ptr %i.o, align 8, !noalias !1215, !noundef !5 ; 2 uses
  %i.ac = icmp ult i32 %i.y, %i.x
  %.not.i.i.i.i.i = icmp ult i64 %i.ab, %i.aa
  %or.cond.i.i.i.i.i = or i1 %i.ac, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.f, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldTRNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashTRmB26_EEINtNtB6_6filter6FilterINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItermEENCNCNvMNtNtNtB15_9geo_index19immutable_geo_index9lifecycleNtB3y_17ImmutableGeoIndex18stored_sub_regionss1_00EuINtNtNtBa_3ops12control_flow11ControlFlowmENCB3t_s1_0NCINvNvMsg_NtB6_7flattenINtB6d_13FlattenCompatppE13iter_try_fold7flattenB2e_uB5b_NCINvNvXsi_B6d_B6q_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB2e_uB5b_QNCINvNvB7E_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtB9d_6UniqueINtB6d_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB11_EIBa5_INtNtB6_10take_while9TakeWhileINtNtB6_3zip3ZipIB2X_B11_EIBbM_B2W_B2W_EENCB3t_s0_0EB2e_B5S_ENCNvXNtB3y_8read_opsB4l_NtNtB3A_8read_ops12GeoIndexRead8iterator0EEB7E_4next0E0E0E0E0B19_.exit.i.i.i, !prof !23

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.z, i64 noundef %i.aa, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #39, !noalias !1215
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldTRNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashTRmB26_EEINtNtB6_6filter6FilterINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItermEENCNCNvMNtNtNtB15_9geo_index19immutable_geo_index9lifecycleNtB3y_17ImmutableGeoIndex18stored_sub_regionss1_00EuINtNtNtBa_3ops12control_flow11ControlFlowmENCB3t_s1_0NCINvNvMsg_NtB6_7flattenINtB6d_13FlattenCompatppE13iter_try_fold7flattenB2e_uB5b_NCINvNvXsi_B6d_B6q_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB2e_uB5b_QNCINvNvB7E_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtB9d_6UniqueINtB6d_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB11_EIBa5_INtNtB6_10take_while9TakeWhileINtNtB6_3zip3ZipIB2X_B11_EIBbM_B2W_B2W_EENCB3t_s0_0EB2e_B5S_ENCNvXNtB3y_8read_opsB4l_NtNtB3A_8read_ops12GeoIndexRead8iterator0EEB7E_4next0E0E0E0E0B19_.exit.i.i.i: ; preds = %bb.e
  %i.ad = load ptr, ptr %i.p, align 8, !noalias !1215, !nonnull !5, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.z
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.aa
  store ptr %i.ae, ptr %2, align 8, !alias.scope !1216, !noalias !1215
  store ptr %i.af, ptr %i.m, align 8, !alias.scope !1216, !noalias !1215
  %i.ag = tail call { i32, i32 } @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_6filter15filter_try_foldmuINtNtNtBb_3ops12control_flow11ControlFlowmENCNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index19immutable_geo_index9lifecycleNtB3D_17ImmutableGeoIndex18stored_sub_regionss1_00QQNCINvNvB1v_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtB6v_6UniqueINtNtB7_7flatten7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB3H_8geo_hash7GeoHashEIB7n_INtNtB7_10take_while9TakeWhileINtNtB7_3zip3ZipIB13_B8y_EIB9y_B12_B12_EENCB3y_s0_0EINtB2i_6FilterBP_B3u_ENCB3y_s1_0ENCNvXNtB3D_8read_opsB55_NtNtB3F_8read_ops12GeoIndexRead8iterator0EEB1v_4next0E0E0B2N_EB3L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !noalias !1215 ; 2 uses
  %i.ah = extractvalue { i32, i32 } %i.ag, 0
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %select.unfold.loopexit.split.loop.exit22.i.i, label %bb.c

select.unfold.loopexit.split.loop.exit22.i.i:     ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldTRNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashTRmB26_EEINtNtB6_6filter6FilterINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItermEENCNCNvMNtNtNtB15_9geo_index19immutable_geo_index9lifecycleNtB3y_17ImmutableGeoIndex18stored_sub_regionss1_00EuINtNtNtBa_3ops12control_flow11ControlFlowmENCB3t_s1_0NCINvNvMsg_NtB6_7flattenINtB6d_13FlattenCompatppE13iter_try_fold7flattenB2e_uB5b_NCINvNvXsi_B6d_B6q_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB2e_uB5b_QNCINvNvB7E_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtB9d_6UniqueINtB6d_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB11_EIBa5_INtNtB6_10take_while9TakeWhileINtNtB6_3zip3ZipIB2X_B11_EIBbM_B2W_B2W_EENCB3t_s0_0EB2e_B5S_ENCNvXNtB3y_8read_opsB4l_NtNtB3A_8read_ops12GeoIndexRead8iterator0EEB7E_4next0E0E0E0E0B19_.exit.i.i.i
  %i.aj = extractvalue { i32, i32 } %i.ag, 1
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashEIB1c_IB1s_mEB31_EENCNvMNtNtNtB1V_9geo_index19immutable_geo_index9lifecycleNtB3l_17ImmutableGeoIndex18stored_sub_regionss0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1R_TRmB6d_EEINtNtB8_6filter6FilterINtNtB8_6copied6CopiedB31_ENCNCB3g_s1_00EuINtNtNtBc_3ops12control_flow11ControlFlowmENCB3g_s1_0NCINvNvMsg_NtB8_7flattenINtB8p_13FlattenCompatppE13iter_try_fold7flattenB6l_uB7n_NCINvNvXsi_B8p_B8C_B4W_8try_fold7flattenB6l_uB7n_QNCINvNvB4W_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBaV_6UniqueINtB8p_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB1R_EIBbN_BV_B6l_B84_ENCNvXNtB3l_8read_opsB48_NtNtB3n_8read_ops12GeoIndexRead8iterator0EEB4W_4next0E0E0E0E0B7n_EB1Z_.exit

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashEIB1c_IB1s_mEB31_EENCNvMNtNtNtB1V_9geo_index19immutable_geo_index9lifecycleNtB3l_17ImmutableGeoIndex18stored_sub_regionss0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1R_TRmB6d_EEINtNtB8_6filter6FilterINtNtB8_6copied6CopiedB31_ENCNCB3g_s1_00EuINtNtNtBc_3ops12control_flow11ControlFlowmENCB3g_s1_0NCINvNvMsg_NtB8_7flattenINtB8p_13FlattenCompatppE13iter_try_fold7flattenB6l_uB7n_NCINvNvXsi_B8p_B8C_B4W_8try_fold7flattenB6l_uB7n_QNCINvNvB4W_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBaV_6UniqueINtB8p_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB1R_EIBbN_BV_B6l_B84_ENCNvXNtB3l_8read_opsB48_NtNtB3n_8read_ops12GeoIndexRead8iterator0EEB4W_4next0E0E0E0E0B7n_EB1Z_.exit: ; preds = %bb.c, %bb.b, %bb.a, %bb.d, %select.unfold.loopexit.split.loop.exit22.i.i
  %.sroa.4.1.i = phi i32 [ undef, %bb.d ], [ undef, %bb.a ], [ %i.aj, %select.unfold.loopexit.split.loop.exit22.i.i ], [ undef, %bb.b ], [ undef, %bb.c ]
  %.sroa.0.1.i = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 1, %select.unfold.loopexit.split.loop.exit22.i.i ], [ 0, %bb.b ], [ 0, %bb.c ]
  %i.ak = insertvalue { i32, i32 } poison, i32 %.sroa.0.1.i, 0
  %i.al = insertvalue { i32, i32 } %i.ak, i32 %.sroa.4.1.i, 1
  ret { i32, i32 } %i.al
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_10take_while9TakeWhileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5RangeNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEENCNvMs_NtNtNtB2r_9geo_index17mutable_geo_index5innerNtB4h_16InMemoryGeoIndex18stored_sub_regions0ENCB4c_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB6N_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuINtNtNtBc_3ops12control_flow11ControlFlowmENCINvNvXsi_B6N_B70_B5U_8try_fold7flattenB7M_uB93_QNCINvNvB5U_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBb8_6UniqueINtB6N_7FlatMapINtNtNtB1A_3vec9into_iter8IntoIterB2n_EIBc0_BX_B7M_B5K_ENCNvXs0_B4h_B50_NtNtB4l_8read_ops12GeoIndexRead8iterator0EEB5U_4next0E0E0E0B93_EB2v_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !22, !alias.scope !1234, !noalias !1235, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5RangeNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEENCNvMs_NtNtNtB2b_9geo_index17mutable_geo_index5innerNtB41_16InMemoryGeoIndex18stored_sub_regions0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB27_RB3b_EINtNtB8_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuINtNtNtBc_3ops12control_flow11ControlFlowmENCB3W_s_0NCINvNvMsg_NtB8_7flattenINtB98_13FlattenCompatppE13iter_try_fold7flattenB6Q_uB87_NCINvNvXsi_B98_B9l_B5u_8try_fold7flattenB6Q_uB87_QNCINvNvB5u_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBbE_6UniqueINtB98_7FlatMapINtNtNtB1k_3vec9into_iter8IntoIterB27_EIBcw_BV_B6Q_B8O_ENCNvXs0_B41_B4K_NtNtB45_8read_ops12GeoIndexRead8iterator0EEB5u_4next0E0E0E0E0B87_EB2f_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashRINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEuINtNtNtBg_3ops12control_flow11ControlFlowmENCNvMs_NtNtNtB2b_9geo_index17mutable_geo_index5innerNtB4K_16InMemoryGeoIndex18stored_sub_regions0NCINvNtBc_3map12map_try_foldB25_INtNtBc_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuB3W_NCB4F_s_0NCINvNvMsg_NtBc_7flattenINtB8n_13FlattenCompatppE13iter_try_fold7flattenB6I_uB3W_NCINvNvXsi_B8n_B8A_B1i_8try_fold7flattenB6I_uB3W_QNCINvNvB1i_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBaT_6UniqueINtB8n_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB27_EIBbL_IB10_INtNtNtNtBc6_11collections5btree3map5RangeB27_B3c_EB4D_EB6I_B83_ENCNvXs0_B4K_B5t_NtNtB4O_8read_ops12GeoIndexRead8iterator0EEB1i_4next0E0E0E0E0E0B2f_.exit.i.i

_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashRINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEuINtNtNtBg_3ops12control_flow11ControlFlowmENCNvMs_NtNtNtB2b_9geo_index17mutable_geo_index5innerNtB4K_16InMemoryGeoIndex18stored_sub_regions0NCINvNtBc_3map12map_try_foldB25_INtNtBc_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuB3W_NCB4F_s_0NCINvNvMsg_NtBc_7flattenINtB8n_13FlattenCompatppE13iter_try_fold7flattenB6I_uB3W_NCINvNvXsi_B8n_B8A_B1i_8try_fold7flattenB6I_uB3W_QNCINvNvB1i_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBaT_6UniqueINtB8n_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB27_EIBbL_IB10_INtNtNtNtBc6_11collections5btree3map5RangeB27_B3c_EB4D_EB6I_B83_ENCNvXs0_B4K_B5t_NtNtB4O_8read_ops12GeoIndexRead8iterator0EEB1i_4next0E0E0E0E0E0B2f_.exit.i.i: ; preds = %bb.e, %bb.b
  %i.f = tail call { ptr, ptr } @_RNvXsX_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_5RangeNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0), !noalias !1236 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5RangeNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEENCNvMs_NtNtNtB2b_9geo_index17mutable_geo_index5innerNtB41_16InMemoryGeoIndex18stored_sub_regions0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB27_RB3b_EINtNtB8_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuINtNtNtBc_3ops12control_flow11ControlFlowmENCB3W_s_0NCINvNvMsg_NtB8_7flattenINtB98_13FlattenCompatppE13iter_try_fold7flattenB6Q_uB87_NCINvNvXsi_B98_B9l_B5u_8try_fold7flattenB6Q_uB87_QNCINvNvB5u_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBbE_6UniqueINtB98_7FlatMapINtNtNtB1k_3vec9into_iter8IntoIterB27_EIBcw_BV_B6Q_B8O_ENCNvXs0_B41_B4K_NtNtB45_8read_ops12GeoIndexRead8iterator0EEB5u_4next0E0E0E0E0B87_EB2f_.exit, label %bb.c

bb.c:                                             ; preds = %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashRINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEuINtNtNtBg_3ops12control_flow11ControlFlowmENCNvMs_NtNtNtB2b_9geo_index17mutable_geo_index5innerNtB4K_16InMemoryGeoIndex18stored_sub_regions0NCINvNtBc_3map12map_try_foldB25_INtNtBc_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuB3W_NCB4F_s_0NCINvNvMsg_NtBc_7flattenINtB8n_13FlattenCompatppE13iter_try_fold7flattenB6I_uB3W_NCINvNvXsi_B8n_B8A_B1i_8try_fold7flattenB6I_uB3W_QNCINvNvB1i_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBaT_6UniqueINtB8n_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB27_EIBbL_IB10_INtNtNtNtBc6_11collections5btree3map5RangeB27_B3c_EB4D_EB6I_B83_ENCNvXs0_B4K_B5t_NtNtB4O_8read_ops12GeoIndexRead8iterator0EEB1i_4next0E0E0E0E0E0B2f_.exit.i.i
  %.val.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1234, !noalias !1237, !noundef !5
  %i.h = tail call noundef zeroext i1 @_RNvMs6_NtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hashNtB5_7GeoHash11starts_with(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, i64 noundef %.val.i.i.i), !noalias !1238
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.b, align 8, !alias.scope !1234, !noalias !1238
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5RangeNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEENCNvMs_NtNtNtB2b_9geo_index17mutable_geo_index5innerNtB41_16InMemoryGeoIndex18stored_sub_regions0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB27_RB3b_EINtNtB8_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuINtNtNtBc_3ops12control_flow11ControlFlowmENCB3W_s_0NCINvNvMsg_NtB8_7flattenINtB98_13FlattenCompatppE13iter_try_fold7flattenB6Q_uB87_NCINvNvXsi_B98_B9l_B5u_8try_fold7flattenB6Q_uB87_QNCINvNvB5u_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBbE_6UniqueINtB98_7FlatMapINtNtNtB1k_3vec9into_iter8IntoIterB27_EIBcw_BV_B6Q_B8O_ENCNvXs0_B41_B4K_NtNtB45_8read_ops12GeoIndexRead8iterator0EEB5u_4next0E0E0E0E0B87_EB2f_.exit

bb.e:                                             ; preds = %bb.c
  %i.i = extractvalue { ptr, ptr } %i.f, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1239
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapmuNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE4iterCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i), !noalias !1240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.a, i64 40, i1 false), !alias.scope !1241, !noalias !1242
  %i.j = tail call { i32, i32 } @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEENtNtNtB9_6traits8iterator8Iterator8try_folduQQNCINvNvB1W_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtB3g_6UniqueINtNtB7_7flatten7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashEIB48_INtNtB7_10take_while9TakeWhileINtNtNtNtB4C_11collections5btree3map5RangeB5j_INtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEENCNvMs_NtNtNtB5n_9geo_index17mutable_geo_index5innerNtB8x_16InMemoryGeoIndex18stored_sub_regions0EBP_NCB8s_s_0ENCNvXs0_B8x_B9g_NtNtB8B_8read_ops12GeoIndexRead8iterator0EEB1W_4next0E0INtNtNtBb_3ops12control_flow11ControlFlowmEEB5r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !noalias !1243 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1239
  %i.k = extractvalue { i32, i32 } %i.j, 0
  %i.l = trunc i32 %i.k to i1
  br i1 %i.l, label %select.unfold.loopexit.split.loop.exit15.i.i, label %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashRINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEuINtNtNtBg_3ops12control_flow11ControlFlowmENCNvMs_NtNtNtB2b_9geo_index17mutable_geo_index5innerNtB4K_16InMemoryGeoIndex18stored_sub_regions0NCINvNtBc_3map12map_try_foldB25_INtNtBc_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuB3W_NCB4F_s_0NCINvNvMsg_NtBc_7flattenINtB8n_13FlattenCompatppE13iter_try_fold7flattenB6I_uB3W_NCINvNvXsi_B8n_B8A_B1i_8try_fold7flattenB6I_uB3W_QNCINvNvB1i_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBaT_6UniqueINtB8n_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB27_EIBbL_IB10_INtNtNtNtBc6_11collections5btree3map5RangeB27_B3c_EB4D_EB6I_B83_ENCNvXs0_B4K_B5t_NtNtB4O_8read_ops12GeoIndexRead8iterator0EEB1i_4next0E0E0E0E0E0B2f_.exit.i.i

select.unfold.loopexit.split.loop.exit15.i.i:     ; preds = %bb.e
  %i.m = extractvalue { i32, i32 } %i.j, 1
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5RangeNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEENCNvMs_NtNtNtB2b_9geo_index17mutable_geo_index5innerNtB41_16InMemoryGeoIndex18stored_sub_regions0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB27_RB3b_EINtNtB8_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuINtNtNtBc_3ops12control_flow11ControlFlowmENCB3W_s_0NCINvNvMsg_NtB8_7flattenINtB98_13FlattenCompatppE13iter_try_fold7flattenB6Q_uB87_NCINvNvXsi_B98_B9l_B5u_8try_fold7flattenB6Q_uB87_QNCINvNvB5u_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBbE_6UniqueINtB98_7FlatMapINtNtNtB1k_3vec9into_iter8IntoIterB27_EIBcw_BV_B6Q_B8O_ENCNvXs0_B41_B4K_NtNtB45_8read_ops12GeoIndexRead8iterator0EEB5u_4next0E0E0E0E0B87_EB2f_.exit

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5RangeNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEENCNvMs_NtNtNtB2b_9geo_index17mutable_geo_index5innerNtB41_16InMemoryGeoIndex18stored_sub_regions0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB27_RB3b_EINtNtB8_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuINtNtNtBc_3ops12control_flow11ControlFlowmENCB3W_s_0NCINvNvMsg_NtB8_7flattenINtB98_13FlattenCompatppE13iter_try_fold7flattenB6Q_uB87_NCINvNvXsi_B98_B9l_B5u_8try_fold7flattenB6Q_uB87_QNCINvNvB5u_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBbE_6UniqueINtB98_7FlatMapINtNtNtB1k_3vec9into_iter8IntoIterB27_EIBcw_BV_B6Q_B8O_ENCNvXs0_B41_B4K_NtNtB45_8read_ops12GeoIndexRead8iterator0EEB5u_4next0E0E0E0E0B87_EB2f_.exit: ; preds = %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashRINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEuINtNtNtBg_3ops12control_flow11ControlFlowmENCNvMs_NtNtNtB2b_9geo_index17mutable_geo_index5innerNtB4K_16InMemoryGeoIndex18stored_sub_regions0NCINvNtBc_3map12map_try_foldB25_INtNtBc_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuB3W_NCB4F_s_0NCINvNvMsg_NtBc_7flattenINtB8n_13FlattenCompatppE13iter_try_fold7flattenB6I_uB3W_NCINvNvXsi_B8n_B8A_B1i_8try_fold7flattenB6I_uB3W_QNCINvNvB1i_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBaT_6UniqueINtB8n_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB27_EIBbL_IB10_INtNtNtNtBc6_11collections5btree3map5RangeB27_B3c_EB4D_EB6I_B83_ENCNvXs0_B4K_B5t_NtNtB4O_8read_ops12GeoIndexRead8iterator0EEB1i_4next0E0E0E0E0E0B2f_.exit.i.i, %bb.a, %bb.d, %select.unfold.loopexit.split.loop.exit15.i.i
  %.sroa.4.1.i = phi i32 [ undef, %bb.d ], [ undef, %bb.a ], [ %i.m, %select.unfold.loopexit.split.loop.exit15.i.i ], [ undef, %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashRINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEuINtNtNtBg_3ops12control_flow11ControlFlowmENCNvMs_NtNtNtB2b_9geo_index17mutable_geo_index5innerNtB4K_16InMemoryGeoIndex18stored_sub_regions0NCINvNtBc_3map12map_try_foldB25_INtNtBc_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuB3W_NCB4F_s_0NCINvNvMsg_NtBc_7flattenINtB8n_13FlattenCompatppE13iter_try_fold7flattenB6I_uB3W_NCINvNvXsi_B8n_B8A_B1i_8try_fold7flattenB6I_uB3W_QNCINvNvB1i_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBaT_6UniqueINtB8n_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB27_EIBbL_IB10_INtNtNtNtBc6_11collections5btree3map5RangeB27_B3c_EB4D_EB6I_B83_ENCNvXs0_B4K_B5t_NtNtB4O_8read_ops12GeoIndexRead8iterator0EEB1i_4next0E0E0E0E0E0B2f_.exit.i.i ]
  %.sroa.0.1.i = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 1, %select.unfold.loopexit.split.loop.exit15.i.i ], [ 0, %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashRINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEuINtNtNtBg_3ops12control_flow11ControlFlowmENCNvMs_NtNtNtB2b_9geo_index17mutable_geo_index5innerNtB4K_16InMemoryGeoIndex18stored_sub_regions0NCINvNtBc_3map12map_try_foldB25_INtNtBc_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuB3W_NCB4F_s_0NCINvNvMsg_NtBc_7flattenINtB8n_13FlattenCompatppE13iter_try_fold7flattenB6I_uB3W_NCINvNvXsi_B8n_B8A_B1i_8try_fold7flattenB6I_uB3W_QNCINvNvB1i_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBaT_6UniqueINtB8n_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB27_EIBbL_IB10_INtNtNtNtBc6_11collections5btree3map5RangeB27_B3c_EB4D_EB6I_B83_ENCNvXs0_B4K_B5t_NtNtB4O_8read_ops12GeoIndexRead8iterator0EEB1i_4next0E0E0E0E0E0B2f_.exit.i.i ]
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.0.1.i, 0
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.4.1.i, 1
  ret { i32, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENCNvNtB2B_24immutable_inverted_index41create_compressed_postings_with_positionss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5J_8for_each4callINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2B_9positions9PositionsENCINvMsk_B1O_INtB1O_3VecB6M_E14extend_trustedBN_E0E0EB2J_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 4 uses
  %.sroa.620.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !11, !noundef !5
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1268, !noalias !1269, !nonnull !5, !noundef !5 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val13.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1268, !noalias !1269, !nonnull !5, !noundef !5 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val13.i.i.i, %.val.i.i.i
  br i1 %.not.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.j = ptrtoint ptr %.val13.i.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = udiv i64 %i.l, 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 5 uses
  %.sroa.7.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %.promoted.i.i = load i32, ptr %i.n, align 8, !alias.scope !1270, !noalias !1269
  br label %bb.b

.split11.i.i:                                     ; preds = %_RNCNvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_index41create_compressed_postings_with_positionss_0Bd_.exit.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i32 %i.v, ptr %i.n, align 8, !alias.scope !1270, !noalias !1269
  br label %.body.i.i.i

bb.b:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %i.s = phi ptr [ %.val.i.i.i, %.lr.ph.i.i.i ], [ %i.y, %bb.g ] ; 5 uses
  %i.t = phi i32 [ %.promoted.i.i, %.lr.ph.i.i.i ], [ %i.v, %bb.g ] ; 2 uses
  %.val15.i.i.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i.i.i ], [ %i.ai, %bb.g ] ; 3 uses
  %.sroa.01.026.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.u, %bb.g ]
  %i.u = add nuw nsw i64 %.sroa.01.026.i.i.i, 1   ; 2 uses
  %i.v = add i32 %i.t, 1                          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  %i.w = icmp eq ptr %i.s, %.val13.i.i.i
  br i1 %i.w, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB18_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  store ptr %i.x, ptr %i.h, align 8, !alias.scope !1272, !noalias !1273
  %.sroa.018.0.copyload19.i.i.i = load i64, ptr %i.s, align 8, !noalias !1274
  %.sroa.620.0..sroa_idx21.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.0..sroa_idx21.i.i.i, i64 16, i1 false), !noalias !1274
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB18_.exit.i.i.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB18_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.y = phi ptr [ %i.x, %bb.c ], [ %i.s, %bb.b ]
  %.sroa.018.0.i.i.i = phi i64 [ %.sroa.018.0.copyload19.i.i.i, %bb.c ], [ -1, %bb.b ] ; 2 uses
  %i.z = icmp ne i64 %.sroa.018.0.i.i.i, -1
  call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.i.i.i, i64 16, i1 false), !noalias !1276
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1275
  store i32 %i.t, ptr %i.c, align 4, !noalias !1275
  store i64 %.sroa.018.0.i.i.i, ptr %i.b, align 8, !noalias !1277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1275
  %i.aa = load ptr, ptr %.sroa.7.8..sroa_idx.i.i.i, align 8, !noalias !1275, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = load i64, ptr %i.o, align 8, !noalias !1275, !noundef !5
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.ab
  store i64 -1, ptr %i.a, align 8, !noalias !1275
  store i64 -1, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1275
  store ptr %i.aa, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1275
  store ptr %i.ac, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1275
  store ptr %i.g, ptr %i.p, align 8, !noalias !1275
  store ptr %i.c, ptr %i.q, align 8, !noalias !1275
  invoke void @_RINvXs0_NtCs6cW95TQWYPl_12posting_list12posting_listINtB6_11PostingListNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTmB17_EE9from_iterINtNtNtB2X_8adapters3map3MapNtNtNtCs9jZsDbilXxj_7roaring6bitmap4iter4IterNCNCNvNtB1b_24immutable_inverted_index41create_compressed_postings_with_positionss_00EEB1j_(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.a)
          to label %bb.d unwind label %.split.i.i, !noalias !1278

.split.i.i:                                       ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB18_.exit.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  store i32 %i.v, ptr %i.n, align 8, !alias.scope !1270, !noalias !1269
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEBN_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #37
          to label %.body.i.i.i unwind label %bb.f, !noalias !1275

bb.d:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB18_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1275
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9jZsDbilXxj_7roaring6bitmap9container9ContainerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_index41create_compressed_postings_with_positionss_0Bd_.exit.i.i.i.i unwind label %.split7.i.i, !noalias !1275

.split7.i.i:                                      ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  store i32 %i.v, ptr %i.n, align 8, !alias.scope !1270, !noalias !1269
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9jZsDbilXxj_7roaring6bitmap9container9ContainerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i.i.i unwind label %bb.e, !noalias !1275

bb.e:                                             ; preds = %.split7.i.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !1275
  unreachable

bb.f:                                             ; preds = %.split.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !1275
  unreachable

_RNCNvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_index41create_compressed_postings_with_positionss_0Bd_.exit.i.i.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9jZsDbilXxj_7roaring6bitmap9container9ContainerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %.split11.i.i, !noalias !1276

bb.g:                                             ; preds = %_RNCNvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_index41create_compressed_postings_with_positionss_0Bd_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1275
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %.sroa.7.0.copyload, i64 %.val15.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ah, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false), !noalias !1278
  %i.ai = add i64 %.val15.i.i.i, 1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1276
  %exitcond.not.i.i.i = icmp eq i64 %i.u, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit.loopexit, label %bb.b, !llvm.loop !1264

.body.i.i.i:                                      ; preds = %.split7.i.i, %.split.i.i, %.split11.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ad, %.split.i.i ], [ %i.r, %.split11.i.i ], [ %i.ae, %.split7.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1276
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEEEB2F_.exit.i.i.i unwind label %bb.h, !noalias !1269

bb.h:                                             ; preds = %.body.i.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !1269
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEEEB2F_.exit.i.i.i: ; preds = %.body.i.i.i
  resume { ptr, i32 } %.pn.i.i.i

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit.loopexit: ; preds = %bb.g
  store i32 %i.v, ptr %i.n, align 8, !alias.scope !1270, !noalias !1269
  br label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit: ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit.loopexit, %bb.a
  %.val17.i.i.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ai, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit.loopexit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val17.i.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1276
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e), !noalias !1269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItermEIB1e_fEENCNvMs1_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12point_scorerNtB1V_14FilteredScorer23score_points_unfiltered0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3G_8for_each4callNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5G_3VecB4J_E14extend_trustedBN_E0E0EB21_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 10 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_0
