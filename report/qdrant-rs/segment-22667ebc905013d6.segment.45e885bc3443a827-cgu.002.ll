Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.002?download=true
inline.NumInlined: 8609
inline.NumDeleted: 4831
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtCsgNzSnKyKfuE_6either6EitherIBY_INtNtNtBa_7sources5empty5EmptyTNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdmEEINtNtB8_10filter_map9FilterMapINtNtB8_4take4TakeINtNtCs9XvERIT2X68_9itertools11unique_impl6UniqueINtNtNtCsdS7EUc5kOLy_4rand5distr12distribution4IterINtNtB4v_7uniform7UniformjENtNtNtB4x_4rngs6thread9ThreadRngjEEENCNvMNtNtB25_10id_tracker14point_mappingsNtB6l_13PointMappings25iter_random_with_behavior0EEIBY_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemB20_EL_EIB2S_B3l_NCINvNtNtNtB6n_15disk_id_tracker6reader4iter11iter_randomNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE0EEENCINvMs_NtNtNtB25_7segment9read_view5facetINtBbm_15SegmentReadViewNtNtNtB6n_15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtB25_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB25_15payload_storage20payload_storage_enum18PayloadStorageEnumBcg_NtNtNtB25_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtBdh_11field_index16field_index_base11field_index10FieldIndexEBer_NtBbo_10VectorDataE24collect_candidate_valuesNtNtBgM_11facet_index14FacetIndexEnumE0EB8o_8try_folduNCINvNvB8o_4find5checkmQNCBbe_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowmEEB25_:bb.a
.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1127 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1128
  store i32 %.sroa.5.0.copyload.i, ptr %i.a, align 4, !noalias !1129
  %i.g = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMs_NtNtNtCs607s0NAIaWN_7segment7segment9read_view5facetINtBY_15SegmentReadViewNtNtNtNtB12_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtB12_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB12_15payload_storage20payload_storage_enum18PayloadStorageEnumB29_NtNtNtB12_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB3o_11field_index16field_index_base11field_index10FieldIndexEB4y_NtB10_10VectorDataE24collect_candidate_valuesNtNtB6T_11facet_index14FacetIndexEnumEs_0INtB7_5FnMutTRmEE8call_mutB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a), !noalias !1130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1128
  br i1 %i.g, label %_RINvYINtCsgNzSnKyKfuE_6either6EitherIB4_INtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyTNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdmEEINtNtNtBJ_8adapters10filter_map9FilterMapINtNtB2p_4take4TakeINtNtCs9XvERIT2X68_9itertools11unique_impl6UniqueINtNtNtCsdS7EUc5kOLy_4rand5distr12distribution4IterINtNtB4a_7uniform7UniformjENtNtNtB4c_4rngs6thread9ThreadRngjEEENCNvMNtNtB1y_10id_tracker14point_mappingsNtB60_13PointMappings25iter_random_with_behavior0EEIB4_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBJ_6traits8iterator8Iteratorp4ItemB1t_EL_EIB2l_B2Z_NCINvNtNtNtB62_15disk_id_tracker6reader4iter11iter_randomNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE0EEEB83_8try_folduNCINvNtB2p_3map12map_try_foldB1t_muINtNtNtBL_3ops12control_flow11ControlFlowmENCINvMs_NtNtNtB1y_7segment9read_view5facetINtBcv_15SegmentReadViewNtNtNtB62_15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtB1y_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB1y_15payload_storage20payload_storage_enum18Payl, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1127
  call void @_RNvXs0_NtCsgNzSnKyKfuE_6either8iteratorINtB7_6EitherIBC_INtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyTNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdmEEINtNtNtBZ_8adapters10filter_map9FilterMapINtNtB2F_4take4TakeINtNtCs9XvERIT2X68_9itertools11unique_impl6UniqueINtNtNtCsdS7EUc5kOLy_4rand5distr12distribution4IterINtNtB4q_7uniform7UniformjENtNtNtB4s_4rngs6thread9ThreadRngjEEENCNvMNtNtB1O_10id_tracker14point_mappingsNtB6g_13PointMappings25iter_random_with_behavior0EEIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBZ_6traits8iterator8Iteratorp4ItemB1J_EL_EIB2B_B3f_NCINvNtNtNtB6i_15disk_id_tracker6reader4iter11iter_randomNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE0EEEB8j_4nextB1O_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0)
  %i.h = load i8, ptr %i.b, align 8, !range !21, !noalias !1127, !noundef !5
  %.not.i = icmp eq i8 %i.h, 2
  br i1 %.not.i, label %_RINvYINtCsgNzSnKyKfuE_6either6EitherIB4_INtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyTNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdmEEINtNtNtBJ_8adapters10filter_map9FilterMapINtNtB2p_4take4TakeINtNtCs9XvERIT2X68_9itertools11unique_impl6UniqueINtNtNtCsdS7EUc5kOLy_4rand5distr12distribution4IterINtNtB4a_7uniform7UniformjENtNtNtB4c_4rngs6thread9ThreadRngjEEENCNvMNtNtB1y_10id_tracker14point_mappingsNtB60_13PointMappings25iter_random_with_behavior0EEIB4_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBJ_6traits8iterator8Iteratorp4ItemB1t_EL_EIB2l_B2Z_NCINvNtNtNtB62_15disk_id_tracker6reader4iter11iter_randomNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE0EEEB83_8try_folduNCINvNtB2p_3map12map_try_foldB1t_muINtNtNtBL_3ops12control_flow11ControlFlowmENCINvMs_NtNtNtB1y_7segment9read_view5facetINtBcv_15SegmentReadViewNtNtNtB62_15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtB1y_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB1y_15payload_storage20payload_storage_enum18Payl, label %bb.b

