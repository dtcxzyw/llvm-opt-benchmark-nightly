Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.13?download=true
inline.NumInlined: 1330
inline.NumDeleted: 900
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB29_14UnigramTrainer14required_chars0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenNtNtNtBc_3str4iter5CharsuNCINvNvXsi_B4v_B4I_B3G_4fold7flattenB5p_uQNCINvB6_8map_foldcB1o_uNCB24_s_0NCIB6x_B1o_TB1o_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB7s_7HashSetB1o_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB3K_7collect6ExtendB1o_E6extendIBO_INtNtB8_5chain5ChainINtB4v_7FlatMapBX_B5p_B22_EINtNtB8_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB6R_EE0NCINvNvB3G_8for_each4callB7b_NCINvXs1i_NtB7u_3mapINtBcw_7HashMapB1o_uB8f_EIB96_B7b_E6extendIBO_B9F_B7j_EE0E0E0E0E0E0EB2f_:bb.a
  store i8 %i.bk, ptr %.sroa.0.i.i.i.i.i, align 4, !alias.scope !1351, !noalias !1350
  store i8 %i.bh, ptr %.sroa.0.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.1.i.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx, align 1, !alias.scope !1351, !noalias !1350
  store i8 %i.bd, ptr %.sroa.0.i.i.i.i.i.2.i.i.i.i.i.2.i.i.i.i.i.2.i.i.i.i.2.i.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx, align 2, !alias.scope !1351, !noalias !1350
  store i8 %i.az, ptr %.sroa.0.i.i.i.i.i.3.i.i.i.i.i.3.i.i.i.i.i.3.i.i.i.i.3.i.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx, align 1, !alias.scope !1351, !noalias !1350
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %.val.i.i23.i = phi ptr [ %.val.i.i24.i, %bb.f ], [ %.val.i.i.i, %bb.g ], [ %.val.i.i.i, %bb.i ], [ %.val.i.i.i, %bb.j ] ; 2 uses
  %.sroa.0.1.ph.i.i.i.i20.i = phi ptr [ %.sroa.0.1.ph.i.i.i.i21.i, %bb.f ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.g ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.i ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.j ] ; 2 uses
  %.sroa.0.05.i.i.i.i.i.i = phi i64 [ 1, %bb.f ], [ 2, %bb.g ], [ 3, %bb.i ], [ 4, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1350
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.05.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1350
  %i.bp = load i64, ptr %i.b, align 8, !range !5, !noalias !1350, !noundef !3
  %i.bq = trunc nuw i64 %i.bp to i1
  %i.br = load i64, ptr %i.h, align 8, !range !6, !noalias !1350, !noundef !3 ; 3 uses
  br i1 %i.bq, label %bb.k, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldcNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer14required_charss_0NCIBS_B1v_TB1v_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB4d_7HashSetB1v_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtBY_6traits7collect6ExtendB1v_E6extendINtBU_3MapINtNtBW_5chain5ChainINtNtBW_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1v_mEENtNtNtBb_3str4iter5CharsNCB29_0EINtNtBW_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB27_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3W_NCINvXs1i_NtB4f_3mapINtBaS_7HashMapB1v_uB50_EIB5R_B3W_E6extendIB6z_B6y_B44_EE0E0E0E0INtB7_5FnMutTucEE8call_mutB2k_.exit.i, !prof !7

bb.k:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i
  %i.bs = load i64, ptr %i.i, align 8, !noalias !1350
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.br, i64 %i.bs) #30, !noalias !1350
  unreachable

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldcNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer14required_charss_0NCIBS_B1v_TB1v_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB4d_7HashSetB1v_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtBY_6traits7collect6ExtendB1v_E6extendINtBU_3MapINtNtBW_5chain5ChainINtNtBW_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1v_mEENtNtNtBb_3str4iter5CharsNCB29_0EINtNtBW_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB27_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3W_NCINvXs1i_NtB4f_3mapINtBaS_7HashMapB1v_uB50_EIB5R_B3W_E6extendIB6z_B6y_B44_EE0E0E0E0INtB7_5FnMutTucEE8call_mutB2k_.exit.i: ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i
  %i.bt = load ptr, ptr %i.i, align 8, !noalias !1350, !nonnull !3, !noundef !3 ; 2 uses
  %i.bu = icmp samesign ule i64 %.sroa.0.05.i.i.i.i.i.i, %i.br
  call void @llvm.assume(i1 %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0.i.i.i.i.i, i64 %.sroa.0.05.i.i.i.i.i.i, i1 false), !noalias !1350
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1352
  store i64 %i.br, ptr %i.a, align 8, !noalias !1349
  store ptr %i.bt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !1349
  store i64 %.sroa.0.05.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !1349
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i23.i) ]
  %i.bv = call noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringuNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val.i.i23.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1352 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1352
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i20.i, %i.m
  br i1 %.not.i.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRTNtNtCscdodAO9FK5_5alloc6string6StringmENtNtNtBa_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB25_14UnigramTrainer14required_chars0NCINvNvMsg_NtB6_7flattenINtB3M_13FlattenCompatppE9iter_fold7flattenB1z_uNCINvNvXsi_B3M_B3Z_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1z_uQNCIB2_cBW_uNCB20_s_0NCIB2_BW_TBW_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6E_7HashSetBW_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB58_7collect6ExtendBW_E6extendINtB4_3MapINtNtB6_5chain5ChainINtB3M_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB1z_B1Y_EINtNtB6_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB66_EE0NCINvNvB54_8for_each4callB6o_NCINvXs1i_NtB6G_3mapINtBcd_7HashMapBW_uB7q_EIB8h_B6o_E6extendIB8Q_B8P_B6v_EE0E0E0E0E0E0E0B2b_.exit.i, label %.lr.ph.i.i.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRTNtNtCscdodAO9FK5_5alloc6string6StringmENtNtNtBa_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB25_14UnigramTrainer14required_chars0NCINvNvMsg_NtB6_7flattenINtB3M_13FlattenCompatppE9iter_fold7flattenB1z_uNCINvNvXsi_B3M_B3Z_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1z_uQNCIB2_cBW_uNCB20_s_0NCIB2_BW_TBW_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6E_7HashSetBW_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB58_7collect6ExtendBW_E6extendINtB4_3MapINtNtB6_5chain5ChainINtB3M_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB1z_B1Y_EINtNtB6_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB66_EE0NCINvNvB54_8for_each4callB6o_NCINvXs1i_NtB6G_3mapINtBcd_7HashMapBW_uB7q_EIB8h_B6o_E6extendIB8Q_B8P_B6v_EE0E0E0E0E0E0E0B2b_.exit.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldcNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer14required_charss_0NCIBS_B1v_TB1v_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB4d_7HashSetB1v_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtBY_6traits7collect6ExtendB1v_E6extendINtBU_3MapINtNtBW_5chain5ChainINtNtBW_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1v_mEENtNtNtBb_3str4iter5CharsNCB29_0EINtNtBW_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB27_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3W_NCINvXs1i_NtB4f_3mapINtBaS_7HashMapB1v_uB50_EIB5R_B3W_E6extendIB6z_B6y_B44_EE0E0E0E0INtB7_5FnMutTucEE8call_mutB2k_.exit.i, %bb.c
  %i.bw = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.bx = icmp eq i64 %i.bw, %i.g
  br i1 %i.bx, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1B_8adapters3map8map_foldRBQ_NtNtNtBb_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3p_14UnigramTrainer14required_chars0NCINvNvMsg_NtB2n_7flattenINtB56_13FlattenCompatppE9iter_fold7flattenB2T_uNCINvNvXsi_B56_B5k_B1v_4fold7flattenB2T_uQNCIB2j_cBR_uNCB3k_s_0NCIB2j_BR_TBR_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB7x_7HashSetBR_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1z_7collect6ExtendBR_E6extendINtB2l_3MapINtNtB2n_5chain5ChainINtB56_7FlatMapBF_B2T_B3i_EINtNtB2n_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB6Y_EE0NCINvNvB1v_8for_each4callB7h_NCINvXs1i_NtB7z_3mapINtBcI_7HashMapBR_uB8j_EIB9a_B7h_E6extendIB9J_B9I_B7o_EE0E0E0E0E0E0E0EB3v_.exit, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1B_8adapters3map8map_foldRBQ_NtNtNtBb_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3p_14UnigramTrainer14required_chars0NCINvNvMsg_NtB2n_7flattenINtB56_13FlattenCompatppE9iter_fold7flattenB2T_uNCINvNvXsi_B56_B5k_B1v_4fold7flattenB2T_uQNCIB2j_cBR_uNCB3k_s_0NCIB2j_BR_TBR_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB7x_7HashSetBR_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1z_7collect6ExtendBR_E6extendINtB2l_3MapINtNtB2n_5chain5ChainINtB56_7FlatMapBF_B2T_B3i_EINtNtB2n_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB6Y_EE0NCINvNvB1v_8for_each4callB7h_NCINvXs1i_NtB7z_3mapINtBcI_7HashMapBR_uB8j_EIB9a_B7h_E6extendIB9J_B9I_B7o_EE0E0E0E0E0E0E0EB3v_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRTNtNtCscdodAO9FK5_5alloc6string6StringmENtNtNtBa_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB25_14UnigramTrainer14required_chars0NCINvNvMsg_NtB6_7flattenINtB3M_13FlattenCompatppE9iter_fold7flattenB1z_uNCINvNvXsi_B3M_B3Z_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1z_uQNCIB2_cBW_uNCB20_s_0NCIB2_BW_TBW_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6E_7HashSetBW_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB58_7collect6ExtendBW_E6extendINtB4_3MapINtNtB6_5chain5ChainINtB3M_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB1z_B1Y_EINtNtB6_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB66_EE0NCINvNvB54_8for_each4callB6o_NCINvXs1i_NtB6G_3mapINtBcd_7HashMapBW_uB7q_EIB8h_B6o_E6extendIB8Q_B8P_B6v_EE0E0E0E0E0E0E0B2b_.exit.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTjjEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1B_16NormalizedString5sliceINtNtNtBc_3ops5range5RangejEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3q_8for_each4callB1n_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4G_3VecB1n_E14extend_trustedBN_E0E0EB1F_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !align !4, !noundef !3 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2w_16NormalizedString5sliceINtNtNtBb_3ops5range5RangejEE0NCINvNvBV_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4U_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0EB2A_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 4                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 160
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 4           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.l = and i64 %i.i, -16                        ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %scevgep2 = getelementptr i8, ptr %i.m, i64 %i.l ; 2 uses
  %scevgep3 = getelementptr i8, ptr %i.a, i64 %i.l
  %scevgep4 = getelementptr i8, ptr %i.e, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %i.a, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  %bound05 = icmp ult ptr %scevgep, %scevgep4
  %bound16 = icmp ult ptr %i.e, %scevgep2
  %found.conflict7 = and i1 %bound05, %bound16
  %conflict.rdx = or i1 %found.conflict, %found.conflict7
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 1152921504606846974      ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = load i64, ptr %i.e, align 8, !alias.scope !1367, !noalias !1368, !noundef !3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.p = add i64 %.sroa.5.0.copyload, %index      ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %index
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %index
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x i64>, ptr %i.q, align 8, !alias.scope !1369, !noalias !1370
  %wide.load8 = load <2 x i64>, ptr %i.s, align 8, !alias.scope !1369, !noalias !1370
  %i.t = sub <2 x i64> %wide.load, %broadcast.splat
  %i.u = sub <2 x i64> %wide.load8, %broadcast.splat
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.p
  %i.w = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.p
  %i.x = getelementptr i8, ptr %i.w, i64 16
  store <2 x i64> %i.t, ptr %i.v, align 8, !alias.scope !1371, !noalias !1372
  store <2 x i64> %i.u, ptr %i.x, align 8, !alias.scope !1371, !noalias !1372
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1365

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2w_16NormalizedString5sliceINtNtNtBb_3ops5range5RangejEE0NCINvNvBV_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4U_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0EB2A_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.z = and i64 %i.i, 16
  %lcmp.mod.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %i.ab = load i64, ptr %i.e, align 8, !noalias !1368, !noundef !3
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  %i.ad = load <2 x i64>, ptr %i.aa, align 8, !noalias !1370
  %i.ae = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %i.af = shufflevector <2 x i64> %i.ae, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ag = sub <2 x i64> %i.ad, %i.af
  store <2 x i64> %i.ag, ptr %i.ac, align 8, !noalias !1373
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  %i.ai = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %i.aj = icmp eq i64 %i.j, %.neg
  br i1 %i.aj, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2w_16NormalizedString5sliceINtNtNtBb_3ops5range5RangejEE0NCINvNvBV_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4U_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0EB2A_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ak = phi i64 [ %i.bb, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.bc, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.am = load i64, ptr %i.e, align 8, !noalias !1368, !noundef !3
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.ak
  %i.ao = load <2 x i64>, ptr %i.al, align 8, !noalias !1370
  %i.ap = insertelement <2 x i64> poison, i64 %i.am, i64 0
  %i.aq = shufflevector <2 x i64> %i.ap, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ar = sub <2 x i64> %i.ao, %i.aq
  store <2 x i64> %i.ar, ptr %i.an, align 8, !noalias !1373
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.e, align 8, !noalias !1368, !noundef !3
  %i.av = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.ak
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %i.ax = load <2 x i64>, ptr %i.at, align 8, !noalias !1370
  %i.ay = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %i.az = shufflevector <2 x i64> %i.ay, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ba = sub <2 x i64> %i.ax, %i.az
  store <2 x i64> %i.ba, ptr %i.aw, align 8, !noalias !1373
  %i.bb = add i64 %i.ak, 2                        ; 2 uses
  %i.bc = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.bd = icmp eq i64 %i.bc, %i.j
  br i1 %i.bd, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2w_16NormalizedString5sliceINtNtNtBb_3ops5range5RangejEE0NCINvNvBV_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4U_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0EB2A_.exit, label %scalar.ph, !llvm.loop !1366

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2w_16NormalizedString5sliceINtNtNtBb_3ops5range5RangejEE0NCINvNvBV_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4U_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0EB2A_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bb, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1370
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB29_8for_each4callhNCINvMsj_NtB1v_3vecINtB3m_3VechE14extend_trustedBN_E0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %2 = add i64 %i.i, -1
  %i.l = icmp eq i64 %2, %i.j
  br i1 %i.l, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %i.m = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.z, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load i8, ptr %i.n, align 1, !noalias !1382, !noundef !3 ; 2 uses
  %i.o = load i8, ptr %i.e, align 1, !noalias !1383, !noundef !3
  %i.p = icmp eq i8 %.val16.i, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.g, align 1, !noalias !1383, !noundef !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.q, %bb.d ], [ %.val16.i, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.m
  store i8 %.sroa.0.0.i.i.i, ptr %i.r, align 1, !noalias !1384
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.val16.i.1 = load i8, ptr %i.t, align 1, !noalias !1382, !noundef !3 ; 2 uses
  %i.u = load i8, ptr %i.e, align 1, !noalias !1383, !noundef !3
  %i.v = icmp eq i8 %.val16.i.1, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr %i.g, align 1, !noalias !1383, !noundef !3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.w, %bb.f ], [ %.val16.i.1, %bb.e ]
  %i.x = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.m
  %i.y = getelementptr i8, ptr %i.x, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.y, align 1, !noalias !1384
  %i.z = add i64 %i.m, 2                          ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val16.i.epil = load i8, ptr %i.ab, align 1, !noalias !1382, !noundef !3 ; 2 uses
  %i.ac = load i8, ptr %i.e, align 1, !noalias !1383, !noundef !3
  %i.ad = icmp eq i8 %.val16.i.epil, %i.ac
  br i1 %i.ad, label %bb.h, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.epil.preheader
  %i.ae = load i8, ptr %i.g, align 1, !noalias !1383, !noundef !3
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.epilog-lcssa

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.ae, %bb.h ], [ %.val16.i.epil, %.epil.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.af, align 1, !noalias !1384
  %i.ag = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa ], [ %i.ag, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1382
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2D_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3Q_3VecmE14extend_trustedBN_E0E0EB1x_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhmuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char0NCINvNvBS_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.e = shl i64 %.sroa.5.0.copyload, 2
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.e
  %i.f = add i64 %.sroa.5.0.copyload, %i.b
  %i.g = sub i64 %i.f, %i.c
  %i.h = shl i64 %i.g, 2
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h
  %bound0 = icmp ult ptr %scevgep, %1
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, -8                       ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %wide.load = load <4 x i8>, ptr %i.k, align 1, !alias.scope !1399, !noalias !1400
  %wide.load4 = load <4 x i8>, ptr %i.l, align 1, !alias.scope !1399, !noalias !1400
  %i.m = zext <4 x i8> %wide.load to <4 x i32>
  %i.n = zext <4 x i8> %wide.load4 to <4 x i32>
  %i.o = getelementptr [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x i32> %i.m, ptr %i.o, align 4, !alias.scope !1401, !noalias !1402
  store <4 x i32> %i.n, ptr %i.p, align 4, !alias.scope !1401, !noalias !1402
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !1396

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhmuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char0NCINvNvBS_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %3 = sub i64 %i.b, %i.c
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.r = phi i64 [ %i.v, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.w, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.prol
  %.val16.i.prol = load i8, ptr %i.s, align 1, !noalias !1400, !noundef !3
  %i.t = zext i8 %.val16.i.prol to i32
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.r
  store i32 %i.t, ptr %i.u, align 4, !noalias !1403
  %i.v = add i64 %i.r, 1                          ; 3 uses
  %i.w = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1397

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = sub i64 %.sroa.01.0.i.ph, %i.b
  %i.y = add i64 %i.x, %i.c
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhmuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char0NCINvNvBS_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.aa = phi i64 [ %i.at, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.au, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %.val16.i = load i8, ptr %i.ab, align 1, !noalias !1400, !noundef !3
  %i.ac = zext i8 %.val16.i to i32
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  store i32 %i.ac, ptr %i.ad, align 4, !noalias !1403
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %.val16.i.1 = load i8, ptr %i.af, align 1, !noalias !1400, !noundef !3
  %i.ag = zext i8 %.val16.i.1 to i32
  %i.ah = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  store i32 %i.ag, ptr %i.ai, align 4, !noalias !1403
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %.val16.i.2 = load i8, ptr %i.ak, align 1, !noalias !1400, !noundef !3
  %i.al = zext i8 %.val16.i.2 to i32
  %i.am = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  %i.an = getelementptr i8, ptr %i.am, i64 8
  store i32 %i.al, ptr %i.an, align 4, !noalias !1403
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %.val16.i.3 = load i8, ptr %i.ap, align 1, !noalias !1400, !noundef !3
  %i.aq = zext i8 %.val16.i.3 to i32
  %i.ar = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  %i.as = getelementptr i8, ptr %i.ar, i64 12
  store i32 %i.aq, ptr %i.as, align 4, !noalias !1403
  %i.at = add i64 %i.aa, 4                        ; 2 uses
  %i.au = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.av = icmp eq i64 %i.au, %i.d
  br i1 %i.av, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhmuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char0NCINvNvBS_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph, !llvm.loop !1398

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhmuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char0NCINvNvBS_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.at, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1400
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter6ChunksTNtNtCscdodAO9FK5_5alloc6string6StringmEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2b_14UnigramTrainer10run_e_steps_0ENtNtNtBa_6traits8iterator8Iterator4foldTdmINtNtB1u_3vec3VecdEENCB26_s1_0EB2h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [112 x i8], align 8               ; 12 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.7.i = alloca [28 x i8], align 4          ; 7 uses
  %.sroa.5.i = alloca [28 x i8], align 4          ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !align !4, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !align !15, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %.sroa.0.0.copyload.i = load double, ptr %2, align 8, !alias.scope !1424, !noalias !1427 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1424, !noalias !1427 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.i, ptr noundef nonnull readonly align 4 dereferenceable(28) %.sroa.7.0..sroa_idx.i, i64 28, i1 false), !noalias !1427
  %i.m = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %i.m, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter6ChunksTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtNtBa_4iter6traits8iterator8Iterator4foldTdmINtNtBQ_3vec3VecdEENCINvNtNtB1w_8adapters3map8map_foldRSBL_B2a_B2a_NCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3p_14UnigramTrainer10run_e_steps_0NCB3k_s1_0E0EB3v_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = load ptr, ptr %i.j, align 8, !alias.scope !1425, !noalias !1428, !nonnull !3, !align !4, !noundef !3 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.t = icmp eq i64 %.sroa.5.0.copyload, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 304
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 312
  %i.x = load i32, ptr %i.l, align 4, !alias.scope !1426, !noalias !1429
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 4 uses
  %i.aa = uitofp i32 %i.x to double
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.5.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 4
  %.sroa.014.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.7.i, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, %.lr.ph.i
  %.sroa.4.0.copyload.i.i = phi i32 [ %.sroa.6.0.copyload.i, %.lr.ph.i ], [ %i.cg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i = phi double [ %.sroa.0.0.copyload.i, %.lr.ph.i ], [ %i.cf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i ] ; 2 uses
  %i.ae = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i ], [ %i.ah, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i ] ; 2 uses
  %i.af = phi ptr [ %.sroa.0.0.copyload, %.lr.ph.i ], [ %i.ag, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload, i64 %i.ae) ; 3 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %.sroa.0.0.i.i.i
  %i.ah = sub nuw nsw i64 %i.ae, %.sroa.0.0.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1431
  store double %.sroa.0.0.copyload.i.i, ptr %i.h, align 8, !noalias !1432
  store i32 %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.014.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.i, i64 28, i1 false), !noalias !1433
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1435
  %i.ai = load i64, ptr %i.o, align 8, !noalias !1435, !noundef !3 ; 5 uses
  %i.aj = icmp ult i64 %i.ai, 288230376151711744
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1437
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.ai, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8)
          to label %.noexc.i.i unwind label %.body.thread14.i.loopexit.i, !noalias !1431

.noexc.i.i:                                       ; preds = %bb.b
  %i.ak = load i64, ptr %i.d, align 8, !range !5, !noalias !1437, !noundef !3
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = load i64, ptr %i.p, align 8, !range !6, !noalias !1437, !noundef !3 ; 3 uses
  br i1 %i.al, label %bb.c, label %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, !prof !7

bb.c:                                             ; preds = %.noexc.i.i
  %i.an = load i64, ptr %i.q, align 8, !noalias !1437
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.am, i64 %i.an) #30
          to label %.noexc3.i.i unwind label %.body.thread14.i.loopexit.split-lp.i, !noalias !1431

