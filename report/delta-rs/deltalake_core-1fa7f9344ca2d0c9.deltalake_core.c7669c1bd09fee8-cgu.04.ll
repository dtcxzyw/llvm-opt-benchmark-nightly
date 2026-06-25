inline.NumInlined: 8496
inline.NumDeleted: 3150
begin_hunk_0_@_RINvMNtCs6Po7BT7Nknu_5alloc5sliceSNtNtB5_6string6String4joinReECs14kWLkQVSKO_14deltalake_core:bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapINtNtBO_5chain5ChainIB1E_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1o_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIB47_DNtNtB28_11engine_data10EngineDataEL_ENtNtB28_5error5ErrorENtNtB5_6marker4SendEL_ENCNvMNtB28_11log_segmentNtB7a_10LogSegment24create_checkpoint_streams_0EINtNtNtB3h_8adaptors3map14MapSpecialCaseIB1E_INtNtNtBQ_7sources4once4OnceB5k_EINtNtBO_7flatten7FlattenINtB3_8IntoIterB46_EEEINtB8i_18MapSpecialCaseFnOkNCNCB77_s_00EEB6n_ENCB77_s0_0EEIB1o_IB47_IB1o_IB1o_IB47_INtNtNtB4b_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdf_4Scan18scan_metadata_fromBbA_E0ENCBd8_s_0EENCINvMs6_NtB28_4scanNtBf6_4Scan18scan_metadata_fromBbg_E0EENCINvYNtNtBf6_10log_replay22ScanLogReplayProcessorNtNtB28_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCBfW_s_0EE6map_orTjIBw_jEENvYBJ_B4G_9size_hintEBdl_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(704) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = load i64, ptr %i.f, align 16, !range !24, !alias.scope !25, !noalias !26, !noundef !27 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 16, !alias.scope !25, !noalias !26, !noundef !27
  %.not7.i.i.i.i = icmp eq ptr %i.i, null         ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  %.not7.i11.i.i.i.i = icmp eq i64 %i.g, 4        ; 4 uses
  br i1 %.not7.i.i.i.i, label %bb.l, label %bb.g

bb.d:                                             ; preds = %bb.b
  br i1 %.not7.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIBM_IBC_INtNtNtB6_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB3l_4Scan18scan_metadata_fromB1H_E0ENCB3e_s_0EENtNtNtBS_6traits8iterator8Iterator9size_hintB3r_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h), !noalias !28
  br label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainIB1g_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3J_DNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1K_11log_segmentNtB6M_10LogSegment24create_checkpoint_streams_0EINtNtNtB2T_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4W_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3I_EEEINtB7U_18MapSpecialCaseFnOkNCNCB6J_s_00EEB5Z_ENCB6J_s0_0EEIB10_IB3J_IB10_IB10_IB3J_INtNtNtB3N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBd0_4Scan18scan_metadata_fromBbl_E0ENCBcT_s_0EENCINvMs6_NtB1K_4scanNtBeR_4Scan18scan_metadata_fromBb1_E0EENCINvYNtNtBeR_10log_replay22ScanLogReplayProcessor

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.k, align 8, !alias.scope !29, !noalias !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.l, align 8, !alias.scope !29, !noalias !30
  br label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainIB1g_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3J_DNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1K_11log_segmentNtB6M_10LogSegment24create_checkpoint_streams_0EINtNtNtB2T_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4W_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3I_EEEINtB7U_18MapSpecialCaseFnOkNCNCB6J_s_00EEB5Z_ENCB6J_s0_0EEIB10_IB3J_IB10_IB10_IB3J_INtNtNtB3N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBd0_4Scan18scan_metadata_fromBbl_E0ENCBcT_s_0EENCINvMs6_NtB1K_4scanNtBeR_4Scan18scan_metadata_fromBb1_E0EENCINvYNtNtBeR_10log_replay22ScanLogReplayProcessor

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.m = load ptr, ptr %i.j, align 16, !alias.scope !35, !noalias !36, !noundef !27
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not7.i11.i.i.i.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtB6_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB25_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemINtNtBa_6result6ResultIB3f_DNtNtB15_11engine_data10EngineDataEL_ENtNtB15_5error5ErrorENtNtBa_6marker4SendEL_ENCNvMNtB15_11log_segmentNtB6i_10LogSegment24create_checkpoint_streams_0EINtNtNtB2p_8adaptors3map14MapSpecialCaseIBO_INtNtNtB8_7sources4once4OnceB4s_EINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterB3e_EEEINtB7q_18MapSpecialCaseFnOkNCNCB6f_s_00EEB5v_ENCB6f_s0_0EEB3O_9size_hintCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.k

bb.i:                                             ; preds = %bb.g
  br i1 %.not7.i11.i.i.i.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtB6_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB25_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemINtNtBa_6result6ResultIB3f_DNtNtB15_11engine_data10EngineDataEL_ENtNtB15_5error5ErrorENtNtBa_6marker4SendEL_ENCNvMNtB15_11log_segmentNtB6i_10LogSegment24create_checkpoint_streams_0EINtNtNtB2p_8adaptors3map14MapSpecialCaseIBO_INtNtNtB8_7sources4once4OnceB4s_EINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterB3e_EEEINtB7q_18MapSpecialCaseFnOkNCNCB6f_s_00EEB5v_ENCB6f_s0_0EEB3O_9size_hintCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvXNtCscVxtfYSVfE7_9itertools10flatten_okINtB2_9FlattenOkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB11_6traits8iterator8Iteratorp4ItemINtNtB13_6result6ResultIB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3u_5error5ErrorENtNtB13_6marker4SendEL_ENCNvMNtB3u_11log_segmentNtB5d_10LogSegment24create_checkpoint_streams_0EINtNtNtB4_8adaptors3map14MapSpecialCaseINtNtBZ_5chain5ChainINtNtNtB11_7sources4once4OnceB2X_EINtNtBZ_7flatten7FlattenINtNtB13_6option8IntoIterB1I_EEEINtB6l_18MapSpecialCaseFnOkNCNCB5a_s_00EEB4p_EB2i_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(704) %1), !noalias !26
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre13.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !38, !noalias !31
  %.phi.trans.insert14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre15.i.i.i.i = load i64, ptr %.phi.trans.insert14.i.i.i.i, align 8, !noalias !31
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtB6_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB25_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemINtNtBa_6result6ResultIB3f_DNtNtB15_11engine_data10EngineDataEL_ENtNtB15_5error5ErrorENtNtBa_6marker4SendEL_ENCNvMNtB15_11log_segmentNtB6i_10LogSegment24create_checkpoint_streams_0EINtNtNtB2p_8adaptors3map14MapSpecialCaseIBO_INtNtNtB8_7sources4once4OnceB4s_EINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterB3e_EEEINtB7q_18MapSpecialCaseFnOkNCNCB6f_s_00EEB5v_ENCB6f_s0_0EEB3O_9size_hintCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39
  call void @_RNvXNtCscVxtfYSVfE7_9itertools10flatten_okINtB2_9FlattenOkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB11_6traits8iterator8Iteratorp4ItemINtNtB13_6result6ResultIB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3u_5error5ErrorENtNtB13_6marker4SendEL_ENCNvMNtB3u_11log_segmentNtB5d_10LogSegment24create_checkpoint_streams_0EINtNtNtB4_8adaptors3map14MapSpecialCaseINtNtBZ_5chain5ChainINtNtNtB11_7sources4once4OnceB2X_EINtNtBZ_7flatten7FlattenINtNtB13_6option8IntoIterB1I_EEEINtB6l_18MapSpecialCaseFnOkNCNCB5a_s_00EEB4p_EB2i_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(704) %1), !noalias !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtB6_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB25_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemINtNtBa_6result6ResultIB3f_DNtNtB15_11engine_data10EngineDataEL_ENtNtB15_5error5ErrorENtNtBa_6marker4SendEL_ENCNvMNtB15_11log_segmentNtB6i_10LogSegment24create_checkpoint_streams_0EINtNtNtB2p_8adaptors3map14MapSpecialCaseIBO_INtNtNtB8_7sources4once4OnceB4s_EINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterB3e_EEEINtB7q_18MapSpecialCaseFnOkNCNCB6f_s_00EEB5v_ENCB6f_s0_0EEB3O_9size_hintCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtB6_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB25_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemINtNtBa_6result6ResultIB3f_DNtNtB15_11engine_data10EngineDataEL_ENtNtB15_5error5ErrorENtNtBa_6marker4SendEL_ENCNvMNtB15_11log_segmentNtB6i_10LogSegment24create_checkpoint_streams_0EINtNtNtB2p_8adaptors3map14MapSpecialCaseIBO_INtNtNtB8_7sources4once4OnceB4s_EINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterB3e_EEEINtB7q_18MapSpecialCaseFnOkNCNCB6f_s_00EEB5v_ENCB6f_s0_0EEB3O_9size_hintCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.n = phi i64 [ %.pre15.i.i.i.i, %bb.j ], [ 0, %bb.i ], [ undef, %bb.k ], [ undef, %bb.h ] ; 2 uses
  %i.o = phi i64 [ %.pre13.i.i.i.i, %bb.j ], [ 1, %bb.i ], [ 0, %bb.k ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !31
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIBM_IBC_INtNtNtB6_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB3l_4Scan18scan_metadata_fromB1H_E0ENCB3e_s_0EENtNtNtBS_6traits8iterator8Iterator9size_hintB3r_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h), !noalias !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !38, !noalias !31, !noundef !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31
  %i.t = and i64 %i.q, %i.o
  %or.cond.not.i.i.i.i = icmp ne i64 %i.t, 0      ; 2 uses
  %i.u = add i64 %i.s, %i.n                       ; 2 uses
  %i.v = icmp uge i64 %i.u, %i.n
  %narrow.i.i.i.i = select i1 %or.cond.not.i.i.i.i, i1 %i.v, i1 false
  %.sroa.05.0.i.i.i.i = zext i1 %narrow.i.i.i.i to i64
  %.sroa.4.0.i.i.i.i = select i1 %or.cond.not.i.i.i.i, i64 %i.u, i64 undef
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.05.0.i.i.i.i, ptr %i.w, align 8, !alias.scope !29, !noalias !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.x, align 8, !alias.scope !29, !noalias !30
  br label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainIB1g_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3J_DNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1K_11log_segmentNtB6M_10LogSegment24create_checkpoint_streams_0EINtNtNtB2T_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4W_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3I_EEEINtB7U_18MapSpecialCaseFnOkNCNCB6J_s_00EEB5Z_ENCB6J_s0_0EEIB10_IB3J_IB10_IB10_IB3J_INtNtNtB3N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBd0_4Scan18scan_metadata_fromBbl_E0ENCBcT_s_0EENCINvMs6_NtB1K_4scanNtBeR_4Scan18scan_metadata_fromBb1_E0EENCINvYNtNtBeR_10log_replay22ScanLogReplayProcessor

bb.l:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.y = load ptr, ptr %i.j, align 16, !alias.scope !45, !noalias !46, !noundef !27
  %.not.i10.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i10.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not7.i11.i.i.i.i, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.l
  br i1 %.not7.i11.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvXNtCscVxtfYSVfE7_9itertools10flatten_okINtB2_9FlattenOkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB11_6traits8iterator8Iteratorp4ItemINtNtB13_6result6ResultIB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3u_5error5ErrorENtNtB13_6marker4SendEL_ENCNvMNtB3u_11log_segmentNtB5d_10LogSegment24create_checkpoint_streams_0EINtNtNtB4_8adaptors3map14MapSpecialCaseINtNtBZ_5chain5ChainINtNtNtB11_7sources4once4OnceB2X_EINtNtBZ_7flatten7FlattenINtNtB13_6option8IntoIterB1I_EEEINtB6l_18MapSpecialCaseFnOkNCNCB5a_s_00EEB4p_EB2i_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(704) %1), !noalias !28
  br label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainIB1g_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3J_DNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1K_11log_segmentNtB6M_10LogSegment24create_checkpoint_streams_0EINtNtNtB2T_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4W_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3I_EEEINtB7U_18MapSpecialCaseFnOkNCNCB6J_s_00EEB5Z_ENCB6J_s0_0EEIB10_IB3J_IB10_IB10_IB3J_INtNtNtB3N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBd0_4Scan18scan_metadata_fromBbl_E0ENCBcT_s_0EENCINvMs6_NtB1K_4scanNtBeR_4Scan18scan_metadata_fromBb1_E0EENCINvYNtNtBeR_10log_replay22ScanLogReplayProcessor

bb.p:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.z, align 8, !alias.scope !47, !noalias !48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.aa, align 8, !alias.scope !47, !noalias !48
  br label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainIB1g_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3J_DNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1K_11log_segmentNtB6M_10LogSegment24create_checkpoint_streams_0EINtNtNtB2T_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4W_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3I_EEEINtB7U_18MapSpecialCaseFnOkNCNCB6J_s_00EEB5Z_ENCB6J_s0_0EEIB10_IB3J_IB10_IB10_IB3J_INtNtNtB3N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBd0_4Scan18scan_metadata_fromBbl_E0ENCBcT_s_0EENCINvMs6_NtB1K_4scanNtBeR_4Scan18scan_metadata_fromBb1_E0EENCINvYNtNtBeR_10log_replay22ScanLogReplayProcessor

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !49
  call void @_RNvXNtCscVxtfYSVfE7_9itertools10flatten_okINtB2_9FlattenOkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB11_6traits8iterator8Iteratorp4ItemINtNtB13_6result6ResultIB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3u_5error5ErrorENtNtB13_6marker4SendEL_ENCNvMNtB3u_11log_segmentNtB5d_10LogSegment24create_checkpoint_streams_0EINtNtNtB4_8adaptors3map14MapSpecialCaseINtNtBZ_5chain5ChainINtNtNtB11_7sources4once4OnceB2X_EINtNtBZ_7flatten7FlattenINtNtB13_6option8IntoIterB1I_EEEINtB6l_18MapSpecialCaseFnOkNCNCB5a_s_00EEB4p_EB2i_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(704) %1), !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !49
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %i.ab, align 8, !alias.scope !47, !noalias !48
  br label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainIB1g_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3J_DNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1K_11log_segmentNtB6M_10LogSegment24create_checkpoint_streams_0EINtNtNtB2T_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4W_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3I_EEEINtB7U_18MapSpecialCaseFnOkNCNCB6J_s_00EEB5Z_ENCB6J_s0_0EEIB10_IB3J_IB10_IB10_IB3J_INtNtNtB3N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBd0_4Scan18scan_metadata_fromBbl_E0ENCBcT_s_0EENCINvMs6_NtB1K_4scanNtBeR_4Scan18scan_metadata_fromBb1_E0EENCINvYNtNtBeR_10log_replay22ScanLogReplayProcessor

bb.r:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 16, i1 false), !alias.scope !50, !noalias !48
  br label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainIB1g_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3J_DNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1K_11log_segmentNtB6M_10LogSegment24create_checkpoint_streams_0EINtNtNtB2T_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4W_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3I_EEEINtB7U_18MapSpecialCaseFnOkNCNCB6J_s_00EEB5Z_ENCB6J_s0_0EEIB10_IB3J_IB10_IB10_IB3J_INtNtNtB3N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBd0_4Scan18scan_metadata_fromBbl_E0ENCBcT_s_0EENCINvMs6_NtB1K_4scanNtBeR_4Scan18scan_metadata_fromBb1_E0EENCINvYNtNtBeR_10log_replay22ScanLogReplayProcessor

_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainIB1g_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3J_DNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1K_11log_segmentNtB6M_10LogSegment24create_checkpoint_streams_0EINtNtNtB2T_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4W_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3I_EEEINtB7U_18MapSpecialCaseFnOkNCNCB6J_s_00EEB5Z_ENCB6J_s0_0EEIB10_IB3J_IB10_IB10_IB3J_INtNtNtB3N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBd0_4Scan18scan_metadata_fromBbl_E0ENCBcT_s_0EENCINvMs6_NtB1K_4scanNtBeR_4Scan18scan_metadata_fromBb1_E0EENCINvYNtNtBeR_10log_replay22ScanLogReplayProcessor: ; preds = %bb.e, %bb.f, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtB6_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB25_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemINtNtBa_6result6ResultIB3f_DNtNtB15_11engine_data10EngineDataEL_ENtNtB15_5error5ErrorENtNtBa_6marker4SendEL_ENCNvMNtB15_11log_segmentNtB6i_10LogSegment24create_checkpoint_streams_0EINtNtNtB2p_8adaptors3map14MapSpecialCaseIBO_INtNtNtB8_7sources4once4OnceB4s_EINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterB3e_EEEINtB7q_18MapSpecialCaseFnOkNCNCB6f_s_00EEB5v_ENCB6f_s0_0EEB3O_9size_hintCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.o, %bb.p, %bb.q, %bb.r
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !noalias !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13
  store i64 0, ptr %0, align 8, !alias.scope !28, !noalias !53
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !alias.scope !28, !noalias !53
  br label %bb.t

