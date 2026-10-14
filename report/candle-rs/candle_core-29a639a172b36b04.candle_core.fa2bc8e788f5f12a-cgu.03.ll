Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.03?download=true
inline.NumInlined: 5426
inline.NumDeleted: 3862
loop-unroll.NumRuntimeUnrolled: 177
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEB1d_ENCNvMs2_NtB1H_4convB1D_16conv1d_with_algo0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtB1H_5error5ErrorEEB39_8try_folduNCINvNvB39_12try_for_each4callB1D_INtNtNtBc_3ops12control_flow11ControlFlowB1D_ENcNtB5S_5Break0E0B5S_E0IB5T_B5S_EEB1H_:bb.a
  %i.m = load i64, ptr %2, align 8, !range !10, !alias.scope !117, !noalias !118, !noundef !4
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEEB1o_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %2)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEEB1o_.exit.i.i.i unwind label %bb.e, !noalias !119

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !118
  %.sroa.58.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.58.0..8.val.sroa_idx.i.i.i, align 8, !noalias !118
  %.sroa.611.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !noalias !116
  resume { ptr, i32 } %i.o

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEEB1o_.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !118
  %.sroa.58.0..8.val.sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.58.0..8.val.sroa_idx9.i.i.i, align 8, !noalias !118
  %.sroa.611.0..8.val.sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.0..8.val.sroa_idx12.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !noalias !116
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs2_NtB15_4convB11_16conv1d_with_algo0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB50_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B15_.exit.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs2_NtB15_4convB11_16conv1d_with_algo0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB50_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B15_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEEB1o_.exit.i.i.i, %bb.b
  %.sroa.4.1.i.i.i = phi ptr [ null, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEEB1o_.exit.i.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !114
  br label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_B3g_EINtNtBc_6result6ResultB1h_NtNtB1l_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB4d_B1h_EENCNvMs2_NtB1l_4convB1h_16conv1d_with_algo0NCINvXB8_INtB8_12GenericShuntINtB2S_3MapB3_B52_EIB3r_zB3Q_EEB25_8try_folduNCINvNvB25_12try_for_each4callB1h_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB1l_.exit

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_B3g_EINtNtBc_6result6ResultB1h_NtNtB1l_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB4d_B1h_EENCNvMs2_NtB1l_4convB1h_16conv1d_with_algo0NCINvXB8_INtB8_12GenericShuntINtB2S_3MapB3_B52_EIB3r_zB3Q_EEB25_8try_folduNCINvNvB25_12try_for_each4callB1h_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB1l_.exit: ; preds = %bb.a, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs2_NtB15_4convB11_16conv1d_with_algo0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB50_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B15_.exit.i
  %.sroa.3.0.i = phi ptr [ %.sroa.4.1.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs2_NtB15_4convB11_16conv1d_with_algo0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB50_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B15_.exit.i ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i64 [ 1, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs2_NtB15_4convB11_16conv1d_with_algo0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB50_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B15_.exit.i ], [ 0, %bb.a ]
  %i.p = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %.sroa.3.0.i, 1
  ret { i64, ptr } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEB1d_ENCNvMs2_NtB1H_4convB1D_16conv2d_with_algo0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtB1H_5error5ErrorEEB39_8try_folduNCINvNvB39_12try_for_each4callB1D_INtNtNtBc_3ops12control_flow11ControlFlowB1D_ENcNtB5S_5Break0E0B5S_E0IB5T_B5S_EEB1H_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !134, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !134, !noundef !4
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_B3g_EINtNtBc_6result6ResultB1h_NtNtB1l_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB4d_B1h_EENCNvMs2_NtB1l_4convB1h_16conv2d_with_algo0NCINvXB8_INtB8_12GenericShuntINtB2S_3MapB3_B52_EIB3r_zB3Q_EEB25_8try_folduNCINvNvB25_12try_for_each4callB1h_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB1l_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = add nuw i64 %i.c, 1
  store i64 %i.h, ptr %i.b, align 8, !alias.scope !134
  %.val1.i.i.i = load ptr, ptr %0, align 8, !alias.scope !134, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !134, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !133
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.val.i.i = load ptr, ptr %i.g, align 8, !noalias !135, !nonnull !4, !align !7, !noundef !4
  call void @_RNvMs2_NtCsltEA4u8Pgfu_11candle_core4convNtNtB7_6tensor6Tensor19conv2d_single_group(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.val.i.i), !noalias !133
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !135 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !135 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs2_NtB15_4convB11_16conv2d_with_algo0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB50_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B15_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %2, align 8, !range !10, !alias.scope !136, !noalias !137, !noundef !4
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEEB1o_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %2)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEEB1o_.exit.i.i.i unwind label %bb.e, !noalias !138

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !137
  %.sroa.58.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.58.0..8.val.sroa_idx.i.i.i, align 8, !noalias !137
  %.sroa.611.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !noalias !135
  resume { ptr, i32 } %i.o

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEEB1o_.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !137
  %.sroa.58.0..8.val.sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.58.0..8.val.sroa_idx9.i.i.i, align 8, !noalias !137
  %.sroa.611.0..8.val.sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.0..8.val.sroa_idx12.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !noalias !135
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs2_NtB15_4convB11_16conv2d_with_algo0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB50_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B15_.exit.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs2_NtB15_4convB11_16conv2d_with_algo0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB50_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B15_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEEB1o_.exit.i.i.i, %bb.b
  %.sroa.4.1.i.i.i = phi ptr [ null, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEEB1o_.exit.i.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !133
  br label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_B3g_EINtNtBc_6result6ResultB1h_NtNtB1l_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB4d_B1h_EENCNvMs2_NtB1l_4convB1h_16conv2d_with_algo0NCINvXB8_INtB8_12GenericShuntINtB2S_3MapB3_B52_EIB3r_zB3Q_EEB25_8try_folduNCINvNvB25_12try_for_each4callB1h_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB1l_.exit

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_B3g_EINtNtBc_6result6ResultB1h_NtNtB1l_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB4d_B1h_EENCNvMs2_NtB1l_4convB1h_16conv2d_with_algo0NCINvXB8_INtB8_12GenericShuntINtB2S_3MapB3_B52_EIB3r_zB3Q_EEB25_8try_folduNCINvNvB25_12try_for_each4callB1h_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB1l_.exit: ; preds = %bb.a, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs2_NtB15_4convB11_16conv2d_with_algo0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB50_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B15_.exit.i
  %.sroa.3.0.i = phi ptr [ %.sroa.4.1.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs2_NtB15_4convB11_16conv2d_with_algo0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB50_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B15_.exit.i ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i64 [ 1, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs2_NtB15_4convB11_16conv2d_with_algo0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB50_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B15_.exit.i ], [ 0, %bb.a ]
  %i.p = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %.sroa.3.0.i, 1
  ret { i64, ptr } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEB1d_ENCNvMs2_NtB1H_4convB1D_16conv_transpose1d0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtB1H_5error5ErrorEEB39_8try_folduNCINvNvB39_12try_for_each4callB1D_INtNtNtBc_3ops12control_flow11ControlFlowB1D_ENcNtB5S_5Break0E0B5S_E0IB5T_B5S_EEB1H_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !153, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !153, !noundef !4
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_B3g_EINtNtBc_6result6ResultB1h_NtNtB1l_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB4d_B1h_EENCNvMs2_NtB1l_4convB1h_16conv_transpose1d0NCINvXB8_INtB8_12GenericShuntINtB2S_3MapB3_B52_EIB3r_zB3Q_EEB25_8try_folduNCINvNvB25_12try_for_each4callB1h_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB1l_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = add nuw i64 %i.c, 1
  store i64 %i.h, ptr %i.b, align 8, !alias.scope !153
  %.val1.i.i.i = load ptr, ptr %0, align 8, !alias.scope !153, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !153, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !152
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.val.i.i = load ptr, ptr %i.g, align 8, !noalias !154, !nonnull !4, !align !7, !noundef !4
  call void @_RNvMs2_NtCsltEA4u8Pgfu_11candle_core4convNtNtB7_6tensor6Tensor29conv_transpose1d_single_group(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.val.i.i), !noalias !152
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !154 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !154 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs2_NtB15_4convB11_16conv_transpose1d0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB50_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B15_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %2, align 8, !range !10, !alias.scope !155, !noalias !156, !noundef !4
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEEB1o_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %2)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEEB1o_.exit.i.i.i unwind label %bb.e, !noalias !157

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !156
  %.sroa.58.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.58.0..8.val.sroa_idx.i.i.i, align 8, !noalias !156
  %.sroa.611.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !noalias !154
  resume { ptr, i32 } %i.o

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEEB1o_.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !156
  %.sroa.58.0..8.val.sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.58.0..8.val.sroa_idx9.i.i.i, align 8, !noalias !156
  %.sroa.611.0..8.val.sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.0..8.val.sroa_idx12.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !noalias !154
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs2_NtB15_4convB11_16conv_transpose1d0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB50_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B15_.exit.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs2_NtB15_4convB11_16conv_transpose1d0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB50_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B15_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEEB1o_.exit.i.i.i, %bb.b
  %.sroa.4.1.i.i.i = phi ptr [ null, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEEB1o_.exit.i.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !152
  br label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_B3g_EINtNtBc_6result6ResultB1h_NtNtB1l_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB4d_B1h_EENCNvMs2_NtB1l_4convB1h_16conv_transpose1d0NCINvXB8_INtB8_12GenericShuntINtB2S_3MapB3_B52_EIB3r_zB3Q_EEB25_8try_folduNCINvNvB25_12try_for_each4callB1h_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB1l_.exit

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_B3g_EINtNtBc_6result6ResultB1h_NtNtB1l_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB4d_B1h_EENCNvMs2_NtB1l_4convB1h_16conv_transpose1d0NCINvXB8_INtB8_12GenericShuntINtB2S_3MapB3_B52_EIB3r_zB3Q_EEB25_8try_folduNCINvNvB25_12try_for_each4callB1h_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB1l_.exit: ; preds = %bb.a, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs2_NtB15_4convB11_16conv_transpose1d0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB50_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B15_.exit.i
  %.sroa.3.0.i = phi ptr [ %.sroa.4.1.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs2_NtB15_4convB11_16conv_transpose1d0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB50_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B15_.exit.i ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i64 [ 1, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB10_EINtNtBa_6result6ResultB11_NtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2C_B11_EENCNvMs2_NtB15_4convB11_16conv_transpose1d0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterB11_EB50_EB3r_EIB1Q_zB2f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callB11_B3g_NcNtB3g_5Break0E0B3g_E0E0B15_.exit.i ], [ 0, %bb.a ]
  %i.p = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %.sroa.3.0.i, 1
  ret { i64, ptr } %i.q
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterhEIBY_B1d_B1d_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB21_5WCondhENtNtB21_5utils4Map21fhE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3l_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4y_3VechE14extend_trustedBN_E0E0EB23_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.0.0.copyload12 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.41.0.copyload9 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0.copyload10 = ptrtoaddr ptr %.sroa.52.0.copyload to i64
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 8 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %.sroa.67.0.copyload8 = ptrtoaddr ptr %.sroa.67.0.copyload to i64
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 8 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTB2C_B2C_EEhuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondhENtNtB2Z_5utils4Map21fhE0NCINvNvB1A_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VechE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.b = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload ; 2 uses
  %i.c = add i64 %i.b, %.sroa.41.0.copyload9
  %i.d = add i64 %.sroa.46.0.copyload, %.sroa.67.0.copyload8 ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %diff.check = icmp ugt i64 %i.e, -16
  %i.f = add i64 %i.b, %.sroa.52.0.copyload10
  %i.g = sub i64 %i.f, %i.d
  %diff.check11 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check11
  %i.h = add i64 %.sroa.74.0.copyload, %.sroa.0.0.copyload12
  %i.i = sub i64 %i.h, %i.d
  %diff.check13 = icmp ugt i64 %i.i, -16
  %conflict.rdx14 = or i1 %conflict.rdx, %diff.check13
  br i1 %conflict.rdx14, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check15 = icmp ult i64 %i.a, 16
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.a, 12
  %n.vec = and i64 %i.a, -16                      ; 5 uses
  %i.k = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.m
  %i.o = add i64 %i.m, %.sroa.63.0.copyload       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.o
  %wide.load = load <16 x i8>, ptr %i.p, align 1, !noalias !176
  %wide.load16 = load <16 x i8>, ptr %i.q, align 1, !noalias !176
  %wide.load17 = load <16 x i8>, ptr %i.n, align 1, !noalias !176
  %i.r = icmp eq <16 x i8> %wide.load17, zeroinitializer
  %i.s = select <16 x i1> %i.r, <16 x i8> %wide.load16, <16 x i8> %wide.load
  %i.t = getelementptr i8, ptr %i.l, i64 %index
  store <16 x i8> %i.s, ptr %i.t, align 1, !noalias !177
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTB2C_B2C_EEhuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondhENtNtB2Z_5utils4Map21fhE0NCINvNvB1A_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VechE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.a, -4                     ; 4 uses
  %i.v = add i64 %.sroa.46.0.copyload, %n.vec18   ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %i.x = add i64 %index19, %.sroa.74.0.copyload   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.x
  %i.z = add i64 %i.x, %.sroa.63.0.copyload       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.z
  %wide.load20 = load <4 x i8>, ptr %i.aa, align 1, !noalias !176
  %wide.load21 = load <4 x i8>, ptr %i.ab, align 1, !noalias !176
  %wide.load22 = load <4 x i8>, ptr %i.y, align 1, !noalias !176
  %i.ac = icmp eq <4 x i8> %wide.load22, zeroinitializer
  %i.ad = select <4 x i1> %i.ac, <4 x i8> %wide.load21, <4 x i8> %wide.load20
  %i.ae = getelementptr i8, ptr %i.w, i64 %index19
  store <4 x i8> %i.ad, ptr %i.ae, align 1, !noalias !177
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !174

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.a, %n.vec18
  br i1 %cmp.n24, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTB2C_B2C_EEhuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondhENtNtB2Z_5utils4Map21fhE0NCINvNvB1A_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VechE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %iter.check ], [ %.sroa.46.0.copyload, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec18, %vec.epilog.middle.block ] ; 4 uses
  %i.ag = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.ah = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.ai = add i64 %.sroa.8.0.copyload, %i.ah
  %xtraiter = and i64 %i.ag, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.aj = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.ak = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak
  %i.am = add i64 %i.ak, %.sroa.63.0.copyload     ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.am
  %i.ap = load i8, ptr %i.an, align 1, !noalias !176, !noundef !4
  %i.aq = load i8, ptr %i.ao, align 1, !noalias !176, !noundef !4
  %.val.i.i.i.i.prol = load i8, ptr %i.al, align 1, !noalias !176, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i8 %.val.i.i.i.i.prol, 0
  %spec.select.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, i8 %i.aq, i8 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.67.0.copyload, i64 %.ph
  store i8 %spec.select.i.i.i.i.prol, ptr %i.ar, align 1, !noalias !177
  %i.as = add i64 %.ph, 1                         ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.as, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.as, %vec.epilog.scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aj, %vec.epilog.scalar.ph.prol ]
  %i.at = icmp eq i64 %i.ai, %.sroa.74.0.copyload
  br i1 %i.at, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTB2C_B2C_EEhuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondhENtNtB2Z_5utils4Map21fhE0NCINvNvB1A_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VechE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %i.au = phi i64 [ %.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.bm, %vec.epilog.scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.bd, %vec.epilog.scalar.ph ] ; 3 uses
  %i.av = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.av
  %i.ax = add i64 %i.av, %.sroa.63.0.copyload     ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.ax
  %i.ba = load i8, ptr %i.ay, align 1, !noalias !176, !noundef !4
  %i.bb = load i8, ptr %i.az, align 1, !noalias !176, !noundef !4
  %.val.i.i.i.i = load i8, ptr %i.aw, align 1, !noalias !176, !noundef !4
  %.not.i.i.i.i = icmp eq i8 %.val.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i8 %i.bb, i8 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.67.0.copyload, i64 %i.au
  store i8 %spec.select.i.i.i.i, ptr %i.bc, align 1, !noalias !177
  %i.bd = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.reass
  %i.bf = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.bf
  %i.bi = load i8, ptr %i.bg, align 1, !noalias !176, !noundef !4
  %i.bj = load i8, ptr %i.bh, align 1, !noalias !176, !noundef !4
  %.val.i.i.i.i.1 = load i8, ptr %i.be, align 1, !noalias !176, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i8 %.val.i.i.i.i.1, 0
  %spec.select.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i8 %i.bj, i8 %i.bi
  %i.bk = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.au
  %i.bl = getelementptr i8, ptr %i.bk, i64 1
  store i8 %spec.select.i.i.i.i.1, ptr %i.bl, align 1, !noalias !177
  %i.bm = add i64 %i.au, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bd, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTB2C_B2C_EEhuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondhENtNtB2Z_5utils4Map21fhE0NCINvNvB1A_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VechE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %vec.epilog.scalar.ph, !llvm.loop !175

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTB2C_B2C_EEhuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondhENtNtB2Z_5utils4Map21fhE0NCINvNvB1A_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VechE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.v, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bm, %vec.epilog.scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !178
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterhEIBY_IB1e_NtCshigRrDowciq_6float86F8E4M3EB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2x_5WCondhENtNtB2x_5utils4Map21fB1O_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4callB1O_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5a_3VecB1O_E14extend_trustedBN_E0E0EB2z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.0.0.copyload12 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.41.0.copyload9 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0.copyload10 = ptrtoaddr ptr %.sroa.52.0.copyload to i64
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 8 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %.sroa.67.0.copyload8 = ptrtoaddr ptr %.sroa.67.0.copyload to i64
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 8 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_IBX_NtCshigRrDowciq_6float86F8E4M3EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTRB1w_B3c_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3A_5WCondhENtNtB3A_5utils4Map21fB1w_E0NCINvNvB27_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5y_3VecB1w_E14extend_trustedINtB2Q_3MapBM_B3s_EE0E0E0EB3C_.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.b = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload ; 2 uses
  %i.c = add i64 %i.b, %.sroa.41.0.copyload9
  %i.d = add i64 %.sroa.46.0.copyload, %.sroa.67.0.copyload8 ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %diff.check = icmp ugt i64 %i.e, -16
  %i.f = add i64 %i.b, %.sroa.52.0.copyload10
  %i.g = sub i64 %i.f, %i.d
  %diff.check11 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check11
  %i.h = add i64 %.sroa.74.0.copyload, %.sroa.0.0.copyload12
  %i.i = sub i64 %i.h, %i.d
  %diff.check13 = icmp ugt i64 %i.i, -16
  %conflict.rdx14 = or i1 %conflict.rdx, %diff.check13
  br i1 %conflict.rdx14, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check15 = icmp ult i64 %i.a, 16
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.a, 12
  %n.vec = and i64 %i.a, -16                      ; 5 uses
  %i.k = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.m
  %i.o = add i64 %i.m, %.sroa.63.0.copyload       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.o
  %wide.load = load <16 x i8>, ptr %i.p, align 1, !noalias !197
  %wide.load16 = load <16 x i8>, ptr %i.q, align 1, !noalias !197
  %wide.load17 = load <16 x i8>, ptr %i.n, align 1, !noalias !197
  %i.r = icmp eq <16 x i8> %wide.load17, zeroinitializer
  %i.s = select <16 x i1> %i.r, <16 x i8> %wide.load16, <16 x i8> %wide.load
  %i.t = getelementptr i8, ptr %i.l, i64 %index
  store <16 x i8> %i.s, ptr %i.t, align 1, !noalias !198
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_IBX_NtCshigRrDowciq_6float86F8E4M3EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTRB1w_B3c_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3A_5WCondhENtNtB3A_5utils4Map21fB1w_E0NCINvNvB27_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5y_3VecB1w_E14extend_trustedINtB2Q_3MapBM_B3s_EE0E0E0EB3C_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.a, -4                     ; 4 uses
  %i.v = add i64 %.sroa.46.0.copyload, %n.vec18   ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %i.x = add i64 %index19, %.sroa.74.0.copyload   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.x
  %i.z = add i64 %i.x, %.sroa.63.0.copyload       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.z
  %wide.load20 = load <4 x i8>, ptr %i.aa, align 1, !noalias !197
  %wide.load21 = load <4 x i8>, ptr %i.ab, align 1, !noalias !197
  %wide.load22 = load <4 x i8>, ptr %i.y, align 1, !noalias !197
  %i.ac = icmp eq <4 x i8> %wide.load22, zeroinitializer
  %i.ad = select <4 x i1> %i.ac, <4 x i8> %wide.load21, <4 x i8> %wide.load20
  %i.ae = getelementptr i8, ptr %i.w, i64 %index19
  store <4 x i8> %i.ad, ptr %i.ae, align 1, !noalias !198
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !195

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.a, %n.vec18
  br i1 %cmp.n24, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_IBX_NtCshigRrDowciq_6float86F8E4M3EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTRB1w_B3c_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3A_5WCondhENtNtB3A_5utils4Map21fB1w_E0NCINvNvB27_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5y_3VecB1w_E14extend_trustedINtB2Q_3MapBM_B3s_EE0E0E0EB3C_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %iter.check ], [ %.sroa.46.0.copyload, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec18, %vec.epilog.middle.block ] ; 4 uses
  %i.ag = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.ah = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.ai = add i64 %.sroa.8.0.copyload, %i.ah
  %xtraiter = and i64 %i.ag, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.aj = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.ak = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak
  %i.am = add i64 %i.ak, %.sroa.63.0.copyload     ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.am
  %i.ap = load i8, ptr %i.an, align 1, !noalias !197, !noundef !4
  %i.aq = load i8, ptr %i.ao, align 1, !noalias !197, !noundef !4
  %.val.i.i.i.i.prol = load i8, ptr %i.al, align 1, !noalias !197, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i8 %.val.i.i.i.i.prol, 0
  %spec.select.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, i8 %i.aq, i8 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.67.0.copyload, i64 %.ph
  store i8 %spec.select.i.i.i.i.prol, ptr %i.ar, align 1, !noalias !198
  %i.as = add i64 %.ph, 1                         ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.as, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.as, %vec.epilog.scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aj, %vec.epilog.scalar.ph.prol ]
  %i.at = icmp eq i64 %i.ai, %.sroa.74.0.copyload
  br i1 %i.at, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_IBX_NtCshigRrDowciq_6float86F8E4M3EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTRB1w_B3c_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3A_5WCondhENtNtB3A_5utils4Map21fB1w_E0NCINvNvB27_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5y_3VecB1w_E14extend_trustedINtB2Q_3MapBM_B3s_EE0E0E0EB3C_.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %i.au = phi i64 [ %.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.bm, %vec.epilog.scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.bd, %vec.epilog.scalar.ph ] ; 3 uses
  %i.av = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.av
  %i.ax = add i64 %i.av, %.sroa.63.0.copyload     ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.ax
  %i.ba = load i8, ptr %i.ay, align 1, !noalias !197, !noundef !4
  %i.bb = load i8, ptr %i.az, align 1, !noalias !197, !noundef !4
  %.val.i.i.i.i = load i8, ptr %i.aw, align 1, !noalias !197, !noundef !4
  %.not.i.i.i.i = icmp eq i8 %.val.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i8 %i.bb, i8 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.67.0.copyload, i64 %i.au
  store i8 %spec.select.i.i.i.i, ptr %i.bc, align 1, !noalias !198
  %i.bd = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.reass
  %i.bf = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.bf
  %i.bi = load i8, ptr %i.bg, align 1, !noalias !197, !noundef !4
  %i.bj = load i8, ptr %i.bh, align 1, !noalias !197, !noundef !4
  %.val.i.i.i.i.1 = load i8, ptr %i.be, align 1, !noalias !197, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i8 %.val.i.i.i.i.1, 0
  %spec.select.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i8 %i.bj, i8 %i.bi
  %i.bk = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.au
  %i.bl = getelementptr i8, ptr %i.bk, i64 1
  store i8 %spec.select.i.i.i.i.1, ptr %i.bl, align 1, !noalias !198
  %i.bm = add i64 %i.au, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bd, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_IBX_NtCshigRrDowciq_6float86F8E4M3EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTRB1w_B3c_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3A_5WCondhENtNtB3A_5utils4Map21fB1w_E0NCINvNvB27_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5y_3VecB1w_E14extend_trustedINtB2Q_3MapBM_B3s_EE0E0E0EB3C_.exit, label %vec.epilog.scalar.ph, !llvm.loop !196

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_IBX_NtCshigRrDowciq_6float86F8E4M3EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTRB1w_B3c_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3A_5WCondhENtNtB3A_5utils4Map21fB1w_E0NCINvNvB27_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5y_3VecB1w_E14extend_trustedINtB2Q_3MapBM_B3s_EE0E0E0EB3C_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.v, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bm, %vec.epilog.scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !199
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterhEIBY_IB1e_NtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2C_5WCondhENtNtB2C_5utils4Map21fB1O_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Z_8for_each4callB1O_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5f_3VecB1O_E14extend_trustedBN_E0E0EB2E_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 7 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_IBX_NtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTRB1w_B3h_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3F_5WCondhENtNtB3F_5utils4Map21fB1w_E0NCINvNvB2c_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5D_3VecB1w_E14extend_trustedINtB2V_3MapBM_B3x_EE0E0E0EB3H_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 1
  %i.c = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.b ; 3 uses
  %i.d = add i64 %.sroa.46.0.copyload, %.sroa.8.0.copyload
  %i.e = sub i64 %i.d, %.sroa.74.0.copyload
  %i.f = shl i64 %i.e, 1
  %i.g = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.f ; 3 uses
  %i.h = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.i = shl i64 %i.h, 1                          ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.i
  %i.k = add i64 %.sroa.63.0.copyload, %.sroa.8.0.copyload
  %i.l = shl i64 %i.k, 1                          ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.l
  %i.n = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.i
  %i.o = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.l
  %i.p = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %.sroa.74.0.copyload
  %i.q = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %.sroa.8.0.copyload
  %bound0 = icmp ult ptr %i.c, %i.m
  %bound1 = icmp ult ptr %i.j, %i.g
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.c, %i.o
  %bound123 = icmp ult ptr %i.n, %i.g
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterhEIBY_IB1e_sEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondhENtNtB24_5utils4Map21fsE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecsE14extend_trustedBN_E0E0EB26_:bb.a
  store i16 %spec.select.i.i.i.i.1, ptr %i.bh, align 2, !noalias !408
  %i.bi = add i64 %i.aq, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.az, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_IBX_sEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTRsB2J_EEsuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondhENtNtB31_5utils4Map21fsE0NCINvNvB1E_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecsE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph, !llvm.loop !401

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_IBX_sEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTRsB2J_EEsuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondhENtNtB31_5utils4Map21fsE0NCINvNvB1E_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecsE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.r, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bi, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !409
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterhEIBY_IB1e_xEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondhENtNtB24_5utils4Map21fxE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecxE14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 7 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondhENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 3
  %i.c = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.b ; 3 uses
  %i.d = add i64 %.sroa.46.0.copyload, %.sroa.8.0.copyload
  %i.e = sub i64 %i.d, %.sroa.74.0.copyload
  %i.f = shl i64 %i.e, 3
  %i.g = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.f ; 3 uses
  %i.h = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.i = shl i64 %i.h, 3                          ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.i
  %i.k = add i64 %.sroa.63.0.copyload, %.sroa.8.0.copyload
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.l
  %i.n = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.i
  %i.o = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.l
  %i.p = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %.sroa.74.0.copyload
  %i.q = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %.sroa.8.0.copyload
  %bound0 = icmp ult ptr %i.c, %i.m
  %bound1 = icmp ult ptr %i.j, %i.g
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.c, %i.o
  %bound123 = icmp ult ptr %i.n, %i.g
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  %bound025 = icmp ult ptr %i.c, %i.q
  %bound126 = icmp ult ptr %i.p, %i.g
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -2                       ; 4 uses
  %i.r = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.t
  %i.v = add i64 %i.t, %.sroa.63.0.copyload       ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.v
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.v
  %wide.load = load <2 x i64>, ptr %i.w, align 8, !alias.scope !432, !noalias !433
  %wide.load29 = load <2 x i64>, ptr %i.x, align 8, !alias.scope !434, !noalias !433
  %wide.load30 = load <2 x i8>, ptr %i.u, align 1, !alias.scope !435, !noalias !433
  %i.y = icmp eq <2 x i8> %wide.load30, zeroinitializer
  %i.z = select <2 x i1> %i.y, <2 x i64> %wide.load29, <2 x i64> %wide.load
  %i.aa = getelementptr [8 x i8], ptr %i.s, i64 %index
  store <2 x i64> %i.z, ptr %i.aa, align 8, !alias.scope !436, !noalias !437
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !430

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondhENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.r, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.ac = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.ad = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.ae = add i64 %.sroa.8.0.copyload, %i.ad
  %xtraiter = and i64 %i.ac, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.af = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.ag = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ag
  %i.ai = add i64 %i.ag, %.sroa.63.0.copyload     ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.ai
  %i.al = load i64, ptr %i.aj, align 8, !noalias !433, !noundef !4
  %i.am = load i64, ptr %i.ak, align 8, !noalias !433, !noundef !4
  %.val.i.i.i.i.prol = load i8, ptr %i.ah, align 1, !noalias !433, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i8 %.val.i.i.i.i.prol, 0
  %spec.select.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, i64 %i.am, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.67.0.copyload, i64 %.ph
  store i64 %spec.select.i.i.i.i.prol, ptr %i.an, align 8, !noalias !438
  %i.ao = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ao, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ao, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.af, %scalar.ph.prol ]
  %i.ap = icmp eq i64 %i.ae, %.sroa.74.0.copyload
  br i1 %i.ap, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondhENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.aq = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bi, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.az, %scalar.ph ] ; 3 uses
  %i.ar = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ar
  %i.at = add i64 %i.ar, %.sroa.63.0.copyload     ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.at
  %i.aw = load i64, ptr %i.au, align 8, !noalias !433, !noundef !4
  %i.ax = load i64, ptr %i.av, align 8, !noalias !433, !noundef !4
  %.val.i.i.i.i = load i8, ptr %i.as, align 1, !noalias !433, !noundef !4
  %.not.i.i.i.i = icmp eq i8 %.val.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.ax, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.67.0.copyload, i64 %i.aq
  store i64 %spec.select.i.i.i.i, ptr %i.ay, align 8, !noalias !438
  %i.az = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.reass
  %i.bb = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.bb
  %i.be = load i64, ptr %i.bc, align 8, !noalias !433, !noundef !4
  %i.bf = load i64, ptr %i.bd, align 8, !noalias !433, !noundef !4
  %.val.i.i.i.i.1 = load i8, ptr %i.ba, align 1, !noalias !433, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i8 %.val.i.i.i.i.1, 0
  %spec.select.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i64 %i.bf, i64 %i.be
  %i.bg = getelementptr [8 x i8], ptr %.sroa.67.0.copyload, i64 %i.aq
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  store i64 %spec.select.i.i.i.i.1, ptr %i.bh, align 8, !noalias !438
  %i.bi = add i64 %i.aq, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.az, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondhENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph, !llvm.loop !431

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondhENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.r, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bi, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !439
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterlEIBY_B1d_B1d_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB21_5WCondlENtNtB21_5utils4Map21flE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3l_8for_each4calllNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4y_3VeclE14extend_trustedBN_E0E0EB23_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 6 uses
  %.sroa.0.0.copyload12 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 6 uses
  %.sroa.41.0.copyload9 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 6 uses
  %.sroa.52.0.copyload10 = ptrtoaddr ptr %.sroa.52.0.copyload to i64
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 5 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 10 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 6 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 5 uses
  %.sroa.67.0.copyload8 = ptrtoaddr ptr %.sroa.67.0.copyload to i64
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTB2C_B2C_EEluNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondlENtNtB2Z_5utils4Map21flE0NCINvNvB1A_8for_each4calllNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VeclE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 2
  %i.c = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.d = shl i64 %i.c, 2                          ; 2 uses
  %i.e = add i64 %i.b, %.sroa.67.0.copyload8      ; 3 uses
  %2 = add i64 %i.d, %.sroa.41.0.copyload9
  %3 = sub i64 %2, %i.e
  %diff.check = icmp ugt i64 %3, -16
  %i.f = add i64 %i.d, %.sroa.52.0.copyload10
  %i.g = sub i64 %i.f, %i.e
  %diff.check11 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check11
  %i.h = shl i64 %.sroa.74.0.copyload, 2
  %i.i = add i64 %i.h, %.sroa.0.0.copyload12
  %i.j = sub i64 %i.i, %i.e
  %diff.check13 = icmp ugt i64 %i.j, -16
  %conflict.rdx14 = or i1 %conflict.rdx, %diff.check13
  br i1 %conflict.rdx14, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.k = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.l = getelementptr [4 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.m
  %i.o = add i64 %i.m, %.sroa.63.0.copyload       ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.o
  %wide.load = load <4 x i32>, ptr %i.p, align 4, !noalias !457
  %wide.load15 = load <4 x i32>, ptr %i.q, align 4, !noalias !457
  %wide.load16 = load <4 x i32>, ptr %i.n, align 4, !noalias !457
  %i.r = icmp eq <4 x i32> %wide.load16, zeroinitializer
  %i.s = select <4 x i1> %i.r, <4 x i32> %wide.load15, <4 x i32> %wide.load
  %i.t = getelementptr [4 x i8], ptr %i.l, i64 %index
  store <4 x i32> %i.s, ptr %i.t, align 4, !noalias !458
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !455

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTB2C_B2C_EEluNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondlENtNtB2Z_5utils4Map21flE0NCINvNvB1A_8for_each4calllNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VeclE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.k, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.v = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.w = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.x = add i64 %.sroa.8.0.copyload, %i.w
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.z = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.z
  %i.ab = add i64 %i.z, %.sroa.63.0.copyload      ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.ab
  %i.ae = load i32, ptr %i.ac, align 4, !noalias !457, !noundef !4
  %i.af = load i32, ptr %i.ad, align 4, !noalias !457, !noundef !4
  %.val.i.i.i.i.prol = load i32, ptr %i.aa, align 4, !noalias !457, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i32 %.val.i.i.i.i.prol, 0
  %spec.select.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, i32 %i.af, i32 %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.67.0.copyload, i64 %.ph
  store i32 %spec.select.i.i.i.i.prol, ptr %i.ag, align 4, !noalias !458
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.x, %.sroa.74.0.copyload
  br i1 %i.ai, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTB2C_B2C_EEluNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondlENtNtB2Z_5utils4Map21flE0NCINvNvB1A_8for_each4calllNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VeclE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.aj = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bb, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.as, %scalar.ph ] ; 3 uses
  %i.ak = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ak
  %i.am = add i64 %i.ak, %.sroa.63.0.copyload     ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.am
  %i.ap = load i32, ptr %i.an, align 4, !noalias !457, !noundef !4
  %i.aq = load i32, ptr %i.ao, align 4, !noalias !457, !noundef !4
  %.val.i.i.i.i = load i32, ptr %i.al, align 4, !noalias !457, !noundef !4
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.aq, i32 %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  store i32 %spec.select.i.i.i.i, ptr %i.ar, align 4, !noalias !458
  %i.as = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.au = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.au
  %i.ax = load i32, ptr %i.av, align 4, !noalias !457, !noundef !4
  %i.ay = load i32, ptr %i.aw, align 4, !noalias !457, !noundef !4
  %.val.i.i.i.i.1 = load i32, ptr %i.at, align 4, !noalias !457, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i32 %.val.i.i.i.i.1, 0
  %spec.select.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i32 %i.ay, i32 %i.ax
  %i.az = getelementptr [4 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  store i32 %spec.select.i.i.i.i.1, ptr %i.ba, align 4, !noalias !458
  %i.bb = add i64 %i.aj, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.as, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTB2C_B2C_EEluNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondlENtNtB2Z_5utils4Map21flE0NCINvNvB1A_8for_each4calllNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VeclE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %scalar.ph, !llvm.loop !456

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTB2C_B2C_EEluNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondlENtNtB2Z_5utils4Map21flE0NCINvNvB1A_8for_each4calllNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VeclE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bb, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !459
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterlEIBY_IB1e_NtCshigRrDowciq_6float86F8E4M3EB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2x_5WCondlENtNtB2x_5utils4Map21fB1O_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4callB1O_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5a_3VecB1O_E14extend_trustedBN_E0E0EB2z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 7 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_NtCshigRrDowciq_6float86F8E4M3EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRB1w_B3c_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3A_5WCondlENtNtB3A_5utils4Map21fB1w_E0NCINvNvB27_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5y_3VecB1w_E14extend_trustedINtB2Q_3MapBM_B3s_EE0E0E0EB3C_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload ; 3 uses
  %i.c = add i64 %.sroa.46.0.copyload, %.sroa.8.0.copyload
  %i.d = sub i64 %i.c, %.sroa.74.0.copyload
  %i.e = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.d ; 3 uses
  %i.f = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.f
  %i.h = add i64 %.sroa.63.0.copyload, %.sroa.8.0.copyload ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.h
  %i.j = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.f
  %i.k = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.h
  %i.l = shl i64 %.sroa.74.0.copyload, 2
  %i.m = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.l
  %i.n = shl i64 %.sroa.8.0.copyload, 2
  %i.o = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.n
  %bound0 = icmp ult ptr %i.b, %i.i
  %bound1 = icmp ult ptr %i.g, %i.e
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.b, %i.k
  %bound123 = icmp ult ptr %i.j, %i.e
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  %bound025 = icmp ult ptr %i.b, %i.o
  %bound126 = icmp ult ptr %i.m, %i.e
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.p = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.r
  %i.t = add i64 %i.r, %.sroa.63.0.copyload       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.t
  %wide.load = load <4 x i8>, ptr %i.u, align 1, !alias.scope !482, !noalias !483
  %wide.load29 = load <4 x i8>, ptr %i.v, align 1, !alias.scope !484, !noalias !483
  %wide.load30 = load <4 x i32>, ptr %i.s, align 4, !alias.scope !485, !noalias !483
  %i.w = icmp eq <4 x i32> %wide.load30, zeroinitializer
  %i.x = select <4 x i1> %i.w, <4 x i8> %wide.load29, <4 x i8> %wide.load
  %i.y = getelementptr i8, ptr %i.q, i64 %index
  store <4 x i8> %i.x, ptr %i.y, align 1, !alias.scope !486, !noalias !487
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !480

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_NtCshigRrDowciq_6float86F8E4M3EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRB1w_B3c_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3A_5WCondlENtNtB3A_5utils4Map21fB1w_E0NCINvNvB27_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5y_3VecB1w_E14extend_trustedINtB2Q_3MapBM_B3s_EE0E0E0EB3C_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.aa = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterlEIBY_IB1e_NtNtCsdsILkMb8ZHY_4half8binary163f16EB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2D_5WCondlENtNtB2D_5utils4Map21fB1O_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB40_8for_each4callB1O_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5g_3VecB1O_E14extend_trustedBN_E0E0EB2F_:bb.a
  %exitcond.not.i.i.1 = icmp eq i64 %i.bb, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_NtNtCsdsILkMb8ZHY_4half8binary163f16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRB1w_B3i_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3G_5WCondlENtNtB3G_5utils4Map21fB1w_E0NCINvNvB2d_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5E_3VecB1w_E14extend_trustedINtB2W_3MapBM_B3y_EE0E0E0EB3I_.exit, label %scalar.ph, !llvm.loop !541

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_NtNtCsdsILkMb8ZHY_4half8binary163f16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRB1w_B3i_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3G_5WCondlENtNtB3G_5utils4Map21fB1w_E0NCINvNvB2d_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5E_3VecB1w_E14extend_trustedINtB2W_3MapBM_B3y_EE0E0E0EB3I_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.t, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bk, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !549
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterlEIBY_IB1e_dEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondlENtNtB24_5utils4Map21fdE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecdE14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 7 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_dEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRdB2J_EEduNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fdE0NCINvNvB1E_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecdE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 3
  %i.c = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.b ; 3 uses
  %i.d = add i64 %.sroa.46.0.copyload, %.sroa.8.0.copyload
  %i.e = sub i64 %i.d, %.sroa.74.0.copyload
  %i.f = shl i64 %i.e, 3
  %i.g = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.f ; 3 uses
  %i.h = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.i = shl i64 %i.h, 3                          ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.i
  %i.k = add i64 %.sroa.63.0.copyload, %.sroa.8.0.copyload
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.l
  %i.n = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.i
  %i.o = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.l
  %i.p = shl i64 %.sroa.74.0.copyload, 2
  %i.q = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.p
  %i.r = shl i64 %.sroa.8.0.copyload, 2
  %i.s = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.r
  %bound0 = icmp ult ptr %i.c, %i.m
  %bound1 = icmp ult ptr %i.j, %i.g
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.c, %i.o
  %bound123 = icmp ult ptr %i.n, %i.g
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  %bound025 = icmp ult ptr %i.c, %i.s
  %bound126 = icmp ult ptr %i.q, %i.g
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -2                       ; 4 uses
  %i.t = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.v
  %i.x = add i64 %i.v, %.sroa.63.0.copyload       ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.x
  %wide.load = load <2 x double>, ptr %i.y, align 8, !alias.scope !572, !noalias !573
  %wide.load29 = load <2 x double>, ptr %i.z, align 8, !alias.scope !574, !noalias !573
  %wide.load30 = load <2 x i32>, ptr %i.w, align 4, !alias.scope !575, !noalias !573
  %i.aa = icmp eq <2 x i32> %wide.load30, zeroinitializer
  %i.ab = select <2 x i1> %i.aa, <2 x double> %wide.load29, <2 x double> %wide.load
  %i.ac = getelementptr [8 x i8], ptr %i.u, i64 %index
  store <2 x double> %i.ab, ptr %i.ac, align 8, !alias.scope !576, !noalias !577
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !570

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_dEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRdB2J_EEduNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fdE0NCINvNvB1E_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecdE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.t, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.ae = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.af = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.ag = add i64 %.sroa.8.0.copyload, %i.af
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ah = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.ai = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ai
  %i.ak = add i64 %i.ai, %.sroa.63.0.copyload     ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.ak
  %i.an = load double, ptr %i.al, align 8, !noalias !573, !noundef !4
  %i.ao = load double, ptr %i.am, align 8, !noalias !573, !noundef !4
  %.val.i.i.i.i.prol = load i32, ptr %i.aj, align 4, !noalias !573, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i32 %.val.i.i.i.i.prol, 0
  %.sroa.0.0.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, double %i.ao, double %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.67.0.copyload, i64 %.ph
  store double %.sroa.0.0.i.i.i.i.prol, ptr %i.ap, align 8, !noalias !578
  %i.aq = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %i.ar = icmp eq i64 %i.ag, %.sroa.74.0.copyload
  br i1 %i.ar, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_dEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRdB2J_EEduNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fdE0NCINvNvB1E_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecdE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.as = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bk, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.bb, %scalar.ph ] ; 3 uses
  %i.at = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.at
  %i.av = add i64 %i.at, %.sroa.63.0.copyload     ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.av
  %i.ay = load double, ptr %i.aw, align 8, !noalias !573, !noundef !4
  %i.az = load double, ptr %i.ax, align 8, !noalias !573, !noundef !4
  %.val.i.i.i.i = load i32, ptr %i.au, align 4, !noalias !573, !noundef !4
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, double %i.az, double %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.67.0.copyload, i64 %i.as
  store double %.sroa.0.0.i.i.i.i, ptr %i.ba, align 8, !noalias !578
  %i.bb = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.bd = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.bd
  %i.bg = load double, ptr %i.be, align 8, !noalias !573, !noundef !4
  %i.bh = load double, ptr %i.bf, align 8, !noalias !573, !noundef !4
  %.val.i.i.i.i.1 = load i32, ptr %i.bc, align 4, !noalias !573, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i32 %.val.i.i.i.i.1, 0
  %.sroa.0.0.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, double %i.bh, double %i.bg
  %i.bi = getelementptr [8 x i8], ptr %.sroa.67.0.copyload, i64 %i.as
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  store double %.sroa.0.0.i.i.i.i.1, ptr %i.bj, align 8, !noalias !578
  %i.bk = add i64 %i.as, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bb, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_dEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRdB2J_EEduNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fdE0NCINvNvB1E_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecdE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph, !llvm.loop !571

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_dEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRdB2J_EEduNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fdE0NCINvNvB1E_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecdE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.t, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bk, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !579
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterlEIBY_IB1e_fEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondlENtNtB24_5utils4Map21ffE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecfE14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 6 uses
  %.sroa.0.0.copyload12 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 6 uses
  %.sroa.41.0.copyload9 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 6 uses
  %.sroa.52.0.copyload10 = ptrtoaddr ptr %.sroa.52.0.copyload to i64
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 5 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 10 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 6 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 5 uses
  %.sroa.67.0.copyload8 = ptrtoaddr ptr %.sroa.67.0.copyload to i64
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_fEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRfB2J_EEfuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21ffE0NCINvNvB1E_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecfE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 2
  %i.c = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.d = shl i64 %i.c, 2                          ; 2 uses
  %i.e = add i64 %i.b, %.sroa.67.0.copyload8      ; 3 uses
  %2 = add i64 %i.d, %.sroa.41.0.copyload9
  %3 = sub i64 %2, %i.e
  %diff.check = icmp ugt i64 %3, -16
  %i.f = add i64 %i.d, %.sroa.52.0.copyload10
  %i.g = sub i64 %i.f, %i.e
  %diff.check11 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check11
  %i.h = shl i64 %.sroa.74.0.copyload, 2
  %i.i = add i64 %i.h, %.sroa.0.0.copyload12
  %i.j = sub i64 %i.i, %i.e
  %diff.check13 = icmp ugt i64 %i.j, -16
  %conflict.rdx14 = or i1 %conflict.rdx, %diff.check13
  br i1 %conflict.rdx14, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.k = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.l = getelementptr [4 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.m
  %i.o = add i64 %i.m, %.sroa.63.0.copyload       ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.o
  %wide.load = load <4 x float>, ptr %i.p, align 4, !noalias !597
  %wide.load15 = load <4 x float>, ptr %i.q, align 4, !noalias !597
  %wide.load16 = load <4 x i32>, ptr %i.n, align 4, !noalias !597
  %i.r = icmp eq <4 x i32> %wide.load16, zeroinitializer
  %i.s = select <4 x i1> %i.r, <4 x float> %wide.load15, <4 x float> %wide.load
  %i.t = getelementptr [4 x i8], ptr %i.l, i64 %index
  store <4 x float> %i.s, ptr %i.t, align 4, !noalias !598
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !595

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_fEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRfB2J_EEfuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21ffE0NCINvNvB1E_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecfE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.k, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.v = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.w = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.x = add i64 %.sroa.8.0.copyload, %i.w
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.z = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.z
  %i.ab = add i64 %i.z, %.sroa.63.0.copyload      ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.ab
  %i.ae = load float, ptr %i.ac, align 4, !noalias !597, !noundef !4
  %i.af = load float, ptr %i.ad, align 4, !noalias !597, !noundef !4
  %.val.i.i.i.i.prol = load i32, ptr %i.aa, align 4, !noalias !597, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i32 %.val.i.i.i.i.prol, 0
  %.sroa.0.0.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, float %i.af, float %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.67.0.copyload, i64 %.ph
  store float %.sroa.0.0.i.i.i.i.prol, ptr %i.ag, align 4, !noalias !598
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.x, %.sroa.74.0.copyload
  br i1 %i.ai, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_fEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRfB2J_EEfuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21ffE0NCINvNvB1E_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecfE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.aj = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bb, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.as, %scalar.ph ] ; 3 uses
  %i.ak = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ak
  %i.am = add i64 %i.ak, %.sroa.63.0.copyload     ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.am
  %i.ap = load float, ptr %i.an, align 4, !noalias !597, !noundef !4
  %i.aq = load float, ptr %i.ao, align 4, !noalias !597, !noundef !4
  %.val.i.i.i.i = load i32, ptr %i.al, align 4, !noalias !597, !noundef !4
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, float %i.aq, float %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  store float %.sroa.0.0.i.i.i.i, ptr %i.ar, align 4, !noalias !598
  %i.as = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.au = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.au
  %i.ax = load float, ptr %i.av, align 4, !noalias !597, !noundef !4
  %i.ay = load float, ptr %i.aw, align 4, !noalias !597, !noundef !4
  %.val.i.i.i.i.1 = load i32, ptr %i.at, align 4, !noalias !597, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i32 %.val.i.i.i.i.1, 0
  %.sroa.0.0.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, float %i.ay, float %i.ax
  %i.az = getelementptr [4 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  store float %.sroa.0.0.i.i.i.i.1, ptr %i.ba, align 4, !noalias !598
  %i.bb = add i64 %i.aj, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.as, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_fEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRfB2J_EEfuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21ffE0NCINvNvB1E_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecfE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph, !llvm.loop !596

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_fEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRfB2J_EEfuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21ffE0NCINvNvB1E_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecfE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bb, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !599
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterlEIBY_IB1e_hEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondlENtNtB24_5utils4Map21fhE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VechE14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 7 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_hEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRhB2J_EEhuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fhE0NCINvNvB1E_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VechE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload ; 3 uses
  %i.c = add i64 %.sroa.46.0.copyload, %.sroa.8.0.copyload
  %i.d = sub i64 %i.c, %.sroa.74.0.copyload
  %i.e = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.d ; 3 uses
  %i.f = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.f
  %i.h = add i64 %.sroa.63.0.copyload, %.sroa.8.0.copyload ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.h
  %i.j = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.f
  %i.k = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.h
  %i.l = shl i64 %.sroa.74.0.copyload, 2
  %i.m = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.l
  %i.n = shl i64 %.sroa.8.0.copyload, 2
  %i.o = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.n
  %bound0 = icmp ult ptr %i.b, %i.i
  %bound1 = icmp ult ptr %i.g, %i.e
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.b, %i.k
  %bound123 = icmp ult ptr %i.j, %i.e
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  %bound025 = icmp ult ptr %i.b, %i.o
  %bound126 = icmp ult ptr %i.m, %i.e
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.p = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.r
  %i.t = add i64 %i.r, %.sroa.63.0.copyload       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.t
  %wide.load = load <4 x i8>, ptr %i.u, align 1, !alias.scope !622, !noalias !623
  %wide.load29 = load <4 x i8>, ptr %i.v, align 1, !alias.scope !624, !noalias !623
  %wide.load30 = load <4 x i32>, ptr %i.s, align 4, !alias.scope !625, !noalias !623
  %i.w = icmp eq <4 x i32> %wide.load30, zeroinitializer
  %i.x = select <4 x i1> %i.w, <4 x i8> %wide.load29, <4 x i8> %wide.load
  %i.y = getelementptr i8, ptr %i.q, i64 %index
  store <4 x i8> %i.x, ptr %i.y, align 1, !alias.scope !626, !noalias !627
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !620

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_hEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRhB2J_EEhuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fhE0NCINvNvB1E_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VechE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.aa = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.ab = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.ac = add i64 %.sroa.8.0.copyload, %i.ab
  %xtraiter = and i64 %i.aa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ad = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.ae = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ae
  %i.ag = add i64 %i.ae, %.sroa.63.0.copyload     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.ag
  %i.aj = load i8, ptr %i.ah, align 1, !noalias !623, !noundef !4
  %i.ak = load i8, ptr %i.ai, align 1, !noalias !623, !noundef !4
  %.val.i.i.i.i.prol = load i32, ptr %i.af, align 4, !noalias !623, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i32 %.val.i.i.i.i.prol, 0
  %spec.select.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, i8 %i.ak, i8 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.67.0.copyload, i64 %.ph
  store i8 %spec.select.i.i.i.i.prol, ptr %i.al, align 1, !noalias !628
  %i.am = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %i.an = icmp eq i64 %i.ac, %.sroa.74.0.copyload
  br i1 %i.an, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_hEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRhB2J_EEhuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fhE0NCINvNvB1E_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VechE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.ao = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bg, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.ax, %scalar.ph ] ; 3 uses
  %i.ap = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ap
  %i.ar = add i64 %i.ap, %.sroa.63.0.copyload     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.ar
  %i.au = load i8, ptr %i.as, align 1, !noalias !623, !noundef !4
  %i.av = load i8, ptr %i.at, align 1, !noalias !623, !noundef !4
  %.val.i.i.i.i = load i32, ptr %i.aq, align 4, !noalias !623, !noundef !4
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i8 %i.av, i8 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.67.0.copyload, i64 %i.ao
  store i8 %spec.select.i.i.i.i, ptr %i.aw, align 1, !noalias !628
  %i.ax = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.az = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.az
  %i.bc = load i8, ptr %i.ba, align 1, !noalias !623, !noundef !4
  %i.bd = load i8, ptr %i.bb, align 1, !noalias !623, !noundef !4
  %.val.i.i.i.i.1 = load i32, ptr %i.ay, align 4, !noalias !623, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i32 %.val.i.i.i.i.1, 0
  %spec.select.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i8 %i.bd, i8 %i.bc
  %i.be = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.ao
  %i.bf = getelementptr i8, ptr %i.be, i64 1
  store i8 %spec.select.i.i.i.i.1, ptr %i.bf, align 1, !noalias !628
  %i.bg = add i64 %i.ao, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ax, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_hEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRhB2J_EEhuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fhE0NCINvNvB1E_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VechE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph, !llvm.loop !621

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_hEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRhB2J_EEhuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fhE0NCINvNvB1E_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VechE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.p, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bg, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !629
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterlEIBY_IB1e_mEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondlENtNtB24_5utils4Map21fmE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecmE14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 6 uses
  %.sroa.0.0.copyload12 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 6 uses
  %.sroa.41.0.copyload9 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 6 uses
  %.sroa.52.0.copyload10 = ptrtoaddr ptr %.sroa.52.0.copyload to i64
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 5 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 10 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 6 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 5 uses
  %.sroa.67.0.copyload8 = ptrtoaddr ptr %.sroa.67.0.copyload to i64
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_mEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRmB2J_EEmuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fmE0NCINvNvB1E_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecmE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 2
  %i.c = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.d = shl i64 %i.c, 2                          ; 2 uses
  %i.e = add i64 %i.b, %.sroa.67.0.copyload8      ; 3 uses
  %2 = add i64 %i.d, %.sroa.41.0.copyload9
  %3 = sub i64 %2, %i.e
  %diff.check = icmp ugt i64 %3, -16
  %i.f = add i64 %i.d, %.sroa.52.0.copyload10
  %i.g = sub i64 %i.f, %i.e
  %diff.check11 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check11
  %i.h = shl i64 %.sroa.74.0.copyload, 2
  %i.i = add i64 %i.h, %.sroa.0.0.copyload12
  %i.j = sub i64 %i.i, %i.e
  %diff.check13 = icmp ugt i64 %i.j, -16
  %conflict.rdx14 = or i1 %conflict.rdx, %diff.check13
  br i1 %conflict.rdx14, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.k = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.l = getelementptr [4 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.m
  %i.o = add i64 %i.m, %.sroa.63.0.copyload       ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.o
  %wide.load = load <4 x i32>, ptr %i.p, align 4, !noalias !647
  %wide.load15 = load <4 x i32>, ptr %i.q, align 4, !noalias !647
  %wide.load16 = load <4 x i32>, ptr %i.n, align 4, !noalias !647
  %i.r = icmp eq <4 x i32> %wide.load16, zeroinitializer
  %i.s = select <4 x i1> %i.r, <4 x i32> %wide.load15, <4 x i32> %wide.load
  %i.t = getelementptr [4 x i8], ptr %i.l, i64 %index
  store <4 x i32> %i.s, ptr %i.t, align 4, !noalias !648
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !645

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_mEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRmB2J_EEmuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fmE0NCINvNvB1E_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecmE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.k, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.v = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.w = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.x = add i64 %.sroa.8.0.copyload, %i.w
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.z = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.z
  %i.ab = add i64 %i.z, %.sroa.63.0.copyload      ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.ab
  %i.ae = load i32, ptr %i.ac, align 4, !noalias !647, !noundef !4
  %i.af = load i32, ptr %i.ad, align 4, !noalias !647, !noundef !4
  %.val.i.i.i.i.prol = load i32, ptr %i.aa, align 4, !noalias !647, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i32 %.val.i.i.i.i.prol, 0
  %spec.select.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, i32 %i.af, i32 %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.67.0.copyload, i64 %.ph
  store i32 %spec.select.i.i.i.i.prol, ptr %i.ag, align 4, !noalias !648
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.x, %.sroa.74.0.copyload
  br i1 %i.ai, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_mEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRmB2J_EEmuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fmE0NCINvNvB1E_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecmE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.aj = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bb, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.as, %scalar.ph ] ; 3 uses
  %i.ak = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ak
  %i.am = add i64 %i.ak, %.sroa.63.0.copyload     ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.am
  %i.ap = load i32, ptr %i.an, align 4, !noalias !647, !noundef !4
  %i.aq = load i32, ptr %i.ao, align 4, !noalias !647, !noundef !4
  %.val.i.i.i.i = load i32, ptr %i.al, align 4, !noalias !647, !noundef !4
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.aq, i32 %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  store i32 %spec.select.i.i.i.i, ptr %i.ar, align 4, !noalias !648
  %i.as = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.au = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.au
  %i.ax = load i32, ptr %i.av, align 4, !noalias !647, !noundef !4
  %i.ay = load i32, ptr %i.aw, align 4, !noalias !647, !noundef !4
  %.val.i.i.i.i.1 = load i32, ptr %i.at, align 4, !noalias !647, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i32 %.val.i.i.i.i.1, 0
  %spec.select.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i32 %i.ay, i32 %i.ax
  %i.az = getelementptr [4 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  store i32 %spec.select.i.i.i.i.1, ptr %i.ba, align 4, !noalias !648
  %i.bb = add i64 %i.aj, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.as, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_mEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRmB2J_EEmuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fmE0NCINvNvB1E_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecmE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph, !llvm.loop !646

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_mEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRmB2J_EEmuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fmE0NCINvNvB1E_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecmE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bb, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !649
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterlEIBY_IB1e_sEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondlENtNtB24_5utils4Map21fsE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecsE14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 7 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_sEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRsB2J_EEsuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fsE0NCINvNvB1E_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecsE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 1
  %i.c = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.b ; 3 uses
  %i.d = add i64 %.sroa.46.0.copyload, %.sroa.8.0.copyload
  %i.e = sub i64 %i.d, %.sroa.74.0.copyload
  %i.f = shl i64 %i.e, 1
  %i.g = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.f ; 3 uses
  %i.h = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.i = shl i64 %i.h, 1                          ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.i
  %i.k = add i64 %.sroa.63.0.copyload, %.sroa.8.0.copyload
  %i.l = shl i64 %i.k, 1                          ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.l
  %i.n = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.i
  %i.o = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.l
  %i.p = shl i64 %.sroa.74.0.copyload, 2
  %i.q = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.p
  %i.r = shl i64 %.sroa.8.0.copyload, 2
  %i.s = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.r
  %bound0 = icmp ult ptr %i.c, %i.m
  %bound1 = icmp ult ptr %i.j, %i.g
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.c, %i.o
  %bound123 = icmp ult ptr %i.n, %i.g
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  %bound025 = icmp ult ptr %i.c, %i.s
  %bound126 = icmp ult ptr %i.q, %i.g
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.t = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.u = getelementptr [2 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.v
  %i.x = add i64 %i.v, %.sroa.63.0.copyload       ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.x
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.sroa.52.0.copyload, i64 %i.x
  %wide.load = load <4 x i16>, ptr %i.y, align 2, !alias.scope !672, !noalias !673
  %wide.load29 = load <4 x i16>, ptr %i.z, align 2, !alias.scope !674, !noalias !673
  %wide.load30 = load <4 x i32>, ptr %i.w, align 4, !alias.scope !675, !noalias !673
  %i.aa = icmp eq <4 x i32> %wide.load30, zeroinitializer
  %i.ab = select <4 x i1> %i.aa, <4 x i16> %wide.load29, <4 x i16> %wide.load
  %i.ac = getelementptr [2 x i8], ptr %i.u, i64 %index
  store <4 x i16> %i.ab, ptr %i.ac, align 2, !alias.scope !676, !noalias !677
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !670

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_sEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRsB2J_EEsuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fsE0NCINvNvB1E_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecsE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader

end_hunk_2
begin_hunk_3_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterlEIBY_IB1e_sEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondlENtNtB24_5utils4Map21fsE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecsE14extend_trustedBN_E0E0EB26_:bb.a
  %exitcond.not.i.i.1 = icmp eq i64 %i.bb, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_sEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRsB2J_EEsuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fsE0NCINvNvB1E_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecsE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph, !llvm.loop !671

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_sEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRsB2J_EEsuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fsE0NCINvNvB1E_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecsE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.t, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bk, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !679
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterlEIBY_IB1e_xEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondlENtNtB24_5utils4Map21fxE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecxE14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 7 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 3
  %i.c = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.b ; 3 uses
  %i.d = add i64 %.sroa.46.0.copyload, %.sroa.8.0.copyload
  %i.e = sub i64 %i.d, %.sroa.74.0.copyload
  %i.f = shl i64 %i.e, 3
  %i.g = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.f ; 3 uses
  %i.h = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.i = shl i64 %i.h, 3                          ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.i
  %i.k = add i64 %.sroa.63.0.copyload, %.sroa.8.0.copyload
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.l
  %i.n = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.i
  %i.o = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.l
  %i.p = shl i64 %.sroa.74.0.copyload, 2
  %i.q = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.p
  %i.r = shl i64 %.sroa.8.0.copyload, 2
  %i.s = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.r
  %bound0 = icmp ult ptr %i.c, %i.m
  %bound1 = icmp ult ptr %i.j, %i.g
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.c, %i.o
  %bound123 = icmp ult ptr %i.n, %i.g
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  %bound025 = icmp ult ptr %i.c, %i.s
  %bound126 = icmp ult ptr %i.q, %i.g
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -2                       ; 4 uses
  %i.t = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.v
  %i.x = add i64 %i.v, %.sroa.63.0.copyload       ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.x
  %wide.load = load <2 x i64>, ptr %i.y, align 8, !alias.scope !702, !noalias !703
  %wide.load29 = load <2 x i64>, ptr %i.z, align 8, !alias.scope !704, !noalias !703
  %wide.load30 = load <2 x i32>, ptr %i.w, align 4, !alias.scope !705, !noalias !703
  %i.aa = icmp eq <2 x i32> %wide.load30, zeroinitializer
  %i.ab = select <2 x i1> %i.aa, <2 x i64> %wide.load29, <2 x i64> %wide.load
  %i.ac = getelementptr [8 x i8], ptr %i.u, i64 %index
  store <2 x i64> %i.ab, ptr %i.ac, align 8, !alias.scope !706, !noalias !707
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !700

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.t, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.ae = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.af = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.ag = add i64 %.sroa.8.0.copyload, %i.af
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ah = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.ai = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ai
  %i.ak = add i64 %i.ai, %.sroa.63.0.copyload     ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.ak
  %i.an = load i64, ptr %i.al, align 8, !noalias !703, !noundef !4
  %i.ao = load i64, ptr %i.am, align 8, !noalias !703, !noundef !4
  %.val.i.i.i.i.prol = load i32, ptr %i.aj, align 4, !noalias !703, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i32 %.val.i.i.i.i.prol, 0
  %spec.select.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, i64 %i.ao, i64 %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.67.0.copyload, i64 %.ph
  store i64 %spec.select.i.i.i.i.prol, ptr %i.ap, align 8, !noalias !708
  %i.aq = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %i.ar = icmp eq i64 %i.ag, %.sroa.74.0.copyload
  br i1 %i.ar, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.as = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bk, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.bb, %scalar.ph ] ; 3 uses
  %i.at = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.at
  %i.av = add i64 %i.at, %.sroa.63.0.copyload     ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.av
  %i.ay = load i64, ptr %i.aw, align 8, !noalias !703, !noundef !4
  %i.az = load i64, ptr %i.ax, align 8, !noalias !703, !noundef !4
  %.val.i.i.i.i = load i32, ptr %i.au, align 4, !noalias !703, !noundef !4
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.az, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.67.0.copyload, i64 %i.as
  store i64 %spec.select.i.i.i.i, ptr %i.ba, align 8, !noalias !708
  %i.bb = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.bd = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.bd
  %i.bg = load i64, ptr %i.be, align 8, !noalias !703, !noundef !4
  %i.bh = load i64, ptr %i.bf, align 8, !noalias !703, !noundef !4
  %.val.i.i.i.i.1 = load i32, ptr %i.bc, align 4, !noalias !703, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i32 %.val.i.i.i.i.1, 0
  %spec.select.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i64 %i.bh, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %.sroa.67.0.copyload, i64 %i.as
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  store i64 %spec.select.i.i.i.i.1, ptr %i.bj, align 8, !noalias !708
  %i.bk = add i64 %i.as, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bb, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph, !llvm.loop !701

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondlENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.t, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bk, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !709
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItermEIBY_B1d_B1d_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB21_5WCondmENtNtB21_5utils4Map21fmE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3l_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4y_3VecmE14extend_trustedBN_E0E0EB23_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 6 uses
  %.sroa.0.0.copyload12 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 6 uses
  %.sroa.41.0.copyload9 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 6 uses
  %.sroa.52.0.copyload10 = ptrtoaddr ptr %.sroa.52.0.copyload to i64
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 5 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 10 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 6 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 5 uses
  %.sroa.67.0.copyload8 = ptrtoaddr ptr %.sroa.67.0.copyload to i64
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTB2C_B2C_EEmuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondmENtNtB2Z_5utils4Map21fmE0NCINvNvB1A_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VecmE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 2
  %i.c = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.d = shl i64 %i.c, 2                          ; 2 uses
  %i.e = add i64 %i.b, %.sroa.67.0.copyload8      ; 3 uses
  %2 = add i64 %i.d, %.sroa.41.0.copyload9
  %3 = sub i64 %2, %i.e
  %diff.check = icmp ugt i64 %3, -16
  %i.f = add i64 %i.d, %.sroa.52.0.copyload10
  %i.g = sub i64 %i.f, %i.e
  %diff.check11 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check11
  %i.h = shl i64 %.sroa.74.0.copyload, 2
  %i.i = add i64 %i.h, %.sroa.0.0.copyload12
  %i.j = sub i64 %i.i, %i.e
  %diff.check13 = icmp ugt i64 %i.j, -16
  %conflict.rdx14 = or i1 %conflict.rdx, %diff.check13
  br i1 %conflict.rdx14, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.k = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.l = getelementptr [4 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.m
  %i.o = add i64 %i.m, %.sroa.63.0.copyload       ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.o
  %wide.load = load <4 x i32>, ptr %i.p, align 4, !noalias !727
  %wide.load15 = load <4 x i32>, ptr %i.q, align 4, !noalias !727
  %wide.load16 = load <4 x i32>, ptr %i.n, align 4, !noalias !727
  %i.r = icmp eq <4 x i32> %wide.load16, zeroinitializer
  %i.s = select <4 x i1> %i.r, <4 x i32> %wide.load15, <4 x i32> %wide.load
  %i.t = getelementptr [4 x i8], ptr %i.l, i64 %index
  store <4 x i32> %i.s, ptr %i.t, align 4, !noalias !728
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !725

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTB2C_B2C_EEmuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondmENtNtB2Z_5utils4Map21fmE0NCINvNvB1A_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VecmE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.k, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.v = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.w = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.x = add i64 %.sroa.8.0.copyload, %i.w
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.z = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.z
  %i.ab = add i64 %i.z, %.sroa.63.0.copyload      ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.ab
  %i.ae = load i32, ptr %i.ac, align 4, !noalias !727, !noundef !4
  %i.af = load i32, ptr %i.ad, align 4, !noalias !727, !noundef !4
  %.val.i.i.i.i.prol = load i32, ptr %i.aa, align 4, !noalias !727, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i32 %.val.i.i.i.i.prol, 0
  %spec.select.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, i32 %i.af, i32 %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.67.0.copyload, i64 %.ph
  store i32 %spec.select.i.i.i.i.prol, ptr %i.ag, align 4, !noalias !728
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.x, %.sroa.74.0.copyload
  br i1 %i.ai, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTB2C_B2C_EEmuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondmENtNtB2Z_5utils4Map21fmE0NCINvNvB1A_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VecmE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.aj = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bb, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.as, %scalar.ph ] ; 3 uses
  %i.ak = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ak
  %i.am = add i64 %i.ak, %.sroa.63.0.copyload     ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.am
  %i.ap = load i32, ptr %i.an, align 4, !noalias !727, !noundef !4
  %i.aq = load i32, ptr %i.ao, align 4, !noalias !727, !noundef !4
  %.val.i.i.i.i = load i32, ptr %i.al, align 4, !noalias !727, !noundef !4
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.aq, i32 %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  store i32 %spec.select.i.i.i.i, ptr %i.ar, align 4, !noalias !728
  %i.as = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.au = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.au
  %i.ax = load i32, ptr %i.av, align 4, !noalias !727, !noundef !4
  %i.ay = load i32, ptr %i.aw, align 4, !noalias !727, !noundef !4
  %.val.i.i.i.i.1 = load i32, ptr %i.at, align 4, !noalias !727, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i32 %.val.i.i.i.i.1, 0
  %spec.select.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i32 %i.ay, i32 %i.ax
  %i.az = getelementptr [4 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  store i32 %spec.select.i.i.i.i.1, ptr %i.ba, align 4, !noalias !728
  %i.bb = add i64 %i.aj, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.as, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTB2C_B2C_EEmuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondmENtNtB2Z_5utils4Map21fmE0NCINvNvB1A_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VecmE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %scalar.ph, !llvm.loop !726

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTB2C_B2C_EEmuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondmENtNtB2Z_5utils4Map21fmE0NCINvNvB1A_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VecmE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bb, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !729
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItermEIBY_IB1e_NtCshigRrDowciq_6float86F8E4M3EB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2x_5WCondmENtNtB2x_5utils4Map21fB1O_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4callB1O_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5a_3VecB1O_E14extend_trustedBN_E0E0EB2z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 7 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_NtCshigRrDowciq_6float86F8E4M3EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRB1w_B3c_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3A_5WCondmENtNtB3A_5utils4Map21fB1w_E0NCINvNvB27_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5y_3VecB1w_E14extend_trustedINtB2Q_3MapBM_B3s_EE0E0E0EB3C_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload ; 3 uses
  %i.c = add i64 %.sroa.46.0.copyload, %.sroa.8.0.copyload
  %i.d = sub i64 %i.c, %.sroa.74.0.copyload
  %i.e = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.d ; 3 uses
  %i.f = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.f
  %i.h = add i64 %.sroa.63.0.copyload, %.sroa.8.0.copyload ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.h
  %i.j = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.f
  %i.k = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.h
  %i.l = shl i64 %.sroa.74.0.copyload, 2
  %i.m = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.l
  %i.n = shl i64 %.sroa.8.0.copyload, 2
  %i.o = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.n
  %bound0 = icmp ult ptr %i.b, %i.i
  %bound1 = icmp ult ptr %i.g, %i.e
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.b, %i.k
  %bound123 = icmp ult ptr %i.j, %i.e
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  %bound025 = icmp ult ptr %i.b, %i.o
  %bound126 = icmp ult ptr %i.m, %i.e
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.p = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.r
  %i.t = add i64 %i.r, %.sroa.63.0.copyload       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.t
  %wide.load = load <4 x i8>, ptr %i.u, align 1, !alias.scope !752, !noalias !753
  %wide.load29 = load <4 x i8>, ptr %i.v, align 1, !alias.scope !754, !noalias !753
  %wide.load30 = load <4 x i32>, ptr %i.s, align 4, !alias.scope !755, !noalias !753
  %i.w = icmp eq <4 x i32> %wide.load30, zeroinitializer
  %i.x = select <4 x i1> %i.w, <4 x i8> %wide.load29, <4 x i8> %wide.load
  %i.y = getelementptr i8, ptr %i.q, i64 %index
  store <4 x i8> %i.x, ptr %i.y, align 1, !alias.scope !756, !noalias !757
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !750

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_NtCshigRrDowciq_6float86F8E4M3EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRB1w_B3c_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3A_5WCondmENtNtB3A_5utils4Map21fB1w_E0NCINvNvB27_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5y_3VecB1w_E14extend_trustedINtB2Q_3MapBM_B3s_EE0E0E0EB3C_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.aa = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
end_hunk_3
begin_hunk_4_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItermEIBY_IB1e_NtNtCsdsILkMb8ZHY_4half8binary163f16EB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2D_5WCondmENtNtB2D_5utils4Map21fB1O_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB40_8for_each4callB1O_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5g_3VecB1O_E14extend_trustedBN_E0E0EB2F_:bb.a
  %exitcond.not.i.i.1 = icmp eq i64 %i.bb, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_NtNtCsdsILkMb8ZHY_4half8binary163f16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRB1w_B3i_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3G_5WCondmENtNtB3G_5utils4Map21fB1w_E0NCINvNvB2d_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5E_3VecB1w_E14extend_trustedINtB2W_3MapBM_B3y_EE0E0E0EB3I_.exit, label %scalar.ph, !llvm.loop !811

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_NtNtCsdsILkMb8ZHY_4half8binary163f16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRB1w_B3i_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3G_5WCondmENtNtB3G_5utils4Map21fB1w_E0NCINvNvB2d_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5E_3VecB1w_E14extend_trustedINtB2W_3MapBM_B3y_EE0E0E0EB3I_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.t, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bk, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !819
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItermEIBY_IB1e_dEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondmENtNtB24_5utils4Map21fdE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecdE14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 7 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_dEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRdB2J_EEduNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21fdE0NCINvNvB1E_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecdE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 3
  %i.c = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.b ; 3 uses
  %i.d = add i64 %.sroa.46.0.copyload, %.sroa.8.0.copyload
  %i.e = sub i64 %i.d, %.sroa.74.0.copyload
  %i.f = shl i64 %i.e, 3
  %i.g = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.f ; 3 uses
  %i.h = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.i = shl i64 %i.h, 3                          ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.i
  %i.k = add i64 %.sroa.63.0.copyload, %.sroa.8.0.copyload
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.l
  %i.n = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.i
  %i.o = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.l
  %i.p = shl i64 %.sroa.74.0.copyload, 2
  %i.q = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.p
  %i.r = shl i64 %.sroa.8.0.copyload, 2
  %i.s = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.r
  %bound0 = icmp ult ptr %i.c, %i.m
  %bound1 = icmp ult ptr %i.j, %i.g
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.c, %i.o
  %bound123 = icmp ult ptr %i.n, %i.g
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  %bound025 = icmp ult ptr %i.c, %i.s
  %bound126 = icmp ult ptr %i.q, %i.g
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -2                       ; 4 uses
  %i.t = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.v
  %i.x = add i64 %i.v, %.sroa.63.0.copyload       ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.x
  %wide.load = load <2 x double>, ptr %i.y, align 8, !alias.scope !842, !noalias !843
  %wide.load29 = load <2 x double>, ptr %i.z, align 8, !alias.scope !844, !noalias !843
  %wide.load30 = load <2 x i32>, ptr %i.w, align 4, !alias.scope !845, !noalias !843
  %i.aa = icmp eq <2 x i32> %wide.load30, zeroinitializer
  %i.ab = select <2 x i1> %i.aa, <2 x double> %wide.load29, <2 x double> %wide.load
  %i.ac = getelementptr [8 x i8], ptr %i.u, i64 %index
  store <2 x double> %i.ab, ptr %i.ac, align 8, !alias.scope !846, !noalias !847
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !840

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_dEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRdB2J_EEduNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21fdE0NCINvNvB1E_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecdE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.t, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.ae = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.af = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.ag = add i64 %.sroa.8.0.copyload, %i.af
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ah = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.ai = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ai
  %i.ak = add i64 %i.ai, %.sroa.63.0.copyload     ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.ak
  %i.an = load double, ptr %i.al, align 8, !noalias !843, !noundef !4
  %i.ao = load double, ptr %i.am, align 8, !noalias !843, !noundef !4
  %.val.i.i.i.i.prol = load i32, ptr %i.aj, align 4, !noalias !843, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i32 %.val.i.i.i.i.prol, 0
  %.sroa.0.0.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, double %i.ao, double %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.67.0.copyload, i64 %.ph
  store double %.sroa.0.0.i.i.i.i.prol, ptr %i.ap, align 8, !noalias !848
  %i.aq = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %i.ar = icmp eq i64 %i.ag, %.sroa.74.0.copyload
  br i1 %i.ar, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_dEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRdB2J_EEduNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21fdE0NCINvNvB1E_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecdE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.as = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bk, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.bb, %scalar.ph ] ; 3 uses
  %i.at = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.at
  %i.av = add i64 %i.at, %.sroa.63.0.copyload     ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.av
  %i.ay = load double, ptr %i.aw, align 8, !noalias !843, !noundef !4
  %i.az = load double, ptr %i.ax, align 8, !noalias !843, !noundef !4
  %.val.i.i.i.i = load i32, ptr %i.au, align 4, !noalias !843, !noundef !4
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, double %i.az, double %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.67.0.copyload, i64 %i.as
  store double %.sroa.0.0.i.i.i.i, ptr %i.ba, align 8, !noalias !848
  %i.bb = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.bd = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.bd
  %i.bg = load double, ptr %i.be, align 8, !noalias !843, !noundef !4
  %i.bh = load double, ptr %i.bf, align 8, !noalias !843, !noundef !4
  %.val.i.i.i.i.1 = load i32, ptr %i.bc, align 4, !noalias !843, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i32 %.val.i.i.i.i.1, 0
  %.sroa.0.0.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, double %i.bh, double %i.bg
  %i.bi = getelementptr [8 x i8], ptr %.sroa.67.0.copyload, i64 %i.as
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  store double %.sroa.0.0.i.i.i.i.1, ptr %i.bj, align 8, !noalias !848
  %i.bk = add i64 %i.as, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bb, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_dEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRdB2J_EEduNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21fdE0NCINvNvB1E_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecdE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph, !llvm.loop !841

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_dEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRdB2J_EEduNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21fdE0NCINvNvB1E_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecdE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.t, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bk, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !849
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItermEIBY_IB1e_fEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondmENtNtB24_5utils4Map21ffE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecfE14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 6 uses
  %.sroa.0.0.copyload12 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 6 uses
  %.sroa.41.0.copyload9 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 6 uses
  %.sroa.52.0.copyload10 = ptrtoaddr ptr %.sroa.52.0.copyload to i64
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 5 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 10 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 6 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 5 uses
  %.sroa.67.0.copyload8 = ptrtoaddr ptr %.sroa.67.0.copyload to i64
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_fEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRfB2J_EEfuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21ffE0NCINvNvB1E_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecfE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 2
  %i.c = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.d = shl i64 %i.c, 2                          ; 2 uses
  %i.e = add i64 %i.b, %.sroa.67.0.copyload8      ; 3 uses
  %2 = add i64 %i.d, %.sroa.41.0.copyload9
  %3 = sub i64 %2, %i.e
  %diff.check = icmp ugt i64 %3, -16
  %i.f = add i64 %i.d, %.sroa.52.0.copyload10
  %i.g = sub i64 %i.f, %i.e
  %diff.check11 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check11
  %i.h = shl i64 %.sroa.74.0.copyload, 2
  %i.i = add i64 %i.h, %.sroa.0.0.copyload12
  %i.j = sub i64 %i.i, %i.e
  %diff.check13 = icmp ugt i64 %i.j, -16
  %conflict.rdx14 = or i1 %conflict.rdx, %diff.check13
  br i1 %conflict.rdx14, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.k = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.l = getelementptr [4 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.m
  %i.o = add i64 %i.m, %.sroa.63.0.copyload       ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.o
  %wide.load = load <4 x float>, ptr %i.p, align 4, !noalias !867
  %wide.load15 = load <4 x float>, ptr %i.q, align 4, !noalias !867
  %wide.load16 = load <4 x i32>, ptr %i.n, align 4, !noalias !867
  %i.r = icmp eq <4 x i32> %wide.load16, zeroinitializer
  %i.s = select <4 x i1> %i.r, <4 x float> %wide.load15, <4 x float> %wide.load
  %i.t = getelementptr [4 x i8], ptr %i.l, i64 %index
  store <4 x float> %i.s, ptr %i.t, align 4, !noalias !868
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !865

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_fEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRfB2J_EEfuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21ffE0NCINvNvB1E_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecfE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.k, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.v = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.w = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.x = add i64 %.sroa.8.0.copyload, %i.w
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.z = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.z
  %i.ab = add i64 %i.z, %.sroa.63.0.copyload      ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.ab
  %i.ae = load float, ptr %i.ac, align 4, !noalias !867, !noundef !4
  %i.af = load float, ptr %i.ad, align 4, !noalias !867, !noundef !4
  %.val.i.i.i.i.prol = load i32, ptr %i.aa, align 4, !noalias !867, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i32 %.val.i.i.i.i.prol, 0
  %.sroa.0.0.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, float %i.af, float %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.67.0.copyload, i64 %.ph
  store float %.sroa.0.0.i.i.i.i.prol, ptr %i.ag, align 4, !noalias !868
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.x, %.sroa.74.0.copyload
  br i1 %i.ai, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_fEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRfB2J_EEfuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21ffE0NCINvNvB1E_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecfE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.aj = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bb, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.as, %scalar.ph ] ; 3 uses
  %i.ak = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ak
  %i.am = add i64 %i.ak, %.sroa.63.0.copyload     ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.am
  %i.ap = load float, ptr %i.an, align 4, !noalias !867, !noundef !4
  %i.aq = load float, ptr %i.ao, align 4, !noalias !867, !noundef !4
  %.val.i.i.i.i = load i32, ptr %i.al, align 4, !noalias !867, !noundef !4
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, float %i.aq, float %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  store float %.sroa.0.0.i.i.i.i, ptr %i.ar, align 4, !noalias !868
  %i.as = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.au = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.au
  %i.ax = load float, ptr %i.av, align 4, !noalias !867, !noundef !4
  %i.ay = load float, ptr %i.aw, align 4, !noalias !867, !noundef !4
  %.val.i.i.i.i.1 = load i32, ptr %i.at, align 4, !noalias !867, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i32 %.val.i.i.i.i.1, 0
  %.sroa.0.0.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, float %i.ay, float %i.ax
  %i.az = getelementptr [4 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  store float %.sroa.0.0.i.i.i.i.1, ptr %i.ba, align 4, !noalias !868
  %i.bb = add i64 %i.aj, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.as, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_fEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRfB2J_EEfuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21ffE0NCINvNvB1E_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecfE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph, !llvm.loop !866

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_fEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRfB2J_EEfuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21ffE0NCINvNvB1E_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecfE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bb, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !869
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItermEIBY_IB1e_hEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondmENtNtB24_5utils4Map21fhE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VechE14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 7 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_hEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRhB2J_EEhuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21fhE0NCINvNvB1E_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VechE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload ; 3 uses
  %i.c = add i64 %.sroa.46.0.copyload, %.sroa.8.0.copyload
  %i.d = sub i64 %i.c, %.sroa.74.0.copyload
  %i.e = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.d ; 3 uses
  %i.f = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.f
  %i.h = add i64 %.sroa.63.0.copyload, %.sroa.8.0.copyload ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.h
  %i.j = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.f
  %i.k = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.h
  %i.l = shl i64 %.sroa.74.0.copyload, 2
  %i.m = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.l
  %i.n = shl i64 %.sroa.8.0.copyload, 2
  %i.o = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.n
  %bound0 = icmp ult ptr %i.b, %i.i
  %bound1 = icmp ult ptr %i.g, %i.e
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.b, %i.k
  %bound123 = icmp ult ptr %i.j, %i.e
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  %bound025 = icmp ult ptr %i.b, %i.o
  %bound126 = icmp ult ptr %i.m, %i.e
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.p = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.r
  %i.t = add i64 %i.r, %.sroa.63.0.copyload       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.t
  %wide.load = load <4 x i8>, ptr %i.u, align 1, !alias.scope !892, !noalias !893
  %wide.load29 = load <4 x i8>, ptr %i.v, align 1, !alias.scope !894, !noalias !893
  %wide.load30 = load <4 x i32>, ptr %i.s, align 4, !alias.scope !895, !noalias !893
  %i.w = icmp eq <4 x i32> %wide.load30, zeroinitializer
  %i.x = select <4 x i1> %i.w, <4 x i8> %wide.load29, <4 x i8> %wide.load
  %i.y = getelementptr i8, ptr %i.q, i64 %index
  store <4 x i8> %i.x, ptr %i.y, align 1, !alias.scope !896, !noalias !897
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !890

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_hEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRhB2J_EEhuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21fhE0NCINvNvB1E_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VechE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.aa = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.ab = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.ac = add i64 %.sroa.8.0.copyload, %i.ab
  %xtraiter = and i64 %i.aa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ad = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.ae = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ae
  %i.ag = add i64 %i.ae, %.sroa.63.0.copyload     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.ag
  %i.aj = load i8, ptr %i.ah, align 1, !noalias !893, !noundef !4
  %i.ak = load i8, ptr %i.ai, align 1, !noalias !893, !noundef !4
  %.val.i.i.i.i.prol = load i32, ptr %i.af, align 4, !noalias !893, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i32 %.val.i.i.i.i.prol, 0
  %spec.select.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, i8 %i.ak, i8 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.67.0.copyload, i64 %.ph
  store i8 %spec.select.i.i.i.i.prol, ptr %i.al, align 1, !noalias !898
  %i.am = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %i.an = icmp eq i64 %i.ac, %.sroa.74.0.copyload
  br i1 %i.an, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_hEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRhB2J_EEhuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21fhE0NCINvNvB1E_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VechE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.ao = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bg, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.ax, %scalar.ph ] ; 3 uses
  %i.ap = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ap
  %i.ar = add i64 %i.ap, %.sroa.63.0.copyload     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.ar
  %i.au = load i8, ptr %i.as, align 1, !noalias !893, !noundef !4
  %i.av = load i8, ptr %i.at, align 1, !noalias !893, !noundef !4
  %.val.i.i.i.i = load i32, ptr %i.aq, align 4, !noalias !893, !noundef !4
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i8 %i.av, i8 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.67.0.copyload, i64 %i.ao
  store i8 %spec.select.i.i.i.i, ptr %i.aw, align 1, !noalias !898
  %i.ax = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.az = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.az
  %i.bc = load i8, ptr %i.ba, align 1, !noalias !893, !noundef !4
  %i.bd = load i8, ptr %i.bb, align 1, !noalias !893, !noundef !4
  %.val.i.i.i.i.1 = load i32, ptr %i.ay, align 4, !noalias !893, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i32 %.val.i.i.i.i.1, 0
  %spec.select.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i8 %i.bd, i8 %i.bc
  %i.be = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.ao
  %i.bf = getelementptr i8, ptr %i.be, i64 1
  store i8 %spec.select.i.i.i.i.1, ptr %i.bf, align 1, !noalias !898
  %i.bg = add i64 %i.ao, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ax, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_hEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRhB2J_EEhuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21fhE0NCINvNvB1E_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VechE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph, !llvm.loop !891

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_hEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRhB2J_EEhuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21fhE0NCINvNvB1E_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VechE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.p, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bg, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !899
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItermEIBY_IB1e_lEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondmENtNtB24_5utils4Map21flE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4calllNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VeclE14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 6 uses
  %.sroa.0.0.copyload12 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 6 uses
  %.sroa.41.0.copyload9 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 6 uses
  %.sroa.52.0.copyload10 = ptrtoaddr ptr %.sroa.52.0.copyload to i64
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 5 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 10 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 6 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 5 uses
  %.sroa.67.0.copyload8 = ptrtoaddr ptr %.sroa.67.0.copyload to i64
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_lEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRlB2J_EEluNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21flE0NCINvNvB1E_8for_each4calllNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VeclE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 2
  %i.c = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.d = shl i64 %i.c, 2                          ; 2 uses
  %i.e = add i64 %i.b, %.sroa.67.0.copyload8      ; 3 uses
  %2 = add i64 %i.d, %.sroa.41.0.copyload9
  %3 = sub i64 %2, %i.e
  %diff.check = icmp ugt i64 %3, -16
  %i.f = add i64 %i.d, %.sroa.52.0.copyload10
  %i.g = sub i64 %i.f, %i.e
  %diff.check11 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check11
  %i.h = shl i64 %.sroa.74.0.copyload, 2
  %i.i = add i64 %i.h, %.sroa.0.0.copyload12
  %i.j = sub i64 %i.i, %i.e
  %diff.check13 = icmp ugt i64 %i.j, -16
  %conflict.rdx14 = or i1 %conflict.rdx, %diff.check13
  br i1 %conflict.rdx14, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.k = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.l = getelementptr [4 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.m
  %i.o = add i64 %i.m, %.sroa.63.0.copyload       ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.o
  %wide.load = load <4 x i32>, ptr %i.p, align 4, !noalias !917
  %wide.load15 = load <4 x i32>, ptr %i.q, align 4, !noalias !917
  %wide.load16 = load <4 x i32>, ptr %i.n, align 4, !noalias !917
  %i.r = icmp eq <4 x i32> %wide.load16, zeroinitializer
  %i.s = select <4 x i1> %i.r, <4 x i32> %wide.load15, <4 x i32> %wide.load
  %i.t = getelementptr [4 x i8], ptr %i.l, i64 %index
  store <4 x i32> %i.s, ptr %i.t, align 4, !noalias !918
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !915

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_lEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRlB2J_EEluNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21flE0NCINvNvB1E_8for_each4calllNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VeclE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.k, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.v = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.w = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.x = add i64 %.sroa.8.0.copyload, %i.w
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.z = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.z
  %i.ab = add i64 %i.z, %.sroa.63.0.copyload      ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.ab
  %i.ae = load i32, ptr %i.ac, align 4, !noalias !917, !noundef !4
  %i.af = load i32, ptr %i.ad, align 4, !noalias !917, !noundef !4
  %.val.i.i.i.i.prol = load i32, ptr %i.aa, align 4, !noalias !917, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i32 %.val.i.i.i.i.prol, 0
  %spec.select.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, i32 %i.af, i32 %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.67.0.copyload, i64 %.ph
  store i32 %spec.select.i.i.i.i.prol, ptr %i.ag, align 4, !noalias !918
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.x, %.sroa.74.0.copyload
  br i1 %i.ai, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_lEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRlB2J_EEluNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21flE0NCINvNvB1E_8for_each4calllNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VeclE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.aj = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bb, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.as, %scalar.ph ] ; 3 uses
  %i.ak = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ak
  %i.am = add i64 %i.ak, %.sroa.63.0.copyload     ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.am
  %i.ap = load i32, ptr %i.an, align 4, !noalias !917, !noundef !4
  %i.aq = load i32, ptr %i.ao, align 4, !noalias !917, !noundef !4
  %.val.i.i.i.i = load i32, ptr %i.al, align 4, !noalias !917, !noundef !4
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.aq, i32 %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  store i32 %spec.select.i.i.i.i, ptr %i.ar, align 4, !noalias !918
  %i.as = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.au = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.au
  %i.ax = load i32, ptr %i.av, align 4, !noalias !917, !noundef !4
  %i.ay = load i32, ptr %i.aw, align 4, !noalias !917, !noundef !4
  %.val.i.i.i.i.1 = load i32, ptr %i.at, align 4, !noalias !917, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i32 %.val.i.i.i.i.1, 0
  %spec.select.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i32 %i.ay, i32 %i.ax
  %i.az = getelementptr [4 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  store i32 %spec.select.i.i.i.i.1, ptr %i.ba, align 4, !noalias !918
  %i.bb = add i64 %i.aj, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.as, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_lEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRlB2J_EEluNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21flE0NCINvNvB1E_8for_each4calllNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VeclE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph, !llvm.loop !916

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_lEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRlB2J_EEluNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21flE0NCINvNvB1E_8for_each4calllNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VeclE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bb, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !919
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItermEIBY_IB1e_sEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondmENtNtB24_5utils4Map21fsE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecsE14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 7 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_sEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRsB2J_EEsuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21fsE0NCINvNvB1E_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecsE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 1
  %i.c = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.b ; 3 uses
  %i.d = add i64 %.sroa.46.0.copyload, %.sroa.8.0.copyload
  %i.e = sub i64 %i.d, %.sroa.74.0.copyload
  %i.f = shl i64 %i.e, 1
  %i.g = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.f ; 3 uses
  %i.h = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.i = shl i64 %i.h, 1                          ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.i
  %i.k = add i64 %.sroa.63.0.copyload, %.sroa.8.0.copyload
  %i.l = shl i64 %i.k, 1                          ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.l
  %i.n = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.i
  %i.o = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.l
  %i.p = shl i64 %.sroa.74.0.copyload, 2
  %i.q = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.p
  %i.r = shl i64 %.sroa.8.0.copyload, 2
  %i.s = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.r
  %bound0 = icmp ult ptr %i.c, %i.m
  %bound1 = icmp ult ptr %i.j, %i.g
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.c, %i.o
  %bound123 = icmp ult ptr %i.n, %i.g
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  %bound025 = icmp ult ptr %i.c, %i.s
  %bound126 = icmp ult ptr %i.q, %i.g
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.t = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.u = getelementptr [2 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.v
  %i.x = add i64 %i.v, %.sroa.63.0.copyload       ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.x
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.sroa.52.0.copyload, i64 %i.x
  %wide.load = load <4 x i16>, ptr %i.y, align 2, !alias.scope !942, !noalias !943
  %wide.load29 = load <4 x i16>, ptr %i.z, align 2, !alias.scope !944, !noalias !943
  %wide.load30 = load <4 x i32>, ptr %i.w, align 4, !alias.scope !945, !noalias !943
  %i.aa = icmp eq <4 x i32> %wide.load30, zeroinitializer
  %i.ab = select <4 x i1> %i.aa, <4 x i16> %wide.load29, <4 x i16> %wide.load
  %i.ac = getelementptr [2 x i8], ptr %i.u, i64 %index
  store <4 x i16> %i.ab, ptr %i.ac, align 2, !alias.scope !946, !noalias !947
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !940

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_sEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRsB2J_EEsuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21fsE0NCINvNvB1E_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecsE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader

end_hunk_4
begin_hunk_5_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItermEIBY_IB1e_sEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondmENtNtB24_5utils4Map21fsE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecsE14extend_trustedBN_E0E0EB26_:bb.a
  %exitcond.not.i.i.1 = icmp eq i64 %i.bb, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_sEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRsB2J_EEsuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21fsE0NCINvNvB1E_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecsE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph, !llvm.loop !941

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_sEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRsB2J_EEsuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21fsE0NCINvNvB1E_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecsE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.t, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bk, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !949
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItermEIBY_IB1e_xEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondmENtNtB24_5utils4Map21fxE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecxE14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 7 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 3
  %i.c = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.b ; 3 uses
  %i.d = add i64 %.sroa.46.0.copyload, %.sroa.8.0.copyload
  %i.e = sub i64 %i.d, %.sroa.74.0.copyload
  %i.f = shl i64 %i.e, 3
  %i.g = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.f ; 3 uses
  %i.h = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.i = shl i64 %i.h, 3                          ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.i
  %i.k = add i64 %.sroa.63.0.copyload, %.sroa.8.0.copyload
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.l
  %i.n = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.i
  %i.o = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.l
  %i.p = shl i64 %.sroa.74.0.copyload, 2
  %i.q = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.p
  %i.r = shl i64 %.sroa.8.0.copyload, 2
  %i.s = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.r
  %bound0 = icmp ult ptr %i.c, %i.m
  %bound1 = icmp ult ptr %i.j, %i.g
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.c, %i.o
  %bound123 = icmp ult ptr %i.n, %i.g
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  %bound025 = icmp ult ptr %i.c, %i.s
  %bound126 = icmp ult ptr %i.q, %i.g
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -2                       ; 4 uses
  %i.t = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.v
  %i.x = add i64 %i.v, %.sroa.63.0.copyload       ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.x
  %wide.load = load <2 x i64>, ptr %i.y, align 8, !alias.scope !972, !noalias !973
  %wide.load29 = load <2 x i64>, ptr %i.z, align 8, !alias.scope !974, !noalias !973
  %wide.load30 = load <2 x i32>, ptr %i.w, align 4, !alias.scope !975, !noalias !973
  %i.aa = icmp eq <2 x i32> %wide.load30, zeroinitializer
  %i.ab = select <2 x i1> %i.aa, <2 x i64> %wide.load29, <2 x i64> %wide.load
  %i.ac = getelementptr [8 x i8], ptr %i.u, i64 %index
  store <2 x i64> %i.ab, ptr %i.ac, align 8, !alias.scope !976, !noalias !977
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !970

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.t, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.ae = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.af = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.ag = add i64 %.sroa.8.0.copyload, %i.af
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ah = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.ai = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ai
  %i.ak = add i64 %i.ai, %.sroa.63.0.copyload     ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.ak
  %i.an = load i64, ptr %i.al, align 8, !noalias !973, !noundef !4
  %i.ao = load i64, ptr %i.am, align 8, !noalias !973, !noundef !4
  %.val.i.i.i.i.prol = load i32, ptr %i.aj, align 4, !noalias !973, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i32 %.val.i.i.i.i.prol, 0
  %spec.select.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, i64 %i.ao, i64 %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.67.0.copyload, i64 %.ph
  store i64 %spec.select.i.i.i.i.prol, ptr %i.ap, align 8, !noalias !978
  %i.aq = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %i.ar = icmp eq i64 %i.ag, %.sroa.74.0.copyload
  br i1 %i.ar, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.as = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bk, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.bb, %scalar.ph ] ; 3 uses
  %i.at = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.at
  %i.av = add i64 %i.at, %.sroa.63.0.copyload     ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.av
  %i.ay = load i64, ptr %i.aw, align 8, !noalias !973, !noundef !4
  %i.az = load i64, ptr %i.ax, align 8, !noalias !973, !noundef !4
  %.val.i.i.i.i = load i32, ptr %i.au, align 4, !noalias !973, !noundef !4
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.az, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.67.0.copyload, i64 %i.as
  store i64 %spec.select.i.i.i.i, ptr %i.ba, align 8, !noalias !978
  %i.bb = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.bd = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.bd
  %i.bg = load i64, ptr %i.be, align 8, !noalias !973, !noundef !4
  %i.bh = load i64, ptr %i.bf, align 8, !noalias !973, !noundef !4
  %.val.i.i.i.i.1 = load i32, ptr %i.bc, align 4, !noalias !973, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i32 %.val.i.i.i.i.1, 0
  %spec.select.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i64 %i.bh, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %.sroa.67.0.copyload, i64 %i.as
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  store i64 %spec.select.i.i.i.i.1, ptr %i.bj, align 8, !noalias !978
  %i.bk = add i64 %i.as, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bb, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph, !llvm.loop !971

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondmENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.t, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bk, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !979
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItersEIBY_B1d_B1d_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB21_5WCondsENtNtB21_5utils4Map21fsE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3l_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4y_3VecsE14extend_trustedBN_E0E0EB23_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 6 uses
  %.sroa.0.0.copyload12 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 6 uses
  %.sroa.41.0.copyload9 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 6 uses
  %.sroa.52.0.copyload10 = ptrtoaddr ptr %.sroa.52.0.copyload to i64
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 5 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 10 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 6 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 5 uses
  %.sroa.67.0.copyload8 = ptrtoaddr ptr %.sroa.67.0.copyload to i64
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTB2C_B2C_EEsuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondsENtNtB2Z_5utils4Map21fsE0NCINvNvB1A_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VecsE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 1
  %i.c = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.d = shl i64 %i.c, 1                          ; 2 uses
  %i.e = add i64 %i.b, %.sroa.67.0.copyload8      ; 3 uses
  %2 = add i64 %i.d, %.sroa.41.0.copyload9
  %3 = sub i64 %2, %i.e
  %diff.check = icmp ugt i64 %3, -16
  %i.f = add i64 %i.d, %.sroa.52.0.copyload10
  %i.g = sub i64 %i.f, %i.e
  %diff.check11 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check11
  %i.h = shl i64 %.sroa.74.0.copyload, 1
  %i.i = add i64 %i.h, %.sroa.0.0.copyload12
  %i.j = sub i64 %i.i, %i.e
  %diff.check13 = icmp ugt i64 %i.j, -16
  %conflict.rdx14 = or i1 %conflict.rdx, %diff.check13
  br i1 %conflict.rdx14, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -8                       ; 4 uses
  %i.k = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.l = getelementptr [2 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.m
  %i.o = add i64 %i.m, %.sroa.63.0.copyload       ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.o
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.sroa.52.0.copyload, i64 %i.o
  %wide.load = load <8 x i16>, ptr %i.p, align 2, !noalias !997
  %wide.load15 = load <8 x i16>, ptr %i.q, align 2, !noalias !997
  %wide.load16 = load <8 x i16>, ptr %i.n, align 2, !noalias !997
  %i.r = icmp eq <8 x i16> %wide.load16, zeroinitializer
  %i.s = select <8 x i1> %i.r, <8 x i16> %wide.load15, <8 x i16> %wide.load
  %i.t = getelementptr [2 x i8], ptr %i.l, i64 %index
  store <8 x i16> %i.s, ptr %i.t, align 2, !noalias !998
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !995

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTB2C_B2C_EEsuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondsENtNtB2Z_5utils4Map21fsE0NCINvNvB1A_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VecsE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.k, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.v = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.w = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.x = add i64 %.sroa.8.0.copyload, %i.w
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.z = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.z
  %i.ab = add i64 %i.z, %.sroa.63.0.copyload      ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.sroa.52.0.copyload, i64 %i.ab
  %i.ae = load i16, ptr %i.ac, align 2, !noalias !997, !noundef !4
  %i.af = load i16, ptr %i.ad, align 2, !noalias !997, !noundef !4
  %.val.i.i.i.i.prol = load i16, ptr %i.aa, align 2, !noalias !997, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i16 %.val.i.i.i.i.prol, 0
  %spec.select.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, i16 %i.af, i16 %i.ae
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.67.0.copyload, i64 %.ph
  store i16 %spec.select.i.i.i.i.prol, ptr %i.ag, align 2, !noalias !998
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.x, %.sroa.74.0.copyload
  br i1 %i.ai, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTB2C_B2C_EEsuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondsENtNtB2Z_5utils4Map21fsE0NCINvNvB1A_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VecsE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.aj = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bb, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.as, %scalar.ph ] ; 3 uses
  %i.ak = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.ak
  %i.am = add i64 %i.ak, %.sroa.63.0.copyload     ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.am
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.sroa.52.0.copyload, i64 %i.am
  %i.ap = load i16, ptr %i.an, align 2, !noalias !997, !noundef !4
  %i.aq = load i16, ptr %i.ao, align 2, !noalias !997, !noundef !4
  %.val.i.i.i.i = load i16, ptr %i.al, align 2, !noalias !997, !noundef !4
  %.not.i.i.i.i = icmp eq i16 %.val.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i16 %i.aq, i16 %i.ap
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  store i16 %spec.select.i.i.i.i, ptr %i.ar, align 2, !noalias !998
  %i.as = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.au = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.au
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.52.0.copyload, i64 %i.au
  %i.ax = load i16, ptr %i.av, align 2, !noalias !997, !noundef !4
  %i.ay = load i16, ptr %i.aw, align 2, !noalias !997, !noundef !4
  %.val.i.i.i.i.1 = load i16, ptr %i.at, align 2, !noalias !997, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i16 %.val.i.i.i.i.1, 0
  %spec.select.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i16 %i.ay, i16 %i.ax
  %i.az = getelementptr [2 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  %i.ba = getelementptr i8, ptr %i.az, i64 2
  store i16 %spec.select.i.i.i.i.1, ptr %i.ba, align 2, !noalias !998
  %i.bb = add i64 %i.aj, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.as, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTB2C_B2C_EEsuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondsENtNtB2Z_5utils4Map21fsE0NCINvNvB1A_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VecsE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %scalar.ph, !llvm.loop !996

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTB2C_B2C_EEsuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondsENtNtB2Z_5utils4Map21fsE0NCINvNvB1A_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VecsE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bb, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !999
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItersEIBY_IB1e_NtCshigRrDowciq_6float86F8E4M3EB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2x_5WCondsENtNtB2x_5utils4Map21fB1O_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4callB1O_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5a_3VecB1O_E14extend_trustedBN_E0E0EB2z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 7 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_NtCshigRrDowciq_6float86F8E4M3EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRB1w_B3c_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3A_5WCondsENtNtB3A_5utils4Map21fB1w_E0NCINvNvB27_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5y_3VecB1w_E14extend_trustedINtB2Q_3MapBM_B3s_EE0E0E0EB3C_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload ; 3 uses
  %i.c = add i64 %.sroa.46.0.copyload, %.sroa.8.0.copyload
  %i.d = sub i64 %i.c, %.sroa.74.0.copyload
  %i.e = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.d ; 3 uses
  %i.f = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.f
  %i.h = add i64 %.sroa.63.0.copyload, %.sroa.8.0.copyload ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.h
  %i.j = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.f
  %i.k = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.h
  %i.l = shl i64 %.sroa.74.0.copyload, 1
  %i.m = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.l
  %i.n = shl i64 %.sroa.8.0.copyload, 1
  %i.o = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.n
  %bound0 = icmp ult ptr %i.b, %i.i
  %bound1 = icmp ult ptr %i.g, %i.e
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.b, %i.k
  %bound123 = icmp ult ptr %i.j, %i.e
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  %bound025 = icmp ult ptr %i.b, %i.o
  %bound126 = icmp ult ptr %i.m, %i.e
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -8                       ; 4 uses
  %i.p = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.r
  %i.t = add i64 %i.r, %.sroa.63.0.copyload       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.t
  %wide.load = load <8 x i8>, ptr %i.u, align 1, !alias.scope !1022, !noalias !1023
  %wide.load29 = load <8 x i8>, ptr %i.v, align 1, !alias.scope !1024, !noalias !1023
  %wide.load30 = load <8 x i16>, ptr %i.s, align 2, !alias.scope !1025, !noalias !1023
  %i.w = icmp eq <8 x i16> %wide.load30, zeroinitializer
  %i.x = select <8 x i1> %i.w, <8 x i8> %wide.load29, <8 x i8> %wide.load
  %i.y = getelementptr i8, ptr %i.q, i64 %index
  store <8 x i8> %i.x, ptr %i.y, align 1, !alias.scope !1026, !noalias !1027
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !1020

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_NtCshigRrDowciq_6float86F8E4M3EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRB1w_B3c_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3A_5WCondsENtNtB3A_5utils4Map21fB1w_E0NCINvNvB27_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5y_3VecB1w_E14extend_trustedINtB2Q_3MapBM_B3s_EE0E0E0EB3C_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.aa = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.ab = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.ac = add i64 %.sroa.8.0.copyload, %i.ab
  %xtraiter = and i64 %i.aa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ad = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.ae = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.ae
  %i.ag = add i64 %i.ae, %.sroa.63.0.copyload     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.ag
  %i.aj = load i8, ptr %i.ah, align 1, !noalias !1023, !noundef !4
  %i.ak = load i8, ptr %i.ai, align 1, !noalias !1023, !noundef !4
  %.val.i.i.i.i.prol = load i16, ptr %i.af, align 2, !noalias !1023, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i16 %.val.i.i.i.i.prol, 0
  %spec.select.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, i8 %i.ak, i8 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.67.0.copyload, i64 %.ph
  store i8 %spec.select.i.i.i.i.prol, ptr %i.al, align 1, !noalias !1028
  %i.am = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %i.an = icmp eq i64 %i.ac, %.sroa.74.0.copyload
  br i1 %i.an, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_NtCshigRrDowciq_6float86F8E4M3EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRB1w_B3c_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3A_5WCondsENtNtB3A_5utils4Map21fB1w_E0NCINvNvB27_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5y_3VecB1w_E14extend_trustedINtB2Q_3MapBM_B3s_EE0E0E0EB3C_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.ao = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bg, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.ax, %scalar.ph ] ; 3 uses
  %i.ap = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.ap
  %i.ar = add i64 %i.ap, %.sroa.63.0.copyload     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.ar
  %i.au = load i8, ptr %i.as, align 1, !noalias !1023, !noundef !4
  %i.av = load i8, ptr %i.at, align 1, !noalias !1023, !noundef !4
  %.val.i.i.i.i = load i16, ptr %i.aq, align 2, !noalias !1023, !noundef !4
  %.not.i.i.i.i = icmp eq i16 %.val.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i8 %i.av, i8 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.67.0.copyload, i64 %i.ao
  store i8 %spec.select.i.i.i.i, ptr %i.aw, align 1, !noalias !1028
  %i.ax = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.az = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.az
  %i.bc = load i8, ptr %i.ba, align 1, !noalias !1023, !noundef !4
  %i.bd = load i8, ptr %i.bb, align 1, !noalias !1023, !noundef !4
  %.val.i.i.i.i.1 = load i16, ptr %i.ay, align 2, !noalias !1023, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i16 %.val.i.i.i.i.1, 0
  %spec.select.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i8 %i.bd, i8 %i.bc
  %i.be = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.ao
  %i.bf = getelementptr i8, ptr %i.be, i64 1
  store i8 %spec.select.i.i.i.i.1, ptr %i.bf, align 1, !noalias !1028
  %i.bg = add i64 %i.ao, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ax, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_NtCshigRrDowciq_6float86F8E4M3EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRB1w_B3c_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3A_5WCondsENtNtB3A_5utils4Map21fB1w_E0NCINvNvB27_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5y_3VecB1w_E14extend_trustedINtB2Q_3MapBM_B3s_EE0E0E0EB3C_.exit, label %scalar.ph, !llvm.loop !1021

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_NtCshigRrDowciq_6float86F8E4M3EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRB1w_B3c_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3A_5WCondsENtNtB3A_5utils4Map21fB1w_E0NCINvNvB27_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5y_3VecB1w_E14extend_trustedINtB2Q_3MapBM_B3s_EE0E0E0EB3C_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.p, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bg, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !1029
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItersEIBY_IB1e_NtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2C_5WCondsENtNtB2C_5utils4Map21fB1O_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Z_8for_each4callB1O_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5f_3VecB1O_E14extend_trustedBN_E0E0EB2E_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 6 uses
  %.sroa.0.0.copyload12 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 6 uses
  %.sroa.41.0.copyload9 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 6 uses
  %.sroa.52.0.copyload10 = ptrtoaddr ptr %.sroa.52.0.copyload to i64
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 5 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 10 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 6 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 5 uses
  %.sroa.67.0.copyload8 = ptrtoaddr ptr %.sroa.67.0.copyload to i64
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_NtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRB1w_B3h_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3F_5WCondsENtNtB3F_5utils4Map21fB1w_E0NCINvNvB2c_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5D_3VecB1w_E14extend_trustedINtB2V_3MapBM_B3x_EE0E0E0EB3H_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 1
  %i.c = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.d = shl i64 %i.c, 1                          ; 2 uses
  %i.e = add i64 %i.b, %.sroa.67.0.copyload8      ; 3 uses
  %2 = add i64 %i.d, %.sroa.41.0.copyload9
  %3 = sub i64 %2, %i.e
  %diff.check = icmp ugt i64 %3, -16
  %i.f = add i64 %i.d, %.sroa.52.0.copyload10
  %i.g = sub i64 %i.f, %i.e
  %diff.check11 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check11
  %i.h = shl i64 %.sroa.74.0.copyload, 1
  %i.i = add i64 %i.h, %.sroa.0.0.copyload12
  %i.j = sub i64 %i.i, %i.e
  %diff.check13 = icmp ugt i64 %i.j, -16
  %conflict.rdx14 = or i1 %conflict.rdx, %diff.check13
  br i1 %conflict.rdx14, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -8                       ; 4 uses
  %i.k = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.l = getelementptr [2 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.m
  %i.o = add i64 %i.m, %.sroa.63.0.copyload       ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.o
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.sroa.52.0.copyload, i64 %i.o
  %wide.load = load <8 x i16>, ptr %i.p, align 2, !noalias !1047
  %wide.load15 = load <8 x i16>, ptr %i.q, align 2, !noalias !1047
  %wide.load16 = load <8 x i16>, ptr %i.n, align 2, !noalias !1047
  %i.r = icmp eq <8 x i16> %wide.load16, zeroinitializer
  %i.s = select <8 x i1> %i.r, <8 x i16> %wide.load15, <8 x i16> %wide.load
  %i.t = getelementptr [2 x i8], ptr %i.l, i64 %index
  store <8 x i16> %i.s, ptr %i.t, align 2, !noalias !1048
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !1045

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_NtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRB1w_B3h_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3F_5WCondsENtNtB3F_5utils4Map21fB1w_E0NCINvNvB2c_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5D_3VecB1w_E14extend_trustedINtB2V_3MapBM_B3x_EE0E0E0EB3H_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.k, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.v = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.w = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.x = add i64 %.sroa.8.0.copyload, %i.w
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.z = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.z
  %i.ab = add i64 %i.z, %.sroa.63.0.copyload      ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.sroa.52.0.copyload, i64 %i.ab
  %i.ae = load i16, ptr %i.ac, align 2, !noalias !1047, !noundef !4
  %i.af = load i16, ptr %i.ad, align 2, !noalias !1047, !noundef !4
  %.val.i.i.i.i.prol = load i16, ptr %i.aa, align 2, !noalias !1047, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i16 %.val.i.i.i.i.prol, 0
  %spec.select.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, i16 %i.af, i16 %i.ae
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.67.0.copyload, i64 %.ph
  store i16 %spec.select.i.i.i.i.prol, ptr %i.ag, align 2, !noalias !1048
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.x, %.sroa.74.0.copyload
  br i1 %i.ai, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_NtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRB1w_B3h_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3F_5WCondsENtNtB3F_5utils4Map21fB1w_E0NCINvNvB2c_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5D_3VecB1w_E14extend_trustedINtB2V_3MapBM_B3x_EE0E0E0EB3H_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.aj = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bb, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.as, %scalar.ph ] ; 3 uses
  %i.ak = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.ak
  %i.am = add i64 %i.ak, %.sroa.63.0.copyload     ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.am
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.sroa.52.0.copyload, i64 %i.am
  %i.ap = load i16, ptr %i.an, align 2, !noalias !1047, !noundef !4
  %i.aq = load i16, ptr %i.ao, align 2, !noalias !1047, !noundef !4
  %.val.i.i.i.i = load i16, ptr %i.al, align 2, !noalias !1047, !noundef !4
  %.not.i.i.i.i = icmp eq i16 %.val.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i16 %i.aq, i16 %i.ap
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  store i16 %spec.select.i.i.i.i, ptr %i.ar, align 2, !noalias !1048
  %i.as = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.au = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.au
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.52.0.copyload, i64 %i.au
  %i.ax = load i16, ptr %i.av, align 2, !noalias !1047, !noundef !4
  %i.ay = load i16, ptr %i.aw, align 2, !noalias !1047, !noundef !4
  %.val.i.i.i.i.1 = load i16, ptr %i.at, align 2, !noalias !1047, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i16 %.val.i.i.i.i.1, 0
  %spec.select.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i16 %i.ay, i16 %i.ax
  %i.az = getelementptr [2 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  %i.ba = getelementptr i8, ptr %i.az, i64 2
  store i16 %spec.select.i.i.i.i.1, ptr %i.ba, align 2, !noalias !1048
  %i.bb = add i64 %i.aj, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.as, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_NtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRB1w_B3h_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3F_5WCondsENtNtB3F_5utils4Map21fB1w_E0NCINvNvB2c_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5D_3VecB1w_E14extend_trustedINtB2V_3MapBM_B3x_EE0E0E0EB3H_.exit, label %scalar.ph, !llvm.loop !1046

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_NtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRB1w_B3h_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3F_5WCondsENtNtB3F_5utils4Map21fB1w_E0NCINvNvB2c_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5D_3VecB1w_E14extend_trustedINtB2V_3MapBM_B3x_EE0E0E0EB3H_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bb, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !1049
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItersEIBY_IB1e_NtNtCsdsILkMb8ZHY_4half8binary163f16EB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2D_5WCondsENtNtB2D_5utils4Map21fB1O_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB40_8for_each4callB1O_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5g_3VecB1O_E14extend_trustedBN_E0E0EB2F_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 6 uses
  %.sroa.0.0.copyload12 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 6 uses
  %.sroa.41.0.copyload9 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 6 uses
  %.sroa.52.0.copyload10 = ptrtoaddr ptr %.sroa.52.0.copyload to i64
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 5 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 10 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 6 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 5 uses
  %.sroa.67.0.copyload8 = ptrtoaddr ptr %.sroa.67.0.copyload to i64
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_NtNtCsdsILkMb8ZHY_4half8binary163f16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRB1w_B3i_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3G_5WCondsENtNtB3G_5utils4Map21fB1w_E0NCINvNvB2d_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5E_3VecB1w_E14extend_trustedINtB2W_3MapBM_B3y_EE0E0E0EB3I_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 1
  %i.c = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.d = shl i64 %i.c, 1                          ; 2 uses
  %i.e = add i64 %i.b, %.sroa.67.0.copyload8      ; 3 uses
  %2 = add i64 %i.d, %.sroa.41.0.copyload9
  %3 = sub i64 %2, %i.e
  %diff.check = icmp ugt i64 %3, -16
  %i.f = add i64 %i.d, %.sroa.52.0.copyload10
  %i.g = sub i64 %i.f, %i.e
  %diff.check11 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check11
  %i.h = shl i64 %.sroa.74.0.copyload, 1
  %i.i = add i64 %i.h, %.sroa.0.0.copyload12
  %i.j = sub i64 %i.i, %i.e
  %diff.check13 = icmp ugt i64 %i.j, -16
  %conflict.rdx14 = or i1 %conflict.rdx, %diff.check13
  br i1 %conflict.rdx14, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -8                       ; 4 uses
  %i.k = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.l = getelementptr [2 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.m
  %i.o = add i64 %i.m, %.sroa.63.0.copyload       ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.o
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.sroa.52.0.copyload, i64 %i.o
  %wide.load = load <8 x i16>, ptr %i.p, align 2, !noalias !1067
  %wide.load15 = load <8 x i16>, ptr %i.q, align 2, !noalias !1067
  %wide.load16 = load <8 x i16>, ptr %i.n, align 2, !noalias !1067
  %i.r = icmp eq <8 x i16> %wide.load16, zeroinitializer
  %i.s = select <8 x i1> %i.r, <8 x i16> %wide.load15, <8 x i16> %wide.load
  %i.t = getelementptr [2 x i8], ptr %i.l, i64 %index
  store <8 x i16> %i.s, ptr %i.t, align 2, !noalias !1068
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !1065

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_NtNtCsdsILkMb8ZHY_4half8binary163f16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRB1w_B3i_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3G_5WCondsENtNtB3G_5utils4Map21fB1w_E0NCINvNvB2d_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5E_3VecB1w_E14extend_trustedINtB2W_3MapBM_B3y_EE0E0E0EB3I_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.k, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.v = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.w = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.x = add i64 %.sroa.8.0.copyload, %i.w
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.z = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.z
  %i.ab = add i64 %i.z, %.sroa.63.0.copyload      ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.sroa.52.0.copyload, i64 %i.ab
  %i.ae = load i16, ptr %i.ac, align 2, !noalias !1067, !noundef !4
  %i.af = load i16, ptr %i.ad, align 2, !noalias !1067, !noundef !4
  %.val.i.i.i.i.prol = load i16, ptr %i.aa, align 2, !noalias !1067, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i16 %.val.i.i.i.i.prol, 0
  %spec.select.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, i16 %i.af, i16 %i.ae
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.67.0.copyload, i64 %.ph
  store i16 %spec.select.i.i.i.i.prol, ptr %i.ag, align 2, !noalias !1068
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.x, %.sroa.74.0.copyload
  br i1 %i.ai, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_NtNtCsdsILkMb8ZHY_4half8binary163f16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRB1w_B3i_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3G_5WCondsENtNtB3G_5utils4Map21fB1w_E0NCINvNvB2d_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5E_3VecB1w_E14extend_trustedINtB2W_3MapBM_B3y_EE0E0E0EB3I_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.aj = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bb, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.as, %scalar.ph ] ; 3 uses
  %i.ak = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.ak
  %i.am = add i64 %i.ak, %.sroa.63.0.copyload     ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.am
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.sroa.52.0.copyload, i64 %i.am
  %i.ap = load i16, ptr %i.an, align 2, !noalias !1067, !noundef !4
  %i.aq = load i16, ptr %i.ao, align 2, !noalias !1067, !noundef !4
  %.val.i.i.i.i = load i16, ptr %i.al, align 2, !noalias !1067, !noundef !4
  %.not.i.i.i.i = icmp eq i16 %.val.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i16 %i.aq, i16 %i.ap
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  store i16 %spec.select.i.i.i.i, ptr %i.ar, align 2, !noalias !1068
  %i.as = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.au = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.au
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.52.0.copyload, i64 %i.au
  %i.ax = load i16, ptr %i.av, align 2, !noalias !1067, !noundef !4
  %i.ay = load i16, ptr %i.aw, align 2, !noalias !1067, !noundef !4
  %.val.i.i.i.i.1 = load i16, ptr %i.at, align 2, !noalias !1067, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i16 %.val.i.i.i.i.1, 0
  %spec.select.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i16 %i.ay, i16 %i.ax
  %i.az = getelementptr [2 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  %i.ba = getelementptr i8, ptr %i.az, i64 2
  store i16 %spec.select.i.i.i.i.1, ptr %i.ba, align 2, !noalias !1068
  %i.bb = add i64 %i.aj, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.as, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_NtNtCsdsILkMb8ZHY_4half8binary163f16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRB1w_B3i_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3G_5WCondsENtNtB3G_5utils4Map21fB1w_E0NCINvNvB2d_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5E_3VecB1w_E14extend_trustedINtB2W_3MapBM_B3y_EE0E0E0EB3I_.exit, label %scalar.ph, !llvm.loop !1066

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_NtNtCsdsILkMb8ZHY_4half8binary163f16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRB1w_B3i_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3G_5WCondsENtNtB3G_5utils4Map21fB1w_E0NCINvNvB2d_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5E_3VecB1w_E14extend_trustedINtB2W_3MapBM_B3y_EE0E0E0EB3I_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bb, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !1069
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItersEIBY_IB1e_dEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondsENtNtB24_5utils4Map21fdE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecdE14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 7 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_dEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRdB2J_EEduNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondsENtNtB31_5utils4Map21fdE0NCINvNvB1E_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecdE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 3
  %i.c = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.b ; 3 uses
  %i.d = add i64 %.sroa.46.0.copyload, %.sroa.8.0.copyload
  %i.e = sub i64 %i.d, %.sroa.74.0.copyload
  %i.f = shl i64 %i.e, 3
  %i.g = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.f ; 3 uses
  %i.h = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.i = shl i64 %i.h, 3                          ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.i
  %i.k = add i64 %.sroa.63.0.copyload, %.sroa.8.0.copyload
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.l
  %i.n = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.i
  %i.o = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.l
  %i.p = shl i64 %.sroa.74.0.copyload, 1
  %i.q = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.p
  %i.r = shl i64 %.sroa.8.0.copyload, 1
  %i.s = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.r
  %bound0 = icmp ult ptr %i.c, %i.m
  %bound1 = icmp ult ptr %i.j, %i.g
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.c, %i.o
  %bound123 = icmp ult ptr %i.n, %i.g
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  %bound025 = icmp ult ptr %i.c, %i.s
  %bound126 = icmp ult ptr %i.q, %i.g
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -2                       ; 4 uses
  %i.t = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.v
  %i.x = add i64 %i.v, %.sroa.63.0.copyload       ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.x
  %wide.load = load <2 x double>, ptr %i.y, align 8, !alias.scope !1092, !noalias !1093
  %wide.load29 = load <2 x double>, ptr %i.z, align 8, !alias.scope !1094, !noalias !1093
  %wide.load30 = load <2 x i16>, ptr %i.w, align 2, !alias.scope !1095, !noalias !1093
  %i.aa = icmp eq <2 x i16> %wide.load30, zeroinitializer
  %i.ab = select <2 x i1> %i.aa, <2 x double> %wide.load29, <2 x double> %wide.load
  %i.ac = getelementptr [8 x i8], ptr %i.u, i64 %index
  store <2 x double> %i.ab, ptr %i.ac, align 8, !alias.scope !1096, !noalias !1097
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1090

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_dEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRdB2J_EEduNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondsENtNtB31_5utils4Map21fdE0NCINvNvB1E_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecdE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader

end_hunk_5
begin_hunk_6_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItersEIBY_IB1e_mEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondsENtNtB24_5utils4Map21fmE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecmE14extend_trustedBN_E0E0EB26_:bb.a
  %exitcond.not.i.i.1 = icmp eq i64 %i.bb, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_mEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRmB2J_EEmuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondsENtNtB31_5utils4Map21fmE0NCINvNvB1E_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecmE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph, !llvm.loop !1211

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_mEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRmB2J_EEmuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondsENtNtB31_5utils4Map21fmE0NCINvNvB1E_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecmE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.t, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bk, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !1219
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItersEIBY_IB1e_xEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondsENtNtB24_5utils4Map21fxE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecxE14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 7 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondsENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 3
  %i.c = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.b ; 3 uses
  %i.d = add i64 %.sroa.46.0.copyload, %.sroa.8.0.copyload
  %i.e = sub i64 %i.d, %.sroa.74.0.copyload
  %i.f = shl i64 %i.e, 3
  %i.g = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.f ; 3 uses
  %i.h = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.i = shl i64 %i.h, 3                          ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.i
  %i.k = add i64 %.sroa.63.0.copyload, %.sroa.8.0.copyload
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.l
  %i.n = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.i
  %i.o = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.l
  %i.p = shl i64 %.sroa.74.0.copyload, 1
  %i.q = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.p
  %i.r = shl i64 %.sroa.8.0.copyload, 1
  %i.s = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.r
  %bound0 = icmp ult ptr %i.c, %i.m
  %bound1 = icmp ult ptr %i.j, %i.g
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.c, %i.o
  %bound123 = icmp ult ptr %i.n, %i.g
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  %bound025 = icmp ult ptr %i.c, %i.s
  %bound126 = icmp ult ptr %i.q, %i.g
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -2                       ; 4 uses
  %i.t = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.v
  %i.x = add i64 %i.v, %.sroa.63.0.copyload       ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.x
  %wide.load = load <2 x i64>, ptr %i.y, align 8, !alias.scope !1242, !noalias !1243
  %wide.load29 = load <2 x i64>, ptr %i.z, align 8, !alias.scope !1244, !noalias !1243
  %wide.load30 = load <2 x i16>, ptr %i.w, align 2, !alias.scope !1245, !noalias !1243
  %i.aa = icmp eq <2 x i16> %wide.load30, zeroinitializer
  %i.ab = select <2 x i1> %i.aa, <2 x i64> %wide.load29, <2 x i64> %wide.load
  %i.ac = getelementptr [8 x i8], ptr %i.u, i64 %index
  store <2 x i64> %i.ab, ptr %i.ac, align 8, !alias.scope !1246, !noalias !1247
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondsENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.t, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.ae = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.af = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.ag = add i64 %.sroa.8.0.copyload, %i.af
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ah = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.ai = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.ai
  %i.ak = add i64 %i.ai, %.sroa.63.0.copyload     ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.ak
  %i.an = load i64, ptr %i.al, align 8, !noalias !1243, !noundef !4
  %i.ao = load i64, ptr %i.am, align 8, !noalias !1243, !noundef !4
  %.val.i.i.i.i.prol = load i16, ptr %i.aj, align 2, !noalias !1243, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i16 %.val.i.i.i.i.prol, 0
  %spec.select.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, i64 %i.ao, i64 %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.67.0.copyload, i64 %.ph
  store i64 %spec.select.i.i.i.i.prol, ptr %i.ap, align 8, !noalias !1248
  %i.aq = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %i.ar = icmp eq i64 %i.ag, %.sroa.74.0.copyload
  br i1 %i.ar, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondsENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.as = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bk, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.bb, %scalar.ph ] ; 3 uses
  %i.at = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.at
  %i.av = add i64 %i.at, %.sroa.63.0.copyload     ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.av
  %i.ay = load i64, ptr %i.aw, align 8, !noalias !1243, !noundef !4
  %i.az = load i64, ptr %i.ax, align 8, !noalias !1243, !noundef !4
  %.val.i.i.i.i = load i16, ptr %i.au, align 2, !noalias !1243, !noundef !4
  %.not.i.i.i.i = icmp eq i16 %.val.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.az, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.67.0.copyload, i64 %i.as
  store i64 %spec.select.i.i.i.i, ptr %i.ba, align 8, !noalias !1248
  %i.bb = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.bd = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.bd
  %i.bg = load i64, ptr %i.be, align 8, !noalias !1243, !noundef !4
  %i.bh = load i64, ptr %i.bf, align 8, !noalias !1243, !noundef !4
  %.val.i.i.i.i.1 = load i16, ptr %i.bc, align 2, !noalias !1243, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i16 %.val.i.i.i.i.1, 0
  %spec.select.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i64 %i.bh, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %.sroa.67.0.copyload, i64 %i.as
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  store i64 %spec.select.i.i.i.i.1, ptr %i.bj, align 8, !noalias !1248
  %i.bk = add i64 %i.as, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bb, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondsENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph, !llvm.loop !1241

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEIBN_IBX_xEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRsTRxB2J_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondsENtNtB31_5utils4Map21fxE0NCINvNvB1E_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecxE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.t, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bk, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !1249
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterxEIBY_B1d_B1d_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB21_5WCondxENtNtB21_5utils4Map21fxE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3l_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4y_3VecxE14extend_trustedBN_E0E0EB23_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 6 uses
  %.sroa.0.0.copyload12 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 6 uses
  %.sroa.41.0.copyload9 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 6 uses
  %.sroa.52.0.copyload10 = ptrtoaddr ptr %.sroa.52.0.copyload to i64
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 5 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 10 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 6 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 5 uses
  %.sroa.67.0.copyload8 = ptrtoaddr ptr %.sroa.67.0.copyload to i64
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTB2C_B2C_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondxENtNtB2Z_5utils4Map21fxE0NCINvNvB1A_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VecxE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 3
  %i.c = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.d = shl i64 %i.c, 3                          ; 2 uses
  %i.e = add i64 %i.b, %.sroa.67.0.copyload8      ; 3 uses
  %2 = add i64 %i.d, %.sroa.41.0.copyload9
  %3 = sub i64 %2, %i.e
  %diff.check = icmp ugt i64 %3, -16
  %i.f = add i64 %i.d, %.sroa.52.0.copyload10
  %i.g = sub i64 %i.f, %i.e
  %diff.check11 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check11
  %i.h = shl i64 %.sroa.74.0.copyload, 3
  %i.i = add i64 %i.h, %.sroa.0.0.copyload12
  %i.j = sub i64 %i.i, %i.e
  %diff.check13 = icmp ugt i64 %i.j, -16
  %conflict.rdx14 = or i1 %conflict.rdx, %diff.check13
  br i1 %conflict.rdx14, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -2                       ; 4 uses
  %i.k = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.m
  %i.o = add i64 %i.m, %.sroa.63.0.copyload       ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.o
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.o
  %wide.load = load <2 x i64>, ptr %i.p, align 8, !noalias !1267
  %wide.load15 = load <2 x i64>, ptr %i.q, align 8, !noalias !1267
  %wide.load16 = load <2 x i64>, ptr %i.n, align 8, !noalias !1267
  %i.r = icmp eq <2 x i64> %wide.load16, zeroinitializer
  %i.s = select <2 x i1> %i.r, <2 x i64> %wide.load15, <2 x i64> %wide.load
  %i.t = getelementptr [8 x i8], ptr %i.l, i64 %index
  store <2 x i64> %i.s, ptr %i.t, align 8, !noalias !1268
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !1265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTB2C_B2C_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondxENtNtB2Z_5utils4Map21fxE0NCINvNvB1A_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VecxE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.k, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.v = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.w = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.x = add i64 %.sroa.8.0.copyload, %i.w
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.z = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.z
  %i.ab = add i64 %i.z, %.sroa.63.0.copyload      ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.ab
  %i.ae = load i64, ptr %i.ac, align 8, !noalias !1267, !noundef !4
  %i.af = load i64, ptr %i.ad, align 8, !noalias !1267, !noundef !4
  %.val.i.i.i.i.prol = load i64, ptr %i.aa, align 8, !noalias !1267, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i64 %.val.i.i.i.i.prol, 0
  %spec.select.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, i64 %i.af, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.67.0.copyload, i64 %.ph
  store i64 %spec.select.i.i.i.i.prol, ptr %i.ag, align 8, !noalias !1268
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.x, %.sroa.74.0.copyload
  br i1 %i.ai, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTB2C_B2C_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondxENtNtB2Z_5utils4Map21fxE0NCINvNvB1A_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VecxE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.aj = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bb, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.as, %scalar.ph ] ; 3 uses
  %i.ak = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.ak
  %i.am = add i64 %i.ak, %.sroa.63.0.copyload     ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.am
  %i.ap = load i64, ptr %i.an, align 8, !noalias !1267, !noundef !4
  %i.aq = load i64, ptr %i.ao, align 8, !noalias !1267, !noundef !4
  %.val.i.i.i.i = load i64, ptr %i.al, align 8, !noalias !1267, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %.val.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.aq, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  store i64 %spec.select.i.i.i.i, ptr %i.ar, align 8, !noalias !1268
  %i.as = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.au = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.au
  %i.ax = load i64, ptr %i.av, align 8, !noalias !1267, !noundef !4
  %i.ay = load i64, ptr %i.aw, align 8, !noalias !1267, !noundef !4
  %.val.i.i.i.i.1 = load i64, ptr %i.at, align 8, !noalias !1267, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i64 %.val.i.i.i.i.1, 0
  %spec.select.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i64 %i.ay, i64 %i.ax
  %i.az = getelementptr [8 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  store i64 %spec.select.i.i.i.i.1, ptr %i.ba, align 8, !noalias !1268
  %i.bb = add i64 %i.aj, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.as, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTB2C_B2C_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondxENtNtB2Z_5utils4Map21fxE0NCINvNvB1A_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VecxE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit, label %scalar.ph, !llvm.loop !1266

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_BW_BW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTB2C_B2C_EExuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2Z_5WCondxENtNtB2Z_5utils4Map21fxE0NCINvNvB1A_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4R_3VecxE14extend_trustedINtB2j_3MapBM_B2R_EE0E0E0EB31_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bb, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !1269
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterxEIBY_IB1e_NtCshigRrDowciq_6float86F8E4M3EB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2x_5WCondxENtNtB2x_5utils4Map21fB1O_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4callB1O_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5a_3VecB1O_E14extend_trustedBN_E0E0EB2z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 7 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_IBX_NtCshigRrDowciq_6float86F8E4M3EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTRB1w_B3c_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3A_5WCondxENtNtB3A_5utils4Map21fB1w_E0NCINvNvB27_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5y_3VecB1w_E14extend_trustedINtB2Q_3MapBM_B3s_EE0E0E0EB3C_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload ; 3 uses
  %i.c = add i64 %.sroa.46.0.copyload, %.sroa.8.0.copyload
  %i.d = sub i64 %i.c, %.sroa.74.0.copyload
  %i.e = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.d ; 3 uses
  %i.f = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.f
  %i.h = add i64 %.sroa.63.0.copyload, %.sroa.8.0.copyload ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.h
  %i.j = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.f
  %i.k = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.h
  %i.l = shl i64 %.sroa.74.0.copyload, 3
  %i.m = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.l
  %i.n = shl i64 %.sroa.8.0.copyload, 3
  %i.o = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.n
  %bound0 = icmp ult ptr %i.b, %i.i
  %bound1 = icmp ult ptr %i.g, %i.e
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.b, %i.k
  %bound123 = icmp ult ptr %i.j, %i.e
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  %bound025 = icmp ult ptr %i.b, %i.o
  %bound126 = icmp ult ptr %i.m, %i.e
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -2                       ; 4 uses
  %i.p = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.r
  %i.t = add i64 %i.r, %.sroa.63.0.copyload       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload, i64 %i.t
  %wide.load = load <2 x i8>, ptr %i.u, align 1, !alias.scope !1292, !noalias !1293
  %wide.load29 = load <2 x i8>, ptr %i.v, align 1, !alias.scope !1294, !noalias !1293
  %wide.load30 = load <2 x i64>, ptr %i.s, align 8, !alias.scope !1295, !noalias !1293
  %i.w = icmp eq <2 x i64> %wide.load30, zeroinitializer
  %i.x = select <2 x i1> %i.w, <2 x i8> %wide.load29, <2 x i8> %wide.load
  %i.y = getelementptr i8, ptr %i.q, i64 %index
  store <2 x i8> %i.x, ptr %i.y, align 1, !alias.scope !1296, !noalias !1297
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !1290

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_IBX_NtCshigRrDowciq_6float86F8E4M3EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTRB1w_B3c_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3A_5WCondxENtNtB3A_5utils4Map21fB1w_E0NCINvNvB27_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5y_3VecB1w_E14extend_trustedINtB2Q_3MapBM_B3s_EE0E0E0EB3C_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.aa = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
end_hunk_6
begin_hunk_7_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterxEIBY_IB1e_NtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2C_5WCondxENtNtB2C_5utils4Map21fB1O_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Z_8for_each4callB1O_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5f_3VecB1O_E14extend_trustedBN_E0E0EB2E_:bb.a
  %exitcond.not.i.i.1 = icmp eq i64 %i.bb, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_IBX_NtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTRB1w_B3h_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3F_5WCondxENtNtB3F_5utils4Map21fB1w_E0NCINvNvB2c_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5D_3VecB1w_E14extend_trustedINtB2V_3MapBM_B3x_EE0E0E0EB3H_.exit, label %scalar.ph, !llvm.loop !1321

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_IBX_NtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTRB1w_B3h_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3F_5WCondxENtNtB3F_5utils4Map21fB1w_E0NCINvNvB2c_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5D_3VecB1w_E14extend_trustedINtB2V_3MapBM_B3x_EE0E0E0EB3H_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.t, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bk, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !1329
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterxEIBY_IB1e_NtNtCsdsILkMb8ZHY_4half8binary163f16EB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB2D_5WCondxENtNtB2D_5utils4Map21fB1O_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB40_8for_each4callB1O_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5g_3VecB1O_E14extend_trustedBN_E0E0EB2F_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 7 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_IBX_NtNtCsdsILkMb8ZHY_4half8binary163f16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTRB1w_B3i_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3G_5WCondxENtNtB3G_5utils4Map21fB1w_E0NCINvNvB2d_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5E_3VecB1w_E14extend_trustedINtB2W_3MapBM_B3y_EE0E0E0EB3I_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 1
  %i.c = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.b ; 3 uses
  %i.d = add i64 %.sroa.46.0.copyload, %.sroa.8.0.copyload
  %i.e = sub i64 %i.d, %.sroa.74.0.copyload
  %i.f = shl i64 %i.e, 1
  %i.g = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.f ; 3 uses
  %i.h = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.i = shl i64 %i.h, 1                          ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.i
  %i.k = add i64 %.sroa.63.0.copyload, %.sroa.8.0.copyload
  %i.l = shl i64 %i.k, 1                          ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.l
  %i.n = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.i
  %i.o = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.l
  %i.p = shl i64 %.sroa.74.0.copyload, 3
  %i.q = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.p
  %i.r = shl i64 %.sroa.8.0.copyload, 3
  %i.s = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.r
  %bound0 = icmp ult ptr %i.c, %i.m
  %bound1 = icmp ult ptr %i.j, %i.g
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.c, %i.o
  %bound123 = icmp ult ptr %i.n, %i.g
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  %bound025 = icmp ult ptr %i.c, %i.s
  %bound126 = icmp ult ptr %i.q, %i.g
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -2                       ; 4 uses
  %i.t = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.u = getelementptr [2 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.v
  %i.x = add i64 %i.v, %.sroa.63.0.copyload       ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.x
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.sroa.52.0.copyload, i64 %i.x
  %wide.load = load <2 x i16>, ptr %i.y, align 2, !alias.scope !1352, !noalias !1353
  %wide.load29 = load <2 x i16>, ptr %i.z, align 2, !alias.scope !1354, !noalias !1353
  %wide.load30 = load <2 x i64>, ptr %i.w, align 8, !alias.scope !1355, !noalias !1353
  %i.aa = icmp eq <2 x i64> %wide.load30, zeroinitializer
  %i.ab = select <2 x i1> %i.aa, <2 x i16> %wide.load29, <2 x i16> %wide.load
  %i.ac = getelementptr [2 x i8], ptr %i.u, i64 %index
  store <2 x i16> %i.ab, ptr %i.ac, align 2, !alias.scope !1356, !noalias !1357
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1350

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_IBX_NtNtCsdsILkMb8ZHY_4half8binary163f16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTRB1w_B3i_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3G_5WCondxENtNtB3G_5utils4Map21fB1w_E0NCINvNvB2d_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5E_3VecB1w_E14extend_trustedINtB2W_3MapBM_B3y_EE0E0E0EB3I_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.t, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.ae = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.af = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.ag = add i64 %.sroa.8.0.copyload, %i.af
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ah = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.ai = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.ai
  %i.ak = add i64 %i.ai, %.sroa.63.0.copyload     ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.ak
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %.sroa.52.0.copyload, i64 %i.ak
  %i.an = load i16, ptr %i.al, align 2, !noalias !1353, !noundef !4
  %i.ao = load i16, ptr %i.am, align 2, !noalias !1353, !noundef !4
  %.val.i.i.i.i.prol = load i64, ptr %i.aj, align 8, !noalias !1353, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i64 %.val.i.i.i.i.prol, 0
  %spec.select.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, i16 %i.ao, i16 %i.an
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.sroa.67.0.copyload, i64 %.ph
  store i16 %spec.select.i.i.i.i.prol, ptr %i.ap, align 2, !noalias !1358
  %i.aq = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %i.ar = icmp eq i64 %i.ag, %.sroa.74.0.copyload
  br i1 %i.ar, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_IBX_NtNtCsdsILkMb8ZHY_4half8binary163f16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTRB1w_B3i_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3G_5WCondxENtNtB3G_5utils4Map21fB1w_E0NCINvNvB2d_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5E_3VecB1w_E14extend_trustedINtB2W_3MapBM_B3y_EE0E0E0EB3I_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.as = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bk, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.bb, %scalar.ph ] ; 3 uses
  %i.at = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.at
  %i.av = add i64 %i.at, %.sroa.63.0.copyload     ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.av
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.sroa.52.0.copyload, i64 %i.av
  %i.ay = load i16, ptr %i.aw, align 2, !noalias !1353, !noundef !4
  %i.az = load i16, ptr %i.ax, align 2, !noalias !1353, !noundef !4
  %.val.i.i.i.i = load i64, ptr %i.au, align 8, !noalias !1353, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %.val.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i16 %i.az, i16 %i.ay
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.sroa.67.0.copyload, i64 %i.as
  store i16 %spec.select.i.i.i.i, ptr %i.ba, align 2, !noalias !1358
  %i.bb = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.bd = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.bd
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.sroa.52.0.copyload, i64 %i.bd
  %i.bg = load i16, ptr %i.be, align 2, !noalias !1353, !noundef !4
  %i.bh = load i16, ptr %i.bf, align 2, !noalias !1353, !noundef !4
  %.val.i.i.i.i.1 = load i64, ptr %i.bc, align 8, !noalias !1353, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i64 %.val.i.i.i.i.1, 0
  %spec.select.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i16 %i.bh, i16 %i.bg
  %i.bi = getelementptr [2 x i8], ptr %.sroa.67.0.copyload, i64 %i.as
  %i.bj = getelementptr i8, ptr %i.bi, i64 2
  store i16 %spec.select.i.i.i.i.1, ptr %i.bj, align 2, !noalias !1358
  %i.bk = add i64 %i.as, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bb, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_IBX_NtNtCsdsILkMb8ZHY_4half8binary163f16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTRB1w_B3i_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3G_5WCondxENtNtB3G_5utils4Map21fB1w_E0NCINvNvB2d_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5E_3VecB1w_E14extend_trustedINtB2W_3MapBM_B3y_EE0E0E0EB3I_.exit, label %scalar.ph, !llvm.loop !1351

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_IBX_NtNtCsdsILkMb8ZHY_4half8binary163f16EB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTRB1w_B3i_EEB1w_uNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB3G_5WCondxENtNtB3G_5utils4Map21fB1w_E0NCINvNvB2d_8for_each4callB1w_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5E_3VecB1w_E14extend_trustedINtB2W_3MapBM_B3y_EE0E0E0EB3I_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.t, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bk, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !1359
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterxEIBY_IB1e_dEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondxENtNtB24_5utils4Map21fdE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecdE14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 6 uses
  %.sroa.0.0.copyload12 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 6 uses
  %.sroa.41.0.copyload9 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 6 uses
  %.sroa.52.0.copyload10 = ptrtoaddr ptr %.sroa.52.0.copyload to i64
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 5 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 10 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 6 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 5 uses
  %.sroa.67.0.copyload8 = ptrtoaddr ptr %.sroa.67.0.copyload to i64
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_IBX_dEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTRdB2J_EEduNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondxENtNtB31_5utils4Map21fdE0NCINvNvB1E_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecdE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 18
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 3
  %i.c = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.d = shl i64 %i.c, 3                          ; 2 uses
  %i.e = add i64 %i.b, %.sroa.67.0.copyload8      ; 3 uses
  %2 = add i64 %i.d, %.sroa.41.0.copyload9
  %3 = sub i64 %2, %i.e
  %diff.check = icmp ugt i64 %3, -16
  %i.f = add i64 %i.d, %.sroa.52.0.copyload10
  %i.g = sub i64 %i.f, %i.e
  %diff.check11 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check11
  %i.h = shl i64 %.sroa.74.0.copyload, 3
  %i.i = add i64 %i.h, %.sroa.0.0.copyload12
  %i.j = sub i64 %i.i, %i.e
  %diff.check13 = icmp ugt i64 %i.j, -16
  %conflict.rdx14 = or i1 %conflict.rdx, %diff.check13
  br i1 %conflict.rdx14, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -2                       ; 4 uses
  %i.k = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.m
  %i.o = add i64 %i.m, %.sroa.63.0.copyload       ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.o
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.o
  %wide.load = load <2 x double>, ptr %i.p, align 8, !noalias !1377
  %wide.load15 = load <2 x double>, ptr %i.q, align 8, !noalias !1377
  %wide.load16 = load <2 x i64>, ptr %i.n, align 8, !noalias !1377
  %i.r = icmp eq <2 x i64> %wide.load16, zeroinitializer
  %i.s = select <2 x i1> %i.r, <2 x double> %wide.load15, <2 x double> %wide.load
  %i.t = getelementptr [8 x i8], ptr %i.l, i64 %index
  store <2 x double> %i.s, ptr %i.t, align 8, !noalias !1378
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !1375

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_IBX_dEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTRdB2J_EEduNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondxENtNtB31_5utils4Map21fdE0NCINvNvB1E_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecdE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.46.0.copyload, %vector.memcheck ], [ %.sroa.46.0.copyload, %.lr.ph.i.i ], [ %i.k, %middle.block ] ; 3 uses
  %.sroa.0.018.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.v = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %i.w = xor i64 %.sroa.0.018.i.i.ph, -1
  %i.x = add i64 %.sroa.8.0.copyload, %i.w
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = or disjoint i64 %.sroa.0.018.i.i.ph, 1
  %i.z = add i64 %.sroa.0.018.i.i.ph, %.sroa.74.0.copyload ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.z
  %i.ab = add i64 %i.z, %.sroa.63.0.copyload      ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.ab
  %i.ae = load double, ptr %i.ac, align 8, !noalias !1377, !noundef !4
  %i.af = load double, ptr %i.ad, align 8, !noalias !1377, !noundef !4
  %.val.i.i.i.i.prol = load i64, ptr %i.aa, align 8, !noalias !1377, !noundef !4
  %.not.i.i.i.i.prol = icmp eq i64 %.val.i.i.i.i.prol, 0
  %.sroa.0.0.i.i.i.i.prol = select i1 %.not.i.i.i.i.prol, double %i.af, double %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.67.0.copyload, i64 %.ph
  store double %.sroa.0.0.i.i.i.i.prol, ptr %i.ag, align 8, !noalias !1378
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.0.018.i.i.unr = phi i64 [ %.sroa.0.018.i.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.x, %.sroa.74.0.copyload
  br i1 %i.ai, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_IBX_dEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTRdB2J_EEduNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondxENtNtB31_5utils4Map21fdE0NCINvNvB1E_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecdE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.74.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.aj = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.bb, %scalar.ph ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.018.i.i.unr, %scalar.ph.preheader.new ], [ %i.as, %scalar.ph ] ; 3 uses
  %i.ak = add i64 %.sroa.0.018.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.ak
  %i.am = add i64 %i.ak, %.sroa.63.0.copyload     ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.am
  %i.ap = load double, ptr %i.an, align 8, !noalias !1377, !noundef !4
  %i.aq = load double, ptr %i.ao, align 8, !noalias !1377, !noundef !4
  %.val.i.i.i.i = load i64, ptr %i.al, align 8, !noalias !1377, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %.val.i.i.i.i, 0
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, double %i.aq, double %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  store double %.sroa.0.0.i.i.i.i, ptr %i.ar, align 8, !noalias !1378
  %i.as = add nuw i64 %.sroa.0.018.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.018.i.i, %invariant.op ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.au = add i64 %.reass, %.sroa.63.0.copyload   ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.au
  %i.ax = load double, ptr %i.av, align 8, !noalias !1377, !noundef !4
  %i.ay = load double, ptr %i.aw, align 8, !noalias !1377, !noundef !4
  %.val.i.i.i.i.1 = load i64, ptr %i.at, align 8, !noalias !1377, !noundef !4
  %.not.i.i.i.i.1 = icmp eq i64 %.val.i.i.i.i.1, 0
  %.sroa.0.0.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, double %i.ay, double %i.ax
  %i.az = getelementptr [8 x i8], ptr %.sroa.67.0.copyload, i64 %i.aj
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  store double %.sroa.0.0.i.i.i.i.1, ptr %i.ba, align 8, !noalias !1378
  %i.bb = add i64 %i.aj, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.as, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_IBX_dEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTRdB2J_EEduNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondxENtNtB31_5utils4Map21fdE0NCINvNvB1E_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecdE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph, !llvm.loop !1376

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_IBX_dEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTRdB2J_EEduNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondxENtNtB31_5utils4Map21fdE0NCINvNvB1E_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecdE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.46.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bb, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !1379
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterxEIBY_IB1e_fEB1J_EENCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB24_5WCondxENtNtB24_5utils4Map21ffE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecfE14extend_trustedBN_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8 ; 6 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 7 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8 ; 6 uses
  %i.a = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_IBX_fEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTRfB2J_EEfuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondxENtNtB31_5utils4Map21ffE0NCINvNvB1E_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecfE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.46.0.copyload, 2
  %i.c = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.b ; 3 uses
  %i.d = add i64 %.sroa.46.0.copyload, %.sroa.8.0.copyload
  %i.e = sub i64 %i.d, %.sroa.74.0.copyload
  %i.f = shl i64 %i.e, 2
  %i.g = getelementptr i8, ptr %.sroa.67.0.copyload, i64 %i.f ; 3 uses
  %i.h = add i64 %.sroa.63.0.copyload, %.sroa.74.0.copyload
  %i.i = shl i64 %i.h, 2                          ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.i
  %i.k = add i64 %.sroa.63.0.copyload, %.sroa.8.0.copyload
  %i.l = shl i64 %i.k, 2                          ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.l
  %i.n = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.i
  %i.o = getelementptr i8, ptr %.sroa.52.0.copyload, i64 %i.l
  %i.p = shl i64 %.sroa.74.0.copyload, 3
  %i.q = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.p
  %i.r = shl i64 %.sroa.8.0.copyload, 3
  %i.s = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.r
  %bound0 = icmp ult ptr %i.c, %i.m
  %bound1 = icmp ult ptr %i.j, %i.g
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.c, %i.o
  %bound123 = icmp ult ptr %i.n, %i.g
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  %bound025 = icmp ult ptr %i.c, %i.s
  %bound126 = icmp ult ptr %i.q, %i.g
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -2                       ; 4 uses
  %i.t = add i64 %.sroa.46.0.copyload, %n.vec     ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %.sroa.67.0.copyload, i64 %.sroa.46.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = add i64 %index, %.sroa.74.0.copyload     ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.v
  %i.x = add i64 %i.v, %.sroa.63.0.copyload       ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.52.0.copyload, i64 %i.x
  %wide.load = load <2 x float>, ptr %i.y, align 4, !alias.scope !1402, !noalias !1403
  %wide.load29 = load <2 x float>, ptr %i.z, align 4, !alias.scope !1404, !noalias !1403
  %wide.load30 = load <2 x i64>, ptr %i.w, align 8, !alias.scope !1405, !noalias !1403
  %i.aa = icmp eq <2 x i64> %wide.load30, zeroinitializer
  %i.ab = select <2 x i1> %i.aa, <2 x float> %wide.load29, <2 x float> %wide.load
  %i.ac = getelementptr [4 x i8], ptr %i.u, i64 %index
  store <2 x float> %i.ab, ptr %i.ac, align 4, !alias.scope !1406, !noalias !1407
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1400

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEIBN_IBX_fEB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRxTRfB2J_EEfuNCINvXs_NtCsltEA4u8Pgfu_11candle_core11cpu_backendINtB31_5WCondxENtNtB31_5utils4Map21ffE0NCINvNvB1E_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecfE14extend_trustedINtB2n_3MapBM_B2T_EE0E0E0EB33_.exit, label %scalar.ph.preheader

end_hunk_7
