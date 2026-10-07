Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.026?download=true
inline.NumInlined: 3532
inline.NumDeleted: 1939
begin_hunk_0_@_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalERDINtNtNtB7_3ops8function2FnTB22_EEp6OutputINtNtB7_6result6ResultB22_NtNtNtB28_6common15operation_error14OperationErrorEEL_EIB3N_zB4c_EENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB22_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB22_E0IB3N_B5Y_zEEB28_:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !align !10, !noundef !8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalERDINtNtNtBc_3ops8function2FnTB1L_EEp6OutputINtNtBc_6result6ResultB1L_NtNtNtB1R_6common15operation_error14OperationErrorEEL_ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvXB8_INtB8_12GenericShuntBN_IB3w_zB3V_EEB4O_8try_foldB5v_NCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0IB3w_B5v_zEE0INtNtB2V_12control_flow11ControlFlowB89_B5v_EEB1R_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.pn = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalERDINtNtNtB7_3ops8function2FnTB22_EEp6OutputINtNtB7_6result6ResultINtB1j_3VecfENtNtNtB28_6common15operation_error14OperationErrorEEL_EIB3N_zB4l_EENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB48_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB48_E0IB3N_B67_zEEB28_(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !align !10, !noundef !8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalERDINtNtNtBc_3ops8function2FnTB1L_EEp6OutputINtNtBc_6result6ResultINtB12_3VecfENtNtNtB1R_6common15operation_error14OperationErrorEEL_ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB3R_ENCINvXB8_INtB8_12GenericShuntBN_IB3w_zB44_EEB4X_8try_foldB5E_NCINvNtB12_16in_place_collect24write_in_place_with_dropB3R_E0IB3w_B5E_zEE0INtNtB2V_12control_flow11ControlFlowB8i_B5E_EEB1R_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.pn = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalERDINtNtNtB7_3ops8function2FnTB22_EEp6OutputINtNtB7_6result6ResultINtB24_21TypedMultiDenseVectorfENtNtNtB28_6common15operation_error14OperationErrorEEL_EIB3N_zB4E_EENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB48_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB48_E0IB3N_B6q_zEEB28_(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !align !10, !noundef !8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalERDINtNtNtBc_3ops8function2FnTB1L_EEp6OutputINtNtBc_6result6ResultINtB1N_21TypedMultiDenseVectorfENtNtNtB1R_6common15operation_error14OperationErrorEEL_ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB3R_ENCINvXB8_INtB8_12GenericShuntBN_IB3w_zB4n_EEB5g_8try_foldB5X_NCINvNtB12_16in_place_collect24write_in_place_with_dropB3R_E0IB3w_B5X_zEE0INtNtB2V_12control_flow11ControlFlowB8B_B5X_EEB1R_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.pn = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalERDINtNtNtB7_3ops8function2FnTB22_EEp6OutputINtNtB7_6result6ResultNtNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector12SparseVectorNtNtNtB28_6common15operation_error14OperationErrorEEL_EIB3N_zB59_EENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB48_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB48_E0IB3N_B6V_zEEB28_(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !align !10, !noundef !8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalERDINtNtNtBc_3ops8function2FnTB1L_EEp6OutputINtNtBc_6result6ResultNtNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector12SparseVectorNtNtNtB1R_6common15operation_error14OperationErrorEEL_ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB3R_ENCINvXB8_INtB8_12GenericShuntBN_IB3w_zB4S_EEB5L_8try_foldB6s_NCINvNtB12_16in_place_collect24write_in_place_with_dropB3R_E0IB3w_B6s_zEE0INtNtB2V_12control_flow11ControlFlowB96_B6s_EEB1R_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.pn = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base7builder17FieldIndexBuilderENCNvMNtNtB2a_20struct_payload_index5buildNtB3I_18StructPayloadIndex19build_field_indexess_0EINtNtB7_6result6ResultzNtNtNtB2c_6common15operation_error14OperationErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtNtB26_11field_index10FieldIndexENCINvNtB1j_16in_place_collect24write_in_place_with_dropB7A_E0IB56_B6Z_zEEB2c_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !align !10, !noundef !8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base7builder17FieldIndexBuilderENCNvMNtNtB1T_20struct_payload_index5buildNtB3r_18StructPayloadIndex19build_field_indexess_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB1P_11field_index10FieldIndexENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtB1V_6common15operation_error14OperationErrorEEB4O_8try_foldB5v_NCINvNtB12_16in_place_collect24write_in_place_with_dropB66_E0IB7b_B5v_zEE0INtNtNtBc_3ops12control_flow11ControlFlowB9D_B5v_EEB1V_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.pn = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCshqfBqtY9aGF_8indexmap3set4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index18payload_index_impl4uuid11filter_implINtB2I_8MapIndexoEE0EINtNtB7_6result6ResultzNtNtCs4R3jSB693Zs_4uuid5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMNtNtB7_3ops9try_traitINtB6m_17NeverShortCircuituE10wrap_mut_2uoNCINvB11_8map_foldoTouEuNCINvXs6_B1j_INtB1j_8IndexSetoEINtNtB5C_7collect12FromIteratoroE9from_iterBE_E0NCINvNvB5y_8for_each4callB7G_NCINvXsb_NtB1l_3mapINtB9E_8IndexMapouEINtB8j_6ExtendB7G_E6extendIBZ_BE_B7L_EE0E0E0E0B6H_EB2O_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !10, !noundef !8
  %i.d = call noundef zeroext i1 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCshqfBqtY9aGF_8indexmap3set4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index18payload_index_impl4uuid11filter_implINtB2r_8MapIndexoEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtCs4R3jSB693Zs_4uuid5error5ErrorEEB4j_8try_folduNCINvMNtNtBc_3ops9try_traitINtB6P_17NeverShortCircuituE10wrap_mut_2uoNCINvB6_8map_foldoTouEuNCINvXs6_B12_INtB12_8IndexSetoEINtNtB4n_7collect12FromIteratoroE9from_iterB5a_E0NCINvNvB4j_8for_each4callB88_NCINvXsb_NtB14_3mapINtBa7_8IndexMapouEINtB8L_6ExtendB88_E6extendIBO_B5a_B8d_EE0E0E0E0B7a_E0INtNtB6R_12control_flow11ControlFlowB7a_EEB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCshqfBqtY9aGF_8indexmap3set4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index18payload_index_impl4uuid11filter_implINtB2I_8MapIndexoEEs_0EINtNtB7_6result6ResultzNtNtCs4R3jSB693Zs_4uuid5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMNtNtB7_3ops9try_traitINtB6o_17NeverShortCircuituE10wrap_mut_2uoNCINvB11_8map_foldoTouEuNCINvXs6_B1j_INtB1j_8IndexSetoEINtNtB5E_7collect12FromIteratoroE9from_iterBE_E0NCINvNvB5A_8for_each4callB7I_NCINvXsb_NtB1l_3mapINtB9G_8IndexMapouEINtB8l_6ExtendB7I_E6extendIBZ_BE_B7N_EE0E0E0E0B6J_EB2O_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !10, !noundef !8
  %i.d = call noundef zeroext i1 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCshqfBqtY9aGF_8indexmap3set4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index18payload_index_impl4uuid11filter_implINtB2r_8MapIndexoEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtCs4R3jSB693Zs_4uuid5error5ErrorEEB4l_8try_folduNCINvMNtNtBc_3ops9try_traitINtB6R_17NeverShortCircuituE10wrap_mut_2uoNCINvB6_8map_foldoTouEuNCINvXs6_B12_INtB12_8IndexSetoEINtNtB4p_7collect12FromIteratoroE9from_iterB5c_E0NCINvNvB4l_8for_each4callB8a_NCINvXsb_NtB14_3mapINtBa9_8IndexMapouEINtB8N_6ExtendB8a_E6extendIBO_B5c_B8f_EE0E0E0E0B7c_E0INtNtB6T_12control_flow11ControlFlowB7c_EEB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCshqfBqtY9aGF_8indexmap3set4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index18payload_index_impl4uuid22condition_checker_implINtB2I_8MapIndexoEEs0_0EINtNtB7_6option6OptionzEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMNtNtB7_3ops9try_traitINtB61_17NeverShortCircuituE10wrap_mut_2uoNCINvB11_8map_foldoTouEuNCINvXs6_B1j_INtB1j_8IndexSetoEINtNtB5h_7collect12FromIteratoroE9from_iterBE_E0NCINvNvB5d_8for_each4callB7l_NCINvXsb_NtB1l_3mapINtB9j_8IndexMapouEINtB7Y_6ExtendB7l_E6extendIBZ_BE_B7q_EE0E0E0E0B6m_EB2O_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.d = call noundef zeroext i1 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCshqfBqtY9aGF_8indexmap3set4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index18payload_index_impl4uuid22condition_checker_implINtB2r_8MapIndexoEEs0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionzEEB4x_8try_folduNCINvMNtNtBc_3ops9try_traitINtB6u_17NeverShortCircuituE10wrap_mut_2uoNCINvB6_8map_foldoTouEuNCINvXs6_B12_INtB12_8IndexSetoEINtNtB4B_7collect12FromIteratoroE9from_iterB5o_E0NCINvNvB4x_8for_each4callB7N_NCINvXsb_NtB14_3mapINtB9M_8IndexMapouEINtB8q_6ExtendB7N_E6extendIBO_B5o_B7S_EE0E0E0E0B6P_E0INtNtB6w_12control_flow11ControlFlowB6P_EEB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull dereferenceable(1) %i.c) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCshqfBqtY9aGF_8indexmap3set4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index18payload_index_impl4uuid22condition_checker_implINtB2I_8MapIndexoEEs_0EINtNtB7_6option6OptionzEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMNtNtB7_3ops9try_traitINtB60_17NeverShortCircuituE10wrap_mut_2uoNCINvB11_8map_foldoTouEuNCINvXs6_B1j_INtB1j_8IndexSetoEINtNtB5g_7collect12FromIteratoroE9from_iterBE_E0NCINvNvB5c_8for_each4callB7k_NCINvXsb_NtB1l_3mapINtB9i_8IndexMapouEINtB7X_6ExtendB7k_E6extendIBZ_BE_B7p_EE0E0E0E0B6l_EB2O_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.d = call noundef zeroext i1 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCshqfBqtY9aGF_8indexmap3set4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index18payload_index_impl4uuid22condition_checker_implINtB2r_8MapIndexoEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionzEEB4w_8try_folduNCINvMNtNtBc_3ops9try_traitINtB6t_17NeverShortCircuituE10wrap_mut_2uoNCINvB6_8map_foldoTouEuNCINvXs6_B12_INtB12_8IndexSetoEINtNtB4A_7collect12FromIteratoroE9from_iterB5n_E0NCINvNvB4w_8for_each4callB7M_NCINvXsb_NtB14_3mapINtB9L_8IndexMapouEINtB8p_6ExtendB7M_E6extendIBO_B5n_B7R_EE0E0E0E0B6O_E0INtNtB6v_12control_flow11ControlFlowB6O_EEB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull dereferenceable(1) %i.c) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCshqfBqtY9aGF_8indexmap3set4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index18payload_index_impl4uuid25estimate_cardinality_implINtB2I_8MapIndexoEE0EINtNtB7_6result6ResultzNtNtCs4R3jSB693Zs_4uuid5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMNtNtB7_3ops9try_traitINtB6A_17NeverShortCircuituE10wrap_mut_2uoNCINvB11_8map_foldoTouEuNCINvXs6_B1j_INtB1j_8IndexSetoEINtNtB5Q_7collect12FromIteratoroE9from_iterBE_E0NCINvNvB5M_8for_each4callB7U_NCINvXsb_NtB1l_3mapINtB9S_8IndexMapouEINtB8x_6ExtendB7U_E6extendIBZ_BE_B7Z_EE0E0E0E0B6V_EB2O_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !10, !noundef !8
  %i.d = call noundef zeroext i1 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCshqfBqtY9aGF_8indexmap3set4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index18payload_index_impl4uuid25estimate_cardinality_implINtB2r_8MapIndexoEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtCs4R3jSB693Zs_4uuid5error5ErrorEEB4x_8try_folduNCINvMNtNtBc_3ops9try_traitINtB73_17NeverShortCircuituE10wrap_mut_2uoNCINvB6_8map_foldoTouEuNCINvXs6_B12_INtB12_8IndexSetoEINtNtB4B_7collect12FromIteratoroE9from_iterB5o_E0NCINvNvB4x_8for_each4callB8m_NCINvXsb_NtB14_3mapINtBal_8IndexMapouEINtB8Z_6ExtendB8m_E6extendIBO_B5o_B8r_EE0E0E0E0B7o_E0INtNtB75_12control_flow11ControlFlowB7o_EEB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCshqfBqtY9aGF_8indexmap3set4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index18payload_index_impl4uuid25estimate_cardinality_implINtB2I_8MapIndexoEEs0_0EINtNtB7_6result6ResultzNtNtCs4R3jSB693Zs_4uuid5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMNtNtB7_3ops9try_traitINtB6D_17NeverShortCircuituE10wrap_mut_2uoNCINvB11_8map_foldoTouEuNCINvXs6_B1j_INtB1j_8IndexSetoEINtNtB5T_7collect12FromIteratoroE9from_iterBE_E0NCINvNvB5P_8for_each4callB7X_NCINvXsb_NtB1l_3mapINtB9V_8IndexMapouEINtB8A_6ExtendB7X_E6extendIBZ_BE_B82_EE0E0E0E0B6Y_EB2O_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !10, !noundef !8
  %i.d = call noundef zeroext i1 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCshqfBqtY9aGF_8indexmap3set4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index18payload_index_impl4uuid25estimate_cardinality_implINtB2r_8MapIndexoEEs0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtCs4R3jSB693Zs_4uuid5error5ErrorEEB4A_8try_folduNCINvMNtNtBc_3ops9try_traitINtB76_17NeverShortCircuituE10wrap_mut_2uoNCINvB6_8map_foldoTouEuNCINvXs6_B12_INtB12_8IndexSetoEINtNtB4E_7collect12FromIteratoroE9from_iterB5r_E0NCINvNvB4A_8for_each4callB8p_NCINvXsb_NtB14_3mapINtBao_8IndexMapouEINtB92_6ExtendB8p_E6extendIBO_B5r_B8u_EE0E0E0E0B7r_E0INtNtB78_12control_flow11ControlFlowB7r_EEB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB2d_5types18PayloadFieldSchemaENCNvMNtNtNtB2d_7segment9read_view4infoINtB3y_15SegmentReadViewNtNtNtNtB2d_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtB2d_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB2d_15payload_storage20payload_storage_enum18PayloadStorageEnumB4r_NtNtNtB2d_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB5G_11field_index16field_index_base11field_index10FieldIndexEB6Q_NtB3A_10VectorDataE10build_info0EINtNtB7_6result6ResultzNtNtNtB2d_6common15operation_error14OperationErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMNtNtB7_3ops9try_traitINtBcO_17NeverShortCircuituE10wrap_mut_2uTB29_NtB2U_16PayloadIndexInfoENCINvNvBc0_8for_each4callBdO_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBeV_7HashMapB29_BdT_NtNtNtB1n_4hash6random11RandomStateEINtNtBc4_7collect6ExtendBdO_E6extendBE_E0E0E0Bd9_EB2d_(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !10, !noundef !8
  %i.d = call noundef zeroext i1 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB1W_5types18PayloadFieldSchemaENCNvMNtNtNtB1W_7segment9read_view4infoINtB3h_15SegmentReadViewNtNtNtNtB1W_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtB1W_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB1W_15payload_storage20payload_storage_enum18PayloadStorageEnumB4a_NtNtNtB1W_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB5p_11field_index16field_index_base11field_index10FieldIndexEB6z_NtB3j_10VectorDataE10build_info0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtB1W_6common15operation_error14OperationErrorEEBaw_8try_folduNCINvMNtNtBc_3ops9try_traitINtBdh_17NeverShortCircuituE10wrap_mut_2uTB1S_NtB2D_16PayloadIndexInfoENCINvNvBaw_8for_each4callBeh_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBfo_7HashMapB1S_Bem_NtNtNtB16_4hash6random11RandomStateEINtNtBaA_7collect6ExtendBeh_E6extendBbn_E0E0E0BdC_E0INtNtBdj_12control_flow11ControlFlowBdC_EEB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntIBE_INtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1L_20struct_payload_index9read_view18payload_index_readINtB2S_26StructPayloadIndexReadViewNtNtNtB1N_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1N_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1N_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1J_16field_index_base11field_index10FieldIndexENtNtB1L_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB6_6result6ResultzNtNtNtB1N_6common15operation_error14OperationErrorEEINtNtB6_6option6OptionzEENtNtNtB4_6traits8iterator8Iterator4nextB1N_(ptr noalias nofree noundef align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4671)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !4671, !nonnull !8, !noundef !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4672)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4671
  store ptr %i.a, ptr %i.c, align 8, !noalias !4673
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %i.f, align 8, !noalias !4673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4673
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !4674, !noalias !4675, !nonnull !8, !align !10, !noundef !8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1r_20struct_payload_index9read_view18payload_index_readINtB2y_26StructPayloadIndexReadViewNtNtNtB1t_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1t_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1t_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1p_16field_index_base11field_index10FieldIndexENtNtB1r_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtB1t_6common15operation_error14OperationErrorEEB9q_8try_folduNCINvXB8_IBai_Bah_INtNtBc_6option6OptionzEEB9q_8try_folduNCINvNvB9q_12try_for_each4callINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDB9q_p4ItemmEL_EINtNtNtBc_3ops12control_flow11ControlFlowBdu_ENcNtBej_5Break0E0Bej_E0IBek_Bej_EE0IBek_Bfq_EEB1t_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.h), !noalias !4676
  %i.i = load i64, ptr %i.b, align 8, !range !4677, !noalias !4673, !noundef !8 ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1I_20struct_payload_index9read_view18payload_index_readINtB2P_26StructPayloadIndexReadViewNtNtNtB1K_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1K_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1K_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1G_16field_index_base11field_index10FieldIndexENtNtB1I_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB7_6result6ResultzNtNtNtB1K_6common15operation_error14OperationErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvXB3_IBF_BE_INtNtB7_6option6OptionzEEBaU_8try_folduNCINvNvBaU_12try_for_each4callINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDBaU_p4ItemmEL_EINtNtNtB7_3ops12control_flow11ControlFlowBcZ_ENcNtBdO_5Break0E0BdO_E0IBdP_BdO_EEB1K_.exit.thread.i, label %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1I_20struct_payload_index9read_view18payload_index_readINtB2P_26StructPayloadIndexReadViewNtNtNtB1K_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1K_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1K_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1G_16field_index_base11field_index10FieldIndexENtNtB1I_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB7_6result6ResultzNtNtNtB1K_6common15operation_error14OperationErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvXB3_IBF_BE_INtNtB7_6option6OptionzEEBaU_8try_folduNCINvNvBaU_12try_for_each4callINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDBaU_p4ItemmEL_EINtNtNtB7_3ops12control_flow11ControlFlowBcZ_ENcNtBdO_5Break0E0BdO_E0IBdP_BdO_EEB1K_.exit.i