bb.s:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainIB1g_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3J_DNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1K_11log_segmentNtB6M_10LogSegment24create_checkpoint_streams_0EINtNtNtB2T_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4W_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3I_EEEINtB7U_18MapSpecialCaseFnOkNCNCB6J_s_00EEB5Z_ENCB6J_s0_0EEIB10_IB3J_IB10_IB10_IB3J_INtNtNtB3N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBd0_4Scan18scan_metadata_fromBbl_E0ENCBcT_s_0EENCINvMs6_NtB1K_4scanNtBeR_4Scan18scan_metadata_fromBb1_E0EENCINvYNtNtBeR_10log_replay22ScanLogReplayProcessor, %bb.s
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly captures(address_is_null) %1, i64 %2, ptr %.0.val, ptr %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !60
  %i.b = load i64, ptr %i.a, align 8, !range !38, !noalias !60, !noundef !27
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !66, !noalias !60, !noundef !27 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.c, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !67

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8, !noalias !60
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #56, !noalias !60
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.f, align 8, !noalias !60, !nonnull !27, !noundef !27 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !68
  br label %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.d
  store i64 %i.e, ptr %0, align 8, !alias.scope !69, !noalias !70
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !69, !noalias !70
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !69, !noalias !70
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  tail call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %.0.val, ptr noundef nonnull %.8.val)
  br label %bb.f

bb.f:                                             ; preds = %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsfYVtenZkBsn_12arrow_schema6schemaNtB3_13SchemaBuilder4pushNtNtB5_5field5FieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = tail call noundef nonnull ptr @_RNvXs14_NtCs6Po7BT7Nknu_5alloc4syncINtB6_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtNtCsbvkFyIu7lgC_4core7convert4FromBH_E4fromCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !71
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !71, !noundef !27 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !range !74, !alias.scope !71, !noundef !27
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE8push_mutCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE8grow_oneB17_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE8push_mutCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !75
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.g

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE8push_mutCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !71, !nonnull !27, !noundef !27
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.d
  store ptr %i.b, ptr %i.m, align 8
  %i.n = add i64 %i.d, 1
  store i64 %i.n, ptr %i.c, align 8, !alias.scope !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics7builderNtB3_13MetricBuilder14global_counterReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = invoke noundef nonnull ptr @_RNvMs1_NtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5valueNtB5_5Count3new()
          to label %bb.b unwind label %bb.i       ; 5 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 -9223372036854775808, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.g, align 8
  store i64 -9223372036854775799, ptr %i.a, align 8
  invoke void @_RNvMNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics7builderNtB2_13MetricBuilder5build(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
          to label %bb.e unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !80
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value5CountECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCsbvkFyIu7lgC_4core4sync6atomic6AtomicjEE9drop_slowCs3LxfdNfGUeX_31datafusion_physical_expr_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value5CountECs14kWLkQVSKO_14deltalake_core.exit.thread unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value5CountECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.f, %bb.g, %bb.i
  %.pn8 = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.h, %bb.g ], [ %i.h, %bb.f ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics7builder13MetricBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %0) #59
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value5CountECs14kWLkQVSKO_14deltalake_core.exit.thread unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics7builderNtB3_13MetricBuilder7counterReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  store i64 1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !87
  %i.d = invoke noundef nonnull ptr @_RNvMs1_NtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5valueNtB5_5Count3new()
          to label %bb.b unwind label %bb.h, !noalias !87 ; 5 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !noalias !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !87
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !87
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 -9223372036854775808, ptr %i.g, align 8, !noalias !87
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !87
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !87
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.h, align 8, !noalias !87
  store i64 -9223372036854775799, ptr %i.a, align 8, !noalias !87
  invoke void @_RNvMNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics7builderNtB2_13MetricBuilder5build(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
          to label %_RINvMNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics7builderNtB3_13MetricBuilder14global_counterReECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !91
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value5CountECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCsbvkFyIu7lgC_4core4sync6atomic6AtomicjEE9drop_slowCs3LxfdNfGUeX_31datafusion_physical_expr_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value5CountECs14kWLkQVSKO_14deltalake_core.exit.thread.i unwind label %bb.g, !noalias !98

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value5CountECs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %bb.h, %bb.f, %bb.e
  %.pn8.i = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.i, %bb.f ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics7builder13MetricBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %0) #59
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value5CountECs14kWLkQVSKO_14deltalake_core.exit.thread.i unwind label %bb.g, !noalias !99

_RINvMNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics7builderNtB3_13MetricBuilder14global_counterReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !87
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs0_NtCs2xb0BKvnu80_21datafusion_datasource6sourceNtB6_14DataSourceExec16from_data_sourceNtNtB8_16file_scan_config14FileScanConfigECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(288) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [384 x i8], align 8               ; 7 uses
  %i.b = alloca [304 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_0
begin_hunk_1_@_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtNtCsbvkFyIu7lgC_4core3num7nonzero7NonZeroyEE5force0E0Cs14kWLkQVSKO_14deltalake_core:bb.a
  %i.a = load ptr, ptr %0, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !106, !noundef !27 ; 3 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !67

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.c, align 4, !range !1786, !noundef !27
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %bb.c, label %_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtCsbvkFyIu7lgC_4core3num7nonzero7NonZeroyEE5force0Cs14kWLkQVSKO_14deltalake_core.exit, !prof !67

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lock14panic_poisoned() #61
  unreachable

_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtCsbvkFyIu7lgC_4core3num7nonzero7NonZeroyEE5force0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !nonnull !27, !noundef !27
  %i.f = tail call noundef range(i64 1, 0) i64 %i.e(), !inline_history !14182
  store i64 %i.f, ptr %i.b, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #61
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeE5force0E0Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !106, !noundef !27 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !67

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !1786, !noundef !27
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeE5force0Cs14kWLkQVSKO_14deltalake_core.exit, !prof !67

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lock14panic_poisoned() #61
  unreachable

_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeE5force0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !27, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a), !inline_history !14183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #61
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtCsbvkFyIu7lgC_4core4time8DurationE5force0E0Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !106, !noundef !27 ; 4 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !67

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.c, align 4, !range !1786, !noundef !27
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %bb.c, label %_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockNtNtCsbvkFyIu7lgC_4core4time8DurationE5force0Cs14kWLkQVSKO_14deltalake_core.exit, !prof !67

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lock14panic_poisoned() #61
  unreachable

_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockNtNtCsbvkFyIu7lgC_4core4time8DurationE5force0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !nonnull !27, !noundef !27
  %i.f = tail call { i64, i32 } %i.e(), !inline_history !14184 ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 0
  %i.h = extractvalue { i64, i32 } %i.f, 1
  store i64 %i.g, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.h, ptr %i.i, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #61
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB1s_22GenericByteViewBuilderNtNtB1w_5types14BinaryViewTypeE16try_append_valueINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEs1_0NCB1m_s0_0E0Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !27, !align !106, !noundef !27
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !27, !noundef !27
  %i.e = sub nsw i64 0, %1
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !27, !align !106, !noundef !27 ; 6 uses
  %i.h = getelementptr i8, ptr %i.a, i64 8
  %.val2 = load ptr, ptr %i.h, align 8            ; 3 uses
  %.val3 = load i64, ptr %i.g, align 8, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14185)
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !14185, !noundef !27
  %i.k = icmp ult i64 %.val3, %i.j
  br i1 %i.k, label %bb.c, label %bb.b, !prof !119

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #61, !noalias !14185
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !14185, !nonnull !27, !noundef !27
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.val3 ; 2 uses
  %i.o = load i128, ptr %i.n, align 16, !noalias !14185, !noundef !27 ; 6 uses
  %i.p = trunc i128 %i.o to i32
  %i.q = icmp ult i32 %i.p, 13
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = lshr i128 %i.o, 64                       ; 2 uses
  %i.s = trunc i128 %i.r to i32
  %i.t = lshr i128 %i.o, 96
  %i.u = trunc nuw nsw i128 %i.t to i64           ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !14185, !noundef !27 ; 4 uses
  %i.x = icmp ult i64 %i.w, 384307168202282326
  tail call void @llvm.assume(i1 %i.x)
  %i.y = trunc i64 %i.w to i32
  %i.z = icmp ult i32 %i.s, %i.y
  br i1 %i.z, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aa = trunc i128 %i.o to i64
  %i.ab = and i64 %i.aa, 15
  %i.ac = getelementptr i8, ptr %i.n, i64 4
  br label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14BinaryViewTypeE9get_valueCs14kWLkQVSKO_14deltalake_core.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = trunc i128 %i.o to i64
  %i.ae = and i64 %i.ad, 4294967295               ; 2 uses
  %i.af = add nuw nsw i64 %i.ae, %i.u             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !14185, !noundef !27 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.af, %i.ah
  br i1 %.not.i.i, label %bb.h, label %bb.i, !prof !67

bb.g:                                             ; preds = %bb.d
  %i.ai = trunc nuw i128 %i.r to i64
  %i.aj = and i64 %i.ai, 4294967295               ; 3 uses
  %i.ak = icmp samesign ult i64 %i.aj, %i.w
  br i1 %i.ak, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %i.u, i64 noundef %i.af, i64 noundef %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #61, !noalias !14185
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !14185, !nonnull !27, !noundef !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.u
  br label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14BinaryViewTypeE9get_valueCs14kWLkQVSKO_14deltalake_core.exit.i

bb.j:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !14185, !nonnull !27, !noundef !27
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.aj ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noalias !14185, !noundef !27 ; 2 uses
  %i.at = trunc i128 %i.o to i64
  %i.au = and i64 %i.at, 4294967295               ; 2 uses
  %i.av = add nuw nsw i64 %i.au, %i.u             ; 2 uses
  %.not12.i.i = icmp ugt i64 %i.av, %i.as
  br i1 %.not12.i.i, label %bb.l, label %bb.m, !prof !67

bb.k:                                             ; preds = %bb.g
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.aj, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #61, !noalias !14185
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %i.u, i64 noundef %i.av, i64 noundef %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #61, !noalias !14185
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !14185, !noundef !27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.u
  br label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14BinaryViewTypeE9get_valueCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14BinaryViewTypeE9get_valueCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.m, %bb.i, %bb.e
  %.sroa.4.0.i.i = phi i64 [ %i.ab, %bb.e ], [ %i.au, %bb.m ], [ %i.ae, %bb.i ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.ay, %bb.m ], [ %i.an, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i), "nonnull"(ptr %.val2) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noundef !27
  %i.bb = icmp eq i64 %i.ba, %.sroa.4.0.i.i
  br i1 %i.bb, label %bb.n, label %_RNCINvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB7_22GenericByteViewBuilderNtNtBb_5types14BinaryViewTypeE16try_append_valueINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEs1_0Cs14kWLkQVSKO_14deltalake_core.exit

bb.n:                                             ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14BinaryViewTypeE9get_valueCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bc = load ptr, ptr %.val2, align 8, !nonnull !27, !noundef !27
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.bc, ptr nonnull %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i)
  %i.bd = icmp eq i32 %bcmp.i, 0
  br label %_RNCINvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB7_22GenericByteViewBuilderNtNtBb_5types14BinaryViewTypeE16try_append_valueINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEs1_0Cs14kWLkQVSKO_14deltalake_core.exit

_RNCINvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB7_22GenericByteViewBuilderNtNtBb_5types14BinaryViewTypeE16try_append_valueINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEs1_0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14BinaryViewTypeE9get_valueCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.n
  %.sroa.0.0.i = phi i1 [ %i.bd, %bb.n ], [ false, %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14BinaryViewTypeE9get_valueCs14kWLkQVSKO_14deltalake_core.exit.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_projects0_0Bh_(ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project10___CALLSITE, align 8, !nonnull !27, !align !106, !noundef !27
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project10___CALLSITE, align 8, !nonnull !27, !align !106, !noundef !27 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !27, !noundef !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !27
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !27, !nonnull !27
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #62
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions26filter_to_kernel_predicates0_0B9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 5 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [112 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %1, align 8, !nonnull !27, !align !1919, !noundef !27
  invoke fastcc void @_RNvXs1M_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_10ExpressionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.c, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.b, ptr noundef nonnull align 16 dereferenceable(96) %2, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMsa_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_9Predicate6binaryNtB6_10ExpressionNtNtB6_7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.a, i8 noundef 2, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.b)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !14188
  %i.e = call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 112, i64 noundef range(i64 8, 17) 16) #60, !noalias !14188 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.f, !prof !67

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #56
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.a) #59
          to label %.body.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.e, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.i, align 8
  store i64 10, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.body.thread:                                     ; preds = %bb.d, %bb.g
  %eh.lpad-body4 = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.j, %bb.g ]
  resume { ptr, i32 } %eh.lpad-body4

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %2) #59
          to label %.body.thread unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions26filter_to_kernel_predicates_0B9_(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %1, align 8, !nonnull !27, !align !1919, !noundef !27
  invoke fastcc void @_RNvXs1M_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_10ExpressionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.c)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %2, i64 96, i1 false)
  call void @_RINvMsa_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_9Predicate6binaryNtB6_10ExpressionNtNtB6_7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, i8 noundef 2, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %2) #59
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions9to_kernel27datafusion_scalar_to_scalar0Bb_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 16 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs2_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @99, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

.body26:                                          ; preds = %bb.j, %bb.b, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.h, %bb.b ], [ %i.u, %bb.j ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %1) #59
          to label %bb.n unwind label %bb.l

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i25, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body26

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.d unwind label %bb.c

.body:                                            ; preds = %bb.h, %bb.c, %bb.g
end_hunk_1
begin_hunk_2_@_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filterss0_0Bd_:bb.a
  %i.p = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !noalias !14201
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %.val, ptr %i.j, align 8, !noalias !14201
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  invoke void @_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType6leavesINtNtCsbvkFyIu7lgC_4core6option6OptionReEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.r, ptr noalias noundef readonly captures(address, read_provenance) null, i64 undef)
          to label %bb.f unwind label %bb.d, !noalias !14201

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14206)
  %i.t = load ptr, ptr %i.j, align 8, !alias.scope !14209, !noalias !14201, !nonnull !27, !noundef !27
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !14210
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i unwind label %bb.an, !noalias !14201

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14214)
  %i.w = load ptr, ptr %i.j, align 8, !alias.scope !14217, !noalias !14201, !nonnull !27, !noundef !27
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !14218
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit22.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit22.i unwind label %bb.h, !noalias !14201

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit24.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i, %bb.l, %bb.k, %bb.h
  %.sroa.05.0.i = phi i1 [ %.sroa.05.1.i, %bb.h ], [ %.sroa.05.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i ], [ true, %bb.l ], [ true, %bb.k ]
  %.pn17.i = phi { ptr, i32 } [ %i.z, %bb.h ], [ %.pn15.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i ], [ %.pn.i, %bb.l ], [ %.pn.i, %bb.k ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema19ColumnNamesAndTypesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.k) #59
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.an, !noalias !14201

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1l_EECs14kWLkQVSKO_14deltalake_core.exit35.invoke.i, %bb.g
  %.sroa.05.1.i = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1l_EECs14kWLkQVSKO_14deltalake_core.exit35.invoke.i ], [ true, %bb.g ]
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit24.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit22.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14201
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !14201, !nonnull !27, !noundef !27 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !14201, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14201
  %i.ae = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !noalias !14201
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit22.i
  store ptr %.val, ptr %i.g, align 8, !noalias !14201
  invoke void @_RNvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB5_10StructType13make_physical(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.r, i8 noundef %.val1)
          to label %bb.n unwind label %bb.m, !noalias !14201

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit22.i
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.o, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.ak, %bb.o ], [ %i.aj, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14219)
  call void @llvm.experimental.noalias.scope.decl(metadata !14222)
  %i.ag = load ptr, ptr %i.g, align 8, !alias.scope !14225, !noalias !14201, !nonnull !27, !noundef !27
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !14226
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit24.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit24.i unwind label %bb.an, !noalias !14201

bb.m:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.n:                                             ; preds = %bb.i
  invoke void @_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType6leavesINtNtCsbvkFyIu7lgC_4core6option6OptionReEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.h, ptr noalias noundef readonly captures(address, read_provenance) null, i64 undef)
          to label %bb.p unwind label %bb.o, !noalias !14201

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.h) #59
          to label %bb.k unwind label %bb.an, !noalias !14201

bb.p:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.h)
          to label %bb.s unwind label %bb.q, !noalias !14201

bb.q:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14227)
  call void @llvm.experimental.noalias.scope.decl(metadata !14230)
  %i.am = load ptr, ptr %i.g, align 8, !alias.scope !14233, !noalias !14201, !nonnull !27, !noundef !27
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !14234
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i unwind label %bb.an, !noalias !14201

