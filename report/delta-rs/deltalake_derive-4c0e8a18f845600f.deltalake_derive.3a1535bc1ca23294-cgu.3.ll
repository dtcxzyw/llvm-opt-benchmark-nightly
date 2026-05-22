inline.NumInlined: 14
inline.NumDeleted: 12
begin_hunk_0_@_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0ENtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1B_5error5ErrorENCINvXso_B3M_IB3K_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB33_EB4w_EINtNtNtB4_6traits7collect12FromIteratorIB3K_B33_B4w_EE9from_iterBQ_E0B59_EB29_:bb.a

bb.k:                                             ; preds = %bb.b
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.f) #13
          to label %.thread unwind label %bb.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator3mapNtCsbjGuDcEILED_11proc_macro211TokenStreamNCNCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env00EB2R_(ptr writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr %1, ptr %2, ptr readonly align 8 captures(none) %3) unnamed_addr #1 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator10filter_mapINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EB3z_(ptr %0, ptr %1) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator10filter_mapINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EB3z_(ptr %0, ptr %1) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator3mapINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EB3r_(ptr %0, ptr %1) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters10filter_map19filter_map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4s_B3q_EENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0NCINvXB2e_INtB2e_12GenericShuntINtB2c_9FilterMapB3_B5h_EIB35_NtNtBa_7convert10InfallibleB46_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3q_B56_NcNtB56_5Break0E0B56_E0E0B4r_EB5l_(ptr sret([32 x i8]) align 8 %0, ptr align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = load ptr, ptr %1, align 8                ; 4 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %1, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit
  call void @_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB1k_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B29_EENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_EIB1O_NtNtBa_7convert10InfallibleB2P_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6V_12try_for_each4callB29_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0B45_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %2, ptr nonnull align 8 %i.e)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.i = load i64, ptr %i.c, align 8
  %.not4 = icmp eq i64 %i.i, -9223372036854775806
  br i1 %.not4, label %bb.b, label %bb.d

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread: ; preds = %bb.b, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB4_11ControlFlowIBK_NtCsbjGuDcEILED_11proc_macro211TokenStreamEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters10filter_map19filter_map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4s_B3q_EENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0NCINvXB2e_INtB2e_12GenericShuntINtB2c_9FilterMapB3_B5h_EIB35_NtNtBa_7convert10InfallibleB46_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3q_B56_NcNtB56_5Break0E0B56_E0E0B4r_EB5l_(ptr sret([32 x i8]) align 8 %0, ptr align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = load ptr, ptr %1, align 8                ; 4 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %1, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit
  call void @_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB1k_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B29_EENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_EIB1O_NtNtBa_7convert10InfallibleB2P_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6W_12try_for_each4callB29_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0B45_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %2, ptr nonnull align 8 %i.e)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.i = load i64, ptr %i.c, align 8
  %.not4 = icmp eq i64 %i.i, -9223372036854775806
  br i1 %.not4, label %bb.b, label %bb.d

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread: ; preds = %bb.b, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB4_11ControlFlowIBK_NtCsbjGuDcEILED_11proc_macro211TokenStreamEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4d_B3b_EENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0NCINvXB2e_INtB2e_12GenericShuntINtB2c_3MapB3_B52_EIB2Q_NtNtBa_7convert10InfallibleB3R_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3b_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB56_(ptr sret([32 x i8]) align 8 %0, ptr align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = load ptr, ptr %1, align 8                ; 4 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %1, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit
  call void @_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %2, ptr nonnull align 8 %i.e)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.i = load i64, ptr %i.c, align 8
  %.not4 = icmp eq i64 %i.i, -9223372036854775806
  br i1 %.not4, label %bb.b, label %bb.d

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread: ; preds = %bb.b, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB4_11ControlFlowIBK_NtCsbjGuDcEILED_11proc_macro211TokenStreamEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_10filter_map9FilterMapINtNtNtB9_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB1Z_5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB4C_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB9_3ops12control_flow11ControlFlowB5O_ENcNtB6u_5Break0E0B6u_E0B2x_(ptr writeonly sret([32 x i8]) align 8 captures(none) %0, ptr readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1u_(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr align 8 %2)
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, -9223372036854775807
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %i.m)
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.n = load ptr, ptr %1, align 8
  call void @_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBe_3ops12control_flow11ControlFlowB1k_ENcNtB20_5Break0E0Cs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr %i.n, ptr nonnull align 8 %i.f)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.g)
  %i.o = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.o, -9223372036854775807
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB4_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.f

