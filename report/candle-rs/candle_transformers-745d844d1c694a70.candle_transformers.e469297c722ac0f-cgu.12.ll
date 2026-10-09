Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.12?download=true
inline.NumInlined: 4444
inline.NumDeleted: 2345
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 97
loop-unroll.NumUnrolled: 104
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEB1d_ENCNvMs7_NtNtCs1dZk1kIfPhr_19candle_transformers6models4eva2NtB2A_21EVA2VisionTransformer23get_intermediate_layerss2_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtB1H_5error5ErrorEEB4m_8try_folduNCINvNvB4m_12try_for_each4callB1D_INtNtNtBc_3ops12control_flow11ControlFlowB1D_ENcNtB75_5Break0E0B75_E0IB76_B75_EEB2E_:bb.a
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs7_NtNtCs1dZk1kIfPhr_19candle_transformers6models4eva2NtB3z_21EVA2VisionTransformer23get_intermediate_layerss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB6d_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB74_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B3D_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %2, align 8, !range !21, !alias.scope !2766, !noalias !2767, !noundef !4
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %2)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i unwind label %bb.e, !noalias !2768

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !2767
  %.sroa.58.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.58.0..8.val.sroa_idx.i.i.i, align 8, !noalias !2767
  %.sroa.611.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !noalias !2765
  resume { ptr, i32 } %i.p

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !2767
  %.sroa.58.0..8.val.sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.58.0..8.val.sroa_idx9.i.i.i, align 8, !noalias !2767
  %.sroa.611.0..8.val.sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.0..8.val.sroa_idx12.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !noalias !2765
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs7_NtNtCs1dZk1kIfPhr_19candle_transformers6models4eva2NtB3z_21EVA2VisionTransformer23get_intermediate_layerss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB6d_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB74_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B3D_.exit.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs7_NtNtCs1dZk1kIfPhr_19candle_transformers6models4eva2NtB3z_21EVA2VisionTransformer23get_intermediate_layerss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB6d_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB74_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B3D_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i, %bb.b
  %.sroa.4.1.i.i.i = phi ptr [ null, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2762
  br label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_B3g_EINtNtBc_6result6ResultB1h_NtNtB1l_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB4d_B1h_EENCNvMs7_NtNtCs1dZk1kIfPhr_19candle_transformers6models4eva2NtB5a_21EVA2VisionTransformer23get_intermediate_layerss2_0NCINvXB8_INtB8_12GenericShuntINtB2S_3MapB3_B52_EIB3r_zB3Q_EEB25_8try_folduNCINvNvB25_12try_for_each4callB1h_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB5e_.exit

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_B3g_EINtNtBc_6result6ResultB1h_NtNtB1l_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB4d_B1h_EENCNvMs7_NtNtCs1dZk1kIfPhr_19candle_transformers6models4eva2NtB5a_21EVA2VisionTransformer23get_intermediate_layerss2_0NCINvXB8_INtB8_12GenericShuntINtB2S_3MapB3_B52_EIB3r_zB3Q_EEB25_8try_folduNCINvNvB25_12try_for_each4callB1h_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB5e_.exit: ; preds = %bb.a, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs7_NtNtCs1dZk1kIfPhr_19candle_transformers6models4eva2NtB3z_21EVA2VisionTransformer23get_intermediate_layerss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB6d_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB74_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B3D_.exit.i
  %.sroa.3.0.i = phi ptr [ %.sroa.4.1.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs7_NtNtCs1dZk1kIfPhr_19candle_transformers6models4eva2NtB3z_21EVA2VisionTransformer23get_intermediate_layerss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB6d_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB74_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B3D_.exit.i ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i64 [ 1, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs7_NtNtCs1dZk1kIfPhr_19candle_transformers6models4eva2NtB3z_21EVA2VisionTransformer23get_intermediate_layerss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB6d_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB74_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B3D_.exit.i ], [ 0, %bb.a ]
  %i.q = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.r = insertvalue { i64, ptr } %i.q, ptr %.sroa.3.0.i, 1
  ret { i64, ptr } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEB1d_ENCNvMs8_NtNtCs1dZk1kIfPhr_19candle_transformers6models6dinov2NtB2A_21DinoVisionTransformer23get_intermediate_layerss2_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtB1H_5error5ErrorEEB4o_8try_folduNCINvNvB4o_12try_for_each4callB1D_INtNtNtBc_3ops12control_flow11ControlFlowB1D_ENcNtB77_5Break0E0B77_E0IB78_B77_EEB2E_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2786)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2787, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !2787, !noundef !4
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_B3g_EINtNtBc_6result6ResultB1h_NtNtB1l_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB4d_B1h_EENCNvMs8_NtNtCs1dZk1kIfPhr_19candle_transformers6models6dinov2NtB5a_21DinoVisionTransformer23get_intermediate_layerss2_0NCINvXB8_INtB8_12GenericShuntINtB2S_3MapB3_B52_EIB3r_zB3Q_EEB25_8try_folduNCINvNvB25_12try_for_each4callB1h_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB5e_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i64 %i.d, 1
  store i64 %i.h, ptr %i.c, align 8, !alias.scope !2787
  %.val1.i.i.i = load ptr, ptr %0, align 8, !alias.scope !2787, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !2787, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2786
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2788
  store ptr %i.i, ptr %i.a, align 8, !noalias !2788
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %i.m, align 8, !noalias !2788
  call void @_RINvMNtCsltEA4u8Pgfu_11candle_core10tensor_catNtNtB5_6tensor6Tensor3catRBI_NtNtB5_5shape1DECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 2, i64 noundef 0, i64 undef), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2788
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !noalias !2789 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2789 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs8_NtNtCs1dZk1kIfPhr_19candle_transformers6models6dinov2NtB3z_21DinoVisionTransformer23get_intermediate_layerss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB6f_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB76_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B3D_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %2, align 8, !range !21, !alias.scope !2790, !noalias !2791, !noundef !4
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %2)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i unwind label %bb.e, !noalias !2792

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !2791
  %.sroa.58.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.58.0..8.val.sroa_idx.i.i.i, align 8, !noalias !2791
  %.sroa.611.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !noalias !2789
  resume { ptr, i32 } %i.p

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !2791
  %.sroa.58.0..8.val.sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.58.0..8.val.sroa_idx9.i.i.i, align 8, !noalias !2791
  %.sroa.611.0..8.val.sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.0..8.val.sroa_idx12.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !noalias !2789
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs8_NtNtCs1dZk1kIfPhr_19candle_transformers6models6dinov2NtB3z_21DinoVisionTransformer23get_intermediate_layerss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB6f_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB76_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B3D_.exit.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs8_NtNtCs1dZk1kIfPhr_19candle_transformers6models6dinov2NtB3z_21DinoVisionTransformer23get_intermediate_layerss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB6f_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB76_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B3D_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i, %bb.b
  %.sroa.4.1.i.i.i = phi ptr [ null, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2786
  br label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_B3g_EINtNtBc_6result6ResultB1h_NtNtB1l_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB4d_B1h_EENCNvMs8_NtNtCs1dZk1kIfPhr_19candle_transformers6models6dinov2NtB5a_21DinoVisionTransformer23get_intermediate_layerss2_0NCINvXB8_INtB8_12GenericShuntINtB2S_3MapB3_B52_EIB3r_zB3Q_EEB25_8try_folduNCINvNvB25_12try_for_each4callB1h_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB5e_.exit

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_B3g_EINtNtBc_6result6ResultB1h_NtNtB1l_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB4d_B1h_EENCNvMs8_NtNtCs1dZk1kIfPhr_19candle_transformers6models6dinov2NtB5a_21DinoVisionTransformer23get_intermediate_layerss2_0NCINvXB8_INtB8_12GenericShuntINtB2S_3MapB3_B52_EIB3r_zB3Q_EEB25_8try_folduNCINvNvB25_12try_for_each4callB1h_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB5e_.exit: ; preds = %bb.a, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs8_NtNtCs1dZk1kIfPhr_19candle_transformers6models6dinov2NtB3z_21DinoVisionTransformer23get_intermediate_layerss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB6f_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB76_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B3D_.exit.i
  %.sroa.3.0.i = phi ptr [ %.sroa.4.1.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs8_NtNtCs1dZk1kIfPhr_19candle_transformers6models6dinov2NtB3z_21DinoVisionTransformer23get_intermediate_layerss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB6f_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB76_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B3D_.exit.i ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i64 [ 1, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs8_NtNtCs1dZk1kIfPhr_19candle_transformers6models6dinov2NtB3z_21DinoVisionTransformer23get_intermediate_layerss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB6f_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB76_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B3D_.exit.i ], [ 0, %bb.a ]
  %i.q = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.r = insertvalue { i64, ptr } %i.q, ptr %.sroa.3.0.i, 1
  ret { i64, ptr } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEB1d_ENCNvMs9_NtNtCs1dZk1kIfPhr_19candle_transformers6models4beitNtB2A_21BeitVisionTransformer23get_intermediate_layerss2_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtB1H_5error5ErrorEEB4m_8try_folduNCINvNvB4m_12try_for_each4callB1D_INtNtNtBc_3ops12control_flow11ControlFlowB1D_ENcNtB75_5Break0E0B75_E0IB76_B75_EEB2E_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2810)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2811, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !2811, !noundef !4
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_B3g_EINtNtBc_6result6ResultB1h_NtNtB1l_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB4d_B1h_EENCNvMs9_NtNtCs1dZk1kIfPhr_19candle_transformers6models4beitNtB5a_21BeitVisionTransformer23get_intermediate_layerss2_0NCINvXB8_INtB8_12GenericShuntINtB2S_3MapB3_B52_EIB3r_zB3Q_EEB25_8try_folduNCINvNvB25_12try_for_each4callB1h_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB5e_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i64 %i.d, 1
  store i64 %i.h, ptr %i.c, align 8, !alias.scope !2811
  %.val1.i.i.i = load ptr, ptr %0, align 8, !alias.scope !2811, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !2811, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2810
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2812
  store ptr %i.i, ptr %i.a, align 8, !noalias !2812
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %i.m, align 8, !noalias !2812
  call void @_RINvMNtCsltEA4u8Pgfu_11candle_core10tensor_catNtNtB5_6tensor6Tensor3catRBI_NtNtB5_5shape1DECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 2, i64 noundef 0, i64 undef), !noalias !2810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2812
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !noalias !2813 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2813 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs9_NtNtCs1dZk1kIfPhr_19candle_transformers6models4beitNtB3z_21BeitVisionTransformer23get_intermediate_layerss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB6d_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB74_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B3D_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %2, align 8, !range !21, !alias.scope !2814, !noalias !2815, !noundef !4
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %2)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i unwind label %bb.e, !noalias !2816

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !2815
  %.sroa.58.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.58.0..8.val.sroa_idx.i.i.i, align 8, !noalias !2815
  %.sroa.611.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !noalias !2813
  resume { ptr, i32 } %i.p

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !2815
  %.sroa.58.0..8.val.sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.58.0..8.val.sroa_idx9.i.i.i, align 8, !noalias !2815
  %.sroa.611.0..8.val.sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.0..8.val.sroa_idx12.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !noalias !2813
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs9_NtNtCs1dZk1kIfPhr_19candle_transformers6models4beitNtB3z_21BeitVisionTransformer23get_intermediate_layerss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB6d_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB74_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B3D_.exit.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs9_NtNtCs1dZk1kIfPhr_19candle_transformers6models4beitNtB3z_21BeitVisionTransformer23get_intermediate_layerss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB6d_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB74_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B3D_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i, %bb.b
  %.sroa.4.1.i.i.i = phi ptr [ null, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2810
  br label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_B3g_EINtNtBc_6result6ResultB1h_NtNtB1l_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB4d_B1h_EENCNvMs9_NtNtCs1dZk1kIfPhr_19candle_transformers6models4beitNtB5a_21BeitVisionTransformer23get_intermediate_layerss2_0NCINvXB8_INtB8_12GenericShuntINtB2S_3MapB3_B52_EIB3r_zB3Q_EEB25_8try_folduNCINvNvB25_12try_for_each4callB1h_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB5e_.exit

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_B3g_EINtNtBc_6result6ResultB1h_NtNtB1l_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB4d_B1h_EENCNvMs9_NtNtCs1dZk1kIfPhr_19candle_transformers6models4beitNtB5a_21BeitVisionTransformer23get_intermediate_layerss2_0NCINvXB8_INtB8_12GenericShuntINtB2S_3MapB3_B52_EIB3r_zB3Q_EEB25_8try_folduNCINvNvB25_12try_for_each4callB1h_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB5e_.exit: ; preds = %bb.a, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs9_NtNtCs1dZk1kIfPhr_19candle_transformers6models4beitNtB3z_21BeitVisionTransformer23get_intermediate_layerss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB6d_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB74_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B3D_.exit.i
  %.sroa.3.0.i = phi ptr [ %.sroa.4.1.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs9_NtNtCs1dZk1kIfPhr_19candle_transformers6models4beitNtB3z_21BeitVisionTransformer23get_intermediate_layerss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB6d_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB74_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B3D_.exit.i ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i64 [ 1, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs9_NtNtCs1dZk1kIfPhr_19candle_transformers6models4beitNtB3z_21BeitVisionTransformer23get_intermediate_layerss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB6d_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB74_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B3D_.exit.i ], [ 0, %bb.a ]
  %i.q = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.r = insertvalue { i64, ptr } %i.q, ptr %.sroa.3.0.i, 1
  ret { i64, ptr } %i.r
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEIB1e_jEENCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vl6visionNtB1V_18Qwen3VLVisionModel26fast_pos_embed_interpolates2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecfE14extend_trustedBN_E0E0EB21_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 10 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8 ; 7 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload ; 5 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_jEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRfRjEfuNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vl6visionNtB2M_18Qwen3VLVisionModel26fast_pos_embed_interpolates2_0NCINvNvB1v_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5j_3VecfE14extend_trustedINtB2e_3MapBM_B2E_EE0E0E0EB2S_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.44.0.copyload, 2
  %i.c = getelementptr i8, ptr %.sroa.65.0.copyload, i64 %i.b ; 2 uses
  %i.d = add i64 %.sroa.44.0.copyload, %.sroa.6.0.copyload
  %i.e = shl i64 %.sroa.52.0.copyload, 2
  %i.f = sub i64 %i.d, %.sroa.52.0.copyload
  %i.g = shl i64 %i.f, 2
  %i.h = getelementptr i8, ptr %.sroa.65.0.copyload, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.e
  %i.j = shl i64 %.sroa.6.0.copyload, 2
  %i.k = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.j
  %i.l = shl i64 %.sroa.52.0.copyload, 3
  %i.m = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.l
  %i.n = shl i64 %.sroa.6.0.copyload, 3
  %i.o = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.n
  %bound0 = icmp ult ptr %i.c, %i.k
  %bound1 = icmp ult ptr %i.i, %i.h
  %found.conflict = and i1 %bound0, %bound1
  %bound014 = icmp ult ptr %i.c, %i.o
  %bound115 = icmp ult ptr %i.m, %i.h
  %found.conflict16 = and i1 %bound014, %bound115
  %conflict.rdx = or i1 %found.conflict, %found.conflict16
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -2                       ; 4 uses
  %i.p = add i64 %.sroa.44.0.copyload, %n.vec     ; 2 uses
  %i.q = getelementptr [4 x i8], ptr %.sroa.65.0.copyload, i64 %.sroa.44.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = add i64 %index, %.sroa.52.0.copyload     ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.r
  %wide.load = load <2 x float>, ptr %i.s, align 4, !alias.scope !2835, !noalias !2836
  %wide.load17 = load <2 x i64>, ptr %i.t, align 8, !alias.scope !2837, !noalias !2836
  %i.u = uitofp <2 x i64> %wide.load17 to <2 x float>
  %i.v = fsub <2 x float> %wide.load, %i.u
  %i.w = getelementptr [4 x i8], ptr %i.q, i64 %index
  store <2 x float> %i.v, ptr %i.w, align 4, !alias.scope !2838, !noalias !2839
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !2833

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_jEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRfRjEfuNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vl6visionNtB2M_18Qwen3VLVisionModel26fast_pos_embed_interpolates2_0NCINvNvB1v_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5j_3VecfE14extend_trustedINtB2e_3MapBM_B2E_EE0E0E0EB2S_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.44.0.copyload, %vector.memcheck ], [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.0.015.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.y = xor i64 %.sroa.0.015.i.i.ph, -1
  %i.z = add i64 %.sroa.6.0.copyload, %i.y
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aa = or disjoint i64 %.sroa.0.015.i.i.ph, 1
  %i.ab = add i64 %.sroa.0.015.i.i.ph, %.sroa.52.0.copyload ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.ab
  %.val13.i.i.prol = load float, ptr %i.ac, align 4, !noalias !2836, !noundef !4
  %.val14.i.i.prol = load i64, ptr %i.ad, align 8, !noalias !2836, !noundef !4
  %i.ae = uitofp i64 %.val14.i.i.prol to float
  %i.af = fsub float %.val13.i.i.prol, %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.65.0.copyload, i64 %.ph
  store float %i.af, ptr %i.ag, align 4, !noalias !2840
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.0.015.i.i.unr = phi i64 [ %.sroa.0.015.i.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.z, %.sroa.52.0.copyload
  br i1 %i.ai, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_jEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRfRjEfuNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vl6visionNtB2M_18Qwen3VLVisionModel26fast_pos_embed_interpolates2_0NCINvNvB1v_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5j_3VecfE14extend_trustedINtB2e_3MapBM_B2E_EE0E0E0EB2S_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.52.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.aj = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.ax, %scalar.ph ] ; 3 uses
  %.sroa.0.015.i.i = phi i64 [ %.sroa.0.015.i.i.unr, %scalar.ph.preheader.new ], [ %i.aq, %scalar.ph ] ; 3 uses
  %i.ak = add i64 %.sroa.0.015.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.ak
  %.val13.i.i = load float, ptr %i.al, align 4, !noalias !2836, !noundef !4
  %.val14.i.i = load i64, ptr %i.am, align 8, !noalias !2836, !noundef !4
  %i.an = uitofp i64 %.val14.i.i to float
  %i.ao = fsub float %.val13.i.i, %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.65.0.copyload, i64 %i.aj
  store float %i.ao, ptr %i.ap, align 4, !noalias !2840
  %i.aq = add nuw i64 %.sroa.0.015.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.015.i.i, %invariant.op ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %.reass
  %.val13.i.i.1 = load float, ptr %i.ar, align 4, !noalias !2836, !noundef !4
  %.val14.i.i.1 = load i64, ptr %i.as, align 8, !noalias !2836, !noundef !4
  %i.at = uitofp i64 %.val14.i.i.1 to float
  %i.au = fsub float %.val13.i.i.1, %i.at
  %i.av = getelementptr [4 x i8], ptr %.sroa.65.0.copyload, i64 %i.aj
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  store float %i.au, ptr %i.aw, align 4, !noalias !2840
  %i.ax = add i64 %i.aj, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.aq, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_jEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRfRjEfuNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vl6visionNtB2M_18Qwen3VLVisionModel26fast_pos_embed_interpolates2_0NCINvNvB1v_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5j_3VecfE14extend_trustedINtB2e_3MapBM_B2E_EE0E0E0EB2S_.exit, label %scalar.ph, !llvm.loop !2834

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_jEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRfRjEfuNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vl6visionNtB2M_18Qwen3VLVisionModel26fast_pos_embed_interpolates2_0NCINvNvB1v_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5j_3VecfE14extend_trustedINtB2e_3MapBM_B2E_EE0E0E0EB2S_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.p, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ax, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.03.0.copyload, align 8, !noalias !2836
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEIB1e_jEENCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vl6visionNtB1V_18Qwen3VLVisionModel26fast_pos_embed_interpolates3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecfE14extend_trustedBN_E0E0EB21_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 10 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8 ; 7 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload ; 5 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_jEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRfRjEfuNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vl6visionNtB2M_18Qwen3VLVisionModel26fast_pos_embed_interpolates3_0NCINvNvB1v_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5j_3VecfE14extend_trustedINtB2e_3MapBM_B2E_EE0E0E0EB2S_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.44.0.copyload, 2
  %i.c = getelementptr i8, ptr %.sroa.65.0.copyload, i64 %i.b ; 2 uses
  %i.d = add i64 %.sroa.44.0.copyload, %.sroa.6.0.copyload
  %i.e = shl i64 %.sroa.52.0.copyload, 2
  %i.f = sub i64 %i.d, %.sroa.52.0.copyload
  %i.g = shl i64 %i.f, 2
  %i.h = getelementptr i8, ptr %.sroa.65.0.copyload, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.e
  %i.j = shl i64 %.sroa.6.0.copyload, 2
  %i.k = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.j
  %i.l = shl i64 %.sroa.52.0.copyload, 3
  %i.m = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.l
  %i.n = shl i64 %.sroa.6.0.copyload, 3
  %i.o = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.n
  %bound0 = icmp ult ptr %i.c, %i.k
  %bound1 = icmp ult ptr %i.i, %i.h
  %found.conflict = and i1 %bound0, %bound1
  %bound014 = icmp ult ptr %i.c, %i.o
  %bound115 = icmp ult ptr %i.m, %i.h
  %found.conflict16 = and i1 %bound014, %bound115
  %conflict.rdx = or i1 %found.conflict, %found.conflict16
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -2                       ; 4 uses
  %i.p = add i64 %.sroa.44.0.copyload, %n.vec     ; 2 uses
  %i.q = getelementptr [4 x i8], ptr %.sroa.65.0.copyload, i64 %.sroa.44.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = add i64 %index, %.sroa.52.0.copyload     ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.r
  %wide.load = load <2 x float>, ptr %i.s, align 4, !alias.scope !2859, !noalias !2860
  %wide.load17 = load <2 x i64>, ptr %i.t, align 8, !alias.scope !2861, !noalias !2860
  %i.u = uitofp <2 x i64> %wide.load17 to <2 x float>
  %i.v = fsub <2 x float> %wide.load, %i.u
  %i.w = getelementptr [4 x i8], ptr %i.q, i64 %index
  store <2 x float> %i.v, ptr %i.w, align 4, !alias.scope !2862, !noalias !2863
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !2857

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_jEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRfRjEfuNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vl6visionNtB2M_18Qwen3VLVisionModel26fast_pos_embed_interpolates3_0NCINvNvB1v_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5j_3VecfE14extend_trustedINtB2e_3MapBM_B2E_EE0E0E0EB2S_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.44.0.copyload, %vector.memcheck ], [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.0.015.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.y = xor i64 %.sroa.0.015.i.i.ph, -1
  %i.z = add i64 %.sroa.6.0.copyload, %i.y
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aa = or disjoint i64 %.sroa.0.015.i.i.ph, 1
  %i.ab = add i64 %.sroa.0.015.i.i.ph, %.sroa.52.0.copyload ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.ab
  %.val13.i.i.prol = load float, ptr %i.ac, align 4, !noalias !2860, !noundef !4
  %.val14.i.i.prol = load i64, ptr %i.ad, align 8, !noalias !2860, !noundef !4
  %i.ae = uitofp i64 %.val14.i.i.prol to float
  %i.af = fsub float %.val13.i.i.prol, %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.65.0.copyload, i64 %.ph
  store float %i.af, ptr %i.ag, align 4, !noalias !2864
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.0.015.i.i.unr = phi i64 [ %.sroa.0.015.i.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.z, %.sroa.52.0.copyload
  br i1 %i.ai, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_jEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRfRjEfuNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vl6visionNtB2M_18Qwen3VLVisionModel26fast_pos_embed_interpolates3_0NCINvNvB1v_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5j_3VecfE14extend_trustedINtB2e_3MapBM_B2E_EE0E0E0EB2S_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.52.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.aj = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.ax, %scalar.ph ] ; 3 uses
  %.sroa.0.015.i.i = phi i64 [ %.sroa.0.015.i.i.unr, %scalar.ph.preheader.new ], [ %i.aq, %scalar.ph ] ; 3 uses
  %i.ak = add i64 %.sroa.0.015.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.ak
  %.val13.i.i = load float, ptr %i.al, align 4, !noalias !2860, !noundef !4
  %.val14.i.i = load i64, ptr %i.am, align 8, !noalias !2860, !noundef !4
  %i.an = uitofp i64 %.val14.i.i to float
  %i.ao = fsub float %.val13.i.i, %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.65.0.copyload, i64 %i.aj
  store float %i.ao, ptr %i.ap, align 4, !noalias !2864
  %i.aq = add nuw i64 %.sroa.0.015.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.015.i.i, %invariant.op ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %.reass
  %.val13.i.i.1 = load float, ptr %i.ar, align 4, !noalias !2860, !noundef !4
  %.val14.i.i.1 = load i64, ptr %i.as, align 8, !noalias !2860, !noundef !4
  %i.at = uitofp i64 %.val14.i.i.1 to float
  %i.au = fsub float %.val13.i.i.1, %i.at
  %i.av = getelementptr [4 x i8], ptr %.sroa.65.0.copyload, i64 %i.aj
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  store float %i.au, ptr %i.aw, align 4, !noalias !2864
  %i.ax = add i64 %i.aj, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.aq, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_jEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRfRjEfuNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vl6visionNtB2M_18Qwen3VLVisionModel26fast_pos_embed_interpolates3_0NCINvNvB1v_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5j_3VecfE14extend_trustedINtB2e_3MapBM_B2E_EE0E0E0EB2S_.exit, label %scalar.ph, !llvm.loop !2858

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_jEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRfRjEfuNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vl6visionNtB2M_18Qwen3VLVisionModel26fast_pos_embed_interpolates3_0NCINvNvB1v_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5j_3VecfE14extend_trustedINtB2e_3MapBM_B2E_EE0E0E0EB2S_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.p, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ax, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.03.0.copyload, align 8, !noalias !2860
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_7step_by6StepByINtNtNtBc_3ops5range5RangejEENCNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models10modernbertNtB1S_15RotaryEmbedding3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3h_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4u_3VecfE14extend_trustedBN_E0E0EB1W_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 8 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !18, !noundef !4 ; 6 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.63.0.copyload = load ptr, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %i.d = add nuw i64 %.sroa.5.0.copyload, 1       ; 6 uses
  %i.e = icmp ne i64 %.sroa.5.0.copyload, -1
  tail call void @llvm.assume(i1 %i.e)
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangejEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldjfuNCNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models10modernbertNtB2F_15RotaryEmbedding3new0NCINvNvB1w_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4C_3VecfE14extend_trustedINtB2f_3MapBQ_B2A_EE0E0E0EB2J_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8 ; 4 uses
  %min.iters.check = icmp eq i64 %.sroa.4.0.copyload, 1
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.g = shl i64 %.sroa.42.0.copyload, 2
  %i.h = getelementptr i8, ptr %.sroa.63.0.copyload, i64 %i.g ; 2 uses
  %i.i = add i64 %.sroa.42.0.copyload, %.sroa.4.0.copyload
  %i.j = shl i64 %i.i, 2
  %i.k = getelementptr i8, ptr %.sroa.63.0.copyload, i64 %i.j ; 2 uses
  %i.l = getelementptr i8, ptr %i.a, i64 8
  %i.m = getelementptr i8, ptr %i.c, i64 8
  %bound0 = icmp ult ptr %i.h, %i.l
  %bound1 = icmp ult ptr %i.a, %i.k
  %found.conflict = and i1 %bound0, %bound1
  %bound010 = icmp ult ptr %i.h, %i.m
  %bound111 = icmp ult ptr %i.c, %i.k
  %found.conflict12 = and i1 %bound010, %bound111
  %conflict.rdx = or i1 %found.conflict, %found.conflict12
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.sroa.4.0.copyload, -2        ; 5 uses
  %i.n = add i64 %.sroa.42.0.copyload, %n.vec     ; 2 uses
  %i.o = mul i64 %n.vec, %i.d
  %i.p = add i64 %.sroa.0.0.copyload, %i.o
  %i.q = load double, ptr %i.a, align 8, !alias.scope !2883, !noalias !2884, !noundef !4 ; 2 uses
  %i.r = load i64, ptr %i.c, align 8, !alias.scope !2885, !noalias !2884, !noundef !4
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %i.s = uitofp <2 x i64> %broadcast.splatinsert to <2 x double>
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %.sroa.0.0.copyload, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert15 = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat16 = shufflevector <2 x i64> %broadcast.splatinsert15, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.u = mul nuw <2 x i64> %broadcast.splat16, <i64 0, i64 1>
  %induction = add <2 x i64> %broadcast.splat14, %i.u
  %i.v = shl i64 %i.d, 1
  %broadcast.splatinsert17 = insertelement <2 x i64> poison, i64 %i.v, i64 0
  %broadcast.splat18 = shufflevector <2 x i64> %broadcast.splatinsert17, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.w = getelementptr [4 x i8], ptr %.sroa.63.0.copyload, i64 %.sroa.42.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.x = uitofp <2 x i64> %vec.ind to <2 x double>
  %i.y = fdiv <2 x double> %i.x, %i.t             ; 2 uses
  %i.z = extractelement <2 x double> %i.y, i64 0
  %i.aa = tail call double @llvm.pow.f64(double %i.q, double %i.z)
  %i.ab = extractelement <2 x double> %i.y, i64 1
  %i.ac = tail call double @llvm.pow.f64(double %i.q, double %i.ab)
  %i.ad = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.ac, i64 1
  %i.af = fptrunc <2 x double> %i.ae to <2 x float>
  %i.ag = fdiv <2 x float> splat (float 1.000000e+00), %i.af
  %i.ah = getelementptr [4 x i8], ptr %i.w, i64 %index
  store <2 x float> %i.ag, ptr %i.ah, align 4, !alias.scope !2886, !noalias !2887
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, %broadcast.splat18
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !2881

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.4.0.copyload, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangejEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldjfuNCNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models10modernbertNtB2F_15RotaryEmbedding3new0NCINvNvB1w_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4C_3VecfE14extend_trustedINtB2f_3MapBQ_B2A_EE0E0E0EB2J_.exit, label %.lr.ph.i.i.preheader21

.lr.ph.i.i.preheader21:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.42.0.copyload, %vector.memcheck ], [ %.sroa.42.0.copyload, %.lr.ph.i.i.preheader ], [ %i.n, %middle.block ] ; 3 uses
  %.sroa.0.012.i.i.ph = phi i64 [ %.sroa.0.0.copyload, %vector.memcheck ], [ %.sroa.0.0.copyload, %.lr.ph.i.i.preheader ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.02.011.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.sroa.02.011.i.i.ph, 1
  %xtraiter = and i64 %.sroa.4.0.copyload, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader21
  %i.aj = load double, ptr %i.a, align 8, !noalias !2884, !noundef !4
  %i.ak = uitofp i64 %.sroa.0.012.i.i.ph to double
  %i.al = load i64, ptr %i.c, align 8, !noalias !2884, !noundef !4
  %i.am = uitofp i64 %i.al to double
  %i.an = fdiv double %i.ak, %i.am
  %i.ao = tail call double @llvm.pow.f64(double %i.aj, double %i.an)
  %i.ap = fptrunc double %i.ao to float
  %i.aq = fdiv float 1.000000e+00, %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.63.0.copyload, i64 %.ph
  store float %i.aq, ptr %i.ar, align 4, !noalias !2888
  %i.as = add i64 %.ph, 1                         ; 2 uses
  %i.at = or disjoint i64 %.sroa.02.011.i.i.ph, 1
  %i.au = add i64 %i.d, %.sroa.0.012.i.i.ph
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader21
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.preheader21 ], [ %i.as, %.lr.ph.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.i.preheader21 ], [ %i.as, %.lr.ph.i.i.prol ]
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %.lr.ph.i.i.preheader21 ], [ %i.au, %.lr.ph.i.i.prol ]
  %.sroa.02.011.i.i.unr = phi i64 [ %.sroa.02.011.i.i.ph, %.lr.ph.i.i.preheader21 ], [ %i.at, %.lr.ph.i.i.prol ]
  %i.av = icmp eq i64 %.sroa.4.0.copyload, %.neg
  br i1 %i.av, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangejEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldjfuNCNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models10modernbertNtB2F_15RotaryEmbedding3new0NCINvNvB1w_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4C_3VecfE14extend_trustedINtB2f_3MapBQ_B2A_EE0E0E0EB2J_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.aw = phi i64 [ %i.br, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.sroa.0.012.i.i = phi i64 [ %i.bt, %.lr.ph.i.i ], [ %.sroa.0.012.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.02.011.i.i = phi i64 [ %i.bs, %.lr.ph.i.i ], [ %.sroa.02.011.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ax = load double, ptr %i.a, align 8, !noalias !2884, !noundef !4
  %i.ay = uitofp i64 %.sroa.0.012.i.i to double
  %i.az = load i64, ptr %i.c, align 8, !noalias !2884, !noundef !4
  %i.ba = uitofp i64 %i.az to double
  %i.bb = fdiv double %i.ay, %i.ba
  %i.bc = tail call double @llvm.pow.f64(double %i.ax, double %i.bb)
  %i.bd = fptrunc double %i.bc to float
  %i.be = fdiv float 1.000000e+00, %i.bd
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.63.0.copyload, i64 %i.aw
  store float %i.be, ptr %i.bf, align 4, !noalias !2888
  %i.bg = add i64 %i.d, %.sroa.0.012.i.i          ; 2 uses
end_hunk_0