bb.s:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !14235)
  call void @llvm.experimental.noalias.scope.decl(metadata !14238)
  %i.ap = load ptr, ptr %i.g, align 8, !alias.scope !14241, !noalias !14201, !nonnull !27, !noundef !27
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !14242
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit28.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit28.i unwind label %bb.u, !noalias !14201

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i: ; preds = %bb.ak, %bb.ai, %bb.u, %bb.r, %bb.q
  %.sroa.05.2.i = phi i1 [ true, %bb.q ], [ true, %bb.ai ], [ true, %bb.r ], [ %.sroa.05.3.i, %bb.u ], [ false, %bb.ak ]
  %.pn15.i = phi { ptr, i32 } [ %i.al, %bb.q ], [ %i.fp, %bb.ai ], [ %i.al, %bb.r ], [ %i.as, %bb.u ], [ %i.fr, %bb.ak ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema19ColumnNamesAndTypesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.i) #59
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit24.i unwind label %bb.an, !noalias !14201

bb.u:                                             ; preds = %.invoke.i, %_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i, %bb.v, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSBJ_ECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit28.i, %bb.t
  %.sroa.05.3.i = phi i1 [ true, %bb.v ], [ false, %.invoke.i ], [ true, %_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i ], [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit28.i ], [ true, %bb.t ], [ true, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSBJ_ECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit28.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14201
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !14201, !nonnull !27, !noundef !27 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !14201, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14201
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.ad
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.aw
  invoke void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameEBW_EINtB5_7ZipImplBW_BW_E3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ax, ptr noundef nonnull readonly align 8 %i.au, ptr noundef nonnull readonly %i.ay)
          to label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSBJ_ECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.u, !noalias !14201

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSBJ_ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit28.i
  call void @llvm.experimental.noalias.scope.decl(metadata !14243)
  %.sroa.0.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8, !alias.scope !14246, !noalias !14250 ; 2 uses
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.0.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !14246, !noalias !14250 ; 2 uses
  %.sroa.4.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.4.0.copyload8.i.i = load i64, ptr %.sroa.4.0..sroa_idx7.i.i, align 8, !alias.scope !14246, !noalias !14250 ; 3 uses
  %.sroa.5.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.5.0.copyload10.i.i = load i64, ptr %.sroa.5.0..sroa_idx9.i.i, align 8, !alias.scope !14246, !noalias !14250 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14252
  %i.az = sub i64 %.sroa.5.0.copyload10.i.i, %.sroa.4.0.copyload8.i.i ; 2 uses
  %i.ba = invoke noundef i64 @_RNvNtCsjTPIcpFZL1T_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc30.i unwind label %bb.u, !noalias !14201

.noexc30.i:                                       ; preds = %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSBJ_ECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !noalias !14252
  %i.bc = icmp eq i8 %i.bb, 2
  br i1 %i.bc, label %_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i, label %bb.v, !prof !119

bb.v:                                             ; preds = %.noexc30.i
  invoke void @_RNvMs_NtNtCsjTPIcpFZL1T_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #57
          to label %_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i unwind label %bb.u, !noalias !14201

_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i: ; preds = %bb.v, %.noexc30.i
  invoke void @_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBP_EE16with_capacity_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.b, i64 noundef %i.az)
          to label %.noexc32.i unwind label %bb.u, !noalias !14201

.noexc32.i:                                       ; preds = %_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  store i64 %i.ba, ptr %i.bd, align 8, !alias.scope !14253, !noalias !14252
  call void @llvm.experimental.noalias.scope.decl(metadata !14256)
  call void @llvm.experimental.noalias.scope.decl(metadata !14259)
  call void @llvm.experimental.noalias.scope.decl(metadata !14262)
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload10.i.i, %.sroa.4.0.copyload8.i.i
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc32.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload.i.i), "nonnull"(ptr %.sroa.0.sroa.5.0.copyload.i.i) ]
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.w

bb.w:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1g_ENCINvXs1k_NtCs2HSpDNxY7OE_9hashbrown3mapINtB2H_7HashMapB1g_B1g_EINtNtBa_7collect12FromIteratorB1f_E9from_iterINtNtNtBc_8adapters3zip3ZipINtNtNtBe_5slice4iter4IterB1h_EB4J_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.0.014.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.bg, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1g_ENCINvXs1k_NtCs2HSpDNxY7OE_9hashbrown3mapINtB2H_7HashMapB1g_B1g_EINtNtBa_7collect12FromIteratorB1f_E9from_iterINtNtNtBc_8adapters3zip3ZipINtNtNtBe_5slice4iter4IterB1h_EB4J_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ] ; 2 uses
  %i.bg = add nuw i64 %.sroa.0.014.i.i.i.i.i, 1   ; 2 uses
  %i.bh = add i64 %.sroa.0.014.i.i.i.i.i, %.sroa.4.0.copyload8.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.sroa.0.0.copyload.i.i, i64 %i.bh ; 4 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.sroa.5.0.copyload.i.i, i64 %i.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !14265)
  call void @llvm.experimental.noalias.scope.decl(metadata !14268)
  call void @llvm.experimental.noalias.scope.decl(metadata !14271)
  call void @llvm.experimental.noalias.scope.decl(metadata !14274)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !14276, !noalias !14279, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14287
  store i128 0, ptr %i.a, align 16, !alias.scope !14288, !noalias !14291
  store ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !14288, !noalias !14291
  store i64 %.val.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !14288, !noalias !14291
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !14288, !noalias !14291
  invoke void @_RINvXs5_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB6_10ColumnNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi, ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc.i.i unwind label %bb.ai, !noalias !14252

.noexc.i.i:                                       ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !14293)
  %i.bk = load i8, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !14293, !noalias !14287, !noundef !27
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.noexc.i.i
  %i.bl = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !14293, !noalias !14287, !noundef !27
  br label %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %.noexc.i.i
  %i.bm = load i128, ptr %i.a, align 16, !alias.scope !14293, !noalias !14287, !noundef !27 ; 2 uses
  %i.bn = trunc i128 %i.bm to i64
  %i.bo = lshr i128 %i.bm, 64
  %i.bp = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !14293, !noalias !14287, !noundef !27
  %i.bq = xor i64 %i.bp, %i.bn
  %i.br = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !14293, !noalias !14287, !nonnull !27, !align !106, !noundef !27
  %i.bs = load i64, ptr %i.br, align 8, !noalias !14296, !noundef !27
  %i.bt = zext i64 %i.bq to i128
  %i.bu = zext i64 %i.bs to i128
  %i.bv = xor i128 %i.bo, %i.bu
  %i.bw = mul nuw i128 %i.bv, %i.bt               ; 2 uses
  %i.bx = lshr i128 %i.bw, 64
  %i.by = xor i128 %i.bx, %i.bw
  %i.bz = trunc i128 %i.by to i64
  br label %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i

_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bz, %bb.y ], [ %i.bl, %bb.x ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14287
  %i.ca = load i64, ptr %i.be, align 8, !alias.scope !14297, !noalias !14302, !noundef !27
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.z, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i, !prof !67

bb.z:                                             ; preds = %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i
  %i.cc = invoke { i64, i64 } @_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bd, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i unwind label %bb.ai, !noalias !14252 ; 0 uses

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !14306, !noalias !14307, !nonnull !27, !noundef !27 ; 10 uses
  %.val7.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !14306, !noalias !14307, !noundef !27 ; 7 uses
  %i.cd = lshr i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, 57
  %i.ce = trunc nuw nsw i64 %i.cd to i8           ; 3 uses
  %i.cf = insertelement <16 x i8> poison, i8 %i.ce, i64 0
  %i.cg = shufflevector <16 x i8> %i.cf, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !14308, !noalias !14309 ; 3 uses
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ci, align 8, !alias.scope !14308, !noalias !14309
  %.val1.i.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.cj = icmp eq i64 %.val1.i.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.cj, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.us.i.i.i.i.i.i.i.i, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.i.i.i.i.i.i.i.i

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.us.i.i.i.i.i.i.i.i: ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i, %bb.ac
  %.pn.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %i.dj, %bb.ac ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.4.0.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.us.i.i.i.i.i.i.i.i, %bb.ac ], [ undef, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.01.0.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.01.123.i.i.us.i.i.i.i.i.i.i.i, %bb.ac ], [ 0, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i ]
  %i.ck = phi i64 [ %i.di, %bb.ac ], [ 0, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.017.i.i.us.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.us.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.us.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i28.i.i.us.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cl, align 1, !noalias !14310 ; 3 uses
  %i.cm = icmp eq <16 x i8> %.sroa.0.0.copyload.i28.i.i.us.i.i.i.i.i.i.i.i, %i.cg
  %i.cn = bitcast <16 x i1> %i.cm to i16          ; 2 uses
  %.not29.i.i.us.i.i.i.i.i.i.i.i = icmp eq i16 %i.cn, 0
  br i1 %.not29.i.i.us.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.us.i.i.i.i.i.i.i.i, label %.lr.ph.i.us.i.us.i.i.i.i.i.i.i.i

.lr.ph.i.us.i.us.i.i.i.i.i.i.i.i:                 ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.us.i.i.i.i.i.i.i.i, %bb.aa
  %.sroa.05.030.i.us.i.us.i.i.i.i.i.i.i.i = phi i16 [ %i.cy, %bb.aa ], [ %i.cn, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.us.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.co = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.030.i.us.i.us.i.i.i.i.i.i.i.i, i1 true)
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = add i64 %.sroa.0.017.i.i.us.i.i.i.i.i.i.i.i, %i.cp
  %i.cr = and i64 %i.cq, %.val7.i.i.i.i.i.i.i.i.i
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -16
  %.val2.i.us.i.us.i.i.i.i.i.i.i.i = load ptr, ptr %i.cu, align 8, !noalias !14313, !nonnull !27, !align !106, !noundef !27
  %i.cv = getelementptr i8, ptr %.val2.i.us.i.us.i.i.i.i.i.i.i.i, i64 16
  %.val3.i.i.i.i.us.i.us.i.i.i.i.i.i.i.i = load i64, ptr %i.cv, align 8, !noalias !14313, !noundef !27
  %i.cw = icmp eq i64 %.val3.i.i.i.i.us.i.us.i.i.i.i.i.i.i.i, 0
  br i1 %i.cw, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner31find_or_find_insert_index_inner.exit.loopexit19.split.us.i.i.i.i.i.i.i.i.i, label %bb.aa, !prof !152

bb.aa:                                            ; preds = %.lr.ph.i.us.i.us.i.i.i.i.i.i.i.i
  %i.cx = add i16 %.sroa.05.030.i.us.i.us.i.i.i.i.i.i.i.i, -1
  %i.cy = and i16 %i.cx, %.sroa.05.030.i.us.i.us.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.us.i.us.i.i.i.i.i.i.i.i = icmp eq i16 %i.cy, 0
  br i1 %.not.i.us.i.us.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.us.i.i.i.i.i.i.i.i, label %.lr.ph.i.us.i.us.i.i.i.i.i.i.i.i

._crit_edge.i.i.us.i.i.i.i.i.i.i.i:               ; preds = %bb.aa, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.us.i.i.i.i.i.i.i.i
  %.not12.i.i.us.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.us.i.i.i.i.i.i.i.i, 1
  br i1 %.not12.i.i.us.i.i.i.i.i.i.i.i, label %.thread.i.i.us.i.i.i.i.i.i.i.i, label %bb.ab, !prof !67

bb.ab:                                            ; preds = %._crit_edge.i.i.us.i.i.i.i.i.i.i.i
  %i.cz = icmp slt <16 x i8> %.sroa.0.0.copyload.i28.i.i.us.i.i.i.i.i.i.i.i, zeroinitializer
  %i.da = bitcast <16 x i1> %i.cz to i16          ; 2 uses
  %.not.i.i.i.us.i.i.i.i.i.i.i.i = icmp eq i16 %i.da, 0
  br i1 %.not.i.i.i.us.i.i.i.i.i.i.i.i, label %bb.ac, label %.thread25.i.i.us.i.i.i.i.i.i.i.i, !prof !67

.thread25.i.i.us.i.i.i.i.i.i.i.i:                 ; preds = %bb.ab
  %i.db = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.da, i1 true)
  %i.dc = zext nneg i16 %i.db to i64
  %i.dd = add i64 %.sroa.0.017.i.i.us.i.i.i.i.i.i.i.i, %i.dc
  %i.de = and i64 %i.dd, %.val7.i.i.i.i.i.i.i.i.i
  br label %.thread.i.i.us.i.i.i.i.i.i.i.i

.thread.i.i.us.i.i.i.i.i.i.i.i:                   ; preds = %.thread25.i.i.us.i.i.i.i.i.i.i.i, %._crit_edge.i.i.us.i.i.i.i.i.i.i.i
  %.sroa.4.122.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %i.de, %.thread25.i.i.us.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.us.i.i.i.i.i.i.i.i, %._crit_edge.i.i.us.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.df = icmp eq <16 x i8> %.sroa.0.0.copyload.i28.i.i.us.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.dg = bitcast <16 x i1> %i.df to i16
  %i.dh = icmp eq i16 %i.dg, 0
  br i1 %i.dh, label %bb.ac, label %.split.us.i.i.i.i.i.i.i.i, !prof !67

bb.ac:                                            ; preds = %.thread.i.i.us.i.i.i.i.i.i.i.i, %bb.ab
  %.sroa.01.123.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.us.i.i.i.i.i.i.i.i ], [ 0, %bb.ab ]
  %.sroa.4.121.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.122.i.i.us.i.i.i.i.i.i.i.i, %.thread.i.i.us.i.i.i.i.i.i.i.i ], [ undef, %bb.ab ]
  %i.di = add i64 %i.ck, 16                       ; 2 uses
  %i.dj = add i64 %i.di, %.sroa.0.017.i.i.us.i.i.i.i.i.i.i.i
  br label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.us.i.i.i.i.i.i.i.i

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.i.i.i.i.i.i.i.i: ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i, %bb.af
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.es, %bb.af ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i.i.i.i.i.i.i, %bb.af ], [ undef, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.01.123.i.i.i.i.i.i.i.i.i.i, %bb.af ], [ 0, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i ]
  %i.dk = phi i64 [ %i.er, %bb.af ], [ 0, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.017.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.dl, align 1, !noalias !14310 ; 3 uses
  %i.dm = icmp eq <16 x i8> %.sroa.0.0.copyload.i28.i.i.i.i.i.i.i.i.i.i, %i.cg
  %i.dn = bitcast <16 x i1> %i.dm to i16          ; 2 uses
  %.not29.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.dn, 0
  br i1 %.not29.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner31find_or_find_insert_index_inner.exit.loopexit19.split.us.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.us.i.us.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %.loopexit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.05.030.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.eh, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.dn, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.do = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.030.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.dp = zext nneg i16 %i.do to i64
  %i.dq = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i, %i.dp
  %i.dr = and i64 %i.dq, %.val7.i.i.i.i.i.i.i.i.i
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -16
  %.val2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.du, align 8, !noalias !14313, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.dv = getelementptr i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dv, align 8, !noalias !14313 ; 2 uses
  %i.dw = getelementptr i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i, i64 16
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dw, align 8, !noalias !14313, !noundef !27
  %i.dx = icmp eq i64 %.val1.i.i.i.i.i.fr.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.dx, label %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, !prof !152

.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i), "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dy = add nuw i64 %.sroa.01.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dy, %.val1.i.i.i.i.i.fr.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i
  %.sroa.01.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dy, %bb.ad ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.01.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.01.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dz, i64 16
  %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eb, align 8, !noalias !14313, !noundef !27 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.ea, i64 16
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ec, align 8, !noalias !14313, !noundef !27
  %i.ed = icmp eq i64 %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ed, label %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, !prof !152

_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ee = getelementptr i8, ptr %i.ea, i64 8
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ee, align 8, !noalias !14313, !nonnull !27, !noundef !27
  %i.ef = getelementptr i8, ptr %i.dz, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ef, align 8, !noalias !14313, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !14313
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ad, label %.loopexit.i.i.i.i.i.i.i.i.i, !prof !152

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.loopexit.i.i.i.i.i.i.i.i.i, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.i.i.i.i.i.i.i.i
  %.not12.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i, label %bb.ae, !prof !67

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.eg = add i16 %.sroa.05.030.i.i.i.i.i.i.i.i.i.i, -1
  %i.eh = and i16 %i.eg, %.sroa.05.030.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i.i = icmp eq i16 %i.eh, 0
  br i1 %.not.i.i8.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ei = icmp slt <16 x i8> %.sroa.0.0.copyload.i28.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.ej = bitcast <16 x i1> %i.ei to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ej, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.af, label %.thread25.i.i.i.i.i.i.i.i.i.i, !prof !67