.sink.split:                                      ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.a, %bb.d ], [ %i.d, %bb.h ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink, i64 32, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  ret void

bb.g:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  resume { ptr, i32 } %i.p

bb.h:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.d)
  br label %.sink.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_10filter_map9FilterMapINtNtNtB9_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB1Z_5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB4D_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB9_3ops12control_flow11ControlFlowB5P_ENcNtB6v_5Break0E0B6v_E0B2x_(ptr writeonly sret([32 x i8]) align 8 captures(none) %0, ptr readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1u_(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr align 8 %2)
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, -9223372036854775807
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %i.m)
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.n = load ptr, ptr %1, align 8
  call void @_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBe_3ops12control_flow11ControlFlowB1k_ENcNtB20_5Break0E0Cs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr %i.n, ptr nonnull align 8 %i.f)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.g)
  %i.o = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.o, -9223372036854775807
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB4_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.f

.sink.split:                                      ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.a, %bb.d ], [ %i.d, %bb.h ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink, i64 32, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  ret void

bb.g:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  resume { ptr, i32 } %i.p

bb.h:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.d)
  br label %.sink.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB1L_5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB4m_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB9_3ops12control_flow11ControlFlowB5y_ENcNtB6e_5Break0E0B6e_E0B2j_(ptr writeonly sret([32 x i8]) align 8 captures(none) %0, ptr readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1u_(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr align 8 %2)
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, -9223372036854775807
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %i.m)
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.n = load ptr, ptr %1, align 8
  call void @_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBe_3ops12control_flow11ControlFlowB1k_ENcNtB20_5Break0E0Cs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr %i.n, ptr nonnull align 8 %i.f)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.g)
  %i.o = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.o, -9223372036854775807
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB4_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.f

.sink.split:                                      ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.a, %bb.d ], [ %i.d, %bb.h ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink, i64 32, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  ret void

bb.g:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  resume { ptr, i32 } %i.p

bb.h:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.d)
  br label %.sink.split
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMs4_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB5_4IterNtCsbjGuDcEILED_11proc_macro211TokenStreamE3newCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMs4_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringE3newCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMs4_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB5_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldE3newCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme20new_grapheme_indicesCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([200 x i8]) align 8 captures(none) initializes((0, 200)) %0, ptr %1, i64 %2, i1 zeroext %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %.sroa.0 = alloca [176 x i8], align 8           ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call i64 @_RNvMNtCsbvkFyIu7lgC_4core3stre3lenCs4ZaLwAtrTbk_16deltalake_derive(ptr %1, i64 %2) #15, !noalias !3 ; 3 uses
  call void @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor3new(ptr nonnull sret([88 x i8]) align 8 %i.a, i64 0, i64 %i.c, i1 zeroext %3), !noalias !3
  %.sroa.0.88..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 88
  call void @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor3new(ptr nonnull sret([88 x i8]) align 8 %.sroa.0.88..sroa_idx, i64 %i.c, i64 %i.c, i1 zeroext %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.b, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.0, i64 176, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2u_(ptr writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !6
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBV_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1G_5error5ErrorEEB3a_8try_folduNCINvNvB3a_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBc_3ops12control_flow11ControlFlowB6f_ENcNtB6V_5Break0E0B6V_E0IB6W_B6V_EEB2e_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %1, ptr nonnull %i.a, ptr align 8 %i.e), !noalias !6
  %i.f = load i64, ptr %i.b, align 8, !noalias !6
  %.not.i = icmp eq i64 %i.f, -9223372036854775806
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4A_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5M_ENcNtB6s_5Break0E0B6s_EB2v_.exit

bb.c:                                             ; preds = %bb.a
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.c)
  br label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4A_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5M_ENcNtB6s_5Break0E0B6s_EB2v_.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4A_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5M_ENcNtB6s_5Break0E0B6s_EB2v_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.g, -9223372036854775807
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4A_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5M_ENcNtB6s_5Break0E0B6s_EB2v_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  ret void