_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1I_20struct_payload_index9read_view18payload_index_readINtB2P_26StructPayloadIndexReadViewNtNtNtB1K_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1K_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1K_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1G_16field_index_base11field_index10FieldIndexENtNtB1I_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB7_6result6ResultzNtNtNtB1K_6common15operation_error14OperationErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvXB3_IBF_BE_INtNtB7_6option6OptionzEEBaU_8try_folduNCINvNvBaU_12try_for_each4callINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDBaU_p4ItemmEL_EINtNtNtB7_3ops12control_flow11ControlFlowBcZ_ENcNtBdO_5Break0E0BdO_E0IBdP_BdO_EEB1K_.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4671
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemmEL_EEECs607s0NAIaWN_7segment.exit

_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1I_20struct_payload_index9read_view18payload_index_readINtB2P_26StructPayloadIndexReadViewNtNtNtB1K_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1K_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1K_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1G_16field_index_base11field_index10FieldIndexENtNtB1I_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB7_6result6ResultzNtNtNtB1K_6common15operation_error14OperationErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvXB3_IBF_BE_INtNtB7_6option6OptionzEEBaU_8try_folduNCINvNvBaU_12try_for_each4callINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDBaU_p4ItemmEL_EINtNtNtB7_3ops12control_flow11ControlFlowBcZ_ENcNtBdO_5Break0E0BdO_E0IBdP_BdO_EEB1K_.exit.i: ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4678 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4671
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntIBF_INtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1M_20struct_payload_index9read_view18payload_index_readINtB2T_26StructPayloadIndexReadViewNtNtNtB1O_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1O_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1O_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1K_16field_index_base11field_index10FieldIndexENtNtB1M_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB7_6result6ResultzNtNtNtB1O_6common15operation_error14OperationErrorEEINtNtB7_6option6OptionzEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvBbn_12try_for_each4callINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDBbn_p4ItemmEL_EINtNtNtB7_3ops12control_flow11ControlFlowBcz_ENcNtBdo_5Break0E0Bdo_EB1O_.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemmEL_EEECs607s0NAIaWN_7segment.exit