.thread25.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.ae
  %i.ek = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ej, i1 true)
  %i.el = zext nneg i16 %i.ek to i64
  %i.em = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i, %i.el
  %i.en = and i64 %i.em, %.val7.i.i.i.i.i.i.i.i.i
  br label %.thread.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i:                      ; preds = %.thread25.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.122.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.en, %.thread25.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.eo = icmp eq <16 x i8> %.sroa.0.0.copyload.i28.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ep = bitcast <16 x i1> %i.eo to i16
  %i.eq = icmp eq i16 %i.ep, 0
  br i1 %i.eq, label %bb.af, label %.split.us.i.i.i.i.i.i.i.i, !prof !67

bb.af:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i, %bb.ae
  %.sroa.01.123.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ae ]
  %.sroa.4.121.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.122.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.ae ]
  %i.er = add i64 %i.dk, 16                       ; 2 uses
  %i.es = add i64 %i.er, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i
  br label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i:                        ; preds = %.thread.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.us.i.i.i.i.i.i.i.i
  %.us-phi15.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.122.i.i.us.i.i.i.i.i.i.i.i, %.thread.i.i.us.i.i.i.i.i.i.i.i ], [ %.sroa.4.122.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.us-phi15.i.i.i.i.i.i.i.i
  %i.eu = load i8, ptr %i.et, align 1, !noalias !14316, !noundef !27 ; 2 uses
  %i.ev = icmp sgt i8 %i.eu, -1
  br i1 %i.ev, label %bb.ag, label %bb.ah, !prof !67

bb.ag:                                            ; preds = %.split.us.i.i.i.i.i.i.i.i
  %.val72.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i.i.i.i.i, align 16, !noalias !14316
  %i.ew = icmp slt <16 x i8> %.val72.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.ex = bitcast <16 x i1> %i.ew to i16          ; 2 uses
  %.not.i23.i.i.i.i.i.i.i.i.i.i = icmp ne i16 %i.ex, 0
  %i.ey = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ex, i1 true)
  %i.ez = zext nneg i16 %i.ey to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i23.i.i.i.i.i.i.i.i.i.i)
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.ez
  %.pre.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 1, !noalias !14317
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.split.us.i.i.i.i.i.i.i.i
  %i.fa = phi i8 [ %.pre.i.i.i.i.i.i.i.i, %bb.ag ], [ %i.eu, %.split.us.i.i.i.i.i.i.i.i ]
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ez, %bb.ag ], [ %.us-phi15.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14322)
  %i.fb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i
  %i.fc = and i8 %i.fa, 1
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i, -16
  %i.ff = and i64 %i.fe, %.val7.i.i.i.i.i.i.i.i.i
  store i8 %i.ce, ptr %i.fb, align 1, !noalias !14317
  %i.fg = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.ff
  %i.fh = getelementptr i8, ptr %i.fg, i64 16
  store i8 %i.ce, ptr %i.fh, align 1, !noalias !14317
  %i.fi = load <2 x i64>, ptr %i.be, align 8, !alias.scope !14323, !noalias !14324
  %i.fj = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.fd, i64 0
  %i.fk = sub <2 x i64> %i.fi, %i.fj
  store <2 x i64> %i.fk, ptr %i.be, align 8, !alias.scope !14323, !noalias !14324
  %i.fl = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i
  %i.fm = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 -16
  store ptr %i.bi, ptr %i.fn, align 8, !noalias !14317
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1g_ENCINvXs1k_NtCs2HSpDNxY7OE_9hashbrown3mapINtB2H_7HashMapB1g_B1g_EINtNtBa_7collect12FromIteratorB1f_E9from_iterINtNtNtBc_8adapters3zip3ZipINtNtNtBe_5slice4iter4IterB1h_EB4J_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.ad, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner31find_or_find_insert_index_inner.exit.loopexit19.split.us.i.i.i.i.i.i.i.i.i
  %.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.ct, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner31find_or_find_insert_index_inner.exit.loopexit19.split.us.i.i.i.i.i.i.i.i.i ], [ %i.dt, %bb.ad ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.ph.i.i.i.i.i.i.i.i) ]
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1g_ENCINvXs1k_NtCs2HSpDNxY7OE_9hashbrown3mapINtB2H_7HashMapB1g_B1g_EINtNtBa_7collect12FromIteratorB1f_E9from_iterINtNtNtBc_8adapters3zip3ZipINtNtNtBe_5slice4iter4IterB1h_EB4J_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1g_ENCINvXs1k_NtCs2HSpDNxY7OE_9hashbrown3mapINtB2H_7HashMapB1g_B1g_EINtNtBa_7collect12FromIteratorB1f_E9from_iterINtNtNtBc_8adapters3zip3ZipINtNtNtBe_5slice4iter4IterB1h_EB4J_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i, %bb.ah
  %.sink20.i.i.i.i.i.i.i = phi ptr [ %i.fm, %bb.ah ], [ %.ph.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ]
  %i.fo = getelementptr inbounds i8, ptr %.sink20.i.i.i.i.i.i.i, i64 -8
  store ptr %i.bj, ptr %i.fo, align 8, !noalias !14325
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.bg, %i.az
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i, label %bb.w

bb.ai:                                            ; preds = %bb.z, %bb.w
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1d_ENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i unwind label %bb.aj, !noalias !14252

bb.aj:                                            ; preds = %bb.ai
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !14252
  unreachable

.loopexit.i:                                      ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1g_ENCINvXs1k_NtCs2HSpDNxY7OE_9hashbrown3mapINtB2H_7HashMapB1g_B1g_EINtNtBa_7collect12FromIteratorB1f_E9from_iterINtNtNtBc_8adapters3zip3ZipINtNtNtBe_5slice4iter4IterB1h_EB4J_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %.noexc32.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !14326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14201
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(112) %i.l, i64 112, i1 false), !noalias !14198
  invoke void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode12transform_upNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan18rewrite_expression0EB28_(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.al unwind label %bb.ak, !noalias !14201

bb.ak:                                            ; preds = %.loopexit.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1d_ENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fs, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i unwind label %bb.an, !noalias !14201

bb.al:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14201
  %i.ft = load i64, ptr %i.d, align 16, !range !1006, !noalias !14201, !noundef !27 ; 3 uses
  %i.fu = icmp eq i64 %i.ft, 37
  %i.fv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %i.fv, i64 40, i1 false), !noalias !14201
  br i1 %i.fu, label %.invoke.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.67.0..sroa_idx.i, i64 64, i1 false), !noalias !14327
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14201
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !14327
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  store i64 %i.ft, ptr %i.m, align 16, !alias.scope !14198, !noalias !14327
  %i.fw = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1d_ENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fw, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1l_EECs14kWLkQVSKO_14deltalake_core.exit35.invoke.i unwind label %bb.u, !noalias !14201

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit24.i
  br i1 %.sroa.05.0.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %bb.ao

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1l_EECs14kWLkQVSKO_14deltalake_core.exit35.invoke.i: ; preds = %.invoke.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14201
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema19ColumnNamesAndTypesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.i)
          to label %_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan18rewrite_expression.exit unwind label %bb.h, !noalias !14201

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i, %bb.r, %bb.o, %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit24.i, %bb.e
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !14198
  unreachable

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.pn193.i = phi { ptr, i32 } [ %.pn194.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %.pn17.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  resume { ptr, i32 } %.pn193.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.e, %bb.d
  %.pn194.i = phi { ptr, i32 } [ %.pn17.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.s, %bb.e ], [ %i.s, %bb.d ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.l) #59
          to label %bb.ao unwind label %bb.an, !noalias !14198

_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan18rewrite_expression.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1l_EECs14kWLkQVSKO_14deltalake_core.exit35.invoke.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14201
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema19ColumnNamesAndTypesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.k), !noalias !14201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
end_hunk_2
begin_hunk_3_@_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions26filter_to_kernel_predicate:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.bc:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.dl, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.dl, ptr %i.do, align 8
  store i64 10, ptr %i.ah, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.514)
  br label %bb.r

bb.bd:                                            ; preds = %bb.bn, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.bo

bb.be:                                            ; preds = %bb.ak, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.bo

bb.bf:                                            ; preds = %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ds = load i64, ptr %i.dr, align 8, !noundef !27
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.ds
  store ptr %i.dq, ptr %i.i, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.dt, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.as, ptr %i.dv, align 8
  invoke void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions26filter_to_kernel_predicate0ENtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB3N_5error5ErrorENCINvXso_B4K_IB4I_INtNtB1A_3vec3VecB3H_EB5u_EINtNtNtB4_6traits7collect12FromIteratorIB4I_B3H_B5u_EE9from_iterBQ_E0B67_EB2j_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.j, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i)
          to label %bb.bg unwind label %bb.j

bb.bg:                                            ; preds = %bb.bf
  %i.dw = load i64, ptr %i.j, align 16, !range !107, !noundef !27 ; 2 uses
  %.not81 = icmp eq i64 %i.dw, -9223372036854775743
  %i.dx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false)
  br i1 %.not81, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.569.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.663.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.468.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dw, ptr %i.dy, align 16
  store i64 16, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.u

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.dz = icmp eq i64 %i.au, 6
  br i1 %i.dz, label %bb.bj, label %bb.bk, !prof !15991

bb.bj:                                            ; preds = %bb.bi
  %i.ea = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 8)
          to label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions26filter_to_kernel_predicates_0E3newBO_.exit unwind label %bb.bp

bb.bk:                                            ; preds = %bb.bi
  %i.eb = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 8)
          to label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions26filter_to_kernel_predicates_0E3newBO_.exit unwind label %bb.bp

bb.bl:                                            ; preds = %bb.bm, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions26filter_to_kernel_predicates_0E3newBO_.exit
  %lpad.thr_comm.split-lp120 = landingpad { ptr, i32 }
          cleanup
  br label %.thread100

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions26filter_to_kernel_predicates_0E3newBO_.exit: ; preds = %bb.bk, %bb.bj
  %.sink = phi ptr [ %i.ea, %bb.bj ], [ %i.eb, %bb.bk ] ; 2 uses
  %.sroa.327.0 = phi ptr [ @214, %bb.bj ], [ @215, %bb.bk ]
  %.sroa.073.0 = phi i8 [ 1, %bb.bj ], [ 0, %bb.bk ]
  store ptr %i.ai, ptr %.sink, align 8, !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !27, !noundef !27 ; 3 uses
  %i.ee = load i64, ptr %i.k, align 8, !range !74, !noundef !27
  %i.ef = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !noundef !27 ; 2 uses
  %i.eh = icmp ult i64 %i.eg, 96076792050570582
  call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw [96 x i8], ptr %i.ed, i64 %i.eg
  store ptr %i.ed, ptr %i.g, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ed, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.ee, ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.ei, ptr %.sroa.631.0..sroa_idx, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %.sink, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %.sroa.327.0, ptr %i.ek, align 8
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtB15_7scalars6ScalarEINtNtB8_5boxed3BoxDINtNtNtB2A_3ops8function2FnTB3G_EEp6OutputB13_EL_EEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
          to label %bb.bm unwind label %bb.bl

bb.bm:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions26filter_to_kernel_predicates_0E3newBO_.exit
  %i.el = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !nonnull !27, !noundef !27 ; 3 uses
  %i.en = load i64, ptr %i.h, align 8, !range !74, !noundef !27
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !noundef !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.eq = icmp ult i64 %i.ep, 82351536043346213
  call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw [112 x i8], ptr %i.em, i64 %i.ep
  store ptr %i.em, ptr %i.a, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.en, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.em, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.er, ptr %i.eu, align 8
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB6_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEINtB4_12SpecFromIterBW_INtNtB6_9into_iter8IntoIterBW_EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.bn unwind label %bb.bl

bb.bn:                                            ; preds = %bb.bm
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i8 %.sroa.073.0, ptr %.sroa.471.0..sroa_idx, align 16
  store i64 13, ptr %i.ah, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %i.ah, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.ai)
  br label %bb.bd

bb.bo:                                            ; preds = %.split78, %.split, %bb.be, %bb.bd
  ret void

bb.bp:                                            ; preds = %bb.bj, %bb.bk
  %lpad.thr_comm119 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.k) #59
          to label %.thread100 unwind label %bb.t

.thread107:                                       ; preds = %bb.ac, %bb.aw, %bb.as, %bb.al, %bb.ag, %bb.af, %bb.s, %bb.ba, %bb.ap, %.thread100
  %.pn98 = phi { ptr, i32 } [ %i.dm, %bb.ba ], [ %.pn103, %.thread100 ], [ %i.cj, %bb.ac ], [ %i.cy, %bb.ap ], [ %i.dg, %bb.aw ], [ %i.db, %bb.as ], [ %i.cs, %bb.al ], [ %i.cn, %bb.ag ], [ %i.ca, %bb.s ], [ %i.cm, %bb.af ]
  resume { ptr, i32 } %.pn98

.thread100:                                       ; preds = %bb.bl, %bb.bp, %bb.j
  %.pn103 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.j ], [ %lpad.thr_comm.split-lp120, %bb.bl ], [ %lpad.thr_comm119, %bb.bp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.ai) #59
          to label %.thread107 unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan22update_partition_stats(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %2, ptr noalias noundef align 8 dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [320 x i8], align 16              ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca [64 x i8], align 16               ; 4 uses
  %.sroa.616 = alloca [64 x i8], align 16         ; 5 uses
  %i.d = alloca [288 x i8], align 16              ; 14 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %i.f = alloca [288 x i8], align 16              ; 5 uses
  %i.g = alloca [80 x i8], align 16               ; 5 uses
  %i.h = alloca [80 x i8], align 16               ; 5 uses
  %i.i = alloca [64 x i8], align 16               ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 16           ; 6 uses
  %.sroa.35.sroa.2 = alloca [40 x i8], align 16   ; 2 uses
  %i.j = alloca [80 x i8], align 16               ; 12 uses
  %i.k = alloca [16 x i8], align 8                ; 3 uses
  %i.l = alloca [48 x i8], align 8                ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !27
  %i.q = getelementptr inbounds nuw [96 x i8], ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !noundef !27
  %i.v = getelementptr inbounds nuw [96 x i8], ptr %i.s, i64 %i.u
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noundef nonnull %i.n, ptr noundef nonnull %i.q, ptr noundef nonnull %i.s, ptr noundef nonnull %i.v)
  %.sroa.0.0.copyload = load ptr, ptr %i.l, align 8 ; 2 uses
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.560.0.copyload = load ptr, ptr %.sroa.560.0..sroa_idx, align 8 ; 2 uses
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.662.0.copyload = load i64, ptr %.sroa.662.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.w = icmp ult i64 %.sroa.662.0.copyload, %.sroa.8.0.copyload
  br i1 %i.w, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.560.0.copyload) ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.x = load i64, ptr %2, align 8, !range !586
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 5 uses
  %.sroa.35.sroa.2.0..sroa.35.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.35.sroa.3.0..sroa.35.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E4nextCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit35
  %.sroa.35.sroa.0.0106 = phi i128 [ undef, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph ], [ %.sroa.35.sroa.0.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit35 ]
  %.sroa.35.sroa.3.0105 = phi i64 [ undef, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph ], [ %.sroa.35.sroa.3.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit35 ]
  %.sroa.662.0104 = phi i64 [ %.sroa.662.0.copyload, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph ], [ %i.ao, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit35 ] ; 3 uses
  %i.ao = add i64 %.sroa.662.0104, 1              ; 2 uses
  %i.ap = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.662.0104 ; 3 uses
  %i.aq = getelementptr inbounds nuw [96 x i8], ptr %.sroa.560.0.copyload, i64 %.sroa.662.0104 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 16, !range !6032, !noundef !27
  %i.as = icmp eq i64 %i.ar, -9223372036854775795
  br i1 %i.as, label %bb.d, label %bb.c

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit35, %bb.a
  store i64 20, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  ret void

bb.c:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E4nextCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion20to_datafusion_scalar(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.aq)
  %i.at = load i128, ptr %i.i, align 16, !range !15992, !noundef !27 ; 2 uses
  %i.au = icmp eq i128 %i.at, 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.5.0..sroa_idx, i64 40, i1 false)
  br i1 %i.au, label %bb.m, label %bb.n