bb.f:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4A_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5M_ENcNtB6s_5Break0E0B6s_EB2v_.exit
  store i64 -9223372036854775807, ptr %0, align 8
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.c)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2u_(ptr writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, -9223372036854775808
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2d_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x i64>, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi <2 x i64> [ %i.f, %bb.b ], [ <i64 1, i64 0>, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.g, ptr %i.h, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2u_(ptr writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !9
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBV_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1G_5error5ErrorEEB3b_8try_folduNCINvNvB3b_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBc_3ops12control_flow11ControlFlowB6g_ENcNtB6W_5Break0E0B6W_E0IB6X_B6W_EEB2e_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %1, ptr nonnull %i.a, ptr align 8 %i.e), !noalias !9
  %i.f = load i64, ptr %i.b, align 8, !noalias !9
  %.not.i = icmp eq i64 %i.f, -9223372036854775806
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4B_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5N_ENcNtB6t_5Break0E0B6t_EB2v_.exit

bb.c:                                             ; preds = %bb.a
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.c)
  br label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4B_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5N_ENcNtB6t_5Break0E0B6t_EB2v_.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4B_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5N_ENcNtB6t_5Break0E0B6t_EB2v_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.g, -9223372036854775807
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4B_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5N_ENcNtB6t_5Break0E0B6t_EB2v_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  ret void

bb.f:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4B_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5N_ENcNtB6t_5Break0E0B6t_EB2v_.exit
  store i64 -9223372036854775807, ptr %0, align 8
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.c)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2u_(ptr writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, -9223372036854775808
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2d_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x i64>, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi <2 x i64> [ %i.f, %bb.b ], [ <i64 1, i64 0>, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.g, ptr %i.h, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1I_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2g_(ptr writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !12
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1s_5error5ErrorEEB2U_8try_folduNCINvNvB2U_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBc_3ops12control_flow11ControlFlowB5Z_ENcNtB6F_5Break0E0B6F_E0IB6G_B6F_EEB20_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %1, ptr nonnull %i.a, ptr align 8 %i.e), !noalias !12
  %i.f = load i64, ptr %i.b, align 8, !noalias !12
  %.not.i = icmp eq i64 %i.f, -9223372036854775806
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1J_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4k_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5w_ENcNtB6c_5Break0E0B6c_EB2h_.exit

end_hunk_0
begin_hunk_1_@_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1I_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2g_:bb.a
  %.not = icmp eq i64 %i.d, -9223372036854775808
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Z_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x i64>, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi <2 x i64> [ %i.f, %bb.b ], [ <i64 1, i64 0>, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.g, ptr %i.h, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB2f_5error5ErrorEENtB2_12IntoIterator9into_iterB2N_(ptr writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB2f_5error5ErrorEENtB2_12IntoIterator9into_iterB2N_(ptr writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB21_5error5ErrorEENtB2_12IntoIterator9into_iterB2z_(ptr writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden align 8 ptr @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  store i64 %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs7_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_7Pattern13into_searcherCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr %1, i64 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMNtCsbvkFyIu7lgC_4core3stre5charsCs4ZaLwAtrTbk_16deltalake_derive(ptr %1, i64 %2) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  store ptr %1, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i, %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !noalias !18
  %i.e = load ptr, ptr %i.a, align 8, !noalias !18
  %i.f = tail call { i64, i32 } @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.a) #15, !noalias !18 ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 1        ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 1114112
  br i1 %.not.i.i, label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive.exit, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i

_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !noalias !18
  %i.i = load ptr, ptr %i.a, align 8, !noalias !18
  %i.j = tail call zeroext i1 @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull %i.c, i32 %i.g) #15, !noalias !18
  br i1 %i.j, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = extractvalue { i64, i32 } %i.f, 0        ; 2 uses
  %i.p = add i64 %i.o, %i.m
  %i.q = add i64 %i.n, %i.l
  %i.r = sub i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.t, align 8, !alias.scope !15
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8, !alias.scope !15
  br label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !15
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsp_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4ZaLwAtrTbk_16deltalake_derive.exit.i, %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !noalias !24
  %i.e = load ptr, ptr %i.a, align 8, !noalias !24
  %i.f = tail call { i64, i32 } @_RNvXs4_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.a) #15, !noalias !24 ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 1        ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 1114112
  br i1 %.not.i.i, label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive.exit, label %_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4ZaLwAtrTbk_16deltalake_derive.exit.i

_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4ZaLwAtrTbk_16deltalake_derive.exit.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !noalias !24
  %i.i = load ptr, ptr %i.a, align 8, !noalias !24
  %i.j = tail call zeroext i1 @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull %i.c, i32 %i.g) #15, !noalias !24
  br i1 %i.j, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = extractvalue { i64, i32 } %i.f, 0        ; 2 uses
  %i.p = add i64 %i.o, %i.m
  %i.q = add i64 %i.n, %i.l
  %i.r = sub i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.t, align 8, !alias.scope !21
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8, !alias.scope !21
  br label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !21
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_inCs4ZaLwAtrTbk_16deltalake_derive(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 14 uses
  %i.d = alloca [32 x i8], align 8                ; 13 uses
  %i.e = alloca [16 x i8], align 16               ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [104 x i8], align 8               ; 17 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = icmp eq i64 %1, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %1, %3
  br i1 %i.q, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.e, %bb.a, %bb.av, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit, %bb.g, %bb.au
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %i.x, %bb.g ], [ %i.fu, %bb.au ], [ %9, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit ], [ %i.fv, %bb.av ], [ false, %bb.e ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %1, 1
  br i1 %i.r, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.s = icmp eq i64 %1, %3
  br i1 %i.s, label %bb.av, label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.t = icmp ult i64 %1, 33
  br i1 %i.t, label %bb.ae, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.u = load i8, ptr %0, align 1
  %i.v = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchrCs4ZaLwAtrTbk_16deltalake_derive(i8 %i.u, ptr %2, i64 %3) #15
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = icmp eq i64 %i.w, 1
  br label %bb.c

bb.h:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containsCs4ZaLwAtrTbk_16deltalake_derive.exit, %bb.f
  call void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr nonnull sret([104 x i8]) align 8 %i.n, ptr %2, i64 %3, ptr %0, i64 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.y = load i64, ptr %i.n, align 8, !noalias !27
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  br i1 %i.z, label %bb.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 26 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 80 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.an = load i64, ptr %i.am, align 8, !noalias !27
  %i.ao = icmp eq i64 %i.an, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !27
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !noalias !27
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %4 = load i64, ptr %i.av, align 8, !noalias !27
  call void @_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbjGuDcEILED_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr nonnull align 8 %i.aa, ptr %i.aq, i64 %i.as, ptr %i.au, i64 %4, i1 zeroext %i.ao) #15
  %i.aw = load i64, ptr %i.o, align 8
  %5 = icmp eq i64 %i.aw, 1
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.j:                                             ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i, %.preheader.i
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !27
  %i.ax = load i64, ptr %i.n, align 8, !noalias !33
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = load i64, ptr %i.ai, align 8, !noalias !33
  %i.ba = load i64, ptr %i.ae, align 8, !noalias !33 ; 2 uses
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %.sink.split.i.i, label %bb.x

bb.l:                                             ; preds = %bb.j
  %i.bc = load i8, ptr %i.ab, align 2, !noalias !33
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %.sink.split.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = load i8, ptr %i.ac, align 8, !noalias !33 ; 2 uses
  %i.bf = trunc nuw i8 %i.be to i1                ; 2 uses
  %i.bg = and i8 %i.be, 1
  %i.bh = xor i8 %i.bg, 1
  store i8 %i.bh, ptr %i.ac, align 8, !noalias !33
  %i.bi = load i64, ptr %i.aa, align 8, !noalias !33 ; 7 uses
  %i.bj = load ptr, ptr %i.ad, align 8, !noalias !33 ; 2 uses
  %i.bk = load i64, ptr %i.ae, align 8, !noalias !33 ; 3 uses
  %i.bl = call { ptr, i64 } @_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs4ZaLwAtrTbk_16deltalake_derive(i64 %i.bi, ptr %i.bj, i64 %i.bk) #15, !noalias !33 ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %i.bl, 0      ; 3 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = extractvalue { ptr, i64 } %i.bl, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store ptr %i.bm, ptr %i.l, align 8, !noalias !33
  store ptr %i.bo, ptr %i.af, align 8, !noalias !33
  %i.bp = call { i32, i32 } @_RINvNtNtCsbvkFyIu7lgC_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.l) #15, !noalias !33 ; 2 uses
  %i.bq = extractvalue { i32, i32 } %i.bp, 0
  %i.br = extractvalue { i32, i32 } %i.bp, 1      ; 3 uses
  %i.bs = trunc i32 %i.bq to i1
  br i1 %i.bs, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr %i.bj, i64 %i.bk, i64 %i.bi, i64 %i.bk, ptr nonnull align 8 @5) #16, !noalias !33
  unreachable