.noexc3.i.i:                                      ; preds = %bb.c
  unreachable

_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %.noexc.i.i
  %i.ao = load ptr, ptr %i.q, align 8, !noalias !1437, !nonnull !3, !noundef !3 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1437
  store i64 %i.am, ptr %i.g, align 8, !alias.scope !1436, !noalias !1435
  store ptr %i.ao, ptr %i.r, align 8, !alias.scope !1436, !noalias !1435
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !1436, !noalias !1435
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.0.0.i.i.i, 5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i.i.i
  br i1 %i.t, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_.exit.i
  %.sroa.0.011.i.i.i = phi double [ %i.bv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_.exit.i ], [ 0.000000e+00, %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i ]
  %.sroa.02.010.i.i.i = phi i32 [ %i.bi, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_.exit.i ], [ 0, %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i ]
  %.sroa.04.09.i.i.i = phi ptr [ %i.aq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_.exit.i ], [ %i.af, %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1435
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !1438, !noalias !1439, !nonnull !3, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i, i64 16
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !1438, !noalias !1439, !noundef !3
  %i.av = load i64, ptr %i.v, align 8, !noalias !1435, !noundef !3
  %i.aw = load i64, ptr %i.w, align 8, !noalias !1435, !noundef !3
  invoke void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice4from(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %i.au, i64 noundef %i.av, i64 noundef %i.aw)
          to label %bb.h unwind label %bb.g, !noalias !1435

.body9.i:                                         ; preds = %bb.y, %.body2.i.i, %.body.i.i.i, %bb.g
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.az, %bb.g ], [ %i.br, %bb.y ], [ %.pn.i.i, %.body2.i.i ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.e unwind label %bb.d, !noalias !1435

end_hunk_0
