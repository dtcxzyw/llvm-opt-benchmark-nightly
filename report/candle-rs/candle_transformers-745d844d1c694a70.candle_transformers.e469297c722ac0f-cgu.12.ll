Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.12?download=true
inline.NumInlined: 4444
inline.NumDeleted: 2345
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 97
loop-unroll.NumUnrolled: 104
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMs1_B1q_B1o_5stackB1n_jE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtB1s_5error5ErrorEEB2D_8try_folduNCINvNvB2D_12try_for_each4callB1o_INtNtNtBc_3ops12control_flow11ControlFlowB1o_ENcNtB5m_5Break0E0B5m_E0IB5n_B5m_EECs1dZk1kIfPhr_19candle_transformers:bb.a
bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %0, align 8, !alias.scope !6965
  %.val7.i = load ptr, ptr %i.b, align 8, !noalias !6964, !nonnull !4, !align !18, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6964
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !6964, !nonnull !4, !align !18, !noundef !4
  %i.i = load i64, ptr %.val.i.i, align 8, !noalias !6966, !noundef !4
  call void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor9unsqueezejECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val7.i, i64 noundef %i.i), !noalias !6964
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !6964 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !6964 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2x_B11_EENCINvMs1_B13_B11_5stackB10_jE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3m_EIB1L_zB2a_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5f_12try_for_each4callB11_B3b_NcNtB3b_5Break0E0B3b_E0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %2, align 8, !range !21, !alias.scope !6967, !noalias !6968, !noundef !4
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %2)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i unwind label %bb.e, !noalias !6968

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !6968
  %.sroa.58.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.58.0..8.val.sroa_idx.i.i.i, align 8, !noalias !6968
  %.sroa.611.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false), !noalias !6964
  resume { ptr, i32 } %i.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !6968
  %.sroa.58.0..8.val.sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.58.0..8.val.sroa_idx9.i.i.i, align 8, !noalias !6968
  %.sroa.611.0..8.val.sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.0..8.val.sroa_idx12.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false), !noalias !6964
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2x_B11_EENCINvMs1_B13_B11_5stackB10_jE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3m_EIB1L_zB2a_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5f_12try_for_each4callB11_B3b_NcNtB3b_5Break0E0B3b_E0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2x_B11_EENCINvMs1_B13_B11_5stackB10_jE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3m_EIB1L_zB2a_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5f_12try_for_each4callB11_B3b_NcNtB3b_5Break0E0B3b_E0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i, %bb.b
  %.sroa.4.1.i.i.i = phi ptr [ null, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6964
  br label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1A_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultBK_NtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_BK_EENCINvMs1_BM_BK_5stackBJ_jE0NCINvXB2q_INtB2q_12GenericShuntINtB2o_3MapB3_B4A_EIB32_zB3q_EEB1u_8try_folduNCINvNvB1u_12try_for_each4callBK_B4q_NcNtB4q_5Break0E0B4q_E0E0B3L_ECs1dZk1kIfPhr_19candle_transformers.exit

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
  %i.l = udiv i64 %i.k, 24                        ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %.promoted2.i.i.i.i.i.pre.i = load i64, ptr %i.n, align 8, !alias.scope !7033, !noalias !7034 ; 6 uses
  %.pre.i.i.i.i.i.pre.i = load ptr, ptr %i.m, align 8, !alias.scope !7033, !noalias !7034 ; 4 uses
  %min.iters.check = icmp ult i64 %i.k, 312
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.o = shl i64 %.promoted2.i.i.i.i.i.pre.i, 2   ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %.pre.i.i.i.i.i.pre.i, i64 %i.o ; 4 uses
  %i.p = shl nuw nsw i64 %i.l, 3
  %i.q = getelementptr i8, ptr %.pre.i.i.i.i.i.pre.i, i64 %i.p
  %scevgep2 = getelementptr i8, ptr %i.q, i64 %i.o ; 4 uses
  %i.r = mul nuw i64 %i.l, 24
  %i.s = getelementptr i8, ptr %i.a, i64 %i.r
  %scevgep3 = getelementptr i8, ptr %i.s, i64 -8  ; 2 uses
  %scevgep4 = getelementptr i8, ptr %i.e, i64 8   ; 2 uses
  %scevgep5 = getelementptr i8, ptr %i.g, i64 8   ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %i.m
  %bound1 = icmp ult ptr %i.n, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  %bound06 = icmp ult ptr %scevgep, %scevgep3
  %bound17 = icmp ult ptr %i.a, %scevgep2
  %found.conflict8 = and i1 %bound06, %bound17
  %conflict.rdx = or i1 %found.conflict, %found.conflict8
  %bound09 = icmp ult ptr %scevgep, %scevgep4
  %bound110 = icmp ult ptr %i.e, %scevgep2
  %found.conflict11 = and i1 %bound09, %bound110
  %conflict.rdx12 = or i1 %conflict.rdx, %found.conflict11
  %bound013 = icmp ult ptr %scevgep, %scevgep5
  %bound114 = icmp ult ptr %i.g, %scevgep2
  %found.conflict15 = and i1 %bound013, %bound114
  %conflict.rdx16 = or i1 %conflict.rdx12, %found.conflict15
  %bound017 = icmp ult ptr %i.n, %scevgep3
  %bound118 = icmp ult ptr %i.a, %i.m
  %found.conflict19 = and i1 %bound017, %bound118
  %conflict.rdx20 = or i1 %conflict.rdx16, %found.conflict19
  %bound021 = icmp ult ptr %i.n, %scevgep4
  %bound122 = icmp ult ptr %i.e, %i.m
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx24 = or i1 %conflict.rdx20, %found.conflict23
  %bound025 = icmp ult ptr %i.n, %scevgep5
  %bound126 = icmp ult ptr %i.g, %i.m
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx24, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %.neg = or i64 %i.l, -2
  %n.vec = add nsw i64 %.neg, %i.l                ; 3 uses
  %i.t = shl nsw i64 %n.vec, 1
  %i.u = add i64 %.promoted2.i.i.i.i.i.pre.i, %i.t
  %i.v = add i64 %.promoted2.i.i.i.i.i.pre.i, 2
  %i.w = load i64, ptr %i.e, align 8, !alias.scope !7035, !noalias !7036, !noundef !4
  %broadcast.splatinsert29 = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %broadcast.splat30 = shufflevector <2 x i64> %broadcast.splatinsert29, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.x = uitofp <2 x i64> %broadcast.splat30 to <2 x float>
  %i.y = load i64, ptr %i.g, align 8, !alias.scope !7037, !noalias !7036, !noundef !4
  %broadcast.splatinsert31 = insertelement <2 x i64> poison, i64 %i.y, i64 0
  %broadcast.splat32 = shufflevector <2 x i64> %broadcast.splatinsert31, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.z = uitofp <2 x i64> %broadcast.splat32 to <2 x float>
  %i.aa = shl i64 %.promoted2.i.i.i.i.i.pre.i, 2
  %invariant.gep = getelementptr i8, ptr %.pre.i.i.i.i.i.pre.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ab = phi i64 [ %i.v, %vector.ph ], [ %i.bb, %vector.body ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load double, ptr %i.ac, align 8, !alias.scope !7038, !noalias !7039, !noundef !4
  %i.ag = load double, ptr %i.ae, align 8, !alias.scope !7038, !noalias !7039, !noundef !4
  %i.ah = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.ag, i64 1
  %i.aj = getelementptr i8, ptr %i.ac, i64 8
  %i.ak = getelementptr i8, ptr %i.ad, i64 32
  %i.al = load double, ptr %i.aj, align 8, !alias.scope !7038, !noalias !7039, !noundef !4
  %i.am = load double, ptr %i.ak, align 8, !alias.scope !7038, !noalias !7039, !noundef !4
  %i.an = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.am, i64 1
  %i.ap = fptrunc <2 x double> %i.ai to <2 x float>
  %i.aq = fmul <2 x float> %i.ap, %i.x
  %i.ar = fptrunc <2 x double> %i.ao to <2 x float>
  %i.as = fmul <2 x float> %i.ar, %i.z
  %i.at = bitcast <2 x float> %i.aq to <2 x i32>
  %i.au = bitcast <2 x float> %i.as to <2 x i32>
  %i.av = zext <2 x i32> %i.au to <2 x i64>
  %i.aw = shl nuw <2 x i64> %i.av, splat (i64 32)
  %i.ax = zext <2 x i32> %i.at to <2 x i64>
  %i.ay = or disjoint <2 x i64> %i.aw, %i.ax
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7041)
  %i.az = shl i64 %index, 3
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.az
  store <2 x i64> %i.ay, ptr %gep, align 4, !alias.scope !7042, !noalias !7043
  %i.ba = add i64 %i.ab, 2
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bb = add i64 %i.ab, 4
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !7031

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.ba, ptr %i.n, align 8, !alias.scope !7044, !noalias !7045
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %vector.memcheck, %bb.b
  %.promoted2.i.i.i.i.i.i.ph = phi i64 [ %.promoted2.i.i.i.i.i.pre.i, %vector.memcheck ], [ %.promoted2.i.i.i.i.i.pre.i, %bb.b ], [ %i.u, %scalar.ph.preheader.loopexit ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.promoted2.i.i.i.i.i.i = phi i64 [ %i.bq, %scalar.ph ], [ %.promoted2.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.br, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.be = load i64, ptr %i.e, align 8, !noalias !7036, !noundef !4
  %i.bf = load <2 x double>, ptr %i.bd, align 8, !noalias !7039
  %i.bg = fptrunc <2 x double> %i.bf to <2 x float>
  %i.bh = load i64, ptr %i.g, align 8, !noalias !7036, !noundef !4
  %i.bi = uitofp i64 %i.be to float
  %i.bj = uitofp i64 %i.bh to float
  %i.bk = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.bj, i64 1
  %i.bm = fmul <2 x float> %i.bl, %i.bg           ; 2 uses
  %bc = bitcast <2 x float> %i.bm to <2 x i32>
  %i.bn = extractelement <2 x i32> %bc, i64 0
  %bc34 = bitcast <2 x float> %i.bm to <2 x i32>
  %i.bo = extractelement <2 x i32> %bc34, i64 1
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.bo to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.bn to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7041)
  %i.bp = shl i64 %.promoted2.i.i.i.i.i.i, 2
  %scevgep.i.i.i.i.i = getelementptr nuw i8, ptr %.pre.i.i.i.i.i.pre.i, i64 %i.bp
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %scevgep.i.i.i.i.i, align 4, !noalias !7046
  %i.bq = add i64 %.promoted2.i.i.i.i.i.i, 2      ; 2 uses
  store i64 %i.bq, ptr %i.n, align 8, !alias.scope !7033, !noalias !7034
  %i.br = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.bs = icmp eq i64 %i.br, %i.l
  br i1 %i.bs, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTddbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_Afj2_uNCNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3samNtB2x_3Sam22forward_for_embeddings0NCINvNvMsg_NtB1O_7flattenINtB4p_13FlattenCompatppE9iter_fold7flattenB2k_uNCINvNvXsi_B4p_B4D_BW_4fold7flattenINtNtNtBb_5array4iter8IntoIterfKB2m_EuNCINvNvBW_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB78_3VecfE14extend_trustedINtB4p_7FlatMapBF_B2k_B2q_EE0E0E0E0E0EB2D_.exit, label %scalar.ph, !llvm.loop !7032

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
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = add i64 %.sroa.5.0.copyload, %i.e
  %i.h = shl i64 %i.g, 2
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h
  %scevgep3 = getelementptr i8, ptr %0, i64 16
  %i.i = getelementptr i8, ptr %0, i64 %i.d
  %scevgep4 = getelementptr i8, ptr %i.i, i64 -7
  %bound0 = icmp ult ptr %scevgep, %scevgep4
  %bound1 = icmp ult ptr %scevgep3, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 1152921504606846972      ; 4 uses
  %i.j = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.k = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %index
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %index
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %index
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %index
  %i.p = getelementptr i8, ptr %i.l, i64 16
  %i.q = getelementptr i8, ptr %i.m, i64 40
  %i.r = getelementptr i8, ptr %i.n, i64 64
  %i.s = getelementptr i8, ptr %i.o, i64 88
  %i.t = load i8, ptr %i.p, align 8, !range !8, !alias.scope !7060, !noalias !7061, !noundef !4
  %i.u = load i8, ptr %i.q, align 8, !range !8, !alias.scope !7060, !noalias !7061, !noundef !4
  %i.v = load i8, ptr %i.r, align 8, !range !8, !alias.scope !7060, !noalias !7061, !noundef !4
  %i.w = load i8, ptr %i.s, align 8, !range !8, !alias.scope !7060, !noalias !7061, !noundef !4
  %i.x = insertelement <4 x i8> poison, i8 %i.t, i64 0
  %i.y = insertelement <4 x i8> %i.x, i8 %i.u, i64 1
  %i.z = insertelement <4 x i8> %i.y, i8 %i.v, i64 2
  %i.aa = insertelement <4 x i8> %i.z, i8 %i.w, i64 3
  %i.ab = trunc nuw <4 x i8> %i.aa to <4 x i1>
  %i.ac = select <4 x i1> %i.ab, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ad = getelementptr [4 x i8], ptr %i.k, i64 %index
  store <4 x float> %i.ac, ptr %i.ad, align 4, !alias.scope !7062, !noalias !7063
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !7058

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTddbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3samNtB2t_3Sam22forward_for_embeddingss_0NCINvNvBW_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4K_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.j, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %xtraiter = and i64 %i.e, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i.ph
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %.val15.i.prol = load i8, ptr %i.ag, align 8, !range !8, !noalias !7061, !noundef !4
  %i.ah = trunc nuw i8 %.val15.i.prol to i1
  %..i.i.i.prol = select i1 %i.ah, float 1.000000e+00, float 0.000000e+00
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store float %..i.i.i.prol, ptr %i.ai, align 4, !noalias !7064
  %i.aj = add i64 %.ph, 1                         ; 2 uses
  %i.ak = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aj, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aj, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ak, %scalar.ph.prol ]
  %i.al = icmp eq i64 %i.e, %.neg
  br i1 %i.al, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTddbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3samNtB2t_3Sam22forward_for_embeddingss_0NCINvNvBW_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4K_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.am = phi i64 [ %i.aw, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ax, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %.val15.i = load i8, ptr %i.ao, align 8, !range !8, !noalias !7061, !noundef !4
  %i.ap = trunc nuw i8 %.val15.i to i1
  %..i.i.i = select i1 %i.ap, float 1.000000e+00, float 0.000000e+00
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.am
  store float %..i.i.i, ptr %i.aq, align 4, !noalias !7064
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.as = getelementptr i8, ptr %i.ar, i64 40
  %.val15.i.1 = load i8, ptr %i.as, align 8, !range !8, !noalias !7061, !noundef !4
  %i.at = trunc nuw i8 %.val15.i.1 to i1
  %..i.i.i.1 = select i1 %i.at, float 1.000000e+00, float 0.000000e+00
  %i.au = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.am
  %i.av = getelementptr i8, ptr %i.au, i64 4
  store float %..i.i.i.1, ptr %i.av, align 4, !noalias !7064
  %i.aw = add i64 %i.am, 2                        ; 2 uses
  %i.ax = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %i.e
  br i1 %i.ay, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTddbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3samNtB2t_3Sam22forward_for_embeddingss_0NCINvNvBW_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4K_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %scalar.ph, !llvm.loop !7059

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTddbEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3samNtB2t_3Sam22forward_for_embeddingss_0NCINvNvBW_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4K_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.j, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aw, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7061
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTjjEENCNCNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vlNtB1z_12Qwen3VLModel7forwards1_00ENtNtNtBa_6traits8iterator8Iterator4foldjQNCINvXsK_NtB34_5accumjNtB3O_3Sum3sumINtNtB8_7flatten7FlatMapIBY_INtNtCsgCecv3eZDcN_5alloc3vec3VecB1n_EEBN_NCB1w_s1_0EE0EB1D_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.a, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB11_8adapters3map8map_foldRBQ_jjNCNCNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vlNtB2s_12Qwen3VLModel7forwards1_00QNCINvXsK_NtBZ_5accumjNtB42_3Sum3sumINtNtB1N_7flatten7FlatMapIBG_INtNtCsgCecv3eZDcN_5alloc3vec3VecBQ_EEINtB1L_3MapBF_B2l_ENCB2p_s1_0EE0E0EB2w_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %2, %bb.b ], [ %i.j, %bb.c ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %.val.i = load i64, ptr %i.g, align 8, !noundef !4
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val11.i = load i64, ptr %i.h, align 8, !noundef !4
  %i.i = sub i64 %.val11.i, %.val.i
  %i.j = call noundef i64 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvXsK_NtNtNtBb_4iter6traits5accumjNtBX_3Sum3sumINtNtNtB11_8adapters7flatten7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEEINtNtB1H_3map3MapIB2d_B39_ENCNCNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vlNtB3N_12Qwen3VLModel7forwards1_00ENCB3K_s1_0EE0INtB7_5FnMutB39_E8call_mutB3R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.sroa.02.0.i, i64 noundef %i.i) ; 2 uses
  %i.k = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB11_8adapters3map8map_foldRBQ_jjNCNCNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vlNtB2s_12Qwen3VLModel7forwards1_00QNCINvXsK_NtBZ_5accumjNtB42_3Sum3sumINtNtB1N_7flatten7FlatMapIBG_INtNtCsgCecv3eZDcN_5alloc3vec3VecBQ_EEINtB1L_3MapBF_B2l_ENCB2p_s1_0EE0E0EB2w_.exit, label %bb.c

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB11_8adapters3map8map_foldRBQ_jjNCNCNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vlNtB2s_12Qwen3VLModel7forwards1_00QNCINvXsK_NtBZ_5accumjNtB42_3Sum3sumINtNtB1N_7flatten7FlatMapIBG_INtNtCsgCecv3eZDcN_5alloc3vec3VecBQ_EEINtB1L_3MapBF_B2l_ENCB2p_s1_0EE0E0EB2w_.exit: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %i.j, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTjjEENCNCNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vlNtB1z_12Qwen3VLModel7forwards_00ENtNtNtBa_6traits8iterator8Iterator4foldjQNCINvXsK_NtB33_5accumjNtB3N_3Sum3sumINtNtB8_7flatten7FlatMapIBY_INtNtCsgCecv3eZDcN_5alloc3vec3VecB1n_EEBN_NCB1w_s_0EE0EB1D_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.a, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB11_8adapters3map8map_foldRBQ_jjNCNCNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vlNtB2s_12Qwen3VLModel7forwards_00QNCINvXsK_NtBZ_5accumjNtB41_3Sum3sumINtNtB1N_7flatten7FlatMapIBG_INtNtCsgCecv3eZDcN_5alloc3vec3VecBQ_EEINtB1L_3MapBF_B2l_ENCB2p_s_0EE0E0EB2w_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
end_hunk_0