bb.p:                                             ; preds = %bb.n
  br i1 %i.bf, label %bb.w, label %bb.s

bb.q:                                             ; preds = %bb.n
  br i1 %i.bf, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.ab, align 2, !noalias !33
  br label %.sink.split.i.i

bb.s:                                             ; preds = %bb.p
  %6 = icmp ult i32 %i.br, 128
  br i1 %6, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = icmp ult i32 %i.br, 2048
  br i1 %i.bt, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = icmp ult i32 %i.br, 65536
  %..i.i = select i1 %i.bu, i64 3, i64 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sroa.01.0.i.i = phi i64 [ 2, %bb.t ], [ %..i.i, %bb.u ], [ 1, %bb.s ]
  %7 = load i64, ptr %i.aa, align 8, !noalias !33
  %8 = add i64 %7, %.sroa.01.0.i.i                ; 2 uses
  store i64 %8, ptr %i.aa, align 8, !noalias !33
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i, %bb.v, %bb.q, %bb.p
  %.sink.i = phi i64 [ %i.cc, %._crit_edge.i.i ], [ %i.bi, %bb.v ], [ %i.bi, %bb.q ], [ %i.bi, %bb.p ]
  %.sroa.02.0.lcssa.i.sink.i = phi i64 [ %.sroa.02.0.lcssa.i.i, %._crit_edge.i.i ], [ %8, %bb.v ], [ %i.bi, %bb.q ], [ %i.bi, %bb.p ]
  %.sink.i.ph.i = phi i64 [ 1, %._crit_edge.i.i ], [ 1, %bb.v ], [ 0, %bb.q ], [ 0, %bb.p ]
  store i64 %.sink.i, ptr %i.ag, align 8, !alias.scope !30, !noalias !27
  store i64 %.sroa.02.0.lcssa.i.sink.i, ptr %i.ah, align 8, !alias.scope !30, !noalias !27
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.w, %bb.r, %bb.l, %bb.k
  %.sink.i.i = phi i64 [ 2, %bb.r ], [ 2, %bb.l ], [ 2, %bb.k ], [ %.sink.i.ph.i, %bb.w ] ; 2 uses
  store i64 %.sink.i.i, ptr %i.m, align 8, !alias.scope !30, !noalias !27
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i