_RINvYINtCsgNzSnKyKfuE_6either6EitherIB4_INtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyTNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdmEEINtNtNtBJ_8adapters10filter_map9FilterMapINtNtB2p_4take4TakeINtNtCs9XvERIT2X68_9itertools11unique_impl6UniqueINtNtNtCsdS7EUc5kOLy_4rand5distr12distribution4IterINtNtB4a_7uniform7UniformjENtNtNtB4c_4rngs6thread9ThreadRngjEEENCNvMNtNtB1y_10id_tracker14point_mappingsNtB60_13PointMappings25iter_random_with_behavior0EEIB4_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBJ_6traits8iterator8Iteratorp4ItemB1t_EL_EIB2l_B2Z_NCINvNtNtNtB62_15disk_id_tracker6reader4iter11iter_randomNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE0EEEB83_8try_folduNCINvNtB2p_3map12map_try_foldB1t_muINtNtNtBL_3ops12control_flow11ControlFlowmENCINvMs_NtNtNtB1y_7segment9read_view5facetINtBcv_15SegmentReadViewNtNtNtB62_15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtB1y_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB1y_15payload_storage20payload_storage_enum18Payl: ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.3.0.i = phi i32 [ undef, %bb.a ], [ %.sroa.5.0.copyload.i, %bb.b ], [ undef, %bb.c ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1127
  %i.i = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.j = insertvalue { i32, i32 } %i.i, i32 %.sroa.3.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { i32, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtCsgNzSnKyKfuE_6either6EitherINtNtNtBa_7sources5empty5EmptyTdmEEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBa_6traits12double_ended19DoubleEndedIteratorp4ItemB1W_EL_EENCNvXNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_index19numeric_field_indexINtB3K_21NumericFieldIndexViewINtNtB3M_7storage17NumericIndexInnerxEIB5C_dEEINtNtB3M_8read_ops11StreamRangeNtNtNtB3S_10data_types8order_by10OrderValueE12stream_ranges_0ENtNtB2F_8iterator8Iterator8try_folduNCINvNvB7Q_4find5checkTB6Q_mEQNCNvMNtNtNtB3S_7segment9read_view8order_byINtB91_15SegmentReadViewNtNtNtNtB3S_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtB3Q_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB3S_15payload_storage20payload_storage_enum18PayloadStorageEnumB9Y_NtNtNtB3S_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB3O_16field_index_base11field_index10FieldIndexEBcf_NtB93_10VectorDataE29filtered_read_by_value_streams_0E0INtNtNtBc_3ops12control_flow11ControlFlowB8M_EEB3S_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %2, ptr %i.c, align 8, !noalias !1147
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %i.e, align 8, !noalias !1147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1147
  call void @_RNvXs0_NtCsgNzSnKyKfuE_6either8iteratorINtB7_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyTdmEEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBV_6traits12double_ended19DoubleEndedIteratorp4ItemB1F_EL_EENtNtB2o_8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !1146
  %i.f = load i64, ptr %i.b, align 8, !range !16, !noalias !1147, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.j = load double, ptr %i.h, align 8, !noalias !1147, !noundef !5
  %i.k = load i32, ptr %i.i, align 8, !noalias !1147, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1148
  store i64 1, ptr %i.a, align 8, !noalias !1148
  store double %i.j, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1148
  store i32 %i.k, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1148
  %i.l = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtNtCs607s0NAIaWN_7segment7segment9read_view8order_byINtBV_15SegmentReadViewNtNtNtNtBZ_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtBZ_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBZ_15payload_storage20payload_storage_enum18PayloadStorageEnumB29_NtNtNtBZ_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB3n_11field_index16field_index_base11field_index10FieldIndexEB4w_NtBX_10VectorDataE29filtered_read_by_value_streams_0INtB7_5FnMutTRTNtNtNtBZ_10data_types8order_by10OrderValuemEEE8call_mutBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a), !noalias !1149
  br i1 %i.l, label %bb.c, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1147
  store i64 2, ptr %0, align 8, !alias.scope !1150, !noalias !1151
  br label %_RINvYINtCsgNzSnKyKfuE_6either6EitherINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyTdmEEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBF_6traits12double_ended19DoubleEndedIteratorp4ItemB1p_EL_EENtNtB28_8iterator8Iterator8try_folduNCINvNtNtBF_8adapters3map12map_try_foldB1p_TNtNtNtCs607s0NAIaWN_7segment10data_types8order_by10OrderValuemEuINtNtNtBH_3ops12control_flow11ControlFlowB4p_ENCNvXNtNtNtNtB4w_5index11field_index13numeric_index19numeric_field_indexINtB6h_21NumericFieldIndexViewINtNtB6j_7storage17NumericIndexInnerxEIB7R_dEEINtNtB6j_8read_ops11StreamRangeB4q_E12stream_ranges_0NCINvNvB38_4find5checkB4p_QNCNvMNtNtNtB4w_7segment9read_view8order_byINtB9Z_15SegmentReadViewNtNtNtNtB4w_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtB6n_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB4w_15payload_storage20payload_storage_enum18PayloadStorageEnumBaW_NtNtNtB4w_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB6l_16field_index_base11field_index10FieldIndexEBdd_NtBa1

bb.c:                                             ; preds = %bb.b
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !1151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1148
  store i64 1, ptr %0, align 8, !alias.scope !1152, !noalias !1151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1147
  br label %_RINvYINtCsgNzSnKyKfuE_6either6EitherINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyTdmEEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBF_6traits12double_ended19DoubleEndedIteratorp4ItemB1p_EL_EENtNtB28_8iterator8Iterator8try_folduNCINvNtNtBF_8adapters3map12map_try_foldB1p_TNtNtNtCs607s0NAIaWN_7segment10data_types8order_by10OrderValuemEuINtNtNtBH_3ops12control_flow11ControlFlowB4p_ENCNvXNtNtNtNtB4w_5index11field_index13numeric_index19numeric_field_indexINtB6h_21NumericFieldIndexViewINtNtB6j_7storage17NumericIndexInnerxEIB7R_dEEINtNtB6j_8read_ops11StreamRangeB4q_E12stream_ranges_0NCINvNvB38_4find5checkB4p_QNCNvMNtNtNtB4w_7segment9read_view8order_byINtB9Z_15SegmentReadViewNtNtNtNtB4w_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtB6n_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB4w_15payload_storage20payload_storage_enum18PayloadStorageEnumBaW_NtNtNtB4w_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB6l_16field_index_base11field_index10FieldIndexEBdd_NtBa1

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1147
  call void @_RNvXs0_NtCsgNzSnKyKfuE_6either8iteratorINtB7_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyTdmEEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBV_6traits12double_ended19DoubleEndedIteratorp4ItemB1F_EL_EENtNtB2o_8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !1146
  %i.m = load i64, ptr %i.b, align 8, !range !16, !noalias !1147, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.b, label %._crit_edge.i

_RINvYINtCsgNzSnKyKfuE_6either6EitherINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyTdmEEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBF_6traits12double_ended19DoubleEndedIteratorp4ItemB1p_EL_EENtNtB28_8iterator8Iterator8try_folduNCINvNtNtBF_8adapters3map12map_try_foldB1p_TNtNtNtCs607s0NAIaWN_7segment10data_types8order_by10OrderValuemEuINtNtNtBH_3ops12control_flow11ControlFlowB4p_ENCNvXNtNtNtNtB4w_5index11field_index13numeric_index19numeric_field_indexINtB6h_21NumericFieldIndexViewINtNtB6j_7storage17NumericIndexInnerxEIB7R_dEEINtNtB6j_8read_ops11StreamRangeB4q_E12stream_ranges_0NCINvNvB38_4find5checkB4p_QNCNvMNtNtNtB4w_7segment9read_view8order_byINtB9Z_15SegmentReadViewNtNtNtNtB4w_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtB6n_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB4w_15payload_storage20payload_storage_enum18PayloadStorageEnumBaW_NtNtNtB4w_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB6l_16field_index_base11field_index10FieldIndexEBdd_NtBa1: ; preds = %._crit_edge.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtCsgNzSnKyKfuE_6either6EitherINtNtNtBa_7sources5empty5EmptyTxmEEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBa_6traits12double_ended19DoubleEndedIteratorp4ItemB1W_EL_EENCNvXNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_index19numeric_field_indexINtB3K_21NumericFieldIndexViewINtNtB3M_7storage17NumericIndexInnerxEIB5C_dEEINtNtB3M_8read_ops11StreamRangeNtNtNtB3S_10data_types8order_by10OrderValueE12stream_range0ENtNtB2F_8iterator8Iterator8try_folduNCINvNvB7O_4find5checkTB6Q_mEQNCNvMNtNtNtB3S_7segment9read_view8order_byINtB8Z_15SegmentReadViewNtNtNtNtB3S_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtB3Q_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB3S_15payload_storage20payload_storage_enum18PayloadStorageEnumB9W_NtNtNtB3S_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB3O_16field_index_base11field_index10FieldIndexEBcd_NtB91_10VectorDataE29filtered_read_by_value_streams_0E0INtNtNtBc_3ops12control_flow11ControlFlowB8K_EEB3S_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
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
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorENCINvMs2_NtNtNtB1u_5index10hnsw_index12point_scorerNtB2x_21BatchFilteredSearcher3newNtNtNtB1u_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB3O_9quantized17quantized_vectors16QuantizedVectorsE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtB1u_6common15operation_error14OperationErrorEEB5M_8try_folduNCINvNvB5M_12try_for_each4callNtB2x_11BatchSearchINtNtNtBc_3ops12control_flow11ControlFlowB8V_ENcNtB9e_5Break0E0B9e_E0IB9f_B9e_EEB1u_:bb.a
  store ptr %.sroa.9.022.i, ptr %.sroa.7.0..sroa_idx8.i, align 8, !alias.scope !8711, !noalias !8669
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtNtBQ_5index10hnsw_index12point_scorer11BatchSearchNtNtNtBQ_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5n_B3D_EENCINvMs2_B3F_NtB3F_21BatchFilteredSearcher3newNtNtNtBQ_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB70_9quantized17quantized_vectors16QuantizedVectorsE0NCINvXB2G_INtB2G_12GenericShuntINtB2E_3MapB3_B6c_EIB3i_zB4x_EEB1K_8try_folduNCINvNvB1K_12try_for_each4callB3D_B61_NcNtB61_5Break0E0B61_E0E0B5m_EBQ_.exit

bb.aq:                                            ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorINtNtBa_6result6ResultNtNtNtNtB17_5index10hnsw_index12point_scorer11BatchSearchNtNtNtB17_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2m_EENCINvMs2_B2o_NtB2o_21BatchFilteredSearcher3newNtNtNtB17_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB5L_9quantized17quantized_vectors16QuantizedVectorsE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4X_EIB21_zB3h_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB97_12try_for_each4callB2m_B4M_NcNtB4M_5Break0E0B4M_E0E0B17_.exit.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorINtNtBa_6result6ResultNtNtNtNtB17_5index10hnsw_index12point_scorer11BatchSearchNtNtNtB17_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2m_EENCINvMs2_B2o_NtB2o_21BatchFilteredSearcher3newNtNtNtB17_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB5L_9quantized17quantized_vectors16QuantizedVectorsE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4X_EIB21_zB3h_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB97_12try_for_each4callB2m_B4M_NcNtB4M_5Break0E0B4M_E0E0B17_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75.i)
  %i.cw = icmp eq ptr %i.an, %i.y
  br i1 %i.cw, label %._crit_edge.i, label %bb.b

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtNtBQ_5index10hnsw_index12point_scorer11BatchSearchNtNtNtBQ_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5n_B3D_EENCINvMs2_B3F_NtB3F_21BatchFilteredSearcher3newNtNtNtBQ_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB70_9quantized17quantized_vectors16QuantizedVectorsE0NCINvXB2G_INtB2G_12GenericShuntINtB2E_3MapB3_B6c_EIB3i_zB4x_EEB1K_8try_folduNCINvNvB1K_12try_for_each4callB3D_B61_NcNtB61_5Break0E0B61_E0E0B5m_EBQ_.exit: ; preds = %._crit_edge.i, %.loopexit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorENCNvMNtNtNtNtNtB1u_5index10hnsw_index4hnsw9read_view6searchINtB2v_17HNSWIndexReadViewNtNtNtNtB1u_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1u_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB4X_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB2B_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB1u_15payload_storage20payload_storage_enum18PayloadStorageEnumB3L_B4T_NtNtNtNtB2B_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtB1u_6common15operation_error14OperationErrorEEBaR_8try_folduNCINvNvBaR_12try_for_each4callINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEINtNtNtBc_3ops12control_flow11ControlFlowBe0_ENcNtBfm_5Break0E0Bfm_E0IBfn_Bfm_EEB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef align 8 dereferenceable(96) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 10 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8728)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !8729, !noalias !8727, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !8729, !noalias !8727 ; 2 uses
  %i.e = icmp eq ptr %.promoted.i, %i.d
  br i1 %i.e, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtBQ_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5P_B3D_EENCNvMNtNtNtNtNtBQ_5index10hnsw_index4hnsw9read_view6searchINtB6L_17HNSWIndexReadViewNtNtNtNtBQ_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtBQ_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB9b_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB6R_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBQ_15payload_storage20payload_storage_enum18PayloadStorageEnumB80_B97_NtNtNtNtB6R_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0NCINvXB2G_INtB2G_12GenericShuntINtB2E_3MapB3_B6E_EIB3i_zB4Z_EEB1K_8try_folduNCINvNvB1K_12, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.f, align 8, !nonnull !5, !align !11 ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !nonnull !5, !align !11 ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8, !nonnull !5, !align !11 ; 2 uses
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !5, !align !11 ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8, !nonnull !5, !align !11 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph.i
  %i.q = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.r, %bb.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  store ptr %i.r, ptr %1, align 8, !alias.scope !8729, !noalias !8727
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.val5.i = load ptr, ptr %i.q, align 8, !noalias !8730, !nonnull !5, !align !11, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8730
  %i.s = load i64, ptr %.val5.i, align 8, !range !17, !noalias !8731, !noundef !5
  %i.t = icmp eq i64 %i.s, -9223372036854775805
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.m, align 8, !noalias !8731, !align !11, !noundef !5
  %i.v = load i64, ptr %i.n, align 8, !noalias !8731, !noundef !5
  %i.w = load ptr, ptr %i.o, align 8, !noalias !8731, !align !11, !noundef !5
  call void @_RNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index4hnsw9read_view6searchINtB4_17HNSWIndexReadViewNtNtNtNtBc_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtBc_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB2M_9quantized17quantized_vectors16QuantizedVectorsINtNtNtBa_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBc_15payload_storage20payload_storage_enum18PayloadStorageEnumB1B_B2I_NtNtNtNtBa_11field_index16field_index_base11field_index10FieldIndexEE17search_with_graphBc_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.val5.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) %i.u, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(176) %i.w, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) null, i64 undef, ptr noundef nonnull align 8 %i.p), !noalias !8732
  br label %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index4hnsw9read_view6searchINtB6_17HNSWIndexReadViewNtNtNtNtBe_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtBe_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB2O_9quantized17quantized_vectors16QuantizedVectorsINtNtNtBc_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBe_15payload_storage20payload_storage_enum18PayloadStorageEnumB1D_B2K_NtNtNtNtBc_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0Be_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8731
  call fastcc void @_RNvXs4_NtNtNtCs607s0NAIaWN_7segment14vector_storage5query14discover_queryINtB5_13DiscoverQueryNtNtNtBb_10data_types7vectors14VectorInternalENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBb_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.x) #40, !noalias !8731
  %i.y = load ptr, ptr %i.m, align 8, !noalias !8731, !align !11, !noundef !5
  %i.z = load i64, ptr %i.n, align 8, !noalias !8731, !noundef !5
  %i.aa = load ptr, ptr %i.o, align 8, !noalias !8731, !align !11, !noundef !5
  call void @_RNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index4hnsw9read_view6searchINtB4_17HNSWIndexReadViewNtNtNtNtBc_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtBc_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB2M_9quantized17quantized_vectors16QuantizedVectorsINtNtNtBa_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBc_15payload_storage20payload_storage_enum18PayloadStorageEnumB1B_B2I_NtNtNtNtBa_11field_index16field_index_base11field_index10FieldIndexEE26discover_search_with_graphBc_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) %i.y, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(176) %i.aa, ptr noundef nonnull align 8 %i.p), !noalias !8732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8731
  br label %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index4hnsw9read_view6searchINtB6_17HNSWIndexReadViewNtNtNtNtBe_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtBe_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB2O_9quantized17quantized_vectors16QuantizedVectorsINtNtNtBc_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBe_15payload_storage20payload_storage_enum18PayloadStorageEnumB1D_B2K_NtNtNtNtBc_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0Be_.exit.i.i