bb.d:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E4nextCs14kWLkQVSKO_14deltalake_core.exit, %bb.n
  %.sroa.35.sroa.3.1 = phi i64 [ %.sroa.621.0.copyload, %bb.n ], [ %.sroa.35.sroa.3.0105, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E4nextCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.35.sroa.0.1 = phi i128 [ %i.at, %bb.n ], [ %.sroa.35.sroa.0.0106, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E4nextCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.04.0 = phi i128 [ 0, %bb.n ], [ 2, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E4nextCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.3.0 = phi i64 [ 0, %bb.n ], [ %i.z, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E4nextCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.03.0 = phi i64 [ 0, %bb.n ], [ %i.x, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E4nextCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  store i64 %.sroa.03.0, ptr %i.k, align 8
  store i64 %.sroa.3.0, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i128 %.sroa.04.0, ptr %i.j, align 16
  store i128 %.sroa.35.sroa.0.1, ptr %.sroa.35.0..sroa_idx, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.35.sroa.2.0..sroa.35.0..sroa_idx.sroa_idx, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.35.sroa.2, i64 40, i1 false)
  store i64 %.sroa.35.sroa.3.1, ptr %.sroa.35.sroa.3.0..sroa.35.0..sroa_idx.sroa_idx, align 8
  %i.av = getelementptr i8, ptr %i.ap, i64 8
  %.val = load ptr, ptr %i.av, align 8            ; 10 uses
  %i.aw = getelementptr i8, ptr %i.ap, i64 16
  %.val25 = load i64, ptr %i.aw, align 8          ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15993)
  %i.ax = load i64, ptr %i.ab, align 8, !alias.scope !15993, !noundef !27
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.i26 = load i64, ptr %i.ac, align 8, !alias.scope !15996, !noalias !15999, !noundef !27 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16001)
  call void @llvm.experimental.noalias.scope.decl(metadata !16004)
  %i.az = call noundef i64 @llvm.fshr.i64(i64 %.val.i26, i64 %.val.i26, i64 %.val25) ; 5 uses
  %i.ba = icmp samesign ult i64 %.val25, 17
  br i1 %i.ba, label %bb.g, label %bb.f, !prof !119

bb.f:                                             ; preds = %bb.e
  %i.bb = invoke noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef range(i64 0, -9223372036854775808) %.val25, i64 noundef %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE) #57
          to label %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %.thread75

bb.g:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !16007)
  call void @llvm.experimental.noalias.scope.decl(metadata !16010)
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !alias.scope !16010, !noalias !16012, !noundef !27 ; 4 uses
  %i.bd = icmp samesign ugt i64 %.val25, 7
  br i1 %i.bd, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ugt i64 %.val25, 3
  br i1 %i.be, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, label %bb.i

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.g
  %.sroa.014.0.copyload.i.i.i.i.i.i = load i64, ptr %.val, align 1, !alias.scope !16017, !noalias !16018
  %i.bf = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i, %i.az
  %i.bg = getelementptr i8, ptr %.val, i64 %.val25
  %i.bh = getelementptr i8, ptr %i.bg, i64 -8
  %.sroa.016.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bh, align 1, !alias.scope !16017, !noalias !16018
  %i.bi = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i, %i.bc
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i.i.i = icmp eq i64 %.val25, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i, label %bb.j

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.h
  %i.bj = getelementptr i8, ptr %.val, i64 %.val25
  %i.bk = getelementptr i8, ptr %i.bj, i64 -4
  %.sroa.019.0.copyload.i.i.i.i.i.i = load i32, ptr %i.bk, align 1, !alias.scope !16017, !noalias !16018
  %.sroa.018.0.copyload.i.i.i.i.i.i = load i32, ptr %.val, align 1, !alias.scope !16017, !noalias !16018
  %i.bl = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i to i64
  %i.bm = xor i64 %i.az, %i.bl
  %i.bn = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i to i64
  %i.bo = xor i64 %i.bc, %i.bn
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bp = load i8, ptr %.val, align 1, !alias.scope !16017, !noalias !16018, !noundef !27
  %i.bq = lshr i64 %.val25, 1
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !16017, !noalias !16018, !noundef !27
  %i.bt = getelementptr i8, ptr %.val, i64 %.val25
  %i.bu = getelementptr i8, ptr %i.bt, i64 -1
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !16017, !noalias !16018, !noundef !27
  %i.bw = zext i8 %i.bp to i64
  %i.bx = xor i64 %i.az, %i.bw
  %i.by = zext i8 %i.bv to i64
  %i.bz = shl nuw nsw i64 %i.by, 8
  %i.ca = zext i8 %i.bs to i64
  %i.cb = or disjoint i64 %i.bz, %i.ca
  %i.cc = xor i64 %i.cb, %i.bc
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i: ; preds = %bb.j, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %bb.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ %i.bi, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ], [ %i.bo, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ], [ %i.cc, %bb.j ], [ %i.bc, %bb.i ]
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.bf, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ], [ %i.bm, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ], [ %i.bx, %bb.j ], [ %i.az, %bb.i ]
  %i.cd = zext i64 %.sroa.0.0.i.i.i.i.i.i to i128
  %i.ce = zext i64 %.sroa.04.0.i.i.i.i.i.i to i128
  %i.cf = mul nuw i128 %i.cd, %i.ce               ; 2 uses
  %i.cg = lshr i128 %i.cf, 64
  %i.ch = xor i128 %i.cg, %i.cf
  %i.ci = trunc i128 %i.ch to i64
  br label %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i64 [ %i.ci, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i ], [ %i.bb, %bb.f ]
  %i.cj = xor i64 %storemerge.i.i.i.i.i, 255
  %i.ck = load i64, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !16019, !noundef !27
  %i.cl = zext i64 %i.cj to i128
  %i.cm = zext i64 %i.ck to i128
  %i.cn = mul nuw i128 %i.cm, %i.cl               ; 2 uses
  %i.co = lshr i128 %i.cn, 64
  %i.cp = xor i128 %i.co, %i.cn
  %i.cq = trunc i128 %i.cp to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16022)
  call void @llvm.experimental.noalias.scope.decl(metadata !16025)
  %i.cr = lshr i64 %i.cq, 57
  %i.cs = trunc nuw nsw i64 %i.cr to i8
  %i.ct = load i64, ptr %i.ad, align 8, !alias.scope !16028, !noalias !16029, !noundef !27 ; 2 uses
  %i.cu = load ptr, ptr %3, align 8, !alias.scope !16028, !noalias !16029, !nonnull !27, !noundef !27 ; 2 uses
  %i.cv = insertelement <16 x i8> poison, i8 %i.cs, i64 0
  %i.cw = shufflevector <16 x i8> %i.cv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.011.0.i.i.i = phi i64 [ 0, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.dp, %bb.l ]
  %.pn.i.i.i = phi i64 [ %i.cq, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.dq, %bb.l ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.ct   ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.cx, align 1, !noalias !16032 ; 2 uses
  %i.cy = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.cw
  %i.cz = bitcast <16 x i1> %i.cy to i16          ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  %.sroa.05.0.i34.i.i = phi i16 [ %i.do, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ], [ %i.cz, %bb.k ] ; 3 uses
  %i.da = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.i.i, i1 true)
  %i.db = zext nneg i16 %i.da to i64
  %i.dc = add i64 %.sroa.01.0.i.i.i, %i.db
  %i.dd = and i64 %i.dc, %i.ct
  %i.de = sub nsw i64 0, %i.dd
  %i.df = getelementptr inbounds [320 x i8], ptr %i.cu, i64 %i.de ; 8 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 -304
  %.val3.i.i.i = load i64, ptr %i.dg, align 8, !noalias !16035, !noundef !27
  %i.dh = icmp eq i64 %.val25, %.val3.i.i.i
  br i1 %i.dh, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, !prof !152

_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.lr.ph.i.i
  %i.di = getelementptr i8, ptr %i.df, i64 -312
  %.val2.i.i.i = load ptr, ptr %i.di, align 8, !noalias !16035, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2.i.i.i, i64 %.val25), !noalias !16035
  %i.dj = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.dj, label %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsE7get_mutBO_ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, !prof !153
end_hunk_3
begin_hunk_4_@_RNvXs1M_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_10ExpressionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !17973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !17973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17973
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.y)
          to label %_RNvXs1H_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_9TransformNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.m, !noalias !17975

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions14FieldTransformEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions14FieldTransformEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.n, !noalias !17975

bb.n:                                             ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions14FieldTransformEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !17975
  unreachable

_RNvXs1H_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_9TransformNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !17970
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !noalias !17970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !17970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !17973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !17973
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ah, ptr noundef nonnull align 8 dereferenceable(96) %i.l, i64 96, i1 false)
  store i64 4, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ad

bb.o:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17976)
  %i.aj = tail call noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionE13new_uninit_inCs14kWLkQVSKO_14deltalake_core(), !noalias !17976, !inline_history !17979 ; 3 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !17976, !nonnull !27, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17980
  invoke fastcc void @_RNvXs1M_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_10ExpressionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ak) #62
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.p, !noalias !17976, !inline_history !17983

bb.p:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.aj, ptr noundef nonnull align 16 dereferenceable(112) %i.c, i64 112, i1 false), !noalias !17980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17980
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.am, align 8
  store i64 5, ptr %0, align 16
  br label %bb.ad

bb.q:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17984)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i8, ptr %i.ao, align 8, !range !6731, !alias.scope !17984, !noalias !17987, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17989
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17990)
  %i.aq = tail call noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionE13new_uninit_inCs14kWLkQVSKO_14deltalake_core(), !noalias !17993, !inline_history !17994 ; 4 uses
  %i.ar = load ptr, ptr %i.an, align 8, !alias.scope !17990, !noalias !17987, !nonnull !27, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17995
  invoke fastcc void @_RNvXs1M_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_10ExpressionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ar) #62
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit5 unwind label %bb.r, !noalias !17993, !inline_history !17998

bb.r:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit5: ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.aq, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !17995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17995
  store ptr %i.aq, ptr %i.g, align 8, !noalias !17989
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17999)
  %i.at = invoke noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionE13new_uninit_inCs14kWLkQVSKO_14deltalake_core()
          to label %.noexc unwind label %bb.t, !inline_history !17994 ; 3 uses

.noexc:                                           ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit5
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load ptr, ptr %i.au, align 16, !alias.scope !17999, !noalias !17987, !nonnull !27, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18002
  invoke fastcc void @_RNvXs1M_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_10ExpressionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.av) #62
          to label %_RNvXs1l_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_16BinaryExpressionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.s, !noalias !18005, !inline_history !17998

bb.s:                                             ; preds = %.noexc
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef 112, i64 noundef 16) #60, !noalias !18005, !inline_history !17994
  br label %.body

bb.t:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit5
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.ax, %bb.t ], [ %i.aw, %bb.s ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.g) #59
          to label %common.resume unwind label %bb.u, !noalias !17987, !inline_history !18006

bb.u:                                             ; preds = %.body
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !17987, !inline_history !18006
  unreachable

_RNvXs1l_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_16BinaryExpressionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.at, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !18002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17989
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.az, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.ap, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 6, ptr %0, align 16
  br label %bb.ad

bb.v:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba)
  store i64 7, ptr %0, align 16
  br label %bb.ad

bb.w:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18007)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18010
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bd = load ptr, ptr %i.bc, align 16, !alias.scope !18007, !noalias !18012, !nonnull !27, !noundef !27 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !18007, !noalias !18012, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.bg = atomicrmw add ptr %i.bd, i64 1 monotonic, align 8, !noalias !18010
  %i.bh = icmp slt i64 %i.bg, 0
  br i1 %i.bh, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.bd, ptr %i.f, align 8, !noalias !18010
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bf, ptr %i.bj, align 8, !noalias !18010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18010
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bi)
          to label %_RNvXs1z_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_16OpaqueExpressionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.z, !noalias !18012

bb.y:                                             ; preds = %bb.w
  tail call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = atomicrmw sub ptr %i.bd, i64 1 release, align 8, !noalias !18013
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.aa, label %common.resume

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions18OpaqueExpressionOpEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f) #57
          to label %common.resume unwind label %bb.ab, !noalias !18012

bb.ab:                                            ; preds = %bb.aa
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !18012
  unreachable

_RNvXs1z_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_16OpaqueExpressionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18010
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bd, ptr %.sroa.47.0..sroa_idx, align 16
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bf, ptr %.sroa.58.0..sroa_idx, align 8
  store i64 8, ptr %0, align 16
  br label %bb.ad

bb.ac:                                            ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bp)
  store i64 9, ptr %0, align 16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_RNvXs1z_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_16OpaqueExpressionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.v, %_RNvXs1l_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_16BinaryExpressionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit, %_RNvXs1H_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_9TransformNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.f, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1N_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr captures(address, read_provenance) %.0.val, ptr nofree readonly captures(address) %.8.val, ptr captures(address, read_provenance) %.0.val1, ptr nofree readonly captures(address) %.8.val3) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.0.val1) ]
  %i.a = icmp eq ptr %.0.val, %.0.val1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18021)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !18018, !noalias !18021, !noundef !27 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18021, !noalias !18018, !noundef !27
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !18021, !noalias !18018, !nonnull !27, !noundef !27
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !18018, !noalias !18021, !nonnull !27, !noundef !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, i64 noundef %i.c), !noalias !18023
  br i1 %i.m, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.p = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o)
  br i1 %i.p, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.a, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.8.val3) ]
  %i.q = icmp eq ptr %.8.val, %.8.val3
  br i1 %i.q, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c, %bb.b, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.g, %bb.f, %bb.d, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.g ], [ true, %bb.d ], [ %i.be, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18027)
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !18024, !noalias !18027, !nonnull !27, !noundef !27 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.8.val3, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !18027, !noalias !18024, !nonnull !27, !noundef !27 ; 4 uses
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18032)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !18029, !noalias !18034, !noundef !27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !18032, !noalias !18035, !noundef !27
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !18032, !noalias !18035, !nonnull !27, !noundef !27
  %i.ae = load ptr, ptr %i.ac, align 8, !alias.scope !18029, !noalias !18034, !nonnull !27, !noundef !27
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ah = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, i64 noundef %i.x), !noalias !18036
  br i1 %i.ah, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ak = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj), !noalias !18037
  br i1 %i.ak, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !18024, !noalias !18027, !noundef !27 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.8.val3, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !18027, !noalias !18024, !noundef !27
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.8.val3, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !18027, !noalias !18024, !nonnull !27, !noundef !27
  %i.as = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !18024, !noalias !18027, !nonnull !27, !noundef !27
  %i.au = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.at, ptr noundef nonnull %i.ar, i64 noundef %i.am), !noalias !18037
  br i1 %i.au, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !18024, !noalias !18027, !noundef !27 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.8.val3, i64 56
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !18027, !noalias !18024, !noundef !27
  %i.az = icmp eq i64 %i.aw, %i.ay
  br i1 %i.az, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %.8.val3, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !18027, !noalias !18024, !nonnull !27, !noundef !27
  %i.bc = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !18024, !noalias !18027, !nonnull !27, !noundef !27
  %i.be = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bb, i64 noundef %i.aw), !noalias !18037
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs1O_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_16ArrayElemTypeDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !24, !noundef !27 ; 4 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %.inv = icmp samesign ult i64 %i.a, 2
  %i.d = select i1 %.inv, i64 2, i64 %i.c         ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !24, !noundef !27 ; 4 uses
  %i.f = icmp ne i64 %i.e, 4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, -2
  %.inv4 = icmp samesign ult i64 %i.e, 2
  %i.h = select i1 %.inv4, i64 2, i64 %i.g        ; 4 uses
  switch i64 %i.d, label %bb.b [
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.h, 2
  br i1 %i.j, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.h, 3
  br i1 %i.k, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.l = tail call i8 @llvm.scmp.i8.i64(i64 %i.d, i64 %i.h)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !27, !noundef !27
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !27, !noundef !27
  %i.q = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p) #62
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.i, %bb.n, %bb.g, %bb.f
  %.sroa.0.0 = phi i8 [ %i.q, %bb.g ], [ %i.l, %bb.f ], [ %i.ad, %bb.m ], [ %i.v, %bb.i ], [ %., %bb.l ], [ %i.ai, %bb.n ], [ 1, %bb.k ]
  ret i8 %.sroa.0.0

bb.i:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !27, !noundef !27
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !27, !noundef !27
  %i.v = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u) #62 ; 2 uses
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = trunc nuw i64 %i.a to i1
  %i.z = trunc nuw i64 %i.e to i1                 ; 2 uses
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.z, label %bb.m, label %bb.h

bb.l:                                             ; preds = %bb.j
  %. = sext i1 %i.z to i8
  br label %bb.h

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.x, align 8, !noundef !27
  %i.ac = load i64, ptr %i.aa, align 8, !noundef !27
  %i.ad = tail call i8 @llvm.ucmp.i8.i64(i64 %i.ab, i64 %i.ac)
  br label %bb.h

bb.n:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !27, !noundef !27
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !27, !noundef !27
  %i.ai = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ah) #62
  br label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1Q_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_9PredicateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [112 x i8], align 16              ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [112 x i8], align 16              ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = load i64, ptr %1, align 16, !range !4015, !noundef !27
  %i.j = tail call i64 @llvm.usub.sat.i64(i64 %i.i, i64 9)
  switch i64 %i.j, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.e
    i64 3, label %bb.g
    i64 4, label %bb.l
    i64 5, label %bb.m
    i64 6, label %bb.s
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RNvXs1M_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_10ExpressionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1) #62
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18038)
end_hunk_4
begin_hunk_5_@_RNvXs1w_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a

bb.av:                                            ; preds = %bb.as
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !27, !noundef !27
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !27
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !27, !noundef !27
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 1272
  %i.du = load i64, ptr %i.dt, align 8, !noundef !27
  %i.dv = tail call fastcc noundef i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2K_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.do, i64 noundef %i.dq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ds, i64 noundef %i.du) #62 ; 2 uses
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.au, label %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.aw:                                            ; preds = %bb.au
  br i1 %.not54, label %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread, label %bb.az