bb.x:                                             ; preds = %bb.k
  %i.bv = load i64, ptr %i.aj, align 8, !noalias !33
  %i.bw = icmp eq i64 %i.bv, -1
  %i.bx = load ptr, ptr %i.ad, align 8, !noalias !33
  %i.by = load ptr, ptr %i.ak, align 8, !noalias !33
  %i.bz = load i64, ptr %i.al, align 8, !noalias !33
  call void @_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECsbjGuDcEILED_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull align 8 %i.aa, ptr %i.bx, i64 %i.ba, ptr %i.by, i64 %i.bz, i1 zeroext %i.bw) #15, !noalias !27
  %i.ca = load i64, ptr %i.m, align 8, !noalias !27 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.y, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i

bb.y:                                             ; preds = %bb.x
  %i.cc = load i64, ptr %i.ag, align 8, !alias.scope !30, !noalias !27
  %i.cd = load i64, ptr %i.ah, align 8, !alias.scope !30, !noalias !27 ; 2 uses
  %i.ce = load ptr, ptr %i.ad, align 8, !noalias !33
  %i.cf = load i64, ptr %i.ae, align 8, !noalias !33 ; 3 uses
  %i.cg = icmp eq i64 %i.cd, 0
  br i1 %i.cg, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y, %bb.ab
  %.sroa.02.015.i.i = phi i64 [ %i.cn, %bb.ab ], [ %i.cd, %bb.y ] ; 5 uses
  %.not14.i.i = icmp ult i64 %.sroa.02.015.i.i, %i.cf
  br i1 %.not14.i.i, label %bb.aa, label %bb.z