_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index4hnsw9read_view6searchINtB6_17HNSWIndexReadViewNtNtNtNtBe_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtBe_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB2O_9quantized17quantized_vectors16QuantizedVectorsINtNtNtBc_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBe_15payload_storage20payload_storage_enum18PayloadStorageEnumB1D_B2K_NtNtNtNtBc_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0Be_.exit.i.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !noalias !8732 ; 3 uses
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !8732 ; 5 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index4hnsw9read_view6searchINtB6_17HNSWIndexReadViewNtNtNtNtBe_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtBe_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB2O_9quantized17quantized_vectors16QuantizedVectorsINtNtNtBc_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBe_15payload_storage20payload_storage_enum18PayloadStorageEnumB1D_B2K_NtNtNtNtBc_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0Be_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ac = load i64, ptr %3, align 8, !range !10, !alias.scope !8733, !noalias !8734, !noundef !5
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtB17_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4z_B2m_EENCNvMNtNtNtNtNtB17_5index10hnsw_index4hnsw9read_view6searchINtB5v_17HNSWIndexReadViewNtNtNtNtB17_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB17_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB7X_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB5B_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB17_15payload_storage20payload_storage_enum18PayloadStorageEnumB6L_B7T_NtNtNtNtB5B_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5o_EIB21_zB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBff_12try_for_each4call13, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %3)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtB17_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4z_B2m_EENCNvMNtNtNtNtNtB17_5index10hnsw_index4hnsw9read_view6searchINtB5v_17HNSWIndexReadViewNtNtNtNtB17_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB17_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB7X_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB5B_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB17_15payload_storage20payload_storage_enum18PayloadStorageEnumB6L_B7T_NtNtNtNtB5B_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5o_EIB21_zB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBff_12try_for_each4call13 unwind label %bb.h, !noalias !8734