bb.ax:                                            ; preds = %bb.au
  br i1 %.not54, label %bb.ay, label %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !27, !noundef !27
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !27
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !27, !noundef !27
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !27
  %i.ef = tail call fastcc noundef i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query12PipeOperatorINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Q_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dy, i64 noundef %i.ea, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ec, i64 noundef %i.ee) #62
  br label %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.az:                                            ; preds = %bb.aw
  %i.eg = tail call fastcc noundef i8 @_RNvXseM_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12FormatClauseNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dl) #62 ; 2 uses
  %i.eh = icmp eq i8 %i.eg, 0
  br i1 %i.eh, label %bb.ay, label %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread: ; preds = %bb.t, %bb.q, %bb.p, %bb.u, %_RNvXs3G_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_3CteNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %bb.k, %bb.l, %_RNvXsai_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19TableAliasColumnDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %bb.ac, %bb.ad, %bb.aw, %bb.ax, %bb.as, %bb.at, %bb.ao, %bb.ap, %bb.aj, %bb.ak, %bb.af, %bb.ag, %bb.y, %bb.z, %bb.b, %bb.c, %_RNvXsbg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %bb.am, %bb.al, %bb.av, %bb.az, %bb.ay, %bb.ar, %bb.ai, %bb.d, %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %.sroa.0.0 = phi i8 [ %i.ef, %bb.ay ], [ %i.eg, %bb.az ], [ -1, %bb.ax ], [ 1, %bb.as ], [ %i.dv, %bb.av ], [ -1, %bb.at ], [ 1, %bb.ao ], [ %i.dh, %bb.ar ], [ -1, %bb.ap ], [ 1, %bb.aj ], [ %i.cx, %bb.al ], [ %i.cz, %bb.am ], [ -1, %bb.ak ], [ 1, %bb.af ], [ %i.cn, %bb.ai ], [ -1, %bb.ag ], [ 1, %bb.y ], [ %.sroa.0.0.i56, %_RNvXsbg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ], [ -1, %bb.z ], [ 1, %bb.b ], [ %i.i, %bb.d ], [ %.sroa.0.0.i, %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ], [ -1, %bb.c ], [ 1, %bb.aw ], [ -1, %bb.ad ], [ -1, %bb.l ], [ 1, %bb.ac ], [ 1, %bb.k ], [ %.sroa.0.0.i63, %_RNvXsai_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19TableAliasColumnDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ], [ 1, %bb.p ], [ -1, %bb.q ], [ 1, %bb.t ], [ -1, %bb.u ], [ %.sroa.0.0.i60, %_RNvXs3G_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_3CteNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs22_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7TryCastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !27, !noundef !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !27, !noundef !27
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #62
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #62
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs24_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7TryCastNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !27, !noundef !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !27, !noundef !27
  %i.e = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #62 ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef i8 @_RNvXs8_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #62
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.g, %bb.b ], [ %i.e, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs25_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !1786, !noundef !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !1786, !noundef !27
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.i, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.j) #62
  br i1 %i.k, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !27, !noundef !27 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !27, !noundef !27 ; 6 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.a ], [ %i.bd, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.g ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18769)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !18766, !noalias !18769, !nonnull !27, !noundef !27 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !18769, !noalias !18766, !nonnull !27, !noundef !27 ; 4 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18774)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !18771, !noalias !18776, !noundef !27 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !18774, !noalias !18777, !noundef !27
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ac = load ptr, ptr %i.aa, align 8, !alias.scope !18774, !noalias !18777, !nonnull !27, !noundef !27
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !18771, !noalias !18776, !nonnull !27, !noundef !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, i64 noundef %i.w), !noalias !18778
  br i1 %i.ag, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aj = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai), !noalias !18779
  br i1 %i.aj, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !18766, !noalias !18769, !noundef !27 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !18769, !noalias !18766, !noundef !27
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !18769, !noalias !18766, !nonnull !27, !noundef !27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !18766, !noalias !18769, !nonnull !27, !noundef !27
  %i.at = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq, i64 noundef %i.al), !noalias !18779
  br i1 %i.at, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !18766, !noalias !18769, !noundef !27 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !18769, !noalias !18766, !noundef !27
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !18769, !noalias !18766, !nonnull !27, !noundef !27
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !18766, !noalias !18769, !nonnull !27, !noundef !27
  %i.bd = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.ba, i64 noundef %i.av), !noalias !18779
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14WindowFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val = load i64, ptr %i.a, align 16, !range !38, !noundef !27 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val1 = load ptr, ptr %i.c, align 8            ; 4 uses
  %.val2 = load i64, ptr %i.b, align 16, !range !38, !noundef !27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.val3 = load ptr, ptr %i.d, align 8            ; 4 uses
  %i.e = icmp eq i64 %.val, %.val2
  br i1 %i.e, label %bb.b, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i64 %.val to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1), "nonnull"(ptr %.val3) ]
  %i.g = icmp eq ptr %.val1, %.val3               ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.g, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.j = tail call noundef zeroext i1 @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr4udafNtB2_12AggregateUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
  br i1 %i.j, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.m = tail call noundef zeroext i1 @_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr4udwfNtB4_9WindowUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  br i1 %i.m, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.c, %bb.d, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18783)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load i8, ptr %i.n, align 16, !range !1786, !alias.scope !18780, !noalias !18783, !noundef !27
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.q = load i8, ptr %i.p, align 16, !range !1786, !alias.scope !18783, !noalias !18780, !noundef !27
  %i.r = icmp eq i8 %i.o, %i.q
  br i1 %i.r, label %bb.f, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load i64, ptr %i.s, align 16, !alias.scope !18780, !noalias !18783, !noundef !27 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.v = load i64, ptr %i.u, align 16, !alias.scope !18783, !noalias !18780, !noundef !27
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.g, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !18783, !noalias !18780, !nonnull !27, !noundef !27
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !18780, !noalias !18783, !nonnull !27, !noundef !27
  %i.ab = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.y, i64 noundef %i.t), !noalias !18785, !inline_history !18786
  br i1 %i.ab, label %bb.h, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !18780, !noalias !18783, !noundef !27 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !18783, !noalias !18780, !noundef !27
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.i, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ai = load ptr, ptr %i.ah, align 16, !alias.scope !18783, !noalias !18780, !nonnull !27, !noundef !27
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ak = load ptr, ptr %i.aj, align 16, !alias.scope !18780, !noalias !18783, !nonnull !27, !noundef !27
  %i.al = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ai, i64 noundef %i.ad), !noalias !18785, !inline_history !18786
  br i1 %i.al, label %bb.j, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.an = load i64, ptr %i.am, align 16, !alias.scope !18780, !noalias !18783, !noundef !27 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ap = load i64, ptr %i.ao, align 16, !alias.scope !18783, !noalias !18780, !noundef !27
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.k, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !18783, !noalias !18780, !nonnull !27, !noundef !27
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !18780, !noalias !18783, !nonnull !27, !noundef !27
  %i.av = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.au, ptr noundef nonnull %i.as, i64 noundef %i.an), !noalias !18785, !inline_history !18786
  br i1 %i.av, label %bb.l, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_11WindowFrameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %1) #62, !inline_history !18786
  br i1 %i.aw, label %bb.m, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !18780, !noalias !18783, !align !1919, !noundef !27 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !18783, !noalias !18780, !align !1919, !noundef !27 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null                 ; 2 uses
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.bb, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.p

bb.o:                                             ; preds = %bb.m
  br i1 %i.bb, label %bb.q, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.n
  %i.bc = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ay, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ba) #62, !inline_history !18786
  br i1 %i.bc, label %bb.q, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.be = load i8, ptr %i.bd, align 1, !range !2090, !alias.scope !18780, !noalias !18783, !noundef !27 ; 2 uses
  %.not5.i = icmp eq i8 %i.be, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 257
  %i.bg = load i8, ptr %i.bf, align 1, !range !2090, !alias.scope !18783, !noalias !18780, !noundef !27 ; 2 uses
  br i1 %.not5.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = icmp eq i8 %i.be, %i.bg
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.q
  %i.bi = icmp eq i8 %i.bg, 2
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.r, %bb.a, %bb.s, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, %bb.p, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %bb.e ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.p ], [ false, %bb.a ], [ false, %bb.g ], [ %i.bi, %bb.s ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread ], [ false, %bb.o ], [ false, %bb.k ], [ false, %bb.i ], [ %i.bh, %bb.r ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs2D_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14WindowFunctionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val = load i64, ptr %i.a, align 16, !range !38, !noundef !27 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val4 = load ptr, ptr %i.c, align 8            ; 6 uses
  %.val5 = load i64, ptr %i.b, align 16, !range !38, !noundef !27 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.val6 = load ptr, ptr %i.d, align 8            ; 6 uses
  %i.e = trunc nuw i64 %.val to i1
  %i.f = trunc nuw i64 %.val5 to i1               ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.f, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = sub nsw i64 %.val, %.val5
  %i.h = trunc nsw i64 %i.g to i8
  br label %_RNvXs2x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4), "nonnull"(ptr %.val6) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !27, !noundef !27
  %i.k = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !475, !invariant.load !27
  %i.o = add nsw i64 %i.n, -1
  %i.p = and i64 %i.o, -16
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !27, !noundef !27
  %i.u = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !475, !invariant.load !27
  %i.y = add nsw i64 %i.x, -1
  %i.z = and i64 %i.y, -16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = tail call noundef i8 @_RNvXs5_NtCs8VI8w5SIoU4_15datafusion_expr4udafDNtB5_16AggregateUDFImplEL_NtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noundef nonnull %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.l, ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.v)
  br label %_RNvXs2x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4), "nonnull"(ptr %.val6) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !27, !noundef !27
  %i.af = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !475, !invariant.load !27
  %i.aj = add nsw i64 %i.ai, -1
  %i.ak = and i64 %i.aj, -16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !27, !noundef !27
  %i.ap = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !475, !invariant.load !27
  %i.at = add nsw i64 %i.as, -1
  %i.au = and i64 %i.at, -16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = tail call noundef i8 @_RNvXs5_NtCs8VI8w5SIoU4_15datafusion_expr4udwfDNtB5_13WindowUDFImplEL_NtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noundef nonnull %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.ag, ptr noundef nonnull %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.aq)
  br label %_RNvXs2x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXs2x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i = phi i8 [ %i.ax, %bb.f ], [ %i.h, %bb.d ], [ %i.ac, %bb.e ] ; 2 uses
  %i.ay = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.ay, label %bb.g, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.g:                                             ; preds = %_RNvXs2x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18790)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !18787, !noalias !18790, !nonnull !27, !noundef !27
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bc = load i64, ptr %i.bb, align 16, !alias.scope !18787, !noalias !18790, !noundef !27 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !18790, !noalias !18787, !nonnull !27, !noundef !27
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bg = load i64, ptr %i.bf, align 16, !alias.scope !18790, !noalias !18787, !noundef !27 ; 3 uses
  %.sroa.0.0.i.i18 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 82351536043346213) %i.bg, i64 range(i64 0, 82351536043346213) %i.bc) ; 2 uses
  %exitcond.not59 = icmp eq i64 %.sroa.0.0.i.i18, 0
  br i1 %exitcond.not59, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit25, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.bh = add nuw i64 %.sroa.01.0.i2060, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %.sroa.0.0.i.i18
  br i1 %exitcond.not, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit25, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.sroa.01.0.i2060 = phi i64 [ %i.bh, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [112 x i8], ptr %i.ba, i64 %.sroa.01.0.i2060
  %i.bj = getelementptr inbounds nuw [112 x i8], ptr %i.be, i64 %.sroa.01.0.i2060
  %i.bk = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.bi, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.bj) #62, !noalias !18792, !inline_history !18793 ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.h, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit25: ; preds = %bb.h, %bb.g
  %i.bm = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.bc, i64 %i.bg)
  %i.bn = icmp eq i64 %i.bc, %i.bg
  br i1 %i.bn, label %bb.i, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.i:                                             ; preds = %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit25
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bp = load ptr, ptr %i.bo, align 16, !alias.scope !18787, !noalias !18790, !nonnull !27, !noundef !27
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !18787, !noalias !18790, !noundef !27 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bt = load ptr, ptr %i.bs, align 16, !alias.scope !18790, !noalias !18787, !nonnull !27, !noundef !27
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !18790, !noalias !18787, !noundef !27 ; 3 uses
  %.sroa.0.0.i.i11 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 82351536043346213) %i.bv, i64 range(i64 0, 82351536043346213) %i.br) ; 2 uses
  %exitcond41.not61 = icmp eq i64 %.sroa.0.0.i.i11, 0
  br i1 %exitcond41.not61, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph63

bb.j:                                             ; preds = %.lr.ph63
  %i.bw = add nuw i64 %.sroa.01.0.i1362, 1        ; 2 uses
  %exitcond41.not = icmp eq i64 %i.bw, %.sroa.0.0.i.i11
  br i1 %exitcond41.not, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.i, %bb.j
  %.sroa.01.0.i1362 = phi i64 [ %i.bw, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [112 x i8], ptr %i.bp, i64 %.sroa.01.0.i1362
  %i.by = getelementptr inbounds nuw [112 x i8], ptr %i.bt, i64 %.sroa.01.0.i1362
  %i.bz = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.bx, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.by) #62, !noalias !18792, !inline_history !18793 ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j, %bb.i
  %i.cb = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.br, i64 %i.bv)
  %i.cc = icmp eq i64 %i.br, %i.bv
  br i1 %i.cc, label %bb.k, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.k:                                             ; preds = %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !18787, !noalias !18790, !nonnull !27, !noundef !27
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cg = load i64, ptr %i.cf, align 16, !alias.scope !18787, !noalias !18790, !noundef !27 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !18790, !noalias !18787, !nonnull !27, !noundef !27
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ck = load i64, ptr %i.cj, align 16, !alias.scope !18790, !noalias !18787, !noundef !27 ; 3 uses
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 72057594037927936) %i.ck, i64 range(i64 0, 72057594037927936) %i.cg) ; 2 uses
  %exitcond42.not64 = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %exitcond42.not64, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph66

bb.l:                                             ; preds = %_RNvXs2b_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %exitcond42.not = icmp eq i64 %i.cl, %.sroa.0.0.i.i
  br i1 %exitcond42.not, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.k, %bb.l
  %.sroa.01.0.i65 = phi i64 [ %i.cl, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.cl = add nuw i64 %.sroa.01.0.i65, 1          ; 2 uses
  %i.cm = getelementptr inbounds nuw [128 x i8], ptr %i.ce, i64 %.sroa.01.0.i65 ; 3 uses
  %i.cn = getelementptr inbounds nuw [128 x i8], ptr %i.ci, i64 %.sroa.01.0.i65 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18797)
  %i.co = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.cm, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.cn) #62, !noalias !18792, !inline_history !18799 ; 2 uses
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.m, label %_RNvXs2b_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.m:                                             ; preds = %.lr.ph66
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 112
  %i.cr = load i8, ptr %i.cq, align 16, !range !1786, !alias.scope !18794, !noalias !18800, !noundef !27
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 112
  %i.ct = load i8, ptr %i.cs, align 16, !range !1786, !alias.scope !18797, !noalias !18801, !noundef !27
  %i.cu = sub nsw i8 %i.cr, %i.ct                 ; 2 uses
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %bb.n, label %_RNvXs2b_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.n:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 113
  %i.cx = load i8, ptr %i.cw, align 1, !range !1786, !alias.scope !18794, !noalias !18800, !noundef !27
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 113
  %i.cz = load i8, ptr %i.cy, align 1, !range !1786, !alias.scope !18797, !noalias !18801, !noundef !27
  %i.da = sub nsw i8 %i.cx, %i.cz
  br label %_RNvXs2b_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXs2b_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %.lr.ph66, %bb.m, %bb.n
  %.sroa.0.0.i26 = phi i8 [ %i.co, %.lr.ph66 ], [ %i.da, %bb.n ], [ %i.cu, %bb.m ] ; 2 uses
  %i.db = icmp eq i8 %.sroa.0.0.i26, 0
  br i1 %i.db, label %bb.l, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.l, %bb.k
  %i.dc = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.cg, i64 %i.ck)
  %i.dd = icmp eq i64 %i.cg, %i.ck
  br i1 %i.dd, label %bb.o, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.o:                                             ; preds = %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.de = tail call fastcc noundef i8 @_RNvXsb_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_11WindowFrameNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %1) #62, !inline_history !18802 ; 2 uses
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.p, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.p:                                             ; preds = %bb.o
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !18787, !noalias !18790, !align !1919, !noundef !27 ; 2 uses
  %.not.i = icmp eq ptr %i.dh, null
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !18790, !noalias !18787, !align !1919, !noundef !27 ; 2 uses
  %.not25.i = icmp eq ptr %i.dj, null             ; 2 uses
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not25.i, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %bb.t