._crit_edge.i.i:                                  ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %.sroa.02.0.lcssa.i.i = phi i64 [ 0, %bb.y ], [ %i.cf, %bb.z ], [ 0, %bb.ab ], [ %.sroa.02.015.i.i, %bb.aa ] ; 2 uses
  %i.ch = load i64, ptr %i.ai, align 8, !noalias !33
  %i.ci = call i64 @_RNvYjNtNtCsbvkFyIu7lgC_4core3cmp3Ord3maxCsbjGuDcEILED_11proc_macro2(i64 %.sroa.02.0.lcssa.i.i, i64 %i.ch) #15, !noalias !27
  store i64 %i.ci, ptr %i.ai, align 8, !noalias !33
  br label %bb.w

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.cj = icmp eq i64 %.sroa.02.015.i.i, %i.cf
  br i1 %i.cj, label %._crit_edge.i.i, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.02.015.i.i
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !27
  %i.cm = icmp sgt i8 %i.cl, -65
  br i1 %i.cm, label %._crit_edge.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cn = add i64 %.sroa.02.015.i.i, 1            ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %._crit_edge.i.i, label %.lr.ph.i.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i: ; preds = %bb.x, %.sink.split.i.i
  %i.cp = phi i64 [ %.sink.i.i, %.sink.split.i.i ], [ %i.ca, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !27
  switch i64 %i.cp, label %bb.ac [
    i64 0, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit
    i64 1, label %bb.j
    i64 2, label %bb.ad
  ]

bb.ac:                                            ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  unreachable

bb.ad:                                            ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i, %bb.ad, %bb.i
  %9 = phi i1 [ %5, %bb.i ], [ false, %bb.ad ], [ true, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.c

bb.ae:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %0, ptr %i.k, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %1, ptr %i.cq, align 8
  %i.cr = load i8, ptr %0, align 1
  store i8 %i.cr, ptr %i.j, align 1
  %i.cs = add nsw i64 %1, -1                      ; 2 uses
  %i.ct = icmp eq i64 %1, 2
  br i1 %i.ct, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cu = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4)
  store i64 %i.cu, ptr %i.h, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %1, ptr %i.cv, align 8
  store ptr %0, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.cw = call { i64, i64 } @_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.b) #15 ; 2 uses
  %i.cx = extractvalue { i64, i64 } %i.cw, 0
  %i.cy = trunc nuw i64 %i.cx to i1
  br i1 %i.cy, label %bb.ah, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containsCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.ag:                                            ; preds = %bb.ah, %bb.ae
  %storemerge.i = phi i64 [ %i.db, %bb.ah ], [ 1, %bb.ae ] ; 4 uses
  store i64 %storemerge.i, ptr %i.i, align 8
  %i.cz = add nuw nsw i64 %1, 15                  ; 3 uses
  %i.da = icmp ult i64 %3, %i.cz
  br i1 %i.da, label %bb.at, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.db = extractvalue { i64, i64 } %i.cw, 1
  br label %bb.ag