_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntIBF_INtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1M_20struct_payload_index9read_view18payload_index_readINtB2T_26StructPayloadIndexReadViewNtNtNtB1O_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1O_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1O_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1K_16field_index_base11field_index10FieldIndexENtNtB1M_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB7_6result6ResultzNtNtNtB1O_6common15operation_error14OperationErrorEEINtNtB7_6option6OptionzEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvBbn_12try_for_each4callINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDBbn_p4ItemmEL_EINtNtNtB7_3ops12control_flow11ControlFlowBcz_ENcNtBdo_5Break0E0Bdo_EB1O_.exit: ; preds = %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1I_20struct_payload_index9read_view18payload_index_readINtB2P_26StructPayloadIndexReadViewNtNtNtB1K_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1K_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1K_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1G_16field_index_base11field_index10FieldIndexENtNtB1I_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB7_6result6ResultzNtNtNtB1K_6common15operation_error14OperationErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvXB3_IBF_BE_INtNtB7_6option6OptionzEEBaU_8try_folduNCINvNvBaU_12try_for_each4callINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDBaU_p4ItemmEL_EINtNtNtB7_3ops12control_flow11ControlFlowBcZ_ENcNtBdO_5Break0E0BdO_E0IBdP_BdO_EEB1K_.exit.i
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.5.0.copyload.i, 0
  %.not = icmp eq ptr %.sroa.5.0.copyload.i, null
  %. = select i1 %.not, ptr undef, ptr %.sroa.6.0.copyload.i
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemmEL_EEECs607s0NAIaWN_7segment.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemmEL_EEECs607s0NAIaWN_7segment.exit: ; preds = %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntIBF_INtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1M_20struct_payload_index9read_view18payload_index_readINtB2T_26StructPayloadIndexReadViewNtNtNtB1O_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1O_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1O_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1K_16field_index_base11field_index10FieldIndexENtNtB1M_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB7_6result6ResultzNtNtNtB1O_6common15operation_error14OperationErrorEEINtNtB7_6option6OptionzEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvBbn_12try_for_each4callINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDBbn_p4ItemmEL_EINtNtNtB7_3ops12control_flow11ControlFlowBcz_ENcNtBdo_5Break0E0Bdo_EB1O_.exit, %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1I_20struct_payload_index9read_view18payload_index_readINtB2P_26StructPayloadIndexReadViewNtNtNtB1K_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1K_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1K_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1G_16field_index_base11field_index10FieldIndexENtNtB1I_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB7_6result6ResultzNtNtNtB1K_6common15operation_error14OperationErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvXB3_IBF_BE_INtNtB7_6option6OptionzEEBaU_8try_folduNCINvNvBaU_12try_for_each4callINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDBaU_p4ItemmEL_EINtNtNtB7_3ops12control_flow11ControlFlowBcZ_ENcNtBdO_5Break0E0BdO_E0IBdP_BdO_EEB1K_.exit.i, %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1I_20struct_payload_index9read_view18payload_index_readINtB2P_26StructPayloadIndexReadViewNtNtNtB1K_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1K_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1K_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1G_16field_index_base11field_index10FieldIndexENtNtB1I_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB7_6result6ResultzNtNtNtB1K_6common15operation_error14OperationErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvXB3_IBF_BE_INtNtB7_6option6OptionzEEBaU_8try_folduNCINvNvBaU_12try_for_each4callINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDBaU_p4ItemmEL_EINtNtNtB7_3ops12control_flow11ControlFlowBcZ_ENcNtBdO_5Break0E0BdO_E0IBdP_BdO_EEB1K_.exit.thread.i
  %.11 = phi ptr [ undef, %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1I_20struct_payload_index9read_view18payload_index_readINtB2P_26StructPayloadIndexReadViewNtNtNtB1K_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1K_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1K_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1G_16field_index_base11field_index10FieldIndexENtNtB1I_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB7_6result6ResultzNtNtNtB1K_6common15operation_error14OperationErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvXB3_IBF_BE_INtNtB7_6option6OptionzEEBaU_8try_folduNCINvNvBaU_12try_for_each4callINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDBaU_p4ItemmEL_EINtNtNtB7_3ops12control_flow11ControlFlowBcZ_ENcNtBdO_5Break0E0BdO_E0IBdP_BdO_EEB1K_.exit.i ], [ %., %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntIBF_INtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1M_20struct_payload_index9read_view18payload_index_readINtB2T_26StructPayloadIndexReadViewNtNtNtB1O_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1O_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1O_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1K_16field_index_base11field_index10FieldIndexENtNtB1M_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB7_6result6ResultzNtNtNtB1O_6common15operation_error14OperationErrorEEINtNtB7_6option6OptionzEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvBbn_12try_for_each4callINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDBbn_p4ItemmEL_EINtNtNtB7_3ops12control_flow11ControlFlowBcz_ENcNtBdo_5Break0E0Bdo_EB1O_.exit ], [ undef, %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1I_20struct_payload_index9read_view18payload_index_readINtB2P_26StructPayloadIndexReadViewNtNtNtB1K_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1K_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1K_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1G_16field_index_base11field_index10FieldIndexENtNtB1I_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB7_6result6ResultzNtNtNtB1K_6common15operation_error14OperationErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvXB3_IBF_BE_INtNtB7_6option6OptionzEEBaU_8try_folduNCINvNvBaU_12try_for_each4callINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDBaU_p4ItemmEL_EINtNtNtB7_3ops12control_flow11ControlFlowBcZ_ENcNtBdO_5Break0E0BdO_E0IBdP_BdO_EEB1K_.exit.thread.i ]
  %i.l = phi { ptr, ptr } [ { ptr null, ptr poison }, %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1I_20struct_payload_index9read_view18payload_index_readINtB2P_26StructPayloadIndexReadViewNtNtNtB1K_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1K_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1K_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1G_16field_index_base11field_index10FieldIndexENtNtB1I_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB7_6result6ResultzNtNtNtB1K_6common15operation_error14OperationErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvXB3_IBF_BE_INtNtB7_6option6OptionzEEBaU_8try_folduNCINvNvBaU_12try_for_each4callINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDBaU_p4ItemmEL_EINtNtNtB7_3ops12control_flow11ControlFlowBcZ_ENcNtBdO_5Break0E0BdO_E0IBdP_BdO_EEB1K_.exit.i ], [ %i.k, %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntIBF_INtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1M_20struct_payload_index9read_view18payload_index_readINtB2T_26StructPayloadIndexReadViewNtNtNtB1O_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1O_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1O_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1K_16field_index_base11field_index10FieldIndexENtNtB1M_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB7_6result6ResultzNtNtNtB1O_6common15operation_error14OperationErrorEEINtNtB7_6option6OptionzEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvBbn_12try_for_each4callINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDBbn_p4ItemmEL_EINtNtNtB7_3ops12control_flow11ControlFlowBcz_ENcNtBdo_5Break0E0Bdo_EB1O_.exit ], [ { ptr null, ptr poison }, %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1I_20struct_payload_index9read_view18payload_index_readINtB2P_26StructPayloadIndexReadViewNtNtNtB1K_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1K_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1K_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1G_16field_index_base11field_index10FieldIndexENtNtB1I_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB7_6result6ResultzNtNtNtB1K_6common15operation_error14OperationErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvXB3_IBF_BE_INtNtB7_6option6OptionzEEBaU_8try_folduNCINvNvBaU_12try_for_each4callINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDBaU_p4ItemmEL_EINtNtNtB7_3ops12control_flow11ControlFlowBcZ_ENcNtBdO_5Break0E0BdO_E0IBdP_BdO_EEB1K_.exit.thread.i ]
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %.11, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntIBE_INtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1L_20struct_payload_index9read_view18payload_index_readINtB2S_26StructPayloadIndexReadViewNtNtNtB1N_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1N_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1N_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1J_16field_index_base11field_index10FieldIndexENtNtB1L_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB6_6result6ResultzNtNtNtB1N_6common15operation_error14OperationErrorEEINtNtB6_6option6OptionzEENtNtNtB4_6traits8iterator8Iterator9size_hintB1N_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.c = load i8, ptr %i.b, align 1, !range !14, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1H_20struct_payload_index9read_view18payload_index_readINtB2O_26StructPayloadIndexReadViewNtNtNtB1J_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1J_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1J_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1F_16field_index_base11field_index10FieldIndexENtNtB1H_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB6_6result6ResultzNtNtNtB1J_6common15operation_error14OperationErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB1J_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4682)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4682, !noalias !4683, !nonnull !8, !align !10, !noundef !8
  %i.g = load i64, ptr %i.f, align 8, !range !12, !noalias !4684, !noundef !8
  %.not.i = icmp eq i64 %i.g, -1
  br i1 %.not.i, label %bb.c, label %_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1H_20struct_payload_index9read_view18payload_index_readINtB2O_26StructPayloadIndexReadViewNtNtNtB1J_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1J_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1J_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1F_16field_index_base11field_index10FieldIndexENtNtB1H_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB6_6result6ResultzNtNtNtB1J_6common15operation_error14OperationErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB1J_.exit

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !4682, !noalias !4683, !nonnull !8, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !4682, !noalias !4683, !nonnull !8, !noundef !8
  %i.i = ptrtoint ptr %.val1.i to i64
  %i.j = ptrtoint ptr %.val.i to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = udiv exact i64 %i.k, 88
  br label %_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1H_20struct_payload_index9read_view18payload_index_readINtB2O_26StructPayloadIndexReadViewNtNtNtB1J_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1J_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1J_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1F_16field_index_base11field_index10FieldIndexENtNtB1H_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB6_6result6ResultzNtNtNtB1J_6common15operation_error14OperationErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB1J_.exit