bb.g:                                             ; preds = %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index4hnsw9read_view6searchINtB6_17HNSWIndexReadViewNtNtNtNtBe_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtBe_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB2O_9quantized17quantized_vectors16QuantizedVectorsINtNtNtBc_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBe_15payload_storage20payload_storage_enum18PayloadStorageEnumB1D_B2K_NtNtNtNtBc_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0Be_.exit.i.i
  %.not.i3.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i, -1
  br i1 %.not.i3.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtB17_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4z_B2m_EENCNvMNtNtNtNtNtB17_5index10hnsw_index4hnsw9read_view6searchINtB5v_17HNSWIndexReadViewNtNtNtNtB17_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB17_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB7X_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB5B_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB17_15payload_storage20payload_storage_enum18PayloadStorageEnumB6L_B7T_NtNtNtNtB5B_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5o_EIB21_zB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBff_12try_for_each4callB9, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtB17_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4z_B2m_EENCNvMNtNtNtNtNtB17_5index10hnsw_index4hnsw9read_view6searchINtB5v_17HNSWIndexReadViewNtNtNtNtB17_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB17_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB7X_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB5B_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB17_15payload_storage20payload_storage_enum18PayloadStorageEnumB6L_B7T_NtNtNtNtB5B_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5o_EIB21_zB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBff_12try_for_each4callB2

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtB17_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4z_B2m_EENCNvMNtNtNtNtNtB17_5index10hnsw_index4hnsw9read_view6searchINtB5v_17HNSWIndexReadViewNtNtNtNtB17_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB17_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB7X_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB5B_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB17_15payload_storage20payload_storage_enum18PayloadStorageEnumB6L_B7T_NtNtNtNtB5B_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5o_EIB21_zB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBff_12try_for_each4callB9: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8730
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !noalias !8734
  %.sroa.518.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.518.0..8.val.sroa_idx.i.i.i, align 8, !noalias !8734
  %.sroa.621.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.621.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !8732
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i64 64, i1 false), !noalias !8732
  resume { ptr, i32 } %i.ae

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtB17_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4z_B2m_EENCNvMNtNtNtNtNtB17_5index10hnsw_index4hnsw9read_view6searchINtB5v_17HNSWIndexReadViewNtNtNtNtB17_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB17_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB7X_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB5B_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB17_15payload_storage20payload_storage_enum18PayloadStorageEnumB6L_B7T_NtNtNtNtB5B_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5o_EIB21_zB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBff_12try_for_each4call13: ; preds = %bb.f, %bb.e
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !noalias !8734
  %.sroa.518.0..8.val.sroa_idx19.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.518.0..8.val.sroa_idx19.i.i.i, align 8, !noalias !8734
  %.sroa.621.0..8.val.sroa_idx22.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.621.0..8.val.sroa_idx22.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !8732
  %.sroa.7.0..8.val.sroa_idx23.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..8.val.sroa_idx23.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i64 64, i1 false), !noalias !8732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8730
  br label %.loopexit.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtB17_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4z_B2m_EENCNvMNtNtNtNtNtB17_5index10hnsw_index4hnsw9read_view6searchINtB5v_17HNSWIndexReadViewNtNtNtNtB17_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB17_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB7X_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB5B_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB17_15payload_storage20payload_storage_enum18PayloadStorageEnumB6L_B7T_NtNtNtNtB5B_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5o_EIB21_zB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBff_12try_for_each4callB2: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !8730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8730
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i, -2
  br i1 %.not.i.i, label %bb.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtB17_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4z_B2m_EENCNvMNtNtNtNtNtB17_5index10hnsw_index4hnsw9read_view6searchINtB5v_17HNSWIndexReadViewNtNtNtNtB17_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB17_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB7X_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB5B_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB17_15payload_storage20payload_storage_enum18PayloadStorageEnumB6L_B7T_NtNtNtNtB5B_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5o_EIB21_zB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBff_12try_for_each4callB2, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtB17_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4z_B2m_EENCNvMNtNtNtNtNtB17_5index10hnsw_index4hnsw9read_view6searchINtB5v_17HNSWIndexReadViewNtNtNtNtB17_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB17_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB7X_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB5B_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB17_15payload_storage20payload_storage_enum18PayloadStorageEnumB6L_B7T_NtNtNtNtB5B_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5o_EIB21_zB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBff_12try_for_each4call13
  %storemerge.i.i16.i = phi i64 [ -1, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtB17_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4z_B2m_EENCNvMNtNtNtNtNtB17_5index10hnsw_index4hnsw9read_view6searchINtB5v_17HNSWIndexReadViewNtNtNtNtB17_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB17_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB7X_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB5B_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB17_15payload_storage20payload_storage_enum18PayloadStorageEnumB6L_B7T_NtNtNtNtB5B_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5o_EIB21_zB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBff_12try_for_each4call13 ], [ %.sroa.4.0.copyload.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtB17_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4z_B2m_EENCNvMNtNtNtNtNtB17_5index10hnsw_index4hnsw9read_view6searchINtB5v_17HNSWIndexReadViewNtNtNtNtB17_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB17_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB7X_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB5B_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB17_15payload_storage20payload_storage_enum18PayloadStorageEnumB6L_B7T_NtNtNtNtB5B_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5o_EIB21_zB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBff_12try_for_each4callB2 ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !8728
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtBQ_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5P_B3D_EENCNvMNtNtNtNtNtBQ_5index10hnsw_index4hnsw9read_view6searchINtB6L_17HNSWIndexReadViewNtNtNtNtBQ_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtBQ_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB9b_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB6R_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBQ_15payload_storage20payload_storage_enum18PayloadStorageEnumB80_B97_NtNtNtNtB6R_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0NCINvXB2G_INtB2G_12GenericShuntINtB2E_3MapB3_B6E_EIB3i_zB4Z_EEB1K_8try_folduNCINvNvB1K_12

bb.i:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtB17_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4z_B2m_EENCNvMNtNtNtNtNtB17_5index10hnsw_index4hnsw9read_view6searchINtB5v_17HNSWIndexReadViewNtNtNtNtB17_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB17_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB7X_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB5B_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB17_15payload_storage20payload_storage_enum18PayloadStorageEnumB6L_B7T_NtNtNtNtB5B_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5o_EIB21_zB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBff_12try_for_each4callB2, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtB17_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4z_B2m_EENCNvMNtNtNtNtNtB17_5index10hnsw_index4hnsw9read_view6searchINtB5v_17HNSWIndexReadViewNtNtNtNtB17_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB17_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB7X_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB5B_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB17_15payload_storage20payload_storage_enum18PayloadStorageEnumB6L_B7T_NtNtNtNtB5B_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5o_EIB21_zB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBff_12try_for_each4callB9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.af = icmp eq ptr %i.r, %i.d
  br i1 %i.af, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtBQ_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5P_B3D_EENCNvMNtNtNtNtNtBQ_5index10hnsw_index4hnsw9read_view6searchINtB6L_17HNSWIndexReadViewNtNtNtNtBQ_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtBQ_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB9b_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB6R_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBQ_15payload_storage20payload_storage_enum18PayloadStorageEnumB80_B97_NtNtNtNtB6R_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0NCINvXB2G_INtB2G_12GenericShuntINtB2E_3MapB3_B6E_EIB3i_zB4Z_EEB1K_8try_folduNCINvNvB1K_12, label %bb.b

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtBQ_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5P_B3D_EENCNvMNtNtNtNtNtBQ_5index10hnsw_index4hnsw9read_view6searchINtB6L_17HNSWIndexReadViewNtNtNtNtBQ_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtBQ_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB9b_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB6R_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBQ_15payload_storage20payload_storage_enum18PayloadStorageEnumB80_B97_NtNtNtNtB6R_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0NCINvXB2G_INtB2G_12GenericShuntINtB2E_3MapB3_B6E_EIB3i_zB4Z_EEB1K_8try_folduNCINvNvB1K_12: ; preds = %bb.i, %bb.a, %.loopexit.i
  %storemerge.i = phi i64 [ %storemerge.i.i16.i, %.loopexit.i ], [ -2, %bb.a ], [ -2, %bb.i ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !8727, !noalias !8728
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1z_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1n_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB1n_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB44_8for_each4calljNCINvMsk_B3s_IB3q_jE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2r_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4j_IB4h_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ac, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load ptr, ptr %i.k, align 8, !alias.scope !8764, !noalias !8765, !nonnull !5, !noundef !5
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val16.i = load i64, ptr %i.l, align 8, !alias.scope !8764, !noalias !8765, !noundef !5
  %i.m = load i32, ptr %.sroa.4.0.copyload, align 4, !noalias !8766, !noundef !5
  %i.n = load i64, ptr %.sroa.5.0.copyload, align 8, !noalias !8766, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8767
  %i.o = zext i32 %i.m to i64
  store i64 %i.o, ptr %i.a, align 8, !noalias !8767
  store i64 0, ptr %i.j, align 8, !noalias !8767
  invoke fastcc void @_RNvXs_NtCs5tRDsWtv0pR_6wyhash6traitsNtB4_6WyHashNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val15.i, i64 noundef %.val16.i) #40
          to label %bb.d unwind label %bb.e, !noalias !8768

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.a, align 8, !alias.scope !8769, !noalias !8770
  %.promoted76.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !8769, !noalias !8770
  %i.q = xor i64 %i.p, -6884282663029611473
  %i.r = zext i64 %i.q to i128
  %i.s = mul nuw i128 %i.r, 16646288086500911140  ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %i.u = add i64 %.promoted76.i.i.i.i.i.i.i.i.i.i, 1
  %i.v = xor i64 %i.u, -1493879189771267739
  %.masked.i.i.i.i = and i128 %i.s, 18446744073709551612
  %i.w = xor i128 %i.t, %.masked.i.i.i.i
  %i.x = zext i64 %i.v to i128
  %i.y = mul nuw i128 %i.w, %i.x                  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8767
  %.masked.i.i.i = and i128 %i.y, 18446744073709551615
  %i.aa = xor i128 %i.z, %.masked.i.i.i
  %2 = zext i64 %i.n to i128
  %3 = mul nuw i128 %i.aa, %2
  %4 = lshr i128 %3, 64
  %5 = trunc nuw i128 %4 to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i64 %5, ptr %i.ab, align 8, !noalias !8771
  %i.ac = add i64 %.val10.i, 1                    ; 2 uses
  %i.ad = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.i
  br i1 %i.ae, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2r_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4j_IB4h_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !8768
  resume { ptr, i32 } %i.af

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2r_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4j_IB4h_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ac, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !8768
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReERNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1A_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1n_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB1n_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB45_8for_each4calljNCINvMsk_B3t_IB3r_jE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !11, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8781)
  %i.h = icmp eq ptr %i.b, %i.d
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val13.i = load ptr, ptr %i.a, align 8, !alias.scope !8781, !nonnull !5, !align !11, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val14.i = load i64, ptr %i.o, align 8, !alias.scope !8781, !noundef !5
  store i64 %.val14.i, ptr %.val13.i, align 8, !noalias !8781
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2s_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4k_IB4i_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit

bb.d:                                             ; preds = %bb.e, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.v, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.01.0.i
  %i.q = invoke noundef i64 @_RNvXs_NtNtNtCskKLDkoKarTP_4core3ops8function5implsRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtBW_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsReuINtNtCsexYYUdYSQU6_5alloc3vec3VecB2G_EE0INtB6_5FnMutTRB2G_EE8call_mutCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !8782)
  call void @llvm.experimental.noalias.scope.decl(metadata !8783)
  %i.r = load ptr, ptr %i.m, align 8, !alias.scope !8784, !noalias !8785, !noundef !5
  %i.s = load i64, ptr %i.n, align 8, !alias.scope !8784, !noalias !8785, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  store i64 %i.q, ptr %i.t, align 8, !noalias !8786
  %i.u = add i64 %i.s, 1                          ; 2 uses
  store i64 %i.u, ptr %i.n, align 8, !alias.scope !8784, !noalias !8785
  %i.v = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.l
  br i1 %i.w, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %.val11.i = load ptr, ptr %i.a, align 8, !alias.scope !8781, !nonnull !5, !align !11, !noundef !5
  store i64 %i.u, ptr %.val11.i, align 8
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2s_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4k_IB4i_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !8781, !nonnull !5, !align !11, !noundef !5
  %.val10.i = load i64, ptr %i.n, align 8, !alias.scope !8781, !noundef !5
  store i64 %.val10.i, ptr %.val.i, align 8
  resume { ptr, i32 } %i.x

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2s_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4k_IB4i_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRoENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1z_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1n_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB1n_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB44_8for_each4calljNCINvMsk_B3s_IB3q_jE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRoENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2r_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4j_IB4h_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.ac, %bb.c ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load ptr, ptr %i.j, align 8, !alias.scope !8805, !noalias !8806, !nonnull !5, !align !32, !noundef !5
  %i.k = load i32, ptr %.sroa.4.0.copyload, align 4, !noalias !8807, !noundef !5
  %i.l = load i64, ptr %.sroa.52.0.copyload, align 8, !noalias !8807, !noundef !5
  %i.m = zext i32 %i.k to i64
  %.val.i.i.i.i.i.i = load i128, ptr %.val15.i, align 16, !noalias !8808, !noundef !5 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i = trunc i128 %.val.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i = lshr i128 %.val.i.i.i.i.i.i, 96
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i = trunc nuw nsw i128 %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i to i64
  %i.n = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i, i64 %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i, i64 32)
  %i.o = xor i64 %i.n, %i.m
  %i.p = xor i64 %i.o, -6884282663029611473
  %sh.diff.i.i.i.i.i.i.i.i = lshr i128 %.val.i.i.i.i.i.i, 32
  %tr.sh.diff.i.i.i.i.i.i.i.i = trunc i128 %sh.diff.i.i.i.i.i.i.i.i to i64
  %i.q = and i64 %tr.sh.diff.i.i.i.i.i.i.i.i, -4294967296
  %i.r = or disjoint i64 %i.q, %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i
  %i.s = xor i64 %i.r, -8161530843051276573
  %i.t = zext i64 %i.p to i128
  %i.u = zext i64 %i.s to i128
  %i.v = mul nuw i128 %i.u, %i.t                  ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %.masked.i.i.i.i = and i128 %i.v, 18446744073709551615
  %i.x = xor i128 %i.w, %.masked.i.i.i.i
  %i.y = mul nuw i128 %i.x, 16952864883938283893  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %.masked.i.i.i = and i128 %i.y, 18446744073709551615
  %i.aa = xor i128 %i.z, %.masked.i.i.i
  %2 = zext i64 %i.l to i128
  %3 = mul nuw i128 %i.aa, %2
  %4 = lshr i128 %3, 64
  %5 = trunc nuw i128 %4 to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.i
  store i64 %5, ptr %i.ab, align 8, !noalias !8809
  %i.ac = add i64 %i.i, 1                         ; 2 uses
  %i.ad = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.h
  br i1 %i.ae, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRoENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2r_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4j_IB4h_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRoENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2r_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4j_IB4h_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ac, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !8810
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRoERNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1A_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1n_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB1n_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB45_8for_each4calljNCINvMsk_B3t_IB3r_jE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !11, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8820)
  %i.h = icmp eq ptr %i.b, %i.d
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val13.i = load ptr, ptr %i.a, align 8, !alias.scope !8820, !nonnull !5, !align !11, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val14.i = load i64, ptr %i.o, align 8, !alias.scope !8820, !noundef !5
  store i64 %.val14.i, ptr %.val13.i, align 8, !noalias !8820
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRoENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2s_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4k_IB4i_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit

bb.d:                                             ; preds = %bb.e, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.v, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.01.0.i
  %i.q = invoke noundef i64 @_RNvXs_NtNtNtCskKLDkoKarTP_4core3ops8function5implsRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtBW_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsRouINtNtCsexYYUdYSQU6_5alloc3vec3VecB2G_EE0INtB6_5FnMutTRB2G_EE8call_mutCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !8821)
  call void @llvm.experimental.noalias.scope.decl(metadata !8822)
  %i.r = load ptr, ptr %i.m, align 8, !alias.scope !8823, !noalias !8824, !noundef !5
  %i.s = load i64, ptr %i.n, align 8, !alias.scope !8823, !noalias !8824, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  store i64 %i.q, ptr %i.t, align 8, !noalias !8825
  %i.u = add i64 %i.s, 1                          ; 2 uses
  store i64 %i.u, ptr %i.n, align 8, !alias.scope !8823, !noalias !8824
  %i.v = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.l
  br i1 %i.w, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %.val11.i = load ptr, ptr %i.a, align 8, !alias.scope !8820, !nonnull !5, !align !11, !noundef !5
  store i64 %i.u, ptr %.val11.i, align 8
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRoENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2s_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4k_IB4i_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !8820, !nonnull !5, !align !11, !noundef !5
  %.val10.i = load i64, ptr %i.n, align 8, !alias.scope !8820, !noundef !5
  store i64 %.val10.i, ptr %.val.i, align 8
  resume { ptr, i32 } %i.x

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRoENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2s_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4k_IB4i_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRxENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1z_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1n_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB1n_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB44_8for_each4calljNCINvMsk_B3s_IB3q_jE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2r_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4j_IB4h_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %bb.c ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load ptr, ptr %i.j, align 8, !alias.scope !8844, !noalias !8845, !nonnull !5, !align !11, !noundef !5
  %i.k = load i32, ptr %.sroa.4.0.copyload, align 4, !noalias !8846, !noundef !5
  %i.l = load i64, ptr %.sroa.52.0.copyload, align 8, !noalias !8846, !noundef !5
  %i.m = zext i32 %i.k to i64
  %.val.i.i.i.i.i.i = load i64, ptr %.val15.i, align 8, !noalias !8847, !noundef !5 ; 2 uses
  %i.n = xor i64 %i.m, -6884282663029611473
  %i.o = tail call i64 @llvm.fshl.i64(i64 %.val.i.i.i.i.i.i, i64 %.val.i.i.i.i.i.i, i64 32)
  %i.p = xor i64 %i.o, -1800455987208640293
  %i.q = zext i64 %i.n to i128
  %i.r = zext i64 %i.p to i128
  %i.s = mul nuw i128 %i.r, %i.q                  ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %.masked.i.i.i.i = and i128 %i.s, 18446744073709551615
  %i.u = xor i128 %i.t, %.masked.i.i.i.i
  %i.v = mul nuw i128 %i.u, 16952864883938283885  ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %.masked.i.i.i = and i128 %i.v, 18446744073709551615
  %i.x = xor i128 %i.w, %.masked.i.i.i
  %2 = zext i64 %i.l to i128
  %3 = mul nuw i128 %i.x, %2
  %4 = lshr i128 %3, 64
  %5 = trunc nuw i128 %4 to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.i
  store i64 %5, ptr %i.y, align 8, !noalias !8848
  %i.z = add i64 %i.i, 1                          ; 2 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.h
  br i1 %i.ab, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2r_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4j_IB4h_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2r_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4j_IB4h_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !8849
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRxERNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1A_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1n_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB1n_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB45_8for_each4calljNCINvMsk_B3t_IB3r_jE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !11, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8859)
  %i.h = icmp eq ptr %i.b, %i.d
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val13.i = load ptr, ptr %i.a, align 8, !alias.scope !8859, !nonnull !5, !align !11, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val14.i = load i64, ptr %i.o, align 8, !alias.scope !8859, !noundef !5
  store i64 %.val14.i, ptr %.val13.i, align 8, !noalias !8859
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2s_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4k_IB4i_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit

