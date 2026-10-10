Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.12?download=true
inline.NumInlined: 4444
inline.NumDeleted: 2345
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 97
loop-unroll.NumUnrolled: 104
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMs1_B1q_B1o_5stackB1n_jE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtB1s_5error5ErrorEEB2D_8try_folduNCINvNvB2D_12try_for_each4callB1o_INtNtNtBc_3ops12control_flow11ControlFlowB1o_ENcNtB5m_5Break0E0B5m_E0IB5n_B5m_EECs1dZk1kIfPhr_19candle_transformers:bb.a
_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1A_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultBK_NtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_BK_EENCINvMs1_BM_BK_5stackBJ_jE0NCINvXB2q_INtB2q_12GenericShuntINtB2o_3MapB3_B4A_EIB32_zB3q_EEB1u_8try_folduNCINvNvB1u_12try_for_each4callBK_B4q_NcNtB4q_5Break0E0B4q_E0E0B3L_ECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.a, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2x_B11_EENCINvMs1_B13_B11_5stackB10_jE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3m_EIB1L_zB2a_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5f_12try_for_each4callB11_B3b_NcNtB3b_5Break0E0B3b_E0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i
  %.sroa.3.0.i = phi ptr [ %.sroa.4.1.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2x_B11_EENCINvMs1_B13_B11_5stackB10_jE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3m_EIB1L_zB2a_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5f_12try_for_each4callB11_B3b_NcNtB3b_5Break0E0B3b_E0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i64 [ 1, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2x_B11_EENCINvMs1_B13_B11_5stackB10_jE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3m_EIB1L_zB2a_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5f_12try_for_each4callB11_B3b_NcNtB3b_5Break0E0B3b_E0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i ], [ 0, %bb.a ]
  %i.m = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.n = insertvalue { i64, ptr } %i.m, ptr %.sroa.3.0.i, 1
  ret { i64, ptr } %i.n
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMs8_NtB1s_2opNtB2h_10BackpropOp3newB1n_NCINvMNtB1s_10tensor_catB1o_14cat_contiguousB1n_E0Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3J_8for_each4callB1o_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4Z_3VecB1o_E14extend_trustedBN_E0E0ECs1dZk1kIfPhr_19candle_transformers(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_BR_uNCINvMs8_NtBV_2opNtB3c_10BackpropOp3newBQ_NCINvMNtBV_10tensor_catBR_14cat_contiguousBQ_E0Es_0NCINvNvB1B_8for_each4callBR_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB59_3VecBR_E14extend_trustedINtB2r_3MapBF_B33_EE0E0E0ECs1dZk1kIfPhr_19candle_transformers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %bb.e ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.n, %bb.e ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load ptr, ptr %i.g, align 8, !noalias !6977, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.h = load ptr, ptr %.val15.i, align 8, !noalias !6978, !nonnull !4, !noundef !4
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !6978
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %.val15.i, align 8, !noalias !6978, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.f
  store ptr %i.k, ptr %i.l, align 8, !noalias !6979
  %i.m = add i64 %i.f, 1                          ; 2 uses
  %i.n = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.e
  br i1 %i.o, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_BR_uNCINvMs8_NtBV_2opNtB3c_10BackpropOp3newBQ_NCINvMNtBV_10tensor_catBR_14cat_contiguousBQ_E0Es_0NCINvNvB1B_8for_each4callBR_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB59_3VecBR_E14extend_trustedINtB2r_3MapBF_B33_EE0E0E0ECs1dZk1kIfPhr_19candle_transformers.exit, label %bb.c

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_BR_uNCINvMs8_NtBV_2opNtB3c_10BackpropOp3newBQ_NCINvMNtBV_10tensor_catBR_14cat_contiguousBQ_E0Es_0NCINvNvB1B_8for_each4callBR_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB59_3VecBR_E14extend_trustedINtB2r_3MapBF_B33_EE0E0E0ECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.m, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !6977
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMs8_NtB1s_2opNtB2h_10BackpropOp3newB1n_NCINvMNtB1s_10tensor_catB1o_4cat0B1n_E0Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3y_8for_each4callB1o_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4O_3VecB1o_E14extend_trustedBN_E0E0ECs1dZk1kIfPhr_19candle_transformers(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_BR_uNCINvMs8_NtBV_2opNtB3c_10BackpropOp3newBQ_NCINvMNtBV_10tensor_catBR_4cat0BQ_E0Es_0NCINvNvB1B_8for_each4callBR_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4Y_3VecBR_E14extend_trustedINtB2r_3MapBF_B33_EE0E0E0ECs1dZk1kIfPhr_19candle_transformers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %bb.e ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.n, %bb.e ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load ptr, ptr %i.g, align 8, !noalias !6988, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.h = load ptr, ptr %.val15.i, align 8, !noalias !6989, !nonnull !4, !noundef !4
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !6989
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %.val15.i, align 8, !noalias !6989, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.f
  store ptr %i.k, ptr %i.l, align 8, !noalias !6990
  %i.m = add i64 %i.f, 1                          ; 2 uses
  %i.n = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.e
  br i1 %i.o, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_BR_uNCINvMs8_NtBV_2opNtB3c_10BackpropOp3newBQ_NCINvMNtBV_10tensor_catBR_4cat0BQ_E0Es_0NCINvNvB1B_8for_each4callBR_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4Y_3VecBR_E14extend_trustedINtB2r_3MapBF_B33_EE0E0E0ECs1dZk1kIfPhr_19candle_transformers.exit, label %bb.c

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_BR_uNCINvMs8_NtBV_2opNtB3c_10BackpropOp3newBQ_NCINvMNtBV_10tensor_catBR_4cat0BQ_E0Es_0NCINvNvB1B_8for_each4callBR_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4Y_3VecBR_E14extend_trustedINtB2r_3MapBF_B33_EE0E0E0ECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.m, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !6988
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTddEENCNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3samNtB1z_3Sam12process_crop0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB37_8for_each4callINtNtCsgCecv3eZDcN_5alloc3vec3VecfENCINvMsk_B4d_IB4b_B4a_E14extend_trustedBN_E0E0EB1F_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !18, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !18, !noundef !4
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTddEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc3vec3VecfEuNCNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3samNtB30_3Sam12process_crop0NCINvNvBV_8for_each4callB2j_NCINvMsk_B2m_IB2k_B2j_E14extend_trustedINtB1L_3MapBF_B2T_EE0E0E0EB36_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.z, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.e ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.n = load <2 x double>, ptr %i.m, align 8, !noalias !7001
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !7002
  %i.o = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 33) 8, i64 noundef range(i64 4, 9) 4) #43, !noalias !7002 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 8) #38
          to label %.noexc.i unwind label %bb.f, !noalias !7001

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = fptrunc <2 x double> %i.n to <2 x float>
  %i.r = load i64, ptr %i.e, align 8, !noalias !7002, !noundef !4
  %i.s = load i64, ptr %i.g, align 8, !noalias !7002, !noundef !4
  %i.t = uitofp i64 %i.r to float
  %i.u = uitofp i64 %i.s to float
  %i.v = insertelement <2 x float> poison, float %i.t, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.u, i64 1
  %i.x = fmul <2 x float> %i.w, %i.q
  store <2 x float> %i.x, ptr %i.o, align 4, !noalias !7002
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 3 uses
  store i64 2, ptr %i.y, align 8, !noalias !7003
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.o, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !7003
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 2, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !7003
  %i.z = add i64 %.val10.i, 1                     ; 2 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.l
  br i1 %i.ab, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTddEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc3vec3VecfEuNCNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3samNtB30_3Sam12process_crop0NCINvNvBV_8for_each4callB2j_NCINvMsk_B2m_IB2k_B2j_E14extend_trustedINtB1L_3MapBF_B2T_EE0E0E0EB36_.exit, label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !7001
  resume { ptr, i32 } %i.ac

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTddEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc3vec3VecfEuNCNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3samNtB30_3Sam12process_crop0NCINvNvBV_8for_each4callB2j_NCINvMsk_B2m_IB2k_B2j_E14extend_trustedINtB1L_3MapBF_B2T_EE0E0E0EB36_.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.z, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7001
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTddbEENCNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3samNtB1A_3Sam22forward_for_embeddings0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB47_13FlattenCompatppE9iter_fold7flattenAfj2_uNCINvNvXsi_B47_B4k_B3i_4fold7flattenINtNtNtBc_5array4iter8IntoIterfKB53_EuNCINvNvB3i_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6S_3VecfE14extend_trustedINtB47_7FlatMapBX_B51_B1t_EE0E0E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTddbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_Afj2_uNCNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3samNtB2x_3Sam22forward_for_embeddings0NCINvNvMsg_NtB1O_7flattenINtB4p_13FlattenCompatppE9iter_fold7flattenB2k_uNCINvNvXsi_B4p_B4D_BW_4fold7flattenINtNtNtBb_5array4iter8IntoIterfKB2m_EuNCINvNvBW_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB78_3VecfE14extend_trustedINtB4p_7FlatMapBF_B2k_B2q_EE0E0E0E0E0EB2D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = udiv i64 %i.k, 24                        ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %.promoted2.i.i.i.i.i.pre.i = load i64, ptr %i.n, align 8, !alias.scope !7033, !noalias !7034 ; 6 uses
  %.pre.i.i.i.i.i.pre.i = load ptr, ptr %i.m, align 8, !alias.scope !7033, !noalias !7034 ; 4 uses
  %min.iters.check = icmp ult i64 %i.k, 312
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.o = shl i64 %.promoted2.i.i.i.i.i.pre.i, 2   ; 2 uses
  %i.p = getelementptr nuw i8, ptr %.pre.i.i.i.i.i.pre.i, i64 %i.o ; 4 uses
  %i.q = shl nuw nsw i64 %i.l, 3
  %i.r = getelementptr i8, ptr %.pre.i.i.i.i.i.pre.i, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 %i.o     ; 4 uses
  %i.t = mul nuw i64 %i.l, 24
  %i.u = getelementptr i8, ptr %i.a, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -8       ; 2 uses
  %i.w = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  %i.x = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %bound0 = icmp ult ptr %i.p, %i.m
  %bound1 = icmp ult ptr %i.n, %i.s
  %found.conflict = and i1 %bound0, %bound1
  %bound029 = icmp ult ptr %i.p, %i.v
  %bound130 = icmp ult ptr %i.a, %i.s
  %found.conflict31 = and i1 %bound029, %bound130
  %conflict.rdx = or i1 %found.conflict, %found.conflict31
  %bound032 = icmp ult ptr %i.p, %i.w
  %bound133 = icmp ult ptr %i.e, %i.s
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx35 = or i1 %conflict.rdx, %found.conflict34
  %bound036 = icmp ult ptr %i.p, %i.x
  %bound137 = icmp ult ptr %i.g, %i.s
  %found.conflict38 = and i1 %bound036, %bound137
  %conflict.rdx39 = or i1 %conflict.rdx35, %found.conflict38
  %bound040 = icmp ult ptr %i.n, %i.v
  %bound141 = icmp ult ptr %i.a, %i.m
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx43 = or i1 %conflict.rdx39, %found.conflict42
  %bound044 = icmp ult ptr %i.n, %i.w
  %bound145 = icmp ult ptr %i.e, %i.m
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx47 = or i1 %conflict.rdx43, %found.conflict46
  %bound048 = icmp ult ptr %i.n, %i.x
  %bound149 = icmp ult ptr %i.g, %i.m
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx51 = or i1 %conflict.rdx47, %found.conflict50
  br i1 %conflict.rdx51, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %2 = add nsw i64 %i.l, -1
  %n.vec = and i64 %2, -2                         ; 3 uses
  %i.y = shl nsw i64 %n.vec, 1
  %i.z = add i64 %.promoted2.i.i.i.i.i.pre.i, %i.y
  %i.aa = add i64 %.promoted2.i.i.i.i.i.pre.i, 2
  %i.ab = load i64, ptr %i.e, align 8, !alias.scope !7035, !noalias !7036, !noundef !4
  %broadcast.splatinsert52 = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %broadcast.splat53 = shufflevector <2 x i64> %broadcast.splatinsert52, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ac = uitofp <2 x i64> %broadcast.splat53 to <2 x float>
  %i.ad = load i64, ptr %i.g, align 8, !alias.scope !7037, !noalias !7036, !noundef !4
  %broadcast.splatinsert54 = insertelement <2 x i64> poison, i64 %i.ad, i64 0
  %broadcast.splat55 = shufflevector <2 x i64> %broadcast.splatinsert54, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ae = uitofp <2 x i64> %broadcast.splat55 to <2 x float>
  %i.af = shl i64 %.promoted2.i.i.i.i.i.pre.i, 2
  %invariant.gep = getelementptr i8, ptr %.pre.i.i.i.i.i.pre.i, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ag = phi i64 [ %i.aa, %vector.ph ], [ %i.bg, %vector.body ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load double, ptr %i.ah, align 8, !alias.scope !7038, !noalias !7039, !noundef !4
  %i.al = load double, ptr %i.aj, align 8, !alias.scope !7038, !noalias !7039, !noundef !4
  %i.am = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.al, i64 1
  %i.ao = getelementptr i8, ptr %i.ah, i64 8
  %i.ap = getelementptr i8, ptr %i.ai, i64 32
  %i.aq = load double, ptr %i.ao, align 8, !alias.scope !7038, !noalias !7039, !noundef !4
  %i.ar = load double, ptr %i.ap, align 8, !alias.scope !7038, !noalias !7039, !noundef !4
  %i.as = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ar, i64 1
  %i.au = fptrunc <2 x double> %i.an to <2 x float>
  %i.av = fmul <2 x float> %i.au, %i.ac
  %i.aw = fptrunc <2 x double> %i.at to <2 x float>
  %i.ax = fmul <2 x float> %i.aw, %i.ae
  %i.ay = bitcast <2 x float> %i.av to <2 x i32>
  %i.az = bitcast <2 x float> %i.ax to <2 x i32>
  %i.ba = zext <2 x i32> %i.az to <2 x i64>
  %i.bb = shl nuw <2 x i64> %i.ba, splat (i64 32)
  %i.bc = zext <2 x i32> %i.ay to <2 x i64>
  %i.bd = or disjoint <2 x i64> %i.bb, %i.bc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7041)
  %i.be = shl i64 %index, 3
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.be
  store <2 x i64> %i.bd, ptr %gep, align 4, !alias.scope !7042, !noalias !7043
  %i.bf = add i64 %i.ag, 2
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bg = add i64 %i.ag, 4
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !7031

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.bf, ptr %i.n, align 8, !alias.scope !7044, !noalias !7045
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %vector.memcheck, %bb.b
  %.promoted2.i.i.i.i.i.i.ph = phi i64 [ %.promoted2.i.i.i.i.i.pre.i, %vector.memcheck ], [ %.promoted2.i.i.i.i.i.pre.i, %bb.b ], [ %i.z, %scalar.ph.preheader.loopexit ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.promoted2.i.i.i.i.i.i = phi i64 [ %i.bv, %scalar.ph ], [ %.promoted2.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.bw, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.bj = load i64, ptr %i.e, align 8, !noalias !7036, !noundef !4
  %i.bk = load <2 x double>, ptr %i.bi, align 8, !noalias !7039
  %i.bl = fptrunc <2 x double> %i.bk to <2 x float>
  %i.bm = load i64, ptr %i.g, align 8, !noalias !7036, !noundef !4
  %i.bn = uitofp i64 %i.bj to float
  %i.bo = uitofp i64 %i.bm to float
  %i.bp = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.bo, i64 1
  %i.br = fmul <2 x float> %i.bq, %i.bl           ; 2 uses
  %bc = bitcast <2 x float> %i.br to <2 x i32>
  %i.bs = extractelement <2 x i32> %bc, i64 0
  %bc57 = bitcast <2 x float> %i.br to <2 x i32>
  %i.bt = extractelement <2 x i32> %bc57, i64 1
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.bt to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.bs to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7041)
  %i.bu = shl i64 %.promoted2.i.i.i.i.i.i, 2
  %scevgep.i.i.i.i.i = getelementptr nuw i8, ptr %.pre.i.i.i.i.i.pre.i, i64 %i.bu
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %scevgep.i.i.i.i.i, align 4, !noalias !7046
  %i.bv = add i64 %.promoted2.i.i.i.i.i.i, 2      ; 2 uses
  store i64 %i.bv, ptr %i.n, align 8, !alias.scope !7033, !noalias !7034
  %i.bw = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.bx = icmp eq i64 %i.bw, %i.l
  br i1 %i.bx, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTddbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_Afj2_uNCNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3samNtB2x_3Sam22forward_for_embeddings0NCINvNvMsg_NtB1O_7flattenINtB4p_13FlattenCompatppE9iter_fold7flattenB2k_uNCINvNvXsi_B4p_B4D_BW_4fold7flattenINtNtNtBb_5array4iter8IntoIterfKB2m_EuNCINvNvBW_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB78_3VecfE14extend_trustedINtB4p_7FlatMapBF_B2k_B2q_EE0E0E0E0E0EB2D_.exit, label %scalar.ph, !llvm.loop !7032

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTddbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_Afj2_uNCNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3samNtB2x_3Sam22forward_for_embeddings0NCINvNvMsg_NtB1O_7flattenINtB4p_13FlattenCompatppE9iter_fold7flattenB2k_uNCINvNvXsi_B4p_B4D_BW_4fold7flattenINtNtNtBb_5array4iter8IntoIterfKB2m_EuNCINvNvBW_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB78_3VecfE14extend_trustedINtB4p_7FlatMapBF_B2k_B2q_EE0E0E0E0E0EB2D_.exit: ; preds = %scalar.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTddbEENCNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3samNtB1A_3Sam22forward_for_embeddingss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3k_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4x_3VecfE14extend_trustedBN_E0E0EB1G_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTddbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3samNtB2t_3Sam22forward_for_embeddingss_0NCINvNvBW_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4K_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = udiv i64 %i.d, 24                        ; 6 uses
  %min.iters.check = icmp ult i64 %i.d, 288
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.h = add i64 %.sroa.5.0.copyload, %i.e
  %i.i = shl i64 %i.h, 2
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.k = getelementptr i8, ptr %0, i64 16
  %i.l = getelementptr i8, ptr %0, i64 %i.d
  %i.m = getelementptr i8, ptr %i.l, i64 -7
  %bound0 = icmp ult ptr %i.g, %i.m
  %bound1 = icmp ult ptr %i.k, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 1152921504606846972      ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %index
  %i.t = getelementptr i8, ptr %i.p, i64 16
  %i.u = getelementptr i8, ptr %i.q, i64 40
  %i.v = getelementptr i8, ptr %i.r, i64 64
  %i.w = getelementptr i8, ptr %i.s, i64 88
  %i.x = load i8, ptr %i.t, align 8, !range !8, !alias.scope !7060, !noalias !7061, !noundef !4
  %i.y = load i8, ptr %i.u, align 8, !range !8, !alias.scope !7060, !noalias !7061, !noundef !4
  %i.z = load i8, ptr %i.v, align 8, !range !8, !alias.scope !7060, !noalias !7061, !noundef !4
  %i.aa = load i8, ptr %i.w, align 8, !range !8, !alias.scope !7060, !noalias !7061, !noundef !4
  %i.ab = insertelement <4 x i8> poison, i8 %i.x, i64 0
  %i.ac = insertelement <4 x i8> %i.ab, i8 %i.y, i64 1
  %i.ad = insertelement <4 x i8> %i.ac, i8 %i.z, i64 2
  %i.ae = insertelement <4 x i8> %i.ad, i8 %i.aa, i64 3
  %i.af = trunc nuw <4 x i8> %i.ae to <4 x i1>
  %i.ag = select <4 x i1> %i.af, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ah = getelementptr [4 x i8], ptr %i.o, i64 %index
  store <4 x float> %i.ag, ptr %i.ah, align 4, !alias.scope !7062, !noalias !7063
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !7058

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTddbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3samNtB2t_3Sam22forward_for_embeddingss_0NCINvNvBW_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4K_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %xtraiter = and i64 %i.e, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i.ph
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %.val15.i.prol = load i8, ptr %i.ak, align 8, !range !8, !noalias !7061, !noundef !4
  %i.al = trunc nuw i8 %.val15.i.prol to i1
  %..i.i.i.prol = select i1 %i.al, float 1.000000e+00, float 0.000000e+00
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store float %..i.i.i.prol, ptr %i.am, align 4, !noalias !7064
  %i.an = add i64 %.ph, 1                         ; 2 uses
  %i.ao = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.an, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.an, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ao, %scalar.ph.prol ]
  %i.ap = icmp eq i64 %i.e, %.neg
  br i1 %i.ap, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTddbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3samNtB2t_3Sam22forward_for_embeddingss_0NCINvNvBW_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4K_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.aq = phi i64 [ %i.ba, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.bb, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %.val15.i = load i8, ptr %i.as, align 8, !range !8, !noalias !7061, !noundef !4
end_hunk_0