_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENCNvXNtNtNtB1H_20struct_payload_index9read_view18payload_index_readINtB2O_26StructPayloadIndexReadViewNtNtNtB1J_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1J_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1J_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB1F_16field_index_base11field_index10FieldIndexENtNtB1H_18payload_index_base16PayloadIndexRead20iter_filtered_pointss_0EINtNtB6_6result6ResultzNtNtNtB1J_6common15operation_error14OperationErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB1J_.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i64 [ 0, %bb.b ], [ %i.l, %bb.c ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.n, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntIBE_INtNtB2_3map3MapINtNtNtB6_5slice4iter4ItermENCNvYNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB1S_13InvertedIndex31estimate_has_subset_cardinality0EINtNtB6_6result6ResultzNtNtNtB20_6common15operation_error14OperationErrorEEINtNtB6_6option6OptionzEENtNtNtB4_6traits8iterator8Iterator4nextB20_(ptr noalias nofree noundef align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4691)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !4691, !nonnull !8, !noundef !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4692)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4691
  store ptr %i.a, ptr %i.b, align 8, !noalias !4693
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8, !noalias !4693
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !4694, !noalias !4695, !nonnull !8, !align !10, !noundef !8
  %i.h = call { i64, i64 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNvYNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB1y_13InvertedIndex31estimate_has_subset_cardinality0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtB1G_6common15operation_error14OperationErrorEEB4w_8try_folduNCINvXB8_IB5o_B5n_INtNtBc_6option6OptionzEEB4w_8try_folduNCINvNvB4w_12try_for_each4calljINtNtNtBc_3ops12control_flow11ControlFlowjENcNtB8B_5Break0E0B8B_E0IB8C_B8B_EE0IB8C_B9F_EEB1G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.g) ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0        ; 3 uses
  %.not.i.i = icmp ne i64 %i.i, -1
  %i.j = extractvalue { i64, i64 } %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4691
  %.not5.i = icmp ne i64 %i.i, 2
  %.not.i.not = and i1 %.not.i.i, %.not5.i
  %i.k = trunc nuw i64 %i.i to i1
  %i.l = select i1 %.not.i.not, i1 %i.k, i1 false ; 2 uses
  %.sroa.3.0 = select i1 %i.l, i64 %i.j, i64 undef
  %.sroa.0.0 = zext i1 %i.l to i64
  %i.m = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.n = insertvalue { i64, i64 } %i.m, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntIBE_INtNtB2_3map3MapINtNtNtB6_5slice4iter4ItermENCNvYNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB1S_13InvertedIndex31estimate_has_subset_cardinality0EINtNtB6_6result6ResultzNtNtNtB20_6common15operation_error14OperationErrorEEINtNtB6_6option6OptionzEENtNtNtB4_6traits8iterator8Iterator9size_hintB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.c = load i8, ptr %i.b, align 1, !range !14, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4699)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4699, !noalias !4700, !nonnull !8, !align !10, !noundef !8
  %i.g = load i64, ptr %i.f, align 8, !range !12, !noalias !4701, !noundef !8
  %.not.i = icmp eq i64 %i.g, -1
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !4699, !noalias !4700, !nonnull !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !4699, !noalias !4700, !nonnull !8
  %i.i = ptrtoint ptr %.val1.i to i64
  %i.j = ptrtoint ptr %.val.i to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 2
  %.sink.i = select i1 %.not.i, i64 %i.l, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink.i.sink = phi i64 [ %.sink.i, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i.sink, ptr %i.n, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntIBE_INtNtB2_3map3MapINtNtNtB6_5slice4iter4ItermENCNvYNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_index19OnDiskInvertedIndexNtB1S_13InvertedIndex31estimate_has_subset_cardinality0EINtNtB6_6result6ResultzNtNtNtB20_6common15operation_error14OperationErrorEEINtNtB6_6option6OptionzEENtNtNtB4_6traits8iterator8Iterator4nextB20_(ptr noalias nofree noundef align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4708)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !4708, !nonnull !8, !noundef !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4709)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4708
  store ptr %i.a, ptr %i.b, align 8, !noalias !4710
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8, !noalias !4710
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !4711, !noalias !4712, !nonnull !8, !align !10, !noundef !8
  %i.h = call { i64, i64 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNvYNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_index19OnDiskInvertedIndexNtB1y_13InvertedIndex31estimate_has_subset_cardinality0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtB1G_6common15operation_error14OperationErrorEEB4v_8try_folduNCINvXB8_IB5n_B5m_INtNtBc_6option6OptionzEEB4v_8try_folduNCINvNvB4v_12try_for_each4calljINtNtNtBc_3ops12control_flow11ControlFlowjENcNtB8A_5Break0E0B8A_E0IB8B_B8A_EE0IB8B_B9E_EEB1G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.g) ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0        ; 3 uses
  %.not.i.i = icmp ne i64 %i.i, -1
  %i.j = extractvalue { i64, i64 } %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4708
  %.not5.i = icmp ne i64 %i.i, 2
  %.not.i.not = and i1 %.not.i.i, %.not5.i
  %i.k = trunc nuw i64 %i.i to i1
  %i.l = select i1 %.not.i.not, i1 %i.k, i1 false ; 2 uses
  %.sroa.3.0 = select i1 %i.l, i64 %i.j, i64 undef
  %.sroa.0.0 = zext i1 %i.l to i64
  %i.m = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.n = insertvalue { i64, i64 } %i.m, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntIBE_INtNtB2_3map3MapINtNtNtB6_5slice4iter4ItermENCNvYNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_index19OnDiskInvertedIndexNtB1S_13InvertedIndex31estimate_has_subset_cardinality0EINtNtB6_6result6ResultzNtNtNtB20_6common15operation_error14OperationErrorEEINtNtB6_6option6OptionzEENtNtNtB4_6traits8iterator8Iterator9size_hintB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.c = load i8, ptr %i.b, align 1, !range !14, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4716)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4716, !noalias !4717, !nonnull !8, !align !10, !noundef !8
  %i.g = load i64, ptr %i.f, align 8, !range !12, !noalias !4718, !noundef !8
  %.not.i = icmp eq i64 %i.g, -1
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !4716, !noalias !4717, !nonnull !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !4716, !noalias !4717, !nonnull !8
  %i.i = ptrtoint ptr %.val1.i to i64
  %i.j = ptrtoint ptr %.val.i to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 2
  %.sink.i = select i1 %.not.i, i64 %i.l, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink.i.sink = phi i64 [ %.sink.i, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i.sink, ptr %i.n, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntIBE_INtNtB2_3map3MapINtNtNtB6_5slice4iter4ItermENCNvYNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_index22ImmutableInvertedIndexNtB1S_13InvertedIndex31estimate_has_subset_cardinality0EINtNtB6_6result6ResultzNtNtNtB20_6common15operation_error14OperationErrorEEINtNtB6_6option6OptionzEENtNtNtB4_6traits8iterator8Iterator4nextB20_(ptr noalias nofree noundef align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4725)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !4725, !nonnull !8, !noundef !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4726)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4725
  store ptr %i.a, ptr %i.b, align 8, !noalias !4727
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8, !noalias !4727
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !4728, !noalias !4729, !nonnull !8, !align !10, !noundef !8
  %i.h = call { i64, i64 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNvYNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_index22ImmutableInvertedIndexNtB1y_13InvertedIndex31estimate_has_subset_cardinality0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtB1G_6common15operation_error14OperationErrorEEB4A_8try_folduNCINvXB8_IB5s_B5r_INtNtBc_6option6OptionzEEB4A_8try_folduNCINvNvB4A_12try_for_each4calljINtNtNtBc_3ops12control_flow11ControlFlowjENcNtB8F_5Break0E0B8F_E0IB8G_B8F_EE0IB8G_B9J_EEB1G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.g) ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0        ; 3 uses
  %.not.i.i = icmp ne i64 %i.i, -1
  %i.j = extractvalue { i64, i64 } %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4725
  %.not5.i = icmp ne i64 %i.i, 2
  %.not.i.not = and i1 %.not.i.i, %.not5.i
  %i.k = trunc nuw i64 %i.i to i1
  %i.l = select i1 %.not.i.not, i1 %i.k, i1 false ; 2 uses
  %.sroa.3.0 = select i1 %i.l, i64 %i.j, i64 undef
  %.sroa.0.0 = zext i1 %i.l to i64
  %i.m = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
end_hunk_0