bb.ai:                                            ; preds = %bb.ag
  %i.dc = load i8, ptr %i.j, align 1
  %i.dd = insertelement <16 x i8> poison, i8 %i.dc, i64 0
  %i.de = shufflevector <16 x i8> %i.dd, <16 x i8> poison, <16 x i32> zeroinitializer
  store <16 x i8> %i.de, ptr %i.f, align 16
  %i.df = icmp ult i64 %storemerge.i, %1
  br i1 %i.df, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %storemerge.i
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = insertelement <16 x i8> poison, i8 %i.dh, i64 0
  %i.dj = shufflevector <16 x i8> %i.di, <16 x i8> poison, <16 x i32> zeroinitializer
  store <16 x i8> %i.dj, ptr %i.e, align 16
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %2, ptr %i.d, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %3, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.dk, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.cs, ptr %i.dn, align 8
  store ptr %2, ptr %i.c, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %3, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.i, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.f, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.e, ptr %i.dr, align 8
  %i.ds = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.ds, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i4

bb.ak:                                            ; preds = %bb.ai
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 %storemerge.i, i64 range(i64 2, 33) %1, ptr nonnull align 8 @3) #16
  unreachable

.preheader.i4:                                    ; preds = %bb.ao, %bb.aj
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.aj ], [ %i.et, %bb.ao ] ; 2 uses
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.aj ], [ %.sroa.014.2.3.i, %bb.ao ] ; 2 uses
  %i.dt = add i64 %.sroa.06.0.lcssa.i, %i.cz
  %i.du = icmp uge i64 %i.dt, %3
  %i.dv = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond359.i = select i1 %i.du, i1 true, i1 %i.dv
  br i1 %or.cond359.i, label %._crit_edge.i, label %.lr.ph61.i

.lr.ph.i:                                         ; preds = %bb.aj, %bb.ao
  %.sroa.06.057.i = phi i64 [ %i.et, %bb.ao ], [ 0, %bb.aj ] ; 6 uses
  %i.dw = call i16 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.c, i64 %.sroa.06.057.i) #15 ; 2 uses
  %i.dx = or disjoint i64 %.sroa.06.057.i, 16     ; 2 uses
  %i.dy = call i16 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.c, i64 %i.dx) #15 ; 2 uses
  %i.dz = or disjoint i64 %.sroa.06.057.i, 32     ; 2 uses
  %i.ea = call i16 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.c, i64 %i.dz) #15 ; 2 uses
  %i.eb = or disjoint i64 %.sroa.06.057.i, 48     ; 2 uses
  %i.ec = call i16 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.c, i64 %i.eb) #15 ; 2 uses
  %i.ed = icmp eq i16 %i.dw, 0
  br i1 %i.ed, label %.preheader53.1.i, label %bb.ap

.preheader53.1.i:                                 ; preds = %bb.ap, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.ey, %bb.ap ] ; 2 uses
  %i.ee = icmp eq i16 %i.dy, 0
  br i1 %i.ee, label %.preheader53.2.i, label %bb.al

bb.al:                                            ; preds = %.preheader53.1.i
  %i.ef = trunc nuw i8 %.sroa.014.2.i to i1       ; 2 uses
  %i.eg = call zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.d, i64 %i.dx, i16 %i.dy, i1 zeroext %i.ef) #15
  %i.eh = or i1 %i.eg, %i.ef
  %i.ei = zext i1 %i.eh to i8
  br label %.preheader53.2.i

.preheader53.2.i:                                 ; preds = %bb.al, %.preheader53.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader53.1.i ], [ %i.ei, %bb.al ] ; 2 uses
  %i.ej = icmp eq i16 %i.ea, 0
  br i1 %i.ej, label %.preheader53.3.i, label %bb.am