bb.d:                                             ; preds = %bb.e, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.v, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.01.0.i
  %i.q = invoke noundef i64 @_RNvXs_NtNtNtCskKLDkoKarTP_4core3ops8function5implsRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtBW_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsRxuINtNtCsexYYUdYSQU6_5alloc3vec3VecB2G_EE0INtB6_5FnMutTRB2G_EE8call_mutCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !8860)
  call void @llvm.experimental.noalias.scope.decl(metadata !8861)
  %i.r = load ptr, ptr %i.m, align 8, !alias.scope !8862, !noalias !8863, !noundef !5
  %i.s = load i64, ptr %i.n, align 8, !alias.scope !8862, !noalias !8863, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  store i64 %i.q, ptr %i.t, align 8, !noalias !8864
  %i.u = add i64 %i.s, 1                          ; 2 uses
  store i64 %i.u, ptr %i.n, align 8, !alias.scope !8862, !noalias !8863
  %i.v = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.l
  br i1 %i.w, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %.val11.i = load ptr, ptr %i.a, align 8, !alias.scope !8859, !nonnull !5, !align !11, !noundef !5
  store i64 %i.u, ptr %.val11.i, align 8
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2s_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4k_IB4i_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !8859, !nonnull !5, !align !11, !noundef !5
  %.val10.i = load i64, ptr %i.n, align 8, !alias.scope !8859, !noundef !5
  store i64 %.val10.i, ptr %.val.i, align 8
  resume { ptr, i32 } %i.x

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2s_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4k_IB4i_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTfjEENCNvNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics16merge_histograms0ENtNtNtBa_6traits8iterator8Iterator4foldTRfjENCINvXs5_NtCs9XvERIT2X68_9itertools10merge_joinINtB3F_7MergeByBN_IBO_BX_NCB1u_s_0ENtB3F_8MergeLteEB2O_4foldB3r_NCINvXs0_NtNtB3H_8adaptors8coalesceINtB5s_10CoalesceByB4h_INtB5s_22DedupPred2CoalescePredNtB5s_7DedupEqENtB5s_7NoCountEB2O_4foldjNCNvYB5S_B7e_5count0Es_0E0EB1A_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8877)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTfjEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTRfjENCINvNtNtB11_8adapters3map8map_foldRBQ_B1G_B1F_NCNvNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics16merge_histograms0NCINvXs5_NtCs9XvERIT2X68_9itertools10merge_joinINtB3Z_7MergeByINtB1P_3MapBF_B2v_EIB4R_BF_NCB2x_s_0ENtB3Z_8MergeLteEBV_4foldB1F_NCINvXs0_NtNtB41_8adaptors8coalesceINtB62_10CoalesceByB4B_INtB62_22DedupPred2CoalescePredNtB62_7DedupEqENtB62_7NoCountEBV_4foldjNCNvYB6s_B7O_5count0Es_0E0E0EB2D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 4
  %.val.i.i.i = load ptr, ptr %4, align 8, !alias.scope !8877, !noalias !8878, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.05.0.i = phi i64 [ 0, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.6.0.i = phi i64 [ %3, %bb.b ], [ %.sroa.3.0.i.i.i.i, %bb.c ]
  %.sroa.02.0.i = phi ptr [ %2, %bb.b ], [ %i.j, %bb.c ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.05.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8879
  call void @_RNvXs6_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceINtB5_22DedupPred2CoalescePredNtB5_7DedupEqEINtB5_17CoalescePredicateRfB1W_E13coalesce_pairCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.sroa.02.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h), !noalias !8877
  %i.i = load ptr, ptr %i.a, align 8, !noalias !8879, !noundef !5
  %.not.i.i.i.i = icmp ne ptr %i.i, null
  %i.j = load ptr, ptr %i.g, align 8, !noalias !8879, !nonnull !5, !align !27 ; 2 uses
  %i.k = zext i1 %.not.i.i.i.i to i64
  %.sroa.3.0.i.i.i.i = add i64 %.sroa.6.0.i, %i.k ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8879
  %i.l = add nuw i64 %.sroa.05.0.i, 1             ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.f
  br i1 %i.m, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTfjEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTRfjENCINvNtNtB11_8adapters3map8map_foldRBQ_B1G_B1F_NCNvNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics16merge_histograms0NCINvXs5_NtCs9XvERIT2X68_9itertools10merge_joinINtB3Z_7MergeByINtB1P_3MapBF_B2v_EIB4R_BF_NCB2x_s_0ENtB3Z_8MergeLteEBV_4foldB1F_NCINvXs0_NtNtB41_8adaptors8coalesceINtB62_10CoalesceByB4B_INtB62_22DedupPred2CoalescePredNtB62_7DedupEqENtB62_7NoCountEBV_4foldjNCNvYB6s_B7O_5count0Es_0E0E0EB2D_.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTfjEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTRfjENCINvNtNtB11_8adapters3map8map_foldRBQ_B1G_B1F_NCNvNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics16merge_histograms0NCINvXs5_NtCs9XvERIT2X68_9itertools10merge_joinINtB3Z_7MergeByINtB1P_3MapBF_B2v_EIB4R_BF_NCB2x_s_0ENtB3Z_8MergeLteEBV_4foldB1F_NCINvXs0_NtNtB41_8adaptors8coalesceINtB62_10CoalesceByB4B_INtB62_22DedupPred2CoalescePredNtB62_7DedupEqENtB62_7NoCountEBV_4foldjNCNvYB6s_B7O_5count0Es_0E0E0EB2D_.exit: ; preds = %bb.c, %bb.a
  %.pn16.i = phi ptr [ %2, %bb.a ], [ %i.j, %bb.c ]
  %.pn14.i = phi i64 [ %3, %bb.a ], [ %.sroa.3.0.i.i.i.i, %bb.c ]
  %.pn.i = insertvalue { ptr, i64 } poison, ptr %.pn16.i, 0
  %.merged.i = insertvalue { ptr, i64 } %.pn.i, i64 %.pn14.i, 1
  ret { ptr, i64 } %.merged.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTfjEENCNvNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics16merge_histogramss_0ENtNtNtBa_6traits8iterator8Iterator4foldTRfjENCINvXs5_NtCs9XvERIT2X68_9itertools10merge_joinINtB3H_7MergeByIBO_BX_NCB1u_0EBN_NtB3H_8MergeLteEB2Q_4foldB3t_NCINvXs0_NtNtB3J_8adaptors8coalesceINtB5s_10CoalesceByB4j_INtB5s_22DedupPred2CoalescePredNtB5s_7DedupEqENtB5s_7NoCountEB2Q_4foldjNCNvYB5S_B7e_5count0Es_0Es_0EB1A_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8892)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTfjEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTRfjENCINvNtNtB11_8adapters3map8map_foldRBQ_B1G_B1F_NCNvNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics16merge_histogramss_0NCINvXs5_NtCs9XvERIT2X68_9itertools10merge_joinINtB41_7MergeByINtB1P_3MapBF_NCB2x_0EIB4T_BF_B2v_ENtB41_8MergeLteEBV_4foldB1F_NCINvXs0_NtNtB43_8adaptors8coalesceINtB62_10CoalesceByB4D_INtB62_22DedupPred2CoalescePredNtB62_7DedupEqENtB62_7NoCountEBV_4foldjNCNvYB6s_B7O_5count0Es_0Es_0E0EB2D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 4
  %.val.i.i.i = load ptr, ptr %4, align 8, !alias.scope !8892, !noalias !8893, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.05.0.i = phi i64 [ 0, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.6.0.i = phi i64 [ %3, %bb.b ], [ %.sroa.3.0.i.i.i.i, %bb.c ]
  %.sroa.02.0.i = phi ptr [ %2, %bb.b ], [ %i.j, %bb.c ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.05.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8894
  call void @_RNvXs6_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceINtB5_22DedupPred2CoalescePredNtB5_7DedupEqEINtB5_17CoalescePredicateRfB1W_E13coalesce_pairCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.sroa.02.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h), !noalias !8892
  %i.i = load ptr, ptr %i.a, align 8, !noalias !8894, !noundef !5
  %.not.i.i.i.i = icmp ne ptr %i.i, null
  %i.j = load ptr, ptr %i.g, align 8, !noalias !8894, !nonnull !5, !align !27 ; 2 uses
  %i.k = zext i1 %.not.i.i.i.i to i64
  %.sroa.3.0.i.i.i.i = add i64 %.sroa.6.0.i, %i.k ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8894
  %i.l = add nuw i64 %.sroa.05.0.i, 1             ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.f
  br i1 %i.m, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTfjEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTRfjENCINvNtNtB11_8adapters3map8map_foldRBQ_B1G_B1F_NCNvNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics16merge_histogramss_0NCINvXs5_NtCs9XvERIT2X68_9itertools10merge_joinINtB41_7MergeByINtB1P_3MapBF_NCB2x_0EIB4T_BF_B2v_ENtB41_8MergeLteEBV_4foldB1F_NCINvXs0_NtNtB43_8adaptors8coalesceINtB62_10CoalesceByB4D_INtB62_22DedupPred2CoalescePredNtB62_7DedupEqENtB62_7NoCountEBV_4foldjNCNvYB6s_B7O_5count0Es_0Es_0E0EB2D_.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTfjEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTRfjENCINvNtNtB11_8adapters3map8map_foldRBQ_B1G_B1F_NCNvNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics16merge_histogramss_0NCINvXs5_NtCs9XvERIT2X68_9itertools10merge_joinINtB41_7MergeByINtB1P_3MapBF_NCB2x_0EIB4T_BF_B2v_ENtB41_8MergeLteEBV_4foldB1F_NCINvXs0_NtNtB43_8adaptors8coalesceINtB62_10CoalesceByB4D_INtB62_22DedupPred2CoalescePredNtB62_7DedupEqENtB62_7NoCountEBV_4foldjNCNvYB6s_B7O_5count0Es_0Es_0E0EB2D_.exit: ; preds = %bb.c, %bb.a
  %.pn16.i = phi ptr [ %2, %bb.a ], [ %i.j, %bb.c ]
  %.pn14.i = phi i64 [ %3, %bb.a ], [ %.sroa.3.0.i.i.i.i, %bb.c ]
  %.pn.i = insertvalue { ptr, i64 } poison, ptr %.pn16.i, 0
  %.merged.i = insertvalue { ptr, i64 } %.pn.i, i64 %.pn14.i, 1
  ret { ptr, i64 } %.merged.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTfjEENCNvNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics19anonymize_histogram0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callB1n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB47_3VecB1n_E14extend_trustedBN_E0E0EB1A_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTfjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCNvNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics19anonymize_histogram0NCINvNvBV_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4l_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0EB2v_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load float, ptr %i.f, align 8, !alias.scope !8906, !noalias !8907, !noundef !5
  %i.i = invoke noundef i64 @_RNvXs6_NtNtCs607s0NAIaWN_7segment6common9anonymizejNtB5_9Anonymize9anonymize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.d unwind label %bb.e, !noalias !8908

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 2 uses
  store float %i.h, ptr %i.j, align 8, !noalias !8909
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
end_hunk_1
begin_hunk_2_@llvm.x86.vcvtps2ph.128
declare <8 x i16> @llvm.x86.vcvtps2ph.128(<4 x float>, i32 immarg) #32

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtBO_10data_types7vectors14VectorInternalEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBO_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #33

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_NtB4_11PartialDrop12partial_dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1B_3vec3VecfEEEj1_NtB4_11PartialDrop12partial_dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(48), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtB6_5Debug3fmtB17_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCslmvYCXbQjWR_6common4mmap7mmap_rw5ErrorNtB6_5Debug3fmtCs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsdCrN8tpH0az_7bincode5error9ErrorKindENtB6_5Debug3fmtCs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtCsBu2QeCqx40_8bytemuck12PodCastErrorNtB6_5Debug3fmtCs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std4path7PathBufNtB6_5Debug3fmtCs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsG_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRyNtB6_5Debug3fmtCs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1r_4SyncEL_ENtB6_5Debug3fmtCs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs9_NtCs1i37ktrehWY_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCNvMs8_B6_Bv_6offset0ECs607s0NAIaWN_7segment(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs9_NtCs1i37ktrehWY_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCNvMs8_B6_Bv_15wrapping_offset0ECs607s0NAIaWN_7segment(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBL_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #28

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs607s0NAIaWN_7segment9json_pathNtB4_8JsonPathNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs5LEDvFxVFYt_14atomic_refcell13AtomicRefCellNtNtNtCs607s0NAIaWN_7segment5index17vector_index_base15VectorIndexEnumEE9drop_slowB1y_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs607s0NAIaWN_7segment6common5flags20dynamic_stored_flags18DynamicStoredFlagsNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEE9drop_slowB2h_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtCshCxqDMlkfB2_7memmap27MmapRawEE9drop_slowCslmvYCXbQjWR_6common(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexbEE9drop_slowCslmvYCXbQjWR_6common(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtCsawMg70ExlpE_9blobstore7tracker7TrackerNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEE9drop_slowB2i_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapmbEEE9drop_slowCs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtCsawMg70ExlpE_9blobstore7tracker11append_only17AppendOnlyTrackerNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEE9drop_slowB2k_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore8logstore4page15AppendOnlyPagesNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEE9drop_slowB2m_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore5pages5PagesNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEE9drop_slowB2m_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmask7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEE9drop_slowB2m_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std4sync9once_lock8OnceLockNtNtCs3TE53SMfxyL_6fs_err4file4FileEE9drop_slowCslmvYCXbQjWR_6common(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs6KyyKVsJz8w_20qdrant_rust_stemmers7StemmerE9drop_slowCs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap6MmapFsE9drop_slowCs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index10stop_words15StopwordsFilterE9drop_slowBQ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16VectorDataConfigENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1q_(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types22SparseVectorDataConfigENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1q_(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtBO_10data_types7vectors14VectorInternalEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBO_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsc_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core7default7Default7defaultCs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCsjpNT60X9mgn_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtB8_5alloc5inner6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtB6_5Debug3fmtCs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMNtNtNtCsinALYEoamBN_6bitvec5slice14specialization4lsb0INtB6_8BitSliceyE13sp_first_zeroCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs607s0NAIaWN_7segment9json_path8JsonPathINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtBO_5index11field_index16field_index_base11field_index10FieldIndexEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs9XvERIT2X68_9itertools6minmax11minmax_implINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBV_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB24_23compressed_posting_listNtB3i_24CompressedPostingBuilder5buildNtNtNtB26_6common5types11QuantizedU8Es_0EuNCNvYBM_NtB4_9Itertools6minmax0NCB57_s_0ECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { double, double } @_RNvMs1_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CowNtNtCs607s0NAIaWN_7segment5types8GeoPointE10into_ownedBM_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs1_NtNtNtCsawMg70ExlpE_9blobstore9blobstore8logstore4pageINtB5_14AppendOnlyPageNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE7flusherCs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs1_NtNtNtCsawMg70ExlpE_9blobstore9blobstore8logstore4pageINtB5_14AppendOnlyPageNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileE7flusherCs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RNvXs9_NtNtCs607s0NAIaWN_7segment10data_types6facetsINtB5_8FacetHitNtB5_10FacetValueENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpB9_(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #28

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+f16c,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #26 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #27 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #33 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #35 = { cold noreturn nounwind }
attributes #36 = { nounwind }
attributes #37 = { cold }
attributes #38 = { noinline }
attributes #39 = { noinline noreturn }
attributes #40 = { inlinehint }
attributes #41 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{i64 -2, i64 -9223372036854775808}
!5 = !{}
!6 = !{i64 -1, i64 -9223372036854775808}
!7 = !{i64 0, i64 -9223372036854775808}
!8 = !{i64 1, i64 536870913}
!9 = !{i64 -1, i64 -9223372036854775805}
!10 = !{i64 -1, i64 -9223372036854775788}
!11 = !{i64 8}
!12 = !{i64 0, i64 -9223372036854775805}
!13 = !{i64 0, i64 -9223372036854775806}
!14 = !{i64 -1, i64 10}
!15 = !{i64 -1, i64 3}
!16 = !{i64 0, i64 2}
!17 = !{i64 0, i64 -9223372036854775803}
!18 = !{i64 0, i64 -9223372036854775788}
!19 = !{i64 0, i64 -9223372036854775793}
!20 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!21 = !{i8 0, i8 3}
!22 = !{i8 0, i8 2}
!23 = !{!"branch_weights", i32 4001, i32 4000000}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{i64 0, i64 3}
!27 = !{i64 4}
!28 = !{i32 0, i32 2}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = !{i64 0, i64 -9223372036854775807}
!31 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!32 = !{i64 16}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{i8 0, i8 4}
!35 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!36 = !{i64 -1, i64 -9223372036854775793}
!37 = !{!"address", !"read_provenance"}
!38 = !{i32 -1, i32 9}
!39 = !{i128 0, i128 2}
!40 = !{i64 -2, i64 10}
!41 = !{i64 -1, i64 4}
!42 = distinct !{!42, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3Sd3Uuv2szn_7tinyvec8arrayvec16ArrayVecIteratorATINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors9CowVectorEj3_EEB2d_"}
!43 = distinct !{!43, !42, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3Sd3Uuv2szn_7tinyvec8arrayvec16ArrayVecIteratorATINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors9CowVectorEj3_EEB2d_: argument 0"}
!44 = distinct !{!44, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors9CowVectorEj3_EB1l_"}
!45 = distinct !{!45, !44, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors9CowVectorEj3_EB1l_: argument 0"}
!46 = distinct !{!46, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors9CowVectorEEB1l_"}
!47 = distinct !{!47, !46, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors9CowVectorEEB1l_: argument 0"}
!48 = distinct !{!48, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors9CowVectorEEB1k_"}
!49 = distinct !{!49, !48, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors9CowVectorEEB1k_: argument 0"}
!50 = distinct !{!50, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs607s0NAIaWN_7segment"}
!51 = distinct !{!51, !50, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs607s0NAIaWN_7segment: argument 0"}
!52 = !{!51, !49, !47, !45, !43}
!53 = distinct !{!53, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore9GridstoreINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringENtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEECs607s0NAIaWN_7segment"}
!54 = distinct !{!54, !53, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore9GridstoreINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringENtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEECs607s0NAIaWN_7segment: argument 0"}
!55 = distinct !{!55, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtCsawMg70ExlpE_9blobstore7tracker7TrackerNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEEECs607s0NAIaWN_7segment"}
!56 = distinct !{!56, !55, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtCsawMg70ExlpE_9blobstore7tracker7TrackerNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEEECs607s0NAIaWN_7segment: argument 0"}
!57 = distinct !{!57, i1 false, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtCsawMg70ExlpE_9blobstore7tracker7TrackerNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment"}
!58 = distinct !{!58, !57, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtCsawMg70ExlpE_9blobstore7tracker7TrackerNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment: argument 0"}
!59 = distinct !{!59, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore5pages5PagesNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEEECs607s0NAIaWN_7segment"}
!60 = distinct !{!60, !59, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore5pages5PagesNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEEECs607s0NAIaWN_7segment: argument 0"}
!61 = distinct !{!61, i1 false, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore5pages5PagesNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment"}
!62 = distinct !{!62, !61, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore5pages5PagesNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment: argument 0"}
!63 = distinct !{!63, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore5pages5PagesNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEEECs607s0NAIaWN_7segment"}
!64 = distinct !{!64, !63, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore5pages5PagesNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEEECs607s0NAIaWN_7segment: argument 0"}
!65 = distinct !{!65, i1 false, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore5pages5PagesNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment"}
!66 = distinct !{!66, !65, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore5pages5PagesNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment: argument 0"}
!67 = distinct !{!67, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmask7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEEECs607s0NAIaWN_7segment"}
!68 = distinct !{!68, !67, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmask7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEEECs607s0NAIaWN_7segment: argument 0"}
!69 = distinct !{!69, i1 false, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmask7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment"}
!70 = distinct !{!70, !69, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmask7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment: argument 0"}
!71 = distinct !{!71, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmask7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEEECs607s0NAIaWN_7segment"}
!72 = distinct !{!72, !71, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmask7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEEECs607s0NAIaWN_7segment: argument 0"}
!73 = distinct !{!73, i1 false, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmask7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment"}
!74 = distinct !{!74, !73, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmask7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment: argument 0"}
!75 = distinct !{!75, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexbEEECs607s0NAIaWN_7segment"}
!76 = distinct !{!76, !75, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexbEEECs607s0NAIaWN_7segment: argument 0"}
!77 = distinct !{!77, i1 false, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment"}
!78 = distinct !{!78, !77, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment: argument 0"}
!79 = distinct !{!79, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common13is_alive_lock11IsAliveLockECs607s0NAIaWN_7segment"}
!80 = distinct !{!80, !79, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common13is_alive_lock11IsAliveLockECs607s0NAIaWN_7segment: argument 0"}
!81 = distinct !{!81, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexbEEECs607s0NAIaWN_7segment"}
!82 = distinct !{!82, !81, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexbEEECs607s0NAIaWN_7segment: argument 0"}
!83 = distinct !{!83, i1 false, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment"}
!84 = distinct !{!84, !83, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment: argument 0"}
!85 = distinct !{!85, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsawMg70ExlpE_9blobstore9blobstore8logstore8LogstoreINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringENtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEECs607s0NAIaWN_7segment"}
!86 = distinct !{!86, !85, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsawMg70ExlpE_9blobstore9blobstore8logstore8LogstoreINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringENtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEECs607s0NAIaWN_7segment: argument 0"}
!87 = distinct !{!87, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtCsawMg70ExlpE_9blobstore7tracker11append_only17AppendOnlyTrackerNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEEECs607s0NAIaWN_7segment"}
!88 = distinct !{!88, !87, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtCsawMg70ExlpE_9blobstore7tracker11append_only17AppendOnlyTrackerNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEEECs607s0NAIaWN_7segment: argument 0"}
!89 = distinct !{!89, i1 false, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtCsawMg70ExlpE_9blobstore7tracker11append_only17AppendOnlyTrackerNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment"}
!90 = distinct !{!90, !89, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtCsawMg70ExlpE_9blobstore7tracker11append_only17AppendOnlyTrackerNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment: argument 0"}
!91 = distinct !{!91, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore8logstore4page15AppendOnlyPagesNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEEECs607s0NAIaWN_7segment"}
!92 = distinct !{!92, !91, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore8logstore4page15AppendOnlyPagesNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEEECs607s0NAIaWN_7segment: argument 0"}
!93 = distinct !{!93, i1 false, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore8logstore4page15AppendOnlyPagesNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment"}
!94 = distinct !{!94, !93, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore8logstore4page15AppendOnlyPagesNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment: argument 0"}
!95 = distinct !{!95, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore8logstore4page15AppendOnlyPagesNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEEECs607s0NAIaWN_7segment"}
!96 = distinct !{!96, !95, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore8logstore4page15AppendOnlyPagesNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEEECs607s0NAIaWN_7segment: argument 0"}
!97 = distinct !{!97, i1 false, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore8logstore4page15AppendOnlyPagesNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment"}
!98 = distinct !{!98, !97, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsawMg70ExlpE_9blobstore9blobstore8logstore4page15AppendOnlyPagesNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment: argument 0"}
!99 = distinct !{!99, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexbEEECs607s0NAIaWN_7segment"}
!100 = distinct !{!100, !99, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexbEEECs607s0NAIaWN_7segment: argument 0"}
!101 = distinct !{!101, i1 false, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment"}
!102 = distinct !{!102, !101, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment: argument 0"}
!103 = distinct !{!103, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common13is_alive_lock11IsAliveLockECs607s0NAIaWN_7segment"}
!104 = distinct !{!104, !103, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common13is_alive_lock11IsAliveLockECs607s0NAIaWN_7segment: argument 0"}
!105 = distinct !{!105, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexbEEECs607s0NAIaWN_7segment"}
!106 = distinct !{!106, !105, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexbEEECs607s0NAIaWN_7segment: argument 0"}
!107 = distinct !{!107, i1 false, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment"}
!108 = distinct !{!108, !107, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment: argument 0"}
!109 = !{!54}
!110 = !{!56}
!111 = !{!58}
!112 = !{!58, !56, !54}
!113 = !{!60}
!114 = !{!62}
!115 = !{!62, !60, !54}
!116 = !{!62, !60}
!117 = !{!64}
!118 = !{!66}
!119 = !{!66, !64, !54}
!120 = !{!66, !64}
!121 = !{!68}
!122 = !{!70}
!123 = !{!70, !68, !54}
end_hunk_2