bb.r:                                             ; preds = %bb.p
  br i1 %.not25.i, label %bb.s, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.dl = load i8, ptr %i.dk, align 1, !range !2090, !alias.scope !18787, !noalias !18790, !noundef !27 ; 2 uses
  %.not27.i = icmp eq i8 %i.dl, 2
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 257
  %i.dn = load i8, ptr %i.dm, align 1, !range !2090, !alias.scope !18790, !noalias !18787, !noundef !27 ; 2 uses
  %.not28.i = icmp eq i8 %i.dn, 2                 ; 2 uses
  br i1 %.not27.i, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.do = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dh, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dj) #62, !inline_history !18802 ; 2 uses
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %bb.s, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.u:                                             ; preds = %bb.s
  br i1 %.not28.i, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %bb.x

bb.v:                                             ; preds = %bb.s
  br i1 %.not28.i, label %bb.w, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.w:                                             ; preds = %bb.x, %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dr = load i8, ptr %i.dq, align 16, !range !1786, !alias.scope !18787, !noalias !18790, !noundef !27
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.dt = load i8, ptr %i.ds, align 16, !range !1786, !alias.scope !18790, !noalias !18787, !noundef !27
  %i.du = sub nsw i8 %i.dr, %i.dt
  br label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.x:                                             ; preds = %bb.u
  %i.dv = sub nsw i8 %i.dl, %i.dn                 ; 2 uses
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.w, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

end_hunk_5
begin_hunk_6_@_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan18rewrite_expression0INtB7_6FnOnceTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE9call_onceB12_:bb.a
  %i.p = load i64, ptr %i.o, align 16, !range !1001, !alias.scope !19387, !noalias !19384, !noundef !27 ; 3 uses
  %i.q = icmp ne i64 %i.p, 35
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nsw i64 %i.p, -4
  %i.s = icmp samesign ugt i64 %i.p, 3
  %i.t = select i1 %i.s, i64 %i.r, i64 31
  switch i64 %i.t, label %bb.b [
    i64 1, label %bb.c
    i64 21, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %2, i64 112, i1 false)
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %.sroa.425.0..sroa_idx.i, align 16, !alias.scope !19384, !noalias !19387
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 0, ptr %.sroa.526.0..sroa_idx.i, align 1, !alias.scope !19384, !noalias !19387
  br label %_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan18rewrite_expression0Bd_.exit

bb.c:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !19389
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !19389
  invoke void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions9to_kernel19to_delta_expression(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.o)
          to label %bb.d unwind label %.thread8.i, !noalias !19384

.thread8.i:                                       ; preds = %bb.x, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.m, align 16, !range !2179, !noalias !19389, !noundef !27 ; 3 uses
  %i.v = icmp eq i64 %i.u, 10
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 40, i1 false), !noalias !19389
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !19389
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !19387
  store i64 37, ptr %0, align 16, !alias.scope !19384, !noalias !19387
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.ai

bb.f:                                             ; preds = %bb.d
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.631.0..sroa_idx.i, i64 64, i1 false), !noalias !19389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !19389
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !19389
  store i64 %i.u, ptr %i.n, align 16, !noalias !19389
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.y = icmp eq i64 %i.u, 1
  br i1 %i.y, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  store ptr %.sroa.4.0..sroa_idx.i, ptr %i.l, align 8, !noalias !19389
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !19390)
  call void @llvm.experimental.noalias.scope.decl(metadata !19393)
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !19390, !noalias !19395, !noundef !27
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %select.unfold.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.val.i.i = load i64, ptr %i.ac, align 8, !alias.scope !19396, !noalias !19399, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19401
  store i128 0, ptr %i.a, align 16, !alias.scope !19404, !noalias !19407
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 16, !alias.scope !19404, !noalias !19407
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 %.val.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !19404, !noalias !19407
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 16, !alias.scope !19404, !noalias !19407
  invoke void @_RINvXs5_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB6_10ColumnNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc.i unwind label %bb.p, !noalias !19384

.noexc.i:                                         ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !19409)
  %i.ad = load i8, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 16, !alias.scope !19409, !noalias !19401, !noundef !27
  %.not.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i
  %i.ae = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !19409, !noalias !19401, !noundef !27
  br label %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.j:                                             ; preds = %.noexc.i
  %i.af = load i128, ptr %i.a, align 16, !alias.scope !19409, !noalias !19401, !noundef !27 ; 2 uses
  %i.ag = trunc i128 %i.af to i64
  %i.ah = lshr i128 %i.af, 64
  %i.ai = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !19409, !noalias !19401, !noundef !27
  %i.aj = xor i64 %i.ai, %i.ag
  %i.ak = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 16, !alias.scope !19409, !noalias !19401, !nonnull !27, !align !106, !noundef !27
  %i.al = load i64, ptr %i.ak, align 8, !noalias !19412, !noundef !27
  %i.am = zext i64 %i.aj to i128
  %i.an = zext i64 %i.al to i128
  %i.ao = xor i128 %i.ah, %i.an
  %i.ap = mul nuw i128 %i.ao, %i.am               ; 2 uses
  %i.aq = lshr i128 %i.ap, 64
  %i.ar = xor i128 %i.aq, %i.ap
  %i.as = trunc i128 %i.ar to i64
  br label %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.as, %bb.j ], [ %i.ae, %bb.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19401
  call void @llvm.experimental.noalias.scope.decl(metadata !19413)
  call void @llvm.experimental.noalias.scope.decl(metadata !19416)
  call void @llvm.experimental.noalias.scope.decl(metadata !19418)
  %i.at = lshr i64 %.sroa.0.0.i.i.i.i, 57
  %i.au = trunc nuw nsw i64 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !19421, !noalias !19422, !noundef !27 ; 5 uses
  %i.ax = load ptr, ptr %.val, align 8, !alias.scope !19421, !noalias !19422, !nonnull !27, !noundef !27 ; 6 uses
  %i.ay = insertelement <16 x i8> poison, i8 %i.au, i64 0
  %i.az = shufflevector <16 x i8> %i.ay, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.ba, align 16, !alias.scope !19424, !noalias !19425 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.val1.i.i.i.i.i = load i64, ptr %i.bb, align 8, !alias.scope !19424, !noalias !19425
  %.val1.i.i.fr.i.i.i = freeze i64 %.val1.i.i.i.i.i ; 3 uses
  %i.bc = icmp eq i64 %.val1.i.i.fr.i.i.i, 0
  br i1 %i.bc, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.k
  %.sroa.011.0.i.us.i.i.i = phi i64 [ %i.bj, %bb.k ], [ 0, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.pn.i.us.i.i.i = phi i64 [ %i.bk, %bb.k ], [ %.sroa.0.0.i.i.i.i, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sroa.01.0.i.us.i.i.i = and i64 %.pn.i.us.i.i.i, %i.aw ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.01.0.i.us.i.i.i
  %.sroa.0.0.copyload.i27.us.i.i.i = load <16 x i8>, ptr %i.bd, align 1, !noalias !19426 ; 2 uses
  %i.be = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i.i.i, %i.az
  %i.bf = bitcast <16 x i1> %i.be to i16          ; 3 uses
  %.not.i.not37.us.i.i.i = icmp eq i16 %i.bf, 0
  br i1 %.not.i.not37.us.i.i.i, label %._crit_edge.split.us.us.i.i.i, label %.lr.ph.us.i.i.i

._crit_edge.split.us.us.i.i.i:                    ; preds = %.lr.ph54.us.i.i.i, %.split.us.i.i.i
  %i.bg = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i.i.i, splat (i8 -1)
  %i.bh = bitcast <16 x i1> %i.bg to i16
  %i.bi = icmp eq i16 %i.bh, 0
  br i1 %i.bi, label %bb.k, label %select.unfold.i, !prof !67

bb.k:                                             ; preds = %._crit_edge.split.us.us.i.i.i
  %i.bj = add i64 %.sroa.011.0.i.us.i.i.i, 16     ; 2 uses
  %i.bk = add i64 %.sroa.01.0.i.us.i.i.i, %i.bj
  br label %.split.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.split.us.i.i.i
  %i.bl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bf, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = add i64 %.sroa.01.0.i.us.i.i.i, %i.bm
  %i.bo = and i64 %i.bn, %i.aw
  %i.bp = sub nsw i64 0, %i.bo                    ; 2 uses
  %i.bq = getelementptr inbounds [16 x i8], ptr %i.ax, i64 %i.bp
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -16
  %.val2.i.us51.us.i.i.i = load ptr, ptr %i.br, align 8, !noalias !19429, !nonnull !27, !align !106, !noundef !27
  %i.bs = getelementptr i8, ptr %.val2.i.us51.us.i.i.i, i64 16
  %.val3.i.i.i.us52.us.i.i.i = load i64, ptr %i.bs, align 8, !noalias !19429, !noundef !27
  %i.bt = icmp eq i64 %.val3.i.i.i.us52.us.i.i.i, 0
  br i1 %i.bt, label %.lr.ph.split.us._crit_edge.i.i.i, label %.lr.ph54.us.i.i.i, !prof !19432

bb.l:                                             ; preds = %.lr.ph54.us.i.i.i
  %i.bu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ce, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = add i64 %.sroa.01.0.i.us.i.i.i, %i.bv
  %i.bx = and i64 %i.bw, %i.aw
  %i.by = sub nsw i64 0, %i.bx                    ; 2 uses
  %i.bz = getelementptr inbounds [16 x i8], ptr %i.ax, i64 %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -16
  %.val2.i.us.us.i.i.i = load ptr, ptr %i.ca, align 8, !noalias !19429, !nonnull !27, !align !106, !noundef !27
  %i.cb = getelementptr i8, ptr %.val2.i.us.us.i.i.i, i64 16
  %.val3.i.i.i.us.us.i.i.i = load i64, ptr %i.cb, align 8, !noalias !19429, !noundef !27
  %i.cc = icmp eq i64 %.val3.i.i.i.us.us.i.i.i, 0
  br i1 %i.cc, label %.lr.ph.split.us._crit_edge.i.i.i, label %.lr.ph54.us.i.i.i, !prof !19433

.lr.ph54.us.i.i.i:                                ; preds = %.lr.ph.us.i.i.i, %bb.l
  %.sroa.05.0.i38.us53.us.i.i.i = phi i16 [ %i.ce, %bb.l ], [ %i.bf, %.lr.ph.us.i.i.i ] ; 2 uses
  %i.cd = add i16 %.sroa.05.0.i38.us53.us.i.i.i, -1
  %i.ce = and i16 %i.cd, %.sroa.05.0.i38.us53.us.i.i.i ; 3 uses
  %.not.i.not.us.us.i.i.i = icmp eq i16 %i.ce, 0
  br i1 %.not.i.not.us.us.i.i.i, label %._crit_edge.split.us.us.i.i.i, label %bb.l

.split.i.i.i:                                     ; preds = %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.n
  %.sroa.011.0.i.i.i.i = phi i64 [ %i.df, %bb.n ], [ 0, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.pn.i.i.i.i = phi i64 [ %i.dg, %bb.n ], [ %.sroa.0.0.i.i.i.i, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.aw ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !19426 ; 2 uses
  %i.cg = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %i.az
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.i.not37.i.i.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i.not37.i.i.i, label %._crit_edge.split.i.i.i, label %.lr.ph.i.i.i

.lr.ph.split.us._crit_edge.i.i.i:                 ; preds = %.lr.ph.us.i.i.i, %bb.l
  %.pre.pre-phi.i.i = phi i64 [ %i.by, %bb.l ], [ %i.bp, %.lr.ph.us.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  br label %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBO_E3getBP_ECs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i.i, %.loopexit.i.i.i
  %.sroa.05.0.i38.i.i.i = phi i16 [ %i.de, %.loopexit.i.i.i ], [ %i.ch, %.split.i.i.i ] ; 3 uses
  %i.ci = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i38.i.i.i, i1 true)
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = add i64 %.sroa.01.0.i.i.i.i, %i.cj
  %i.cl = and i64 %i.ck, %i.aw
  %i.cm = sub nsw i64 0, %i.cl                    ; 2 uses
  %i.cn = getelementptr inbounds [16 x i8], ptr %i.ax, i64 %i.cm
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -16
  %.val2.i.i.i.i = load ptr, ptr %i.co, align 8, !noalias !19429, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.cp = getelementptr i8, ptr %.val2.i.i.i.i, i64 8
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.cp, align 8, !noalias !19429 ; 2 uses
  %i.cq = getelementptr i8, ptr %.val2.i.i.i.i, i64 16
  %.val3.i.i.i.i.i.i = load i64, ptr %i.cq, align 8, !noalias !19429, !noundef !27
  %i.cr = icmp eq i64 %.val1.i.i.fr.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i.preheader.i.i.i, label %.loopexit.i.i.i, !prof !152

.lr.ph.i.i.i.i.i.i.preheader.i.i.i:               ; preds = %.lr.ph.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i.i), "nonnull"(ptr %.val.i.i.i.i.i) ], !noalias !19434
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i
  %i.cs = add nuw i64 %.sroa.01.09.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cs, %.val1.i.i.fr.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBO_E3getBP_ECs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.preheader.i.i.i
  %.sroa.01.09.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cs, %bb.m ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.i.i.i ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.01.09.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %.val2.i.i.i.i.i.i, i64 %.sroa.01.09.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cv = getelementptr i8, ptr %i.ct, i64 16
  %.val5.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cv, align 8, !noalias !19429, !noundef !27 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cu, i64 16
  %.val7.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cw, align 8, !noalias !19429, !noundef !27
  %i.cx = icmp eq i64 %.val5.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i
  br i1 %i.cx, label %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i, !prof !152

_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cy = getelementptr i8, ptr %i.cu, i64 8
  %.val6.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !noalias !19429, !nonnull !27, !noundef !27
  %i.cz = getelementptr i8, ptr %i.ct, i64 8
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cz, align 8, !noalias !19429, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i.i.i.i.i.i, ptr nonnull readonly %.val6.i.i.i.i.i.i.i.i.i, i64 %.val5.i.i.i.i.i.i.i.i.i), !noalias !19429
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.m, label %.loopexit.i.i.i, !prof !152

._crit_edge.split.i.i.i:                          ; preds = %.loopexit.i.i.i, %.split.i.i.i
  %i.da = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.db = bitcast <16 x i1> %i.da to i16
  %i.dc = icmp eq i16 %i.db, 0
  br i1 %i.dc, label %bb.n, label %select.unfold.i, !prof !67

.loopexit.i.i.i:                                  ; preds = %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.dd = add i16 %.sroa.05.0.i38.i.i.i, -1
  %i.de = and i16 %i.dd, %.sroa.05.0.i38.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.de, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.split.i.i.i, label %.lr.ph.i.i.i

bb.n:                                             ; preds = %._crit_edge.split.i.i.i
  %i.df = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.dg = add i64 %.sroa.01.0.i.i.i.i, %i.df
  br label %.split.i.i.i

bb.o:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 16 dereferenceable(112) %i.o, i64 112, i1 false), !alias.scope !19389
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %.sroa.421.0..sroa_idx.i, align 16, !alias.scope !19384, !noalias !19387
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 0, ptr %.sroa.522.0..sroa_idx.i, align 1, !alias.scope !19384, !noalias !19387
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.n), !noalias !19384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !19389
  br label %_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan18rewrite_expression0Bd_.exit

.body69.i:                                        ; preds = %bb.ag, %.body.i, %bb.r, %bb.p
  %.pn56.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.dm, %bb.r ], [ %i.dh, %bb.p ], [ %i.ee, %bb.ag ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.n) #59
          to label %.thread.i unwind label %bb.y, !noalias !19384

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i68.i, %bb.v, %select.unfold.i, %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBO_E3getBP_ECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.h
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body69.i

_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBO_E3getBP_ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.m, %.lr.ph.split.us._crit_edge.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.pre-phi.i.i, %.lr.ph.split.us._crit_edge.i.i.i ], [ %i.cm, %bb.m ]
  %i.di = getelementptr inbounds [16 x i8], ptr %i.ax, i64 %.pre-phi.i.i
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !19389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !19389
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !19384, !nonnull !27, !align !106, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19389
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dk)
          to label %bb.q unwind label %bb.p, !noalias !19384

select.unfold.i:                                  ; preds = %._crit_edge.split.i.i.i, %._crit_edge.split.us.us.i.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !19389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !19389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19389
  store ptr %i.l, ptr %i.f, align 8, !noalias !19389
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !19389
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @118, ptr noundef nonnull %i.f)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.p, !noalias !19384

bb.q:                                             ; preds = %_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBO_E3getBP_ECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !19389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19389
  store i64 1, ptr %i.j, align 16, !noalias !19389
  invoke void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion18to_datafusion_expr(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.k, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @117)
          to label %bb.s unwind label %bb.r, !noalias !19384