bb.am:                                            ; preds = %.preheader53.2.i
  %i.ek = trunc nuw i8 %.sroa.014.2.1.i to i1     ; 2 uses
  %i.el = call zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.d, i64 %i.dz, i16 %i.ea, i1 zeroext %i.ek) #15
  %i.em = or i1 %i.el, %i.ek
  %i.en = zext i1 %i.em to i8
  br label %.preheader53.3.i

.preheader53.3.i:                                 ; preds = %bb.am, %.preheader53.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader53.2.i ], [ %i.en, %bb.am ] ; 2 uses
  %i.eo = icmp eq i16 %i.ec, 0
  br i1 %i.eo, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.preheader53.3.i
  %i.ep = trunc nuw i8 %.sroa.014.2.2.i to i1     ; 2 uses
  %i.eq = call zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.d, i64 %i.eb, i16 %i.ec, i1 zeroext %i.ep) #15
  %i.er = or i1 %i.eq, %i.ep
  %i.es = zext i1 %i.er to i8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.preheader53.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader53.3.i ], [ %i.es, %bb.an ] ; 2 uses
  %i.et = add i64 %.sroa.06.057.i, 64             ; 3 uses
  %i.eu = add i64 %i.et, %i.ds
  %i.ev = icmp uge i64 %i.eu, %3
  %i.ew = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.ev, i1 true, i1 %i.ew
  br i1 %or.cond.i, label %.preheader.i4, label %.lr.ph.i

bb.ap:                                            ; preds = %.lr.ph.i
  %i.ex = call zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.d, i64 %.sroa.06.057.i, i16 %i.dw, i1 zeroext false) #15
  %i.ey = zext i1 %i.ex to i8
  br label %.preheader53.1.i

._crit_edge.i:                                    ; preds = %bb.aq, %.preheader.i4
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i4 ], [ %.sroa.014.4.i, %bb.aq ]
  %.lcssa.i = phi i1 [ %i.dv, %.preheader.i4 ], [ %i.fi, %bb.aq ] ; 2 uses
  %i.ez = sub i64 %3, %i.cs
  %i.fa = add i64 %i.ez, -16                      ; 2 uses
  %i.fb = call i16 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.c, i64 %i.fa) #15 ; 2 uses
  %i.fc = icmp eq i16 %i.fb, 0
  br i1 %i.fc, label %bb.au, label %bb.as

.lr.ph61.i:                                       ; preds = %.preheader.i4, %bb.aq
  %.sroa.06.160.i = phi i64 [ %i.ff, %bb.aq ], [ %.sroa.06.0.lcssa.i, %.preheader.i4 ] ; 3 uses
  %i.fd = call i16 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.c, i64 %.sroa.06.160.i) #15 ; 2 uses
  %i.fe = icmp eq i16 %i.fd, 0
  br i1 %i.fe, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ar, %.lr.ph61.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph61.i ], [ %i.fk, %bb.ar ] ; 2 uses
  %i.ff = add i64 %.sroa.06.160.i, 16             ; 2 uses
  %i.fg = add i64 %i.ff, %i.cz
  %i.fh = icmp uge i64 %i.fg, %3
  %i.fi = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = select i1 %i.fh, i1 true, i1 %i.fi
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph61.i

bb.ar:                                            ; preds = %.lr.ph61.i
  %i.fj = call zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.d, i64 %.sroa.06.160.i, i16 %i.fd, i1 zeroext false) #15
  %i.fk = zext i1 %i.fj to i8
  br label %bb.aq

bb.as:                                            ; preds = %._crit_edge.i
  %i.fl = call zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.d, i64 %i.fa, i16 %i.fb, i1 zeroext %.lcssa.i) #15
  %i.fm = or i1 %.lcssa.i, %i.fl
  %i.fn = zext i1 %i.fm to i8
  br label %bb.au

bb.at:                                            ; preds = %bb.ag
  store ptr %2, ptr %i.g, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %3, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %1, ptr %i.fp, align 8
end_hunk_1
