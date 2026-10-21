Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_nn-a379132c9889b806.candle_nn.2c40c590752a5884-cgu.11?download=true
inline.NumInlined: 520
inline.NumDeleted: 315
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMs8_NtB1s_2opNtB2h_10BackpropOp3newB1n_NCINvMNtB1s_10tensor_catB1o_14cat_contiguousB1n_E0Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3J_8for_each4callB1o_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4Z_3VecB1o_E14extend_trustedBN_E0E0ECs3NyA1pFSltE_9candle_nn:bb.a
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !460
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMs8_NtB1s_2opNtB2h_10BackpropOp3newB1n_NCINvMNtB1s_10tensor_catB1o_4cat0B1n_E0Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3y_8for_each4callB1o_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4O_3VecB1o_E14extend_trustedBN_E0E0ECs3NyA1pFSltE_9candle_nn(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_BR_uNCINvMs8_NtBV_2opNtB3c_10BackpropOp3newBQ_NCINvMNtBV_10tensor_catBR_4cat0BQ_E0Es_0NCINvNvB1B_8for_each4callBR_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4Y_3VecBR_E14extend_trustedINtB2r_3MapBF_B33_EE0E0E0ECs3NyA1pFSltE_9candle_nn.exit, label %bb.b

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
  %.val15.i = load ptr, ptr %i.g, align 8, !noalias !471, !nonnull !4, !align !15, !noundef !4 ; 2 uses
  %i.h = load ptr, ptr %.val15.i, align 8, !noalias !472, !nonnull !4, !noundef !4
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !472
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %.val15.i, align 8, !noalias !472, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.f
  store ptr %i.k, ptr %i.l, align 8, !noalias !473
  %i.m = add i64 %i.f, 1                          ; 2 uses
  %i.n = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.e
  br i1 %i.o, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_BR_uNCINvMs8_NtBV_2opNtB3c_10BackpropOp3newBQ_NCINvMNtBV_10tensor_catBR_4cat0BQ_E0Es_0NCINvNvB1B_8for_each4callBR_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4Y_3VecBR_E14extend_trustedINtB2r_3MapBF_B33_EE0E0E0ECs3NyA1pFSltE_9candle_nn.exit, label %bb.c

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_BR_uNCINvMs8_NtBV_2opNtB3c_10BackpropOp3newBQ_NCINvMNtBV_10tensor_catBR_4cat0BQ_E0Es_0NCINvNvB1B_8for_each4callBR_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4Y_3VecBR_E14extend_trustedINtB2r_3MapBF_B33_EE0E0E0ECs3NyA1pFSltE_9candle_nn.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.m, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !471
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddINvNvXNtCs3NyA1pFSltE_9candle_nn3opsNtB2A_7SigmoidNtNtB1y_9custom_op9CustomOp17cpu_fwd3fwddEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB41_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5e_3VecdE14extend_trustedBN_E0E0EB2C_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddINvNvXNtCs3NyA1pFSltE_9candle_nn3opsNtB3q_7SigmoidNtNtB2o_9custom_op9CustomOp17cpu_fwd3fwddEE0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5o_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3s_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load double, ptr %i.i, align 8, !noalias !482, !noundef !4
  %i.j = invoke noundef double @_RINvNvXNtCs3NyA1pFSltE_9candle_nn3opsNtB5_7SigmoidNtNtCsltEA4u8Pgfu_11candle_core9custom_op9CustomOp17cpu_fwd3fwddEB7_(double noundef %.val15.i)
          to label %bb.d unwind label %bb.e, !noalias !482

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store double %i.j, ptr %i.k, align 8, !noalias !483
  %i.l = add i64 %.val10.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddINvNvXNtCs3NyA1pFSltE_9candle_nn3opsNtB3q_7SigmoidNtNtB2o_9custom_op9CustomOp17cpu_fwd3fwddEE0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5o_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3s_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !482
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddINvNvXNtCs3NyA1pFSltE_9candle_nn3opsNtB3q_7SigmoidNtNtB2o_9custom_op9CustomOp17cpu_fwd3fwddEE0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5o_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3s_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !482
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapffINvNvXNtCs3NyA1pFSltE_9candle_nn3opsNtB2A_7SigmoidNtNtB1y_9custom_op9CustomOp17cpu_fwd3fwdfEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB41_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5e_3VecfE14extend_trustedBN_E0E0EB2C_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapffINvNvXNtCs3NyA1pFSltE_9candle_nn3opsNtB3q_7SigmoidNtNtB2o_9custom_op9CustomOp17cpu_fwd3fwdfEE0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5o_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3s_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.i, align 4, !noalias !492, !noundef !4
  %i.j = invoke noundef float @_RINvNvXNtCs3NyA1pFSltE_9candle_nn3opsNtB5_7SigmoidNtNtCsltEA4u8Pgfu_11candle_core9custom_op9CustomOp17cpu_fwd3fwdfEB7_(float noundef %.val15.i)
          to label %bb.d unwind label %bb.e, !noalias !492

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store float %i.j, ptr %i.k, align 4, !noalias !493
  %i.l = add i64 %.val10.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapffINvNvXNtCs3NyA1pFSltE_9candle_nn3opsNtB3q_7SigmoidNtNtB2o_9custom_op9CustomOp17cpu_fwd3fwdfEE0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5o_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3s_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !492
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapffINvNvXNtCs3NyA1pFSltE_9candle_nn3opsNtB3q_7SigmoidNtNtB2o_9custom_op9CustomOp17cpu_fwd3fwdfEE0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5o_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3s_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !492
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNvMs4_NtCs3NyA1pFSltE_9candle_nn8kv_cacheNtB1x_21ScatteredCacheBuilder16indices_and_mask0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB46_3VecfE14extend_trustedBN_E0E0EB1z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !15, !noundef !4 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjfuNCNvMs4_NtCs3NyA1pFSltE_9candle_nn8kv_cacheNtB2n_21ScatteredCacheBuilder16indices_and_mask0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4g_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 3                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.m = lshr exact i64 %i.i, 1
  %i.n = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m     ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8
  %bound0 = icmp ult ptr %i.l, %i.c
  %bound1 = icmp ult ptr %i.a, %i.o
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %i.l, %i.p
  %bound19 = icmp ult ptr %i.e, %i.o
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 2305843009213693948      ; 4 uses
  %i.q = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.r = load i64, ptr %i.e, align 8, !alias.scope !508, !noalias !509, !noundef !4
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %2 = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x i64>, ptr %i.s, align 8, !alias.scope !510, !noalias !511
  %wide.load11 = load <2 x i64>, ptr %i.t, align 8, !alias.scope !510, !noalias !511
  %3 = icmp ugt <2 x i64> %wide.load, %broadcast.splat
  %4 = icmp ugt <2 x i64> %wide.load11, %broadcast.splat
  %5 = select <2 x i1> %3, <2 x float> splat (float -inf), <2 x float> zeroinitializer
  %6 = select <2 x i1> %4, <2 x float> splat (float -inf), <2 x float> zeroinitializer
  %7 = getelementptr [4 x i8], ptr %2, i64 %index ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %5, ptr %7, align 4, !alias.scope !512, !noalias !513
  store <2 x float> %6, ptr %8, align 4, !alias.scope !512, !noalias !513
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !506

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjfuNCNvMs4_NtCs3NyA1pFSltE_9candle_nn8kv_cacheNtB2n_21ScatteredCacheBuilder16indices_and_mask0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4g_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.q, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.v = and i64 %i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.v, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load i64, ptr %i.w, align 8, !noalias !511, !noundef !4
  %i.x = load i64, ptr %i.e, align 8, !noalias !509, !noundef !4
  %.not.i.i.i.prol = icmp ugt i64 %.val15.i.prol, %i.x
  %..i.i.i.prol = select i1 %.not.i.i.i.prol, float -inf, float 0.000000e+00
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store float %..i.i.i.prol, ptr %i.y, align 4, !noalias !514
  %i.z = add i64 %.ph, 1                          ; 2 uses
  %i.aa = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ab = icmp eq i64 %i.j, %.neg
  br i1 %i.ab, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjfuNCNvMs4_NtCs3NyA1pFSltE_9candle_nn8kv_cacheNtB2n_21ScatteredCacheBuilder16indices_and_mask0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4g_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ac = phi i64 [ %i.al, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.am, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i64, ptr %i.ad, align 8, !noalias !511, !noundef !4
  %i.ae = load i64, ptr %i.e, align 8, !noalias !509, !noundef !4
  %.not.i.i.i = icmp ugt i64 %.val15.i, %i.ae
  %..i.i.i = select i1 %.not.i.i.i, float -inf, float 0.000000e+00
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  store float %..i.i.i, ptr %i.af, align 4, !noalias !514
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val15.i.1 = load i64, ptr %i.ah, align 8, !noalias !511, !noundef !4
  %i.ai = load i64, ptr %i.e, align 8, !noalias !509, !noundef !4
  %.not.i.i.i.1 = icmp ugt i64 %.val15.i.1, %i.ai
  %..i.i.i.1 = select i1 %.not.i.i.i.1, float -inf, float 0.000000e+00
  %i.aj = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  store float %..i.i.i.1, ptr %i.ak, align 4, !noalias !514
  %i.al = add i64 %i.ac, 2                        ; 2 uses
  %i.am = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.j
  br i1 %i.an, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjfuNCNvMs4_NtCs3NyA1pFSltE_9candle_nn8kv_cacheNtB2n_21ScatteredCacheBuilder16indices_and_mask0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4g_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph, !llvm.loop !507

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjfuNCNvMs4_NtCs3NyA1pFSltE_9candle_nn8kv_cacheNtB2n_21ScatteredCacheBuilder16indices_and_mask0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4g_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.q, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.al, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !511
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2I_3VecmE14extend_trustedBP_E0E0ECs3NyA1pFSltE_9candle_nn(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2P_3VecmE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECs3NyA1pFSltE_9candle_nn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr i64 %i.d, 2                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 48
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2
  %i.g = add i64 %i.f, %.sroa.7.0.copyload3
  %i.h = sub i64 %i.c, %i.g
  %diff.check = icmp ugt i64 %i.h, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387896      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !noalias !526
  %wide.load4 = load <4 x i32>, ptr %i.l, align 4, !noalias !526
  %i.m = getelementptr [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x i32> %wide.load, ptr %i.m, align 4, !noalias !527
  store <4 x i32> %wide.load4, ptr %i.n, align 4, !noalias !527
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !523

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2P_3VecmE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECs3NyA1pFSltE_9candle_nn.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i32, ptr %i.q, align 4, !noalias !526, !noundef !4
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.p
  store i32 %.val15.i.prol, ptr %i.r, align 4, !noalias !527
  %i.s = add i64 %i.p, 1                          ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !524

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.v = icmp ugt i64 %i.u, -4
  br i1 %i.v, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2P_3VecmE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECs3NyA1pFSltE_9candle_nn.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.w = phi i64 [ %i.al, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.am, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.x, align 4, !noalias !526, !noundef !4
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w
  store i32 %.val15.i, ptr %i.y, align 4, !noalias !527
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.val15.i.1 = load i32, ptr %i.aa, align 4, !noalias !526, !noundef !4
  %i.ab = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  store i32 %.val15.i.1, ptr %i.ac, align 4, !noalias !527
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val15.i.2 = load i32, ptr %i.ae, align 4, !noalias !526, !noundef !4
  %i.af = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  store i32 %.val15.i.2, ptr %i.ag, align 4, !noalias !527
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %.val15.i.3 = load i32, ptr %i.ai, align 4, !noalias !526, !noundef !4
  %i.aj = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w
  %i.ak = getelementptr i8, ptr %i.aj, i64 12
  store i32 %.val15.i.3, ptr %i.ak, align 4, !noalias !527
  %i.al = add i64 %i.w, 4                         ; 2 uses
  %i.am = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.e
  br i1 %i.an, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2P_3VecmE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECs3NyA1pFSltE_9candle_nn.exit, label %scalar.ph, !llvm.loop !525

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2P_3VecmE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECs3NyA1pFSltE_9candle_nn.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.al, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !526
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXss_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_10CpuStorageNtNtB8_7backend14BackendStorage11binary_implNtNtB8_2op7MaximumECs3NyA1pFSltE_9candle_nn(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 8 uses
  %i.b = load i64, ptr %1, align 8, !range !18, !noundef !4 ; 2 uses
  %.val.pre = load i64, ptr %2, align 8, !range !18 ; 11 uses
  switch i64 %i.b, label %._crit_edge [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
end_hunk_0