bb.r:                                             ; preds = %bb.q
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.j) #59
          to label %.body69.i unwind label %bb.y, !noalias !19384

bb.s:                                             ; preds = %bb.q
  %i.dn = load i64, ptr %i.k, align 16, !range !1006, !noalias !19389, !noundef !27 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 37
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.512.i, ptr noundef nonnull align 8 dereferenceable(40) %i.dp, i64 40, i1 false), !noalias !19389
  br i1 %i.do, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !19389
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dq, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.512.i, i64 40, i1 false), !noalias !19387
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %.sroa.634.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.07.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.07.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.634.0..sroa_idx.i, i64 64, i1 false), !noalias !19387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !19389
  %.sroa.07.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.07.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.512.i, i64 40, i1 false), !noalias !19387
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %.sroa.58.0..sroa_idx.i, align 16, !alias.scope !19384, !noalias !19387
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 0, ptr %.sroa.69.0..sroa_idx.i, align 1, !alias.scope !19384, !noalias !19387
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i64 %i.dn, ptr %0, align 16, !alias.scope !19384, !noalias !19387
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.j)
          to label %bb.w unwind label %bb.p, !noalias !19384

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !19389
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512.i)
  br label %bb.x

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit72.i, %bb.w
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.n)
          to label %bb.ai unwind label %.thread8.i, !noalias !19384

bb.y:                                             ; preds = %.thread.i, %bb.ad, %.body.i, %bb.r, %.body69.i
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !19384
  unreachable

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %select.unfold.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !19389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19389
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.aa unwind label %bb.z, !noalias !19384

.body.i:                                          ; preds = %bb.ae, %bb.ad, %bb.z
  %.pn.i = phi { ptr, i32 } [ %i.eb, %bb.ad ], [ %i.ds, %bb.z ], [ %i.ec, %bb.ae ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #59
          to label %.body69.i unwind label %bb.y, !noalias !19384

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.ab, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.aa:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.dt = load i64, ptr %i.b, align 8, !range !38, !noalias !19389, !noundef !27
  %i.du = trunc nuw i64 %i.dt to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !range !66, !noalias !19389, !noundef !27 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.du, label %bb.ab, label %bb.ac, !prof !67

bb.ab:                                            ; preds = %bb.aa
  %i.dy = load i64, ptr %i.dx, align 8, !noalias !19389
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.dw, i64 %i.dy) #56
          to label %bb.aj unwind label %bb.z, !noalias !19384

bb.ac:                                            ; preds = %bb.aa
  %i.dz = load ptr, ptr %i.dx, align 8, !noalias !19389, !nonnull !27, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19389
  store i64 %i.dw, ptr %i.e, align 8, !noalias !19389
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.dz, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !19389
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.543.0..sroa_idx.i, align 8, !noalias !19389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19389
  store ptr %i.h, ptr %i.d, align 8, !noalias !19389
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !19389
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.ea, align 8, !noalias !19389
  %.sroa.451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.451.0..sroa_idx.i, align 8, !noalias !19389
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @29, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit65.i unwind label %bb.ad, !noalias !19384

bb.ad:                                            ; preds = %bb.ac
  %i.eb = landingpad { ptr, i32 }
          cleanup
end_hunk_6
begin_hunk_7_@_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.h = add nsw i64 %i.f, -11
  %i.i = icmp samesign ugt i64 %i.f, 10
  %i.j = select i1 %i.i, i64 %i.h, i64 20
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %.lr.ph, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %i.l = phi i64 [ %i.fi, %tailrecurse.backedge ], [ %i.e, %bb.a ]
  %.tr1488 = phi ptr [ %.tr14.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 41 uses
  %.tr87 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 41 uses
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.t
    i64 9, label %bb.u
    i64 10, label %bb.ad
    i64 11, label %bb.ae
    i64 12, label %bb.af
    i64 13, label %bb.ao
    i64 14, label %bb.ap
    i64 15, label %bb.aq
    i64 16, label %bb.az
    i64 17, label %bb.ba
    i64 18, label %bb.bb
    i64 19, label %bb.bc
    i64 20, label %bb.bd
    i64 21, label %bb.be
    i64 22, label %bb.bf
    i64 23, label %bb.bg
    i64 24, label %bb.bh
  ]

_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse.backedge, %bb.am, %bb.ai, %bb.ag, %bb.ah, %bb.ak, %bb.al, %bb.an, %bb.bh, %bb.bi, %bb.bj, %bb.bl, %bb.bm, %bb.a, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.aq, %bb.ac, %bb.ab, %bb.aa, %bb.z, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10, %bb.y, %bb.x, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ap, %bb.ao, %bb.ae, %bb.ad, %bb.t, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.u, %bb.e ], [ %i.x, %bb.f ], [ %i.aa, %bb.g ], [ %i.ad, %bb.h ], [ %i.ag, %bb.i ], [ false, %bb.aw ], [ %i.cm, %bb.t ], [ false, %bb.o ], [ %i.ej, %bb.ad ], [ %i.em, %bb.ae ], [ false, %bb.y ], [ %i.fr, %bb.ao ], [ %i.fu, %bb.ap ], [ false, %bb.au ], [ %i.hm, %bb.az ], [ %i.hp, %bb.ba ], [ %i.hs, %bb.bb ], [ %i.hv, %bb.bc ], [ %i.hw, %bb.bd ], [ %i.hz, %bb.be ], [ %i.ie, %bb.bf ], [ %i.ih, %bb.bg ], [ true, %bb.ax ], [ false, %bb.k ], [ true, %bb.l ], [ false, %bb.j ], [ %i.cj, %bb.s ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.n ], [ false, %bb.u ], [ true, %bb.v ], [ %i.eg, %bb.ac ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10 ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ab ], [ false, %bb.x ], [ false, %bb.as ], [ %i.hj, %bb.ay ], [ false, %bb.av ], [ false, %bb.ar ], [ false, %bb.aq ], [ false, %bb.a ], [ true, %bb.an ], [ false, %bb.bh ], [ false, %bb.bj ], [ false, %bb.bi ], [ false, %bb.am ], [ false, %bb.al ], [ false, %bb.ak ], [ false, %bb.ai ], [ false, %bb.ah ], [ false, %bb.bl ], [ false, %bb.ag ], [ false, %tailrecurse.backedge ], [ true, %bb.bm ]
  ret i1 %.sroa.0.0.shrunk

bb.b:                                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.o = tail call fastcc noundef zeroext i1 @_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n) #62
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs1m_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.p, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.q) #62
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.u = tail call fastcc noundef zeroext i1 @_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.t) #62
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.x = tail call fastcc noundef zeroext i1 @_RNvXs2z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.w) #62
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.aa = tail call fastcc noundef zeroext i1 @_RNvXs2F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z) #62
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.ad = tail call fastcc noundef zeroext i1 @_RNvXs2M_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ab, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ac) #62
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.ag = tail call fastcc noundef zeroext i1 @_RNvXs1A_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af) #62
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22055)
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr87, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !22052, !noalias !22055, !noundef !27 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr1488, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !22055, !noalias !22052, !noundef !27
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.k, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !22055, !noalias !22052, !nonnull !27, !noundef !27
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !22052, !noalias !22055, !nonnull !27, !noundef !27
  %i.aq = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.an, i64 noundef %i.ai), !noalias !22057
  br i1 %i.aq, label %bb.l, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr87, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !22052, !noalias !22055, !nonnull !27, !noundef !27 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.tr1488, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !22055, !noalias !22052, !nonnull !27, !noundef !27 ; 6 uses
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22061)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !22058, !noalias !22063, !nonnull !27, !noundef !27 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !22061, !noalias !22064, !nonnull !27, !noundef !27 ; 4 uses
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22068)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !22065, !noalias !22070, !noundef !27 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !22068, !noalias !22071, !noundef !27
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.o, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bi = load ptr, ptr %i.bg, align 8, !alias.scope !22068, !noalias !22071, !nonnull !27, !noundef !27
  %i.bj = load ptr, ptr %i.bh, align 8, !alias.scope !22065, !noalias !22070, !nonnull !27, !noundef !27
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, i64 noundef %i.bc), !noalias !22072
  br i1 %i.bm, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bp = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bo), !noalias !22073
  br i1 %i.bp, label %bb.p, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !22058, !noalias !22063, !noundef !27 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !22061, !noalias !22064, !noundef !27
  %i.bu = icmp eq i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.q, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !22061, !noalias !22064, !nonnull !27, !noundef !27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !22058, !noalias !22063, !nonnull !27, !noundef !27
  %i.bz = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.by, ptr noundef nonnull %i.bw, i64 noundef %i.br), !noalias !22073
  br i1 %i.bz, label %bb.r, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !22058, !noalias !22063, !noundef !27 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !22061, !noalias !22064, !noundef !27
  %i.ce = icmp eq i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.s, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !22061, !noalias !22064, !nonnull !27, !noundef !27
  %i.ch = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !22058, !noalias !22063, !nonnull !27, !noundef !27
  %i.cj = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ci, ptr noundef nonnull %i.cg, i64 noundef %i.cb), !noalias !22073
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.cm = tail call noundef zeroext i1 @_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_9TableScanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.cl)
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %.val = load ptr, ptr %i.cn, align 8            ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %.val2 = load i8, ptr %i.cp, align 8, !range !1786, !noundef !27
  %.val3 = load ptr, ptr %i.co, align 8           ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %.val4 = load i8, ptr %i.cq, align 8, !range !1786, !noundef !27
  %i.cr = icmp eq i8 %.val2, %.val4
  br i1 %i.cr, label %bb.v, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val3) ]
  %i.cs = icmp eq ptr %.val, %.val3
  br i1 %i.cs, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22077)
  %i.ct = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !22074, !noalias !22077, !nonnull !27, !noundef !27 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val3, i64 64
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !22077, !noalias !22074, !nonnull !27, !noundef !27 ; 4 uses
  %i.cx = icmp eq ptr %i.cu, %i.cw
  br i1 %i.cx, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22082)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !22079, !noalias !22084, !noundef !27 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !22082, !noalias !22085, !noundef !27
  %i.dc = icmp eq i64 %i.cz, %i.db
  br i1 %i.dc, label %bb.y, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.df = load ptr, ptr %i.dd, align 8, !alias.scope !22082, !noalias !22085, !nonnull !27, !noundef !27
  %i.dg = load ptr, ptr %i.de, align 8, !alias.scope !22079, !noalias !22084, !nonnull !27, !noundef !27
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dj = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, i64 noundef %i.cz), !noalias !22086
  br i1 %i.dj, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10: ; preds = %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dm = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dl), !noalias !22087
  br i1 %i.dm, label %bb.z, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10, %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !22074, !noalias !22077, !noundef !27 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val3, i64 32
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !22077, !noalias !22074, !noundef !27
  %i.dr = icmp eq i64 %i.do, %i.dq
  br i1 %i.dr, label %bb.aa, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !22077, !noalias !22074, !nonnull !27, !noundef !27
  %i.du = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !22074, !noalias !22077, !nonnull !27, !noundef !27
  %i.dw = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dt, i64 noundef %i.do), !noalias !22087
  br i1 %i.dw, label %bb.ab, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !22074, !noalias !22077, !noundef !27 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val3, i64 56
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !22077, !noalias !22074, !noundef !27
  %i.eb = icmp eq i64 %i.dy, %i.ea
  br i1 %i.eb, label %bb.ac, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %.val3, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !22077, !noalias !22074, !nonnull !27, !noundef !27
  %i.ee = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !22074, !noalias !22077, !nonnull !27, !noundef !27
  %i.eg = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.ed, i64 noundef %i.dy), !noalias !22087
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %.lr.ph
  %i.eh = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.ej = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ei) #62
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %.lr.ph
  %i.ek = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.em = tail call fastcc noundef zeroext i1 @_RNvXs1g_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ek, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.el) #62
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %.lr.ph
  %i.en = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22091)
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !22088, !noalias !22091, !align !1919, !noundef !27 ; 2 uses
  %.not.i = icmp eq ptr %i.eq, null
  %i.er = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !22091, !noalias !22088, !align !1919, !noundef !27 ; 2 uses
  %i.et = icmp eq ptr %i.es, null                 ; 2 uses
  br i1 %.not.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br i1 %i.et, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  br i1 %i.et, label %bb.aj, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.ag
  %i.eu = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.eq, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.es) #62, !noalias !22093, !inline_history !22094
  br i1 %i.eu, label %bb.aj, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ev = getelementptr inbounds nuw i8, ptr %.tr87, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !22088, !noalias !22091, !align !1919, !noundef !27 ; 2 uses
  %.not5.i = icmp eq ptr %i.ew, null
  %i.ex = getelementptr inbounds nuw i8, ptr %.tr1488, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !22091, !noalias !22088, !align !1919, !noundef !27 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, null                 ; 2 uses
  br i1 %.not5.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ez, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.am

bb.al:                                            ; preds = %bb.aj
  br i1 %i.ez, label %bb.an, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.ak
  %i.fa = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ew, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ey) #62, !noalias !22093, !inline_history !22094
  br i1 %i.fa, label %bb.an, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fb = load ptr, ptr %i.en, align 8, !alias.scope !22088, !noalias !22091, !nonnull !27, !noundef !27 ; 2 uses
  %i.fc = load ptr, ptr %i.eo, align 8, !alias.scope !22091, !noalias !22088, !nonnull !27, !noundef !27 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.bm, %bb.an
  %.pn = phi ptr [ %i.fb, %bb.an ], [ %i.jg, %bb.bm ]
  %.pn112 = phi ptr [ %i.fc, %bb.an ], [ %i.ji, %bb.bm ]
  %.tr14.be = getelementptr inbounds nuw i8, ptr %.pn112, i64 16 ; 2 uses
  %.tr.be = getelementptr inbounds nuw i8, ptr %.pn, i64 16 ; 2 uses
  %i.fe = load i64, ptr %.tr.be, align 16, !range !5154, !noundef !27 ; 3 uses
  %i.ff = icmp ne i64 %i.fe, 31
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = add nsw i64 %i.fe, -11
  %i.fh = icmp samesign ugt i64 %i.fe, 10
  %i.fi = select i1 %i.fh, i64 %i.fg, i64 20      ; 2 uses
  %i.fj = load i64, ptr %.tr14.be, align 16, !range !5154, !noundef !27 ; 3 uses
  %i.fk = icmp ne i64 %i.fj, 31
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = add nsw i64 %i.fj, -11
  %i.fm = icmp samesign ugt i64 %i.fj, 10
  %i.fn = select i1 %i.fm, i64 %i.fl, i64 20
  %i.fo = icmp eq i64 %i.fi, %i.fn
  br i1 %i.fo, label %.lr.ph, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ao:                                            ; preds = %.lr.ph
  %i.fp = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.fr = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fq) #62
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ap:                                            ; preds = %.lr.ph
  %i.fs = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.fu = tail call fastcc noundef zeroext i1 @_RNvXs14_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ft) #62
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aq:                                            ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22098)
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr87, i64 48
  %i.fw = load i8, ptr %i.fv, align 8, !range !1786, !alias.scope !22095, !noalias !22098, !noundef !27
  %i.fx = getelementptr inbounds nuw i8, ptr %.tr1488, i64 48
  %i.fy = load i8, ptr %i.fx, align 8, !range !1786, !alias.scope !22098, !noalias !22095, !noundef !27
  %i.fz = icmp eq i8 %i.fw, %i.fy
  br i1 %i.fz, label %bb.ar, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ar:                                            ; preds = %bb.aq
  %i.ga = getelementptr inbounds nuw i8, ptr %.tr87, i64 49
  %i.gb = load i8, ptr %i.ga, align 1, !range !1786, !alias.scope !22095, !noalias !22098, !noundef !27
  %i.gc = getelementptr inbounds nuw i8, ptr %.tr1488, i64 49
  %i.gd = load i8, ptr %i.gc, align 1, !range !1786, !alias.scope !22098, !noalias !22095, !noundef !27
  %i.ge = icmp eq i8 %i.gb, %i.gd
  br i1 %i.ge, label %bb.as, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.as:                                            ; preds = %bb.ar
  %i.gf = getelementptr inbounds nuw i8, ptr %.tr87, i64 50
  %i.gg = load i8, ptr %i.gf, align 2, !range !6731, !alias.scope !22095, !noalias !22098, !noundef !27
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr1488, i64 50
  %i.gi = load i8, ptr %i.gh, align 2, !range !6731, !alias.scope !22098, !noalias !22095, !noundef !27
  %i.gj = icmp eq i8 %i.gg, %i.gi
  br i1 %i.gj, label %bb.at, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.at:                                            ; preds = %bb.as
  %i.gk = getelementptr inbounds nuw i8, ptr %.tr87, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !22095, !noalias !22098, !nonnull !27, !noundef !27 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.tr1488, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !22098, !noalias !22095, !nonnull !27, !noundef !27 ; 2 uses
  %i.go = icmp eq ptr %i.gl, %i.gn
  br i1 %i.go, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
end_hunk_7
