Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa_macros-fbc2f095275dd02c.salsa_macros.d0d34daddd3cd1da-cgu.09?download=true
inline.NumInlined: 104
inline.NumDeleted: 95
begin_hunk_0_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB12_4data5FieldENvMs_NtCshVzvyy7iigg_12salsa_macros12salsa_structNtB20_10SalsaField3newENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB12_5error5ErrorEEB35_8try_folduNCINvNvB35_12try_for_each4callB2I_INtNtNtBc_3ops12control_flow11ControlFlowB2I_ENcNtB6e_5Break0E0B6e_E0IB6f_B6e_EEB22_
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB12_4data5FieldENvMs_NtCshVzvyy7iigg_12salsa_macros12salsa_structNtB20_10SalsaField3newENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB12_5error5ErrorEEB35_8try_folduNCINvNvB35_12try_for_each4callB2I_INtNtNtBc_3ops12control_flow11ControlFlowB2I_ENcNtB6e_5Break0E0B6e_E0IB6f_B6e_EEB22_(ptr sret([136 x i8]) align 8 %0, ptr align 8 %1, ptr %2, ptr align 8 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  call void @_RINvYINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB8_4data5FieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB16_8adapters3map12map_try_foldRBH_INtNtB18_6result6ResultNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldNtNtB8_5error5ErrorEuINtNtNtB18_3ops12control_flow11ControlFlowIB4s_B3a_EENvMs_B3c_B3a_3newNCINvXB2c_INtB2c_12GenericShuntINtB2a_3MapB3_B5i_EIB2O_NtNtB18_7convert10InfallibleB46_EEB10_8try_folduNCINvNvB10_12try_for_each4callB3a_B57_NcNtB57_5Break0E0B57_E0E0B4r_EB3e_(ptr sret([136 x i8]) align 8 %0, ptr align 8 %1, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsi_CstuaXukgBIa_10proc_macroNtB6_11TokenStreamINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendNtB6_9TokenTreeE6extendBv_ECshVzvyy7iigg_12salsa_macros(ptr align 4 %0, i32 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvXs_NtCstuaXukgBIa_10proc_macro12token_streamNtB6_11TokenStreamNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter(ptr nonnull sret([32 x i8]) align 8 %i.e, i32 %1)
  invoke void @_RNvXNtCstuaXukgBIa_10proc_macro12token_streamNtB2_8IntoIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hint(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.e)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8
  invoke void @_RNvMse_CstuaXukgBIa_10proc_macroNtB5_17ConcatTreesHelper3new(ptr nonnull sret([24 x i8]) align 8 %i.d, i64 %i.f)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  invoke void @_RINvYNtNtCstuaXukgBIa_10proc_macro12token_stream8IntoIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_eachNCINvXsi_B7_NtB7_11TokenStreamINtNtBX_7collect6ExtendNtB7_9TokenTreeE6extendB29_E0ECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvMse_CstuaXukgBIa_10proc_macroNtB5_17ConcatTreesHelper9append_to(ptr nonnull align 8 %i.a, ptr align 4 %0)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCstuaXukgBIa_10proc_macro17ConcatTreesHelperECsRujiHMkeh3_11proc_macro2(ptr nonnull align 8 %i.d) #10
          to label %.thread unwind label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

.thread:                                          ; preds = %bb.e, %bb.g
  %.pn6 = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %.pn6

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCstuaXukgBIa_10proc_macro12token_stream8IntoIterECsRujiHMkeh3_11proc_macro2(ptr nonnull align 8 %i.e) #10
          to label %.thread unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsj_CstuaXukgBIa_10proc_macroNtB6_11TokenStreamINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBv_E6extendINtNtNtBU_8adapters3map3MapIB1S_IB1S_INtNtB1W_3zip3ZipINtNtNtBW_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBW_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB4T_14tracked_structNtB65_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB6Y_11TokenStreamINtBQ_12FromIteratorB7o_E9from_iterB2n_E0ENCINvXs6_NtB6Y_3impNtB8w_11TokenStreamIB7I_B8G_E9from_iterB2i_E0EEB4T_(ptr align 4 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [88 x i8], align 8                ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(88) %1, i64 88, i1 false)
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBa_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENtNtNtB8_6traits8iterator8Iterator9size_hintB35_(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.f)
          to label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_IBN_INtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3u_14tracked_structNtB4G_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5z_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB5Z_E9from_iterB10_E0ENCINvXs6_NtB5z_3impNtB7q_11TokenStreamIB6j_B7A_E9from_iterBW_E0ENtNtB6n_8iterator8Iterator9size_hintB3u_.exit unwind label %bb.f

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_IBN_INtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3u_14tracked_structNtB4G_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5z_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB5Z_E9from_iterB10_E0ENCINvXs6_NtB5z_3impNtB7q_11TokenStreamIB6j_B7A_E9from_iterBW_E0ENtNtB6n_8iterator8Iterator9size_hintB3u_.exit: ; preds = %bb.a
  %i.g = load i64, ptr %i.d, align 8
  invoke void @_RNvMsf_CstuaXukgBIa_10proc_macroNtB5_19ConcatStreamsHelper3new(ptr nonnull sret([24 x i8]) align 8 %i.e, i64 %i.g)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_IBN_INtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3u_14tracked_structNtB4G_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5z_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB5Z_E9from_iterB10_E0ENCINvXs6_NtB5z_3impNtB7q_11TokenStreamIB6j_B7A_E9from_iterBW_E0ENtNtB6n_8iterator8Iterator9size_hintB3u_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  store ptr %i.e, ptr %i.a, align 8
  invoke void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2F_ENtCsRujiHMkeh3_11proc_macro211TokenStreamuNCNvMs0_NtB36_14tracked_structNtB6a_5Macro9try_macro0NCIB4R_B5m_NtNtB5o_3imp11TokenStreamuNCINvXsb_B5o_B5m_INtNtB4e_7collect12FromIteratorB5m_E9from_iterINtB4T_3MapBM_B62_EE0NCIB4R_B74_NtCstuaXukgBIa_10proc_macro11TokenStreamuNCINvXs6_B76_B74_IB7M_B74_E9from_iterIB8w_B8v_B7u_EE0NCINvNvB4a_8for_each4callB91_NCINvXsj_B93_B91_INtB7O_6ExtendB91_E6extendIB8w_Bah_B9G_EE0E0E0E0E0EB36_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvMsf_CstuaXukgBIa_10proc_macroNtB5_19ConcatStreamsHelper9append_to(ptr nonnull align 8 %i.c, ptr align 4 %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCstuaXukgBIa_10proc_macro19ConcatStreamsHelperECs66Sk1bwUSDc_5quote(ptr nonnull align 8 %i.e) #10
          to label %.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

.thread:                                          ; preds = %bb.d, %bb.f
  %.pn6 = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.j, %bb.d ]
  resume { ptr, i32 } %.pn6

bb.f:                                             ; preds = %bb.a, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_IBN_INtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3u_14tracked_structNtB4G_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5z_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB5Z_E9from_iterB10_E0ENCINvXs6_NtB5z_3impNtB7q_11TokenStreamIB6j_B7A_E9from_iterBW_E0ENtNtB6n_8iterator8Iterator9size_hintB3u_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapIBC_IBC_INtNtBG_3zip3ZipINtNtNtB4_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3H_14tracked_structNtB4T_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5M_11TokenStreamINtNtNtBI_6traits7collect12FromIteratorB6c_E9from_iterB1d_E0ENCINvXs6_NtB5M_3impNtB7D_11TokenStreamIB6w_B7N_E9from_iterB19_E0EEB3H_(ptr nonnull align 8 %i.f) #10
          to label %.thread unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsj_CstuaXukgBIa_10proc_macroNtB6_11TokenStreamINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBv_E6extendINtNtNtBU_8adapters3map3MapIB1S_IB1S_INtNtB1W_3zip3ZipINtNtNtBW_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBW_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB4T_8internedNtB65_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB6R_11TokenStreamINtBQ_12FromIteratorB7h_E9from_iterB2n_E0ENCINvXs6_NtB6R_3impNtB8p_11TokenStreamIB7B_B8z_E9from_iterB2i_E0EEB4T_(ptr align 4 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [96 x i8], align 8                ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(96) %1, i64 96, i1 false)
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBa_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENtNtNtB8_6traits8iterator8Iterator9size_hintB35_(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.f)
          to label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_IBN_INtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3u_8internedNtB4G_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5s_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB5S_E9from_iterB10_E0ENCINvXs6_NtB5s_3impNtB7j_11TokenStreamIB6c_B7t_E9from_iterBW_E0ENtNtB6g_8iterator8Iterator9size_hintB3u_.exit unwind label %bb.f

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_IBN_INtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3u_8internedNtB4G_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5s_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB5S_E9from_iterB10_E0ENCINvXs6_NtB5s_3impNtB7j_11TokenStreamIB6c_B7t_E9from_iterBW_E0ENtNtB6g_8iterator8Iterator9size_hintB3u_.exit: ; preds = %bb.a
  %i.g = load i64, ptr %i.d, align 8
  invoke void @_RNvMsf_CstuaXukgBIa_10proc_macroNtB5_19ConcatStreamsHelper3new(ptr nonnull sret([24 x i8]) align 8 %i.e, i64 %i.g)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_IBN_INtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3u_8internedNtB4G_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5s_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB5S_E9from_iterB10_E0ENCINvXs6_NtB5s_3impNtB7j_11TokenStreamIB6c_B7t_E9from_iterBW_E0ENtNtB6g_8iterator8Iterator9size_hintB3u_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  store ptr %i.e, ptr %i.a, align 8
  invoke void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2F_ENtCsRujiHMkeh3_11proc_macro211TokenStreamuNCNvMs0_NtB36_8internedNtB6a_5Macro9try_macro0NCIB4R_B5m_NtNtB5o_3imp11TokenStreamuNCINvXsb_B5o_B5m_INtNtB4e_7collect12FromIteratorB5m_E9from_iterINtB4T_3MapBM_B62_EE0NCIB4R_B6X_NtCstuaXukgBIa_10proc_macro11TokenStreamuNCINvXs6_B6Z_B6X_IB7F_B6X_E9from_iterIB8p_B8o_B7n_EE0NCINvNvB4a_8for_each4callB8U_NCINvXsj_B8W_B8U_INtB7H_6ExtendB8U_E6extendIB8p_Baa_B9z_EE0E0E0E0E0EB36_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvMsf_CstuaXukgBIa_10proc_macroNtB5_19ConcatStreamsHelper9append_to(ptr nonnull align 8 %i.c, ptr align 4 %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCstuaXukgBIa_10proc_macro19ConcatStreamsHelperECs66Sk1bwUSDc_5quote(ptr nonnull align 8 %i.e) #10
          to label %.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

.thread:                                          ; preds = %bb.d, %bb.f
  %.pn6 = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.j, %bb.d ]
  resume { ptr, i32 } %.pn6

bb.f:                                             ; preds = %bb.a, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_IBN_INtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3u_8internedNtB4G_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5s_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB5S_E9from_iterB10_E0ENCINvXs6_NtB5s_3impNtB7j_11TokenStreamIB6c_B7t_E9from_iterBW_E0ENtNtB6g_8iterator8Iterator9size_hintB3u_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapIBC_IBC_INtNtBG_3zip3ZipINtNtNtB4_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3H_8internedNtB4T_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5F_11TokenStreamINtNtNtBI_6traits7collect12FromIteratorB65_E9from_iterB1d_E0ENCINvXs6_NtB5F_3impNtB7w_11TokenStreamIB6p_B7G_E9from_iterB19_E0EEB3H_(ptr nonnull align 8 %i.f) #10
          to label %.thread unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsj_CstuaXukgBIa_10proc_macroNtB6_11TokenStreamINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBv_E6extendINtNtNtBU_8adapters3map3MapIB1S_IB1S_INtNtNtBW_5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn2ty4TypeENCNvMs_NtCshVzvyy7iigg_12salsa_macros10tracked_fnNtB3u_5Macro6try_fns1_0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB4H_11TokenStreamINtBQ_12FromIteratorB57_E9from_iterB2n_E0ENCINvXs6_NtB4H_3impNtB6f_11TokenStreamIB5r_B6p_E9from_iterB2i_E0EEB3w_(ptr align 4 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs3Eghgi3KVFH_3syn2ty4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.e)
  %i.f = load i64, ptr %i.c, align 8
  call void @_RNvMsf_CstuaXukgBIa_10proc_macroNtB5_19ConcatStreamsHelper3new(ptr nonnull sret([24 x i8]) align 8 %i.d, i64 %i.f)
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %2 = load <2 x ptr>, ptr %.sroa.3.0..sroa_idx, align 8
  store <2 x ptr> %2, ptr %i.g, align 8
  invoke void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs3Eghgi3KVFH_3syn2ty4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1r_8adapters3map8map_foldRBQ_NtCsRujiHMkeh3_11proc_macro211TokenStreamuNCNvMs_NtCshVzvyy7iigg_12salsa_macros10tracked_fnNtB3w_5Macro6try_fns1_0NCIB29_B2J_NtNtB2L_3imp11TokenStreamuNCINvXsb_B2L_B2J_INtNtB1p_7collect12FromIteratorB2J_E9from_iterINtB2b_3MapBF_B3p_EE0NCIB29_B4K_NtCstuaXukgBIa_10proc_macro11TokenStreamuNCINvXs6_B4M_B4K_IB5s_B4K_E9from_iterIB6c_B6b_B5a_EE0NCINvNvB1l_8for_each4callB6H_NCINvXsj_B6J_B6H_INtB5u_6ExtendB6H_E6extendIB6c_B7X_B7m_EE0E0E0E0E0EB3y_(ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr nonnull align 8 %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvMsf_CstuaXukgBIa_10proc_macroNtB5_19ConcatStreamsHelper9append_to(ptr nonnull align 8 %i.b, ptr align 4 %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCstuaXukgBIa_10proc_macro19ConcatStreamsHelperECs66Sk1bwUSDc_5quote(ptr nonnull align 8 %i.d) #10
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_INtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3l_14tracked_structNtB4x_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5q_11TokenStreamINtNtNtBa_6traits7collect12FromIteratorB5Q_E9from_iterBR_E0ENtNtB6e_8iterator8Iterator3mapNtCstuaXukgBIa_10proc_macro11TokenStreamNCINvXs6_NtB5q_3impNtB8o_11TokenStreamIB6a_B8y_E9from_iterB3_E0EB3l_(ptr nofree writeonly sret([88 x i8]) align 8 captures(none) initializes((0, 88)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_INtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3l_14tracked_structNtB4x_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5q_11TokenStreamINtNtNtBa_6traits7collect12FromIteratorB5Q_E9from_iterBR_E0ENtNtB6e_8iterator8Iterator3mapNtNtB5q_8fallback11TokenStreamNCINvXs6_NtB5q_3impNtB8e_11TokenStreamIB6a_B8o_E9from_iterB3_Es_0EB3l_(ptr nofree writeonly sret([88 x i8]) align 8 captures(none) initializes((0, 88)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_INtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3l_14tracked_structNtB4x_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5q_11TokenStreamINtNtNtBa_6traits7collect12FromIteratorB5Q_E9from_iterBR_E0ENtNtB6e_8iterator8Iterator7collectNtNtB5q_3imp11TokenStreamEB3l_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  tail call void @_RINvXs6_NtCsRujiHMkeh3_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBC_E9from_iterINtNtNtB11_8adapters3map3MapIB29_INtNtB2d_3zip3ZipINtNtNtB13_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB13_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB58_14tracked_structNtB6k_5Macro9try_macro0ENCINvXsb_B8_NtB8_11TokenStreamIBV_B7g_E9from_iterB2A_E0EEB58_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_INtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3l_8internedNtB4x_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5j_11TokenStreamINtNtNtBa_6traits7collect12FromIteratorB5J_E9from_iterBR_E0ENtNtB67_8iterator8Iterator3mapNtCstuaXukgBIa_10proc_macro11TokenStreamNCINvXs6_NtB5j_3impNtB8h_11TokenStreamIB63_B8r_E9from_iterB3_E0EB3l_(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) initializes((0, 96)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_INtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3l_8internedNtB4x_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5j_11TokenStreamINtNtNtBa_6traits7collect12FromIteratorB5J_E9from_iterBR_E0ENtNtB67_8iterator8Iterator3mapNtNtB5j_8fallback11TokenStreamNCINvXs6_NtB5j_3impNtB87_11TokenStreamIB63_B8h_E9from_iterB3_Es_0EB3l_(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) initializes((0, 96)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_INtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3l_8internedNtB4x_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5j_11TokenStreamINtNtNtBa_6traits7collect12FromIteratorB5J_E9from_iterBR_E0ENtNtB67_8iterator8Iterator7collectNtNtB5j_3imp11TokenStreamEB3l_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  tail call void @_RINvXs6_NtCsRujiHMkeh3_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBC_E9from_iterINtNtNtB11_8adapters3map3MapIB29_INtNtB2d_3zip3ZipINtNtNtB13_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB13_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB58_8internedNtB6k_5Macro9try_macro0ENCINvXsb_B8_NtB8_11TokenStreamIBV_B79_E9from_iterB2A_E0EEB58_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_INtNtNtBc_5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn2ty4TypeENCNvMs_NtCshVzvyy7iigg_12salsa_macros10tracked_fnNtB1X_5Macro6try_fns1_0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB3a_11TokenStreamINtNtNtBa_6traits7collect12FromIteratorB3A_E9from_iterBR_E0ENtNtB3Y_8iterator8Iterator3mapNtCstuaXukgBIa_10proc_macro11TokenStreamNCINvXs6_NtB3a_3impNtB68_11TokenStreamIB3U_B6i_E9from_iterB3_E0EB1Z_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_INtNtNtBc_5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn2ty4TypeENCNvMs_NtCshVzvyy7iigg_12salsa_macros10tracked_fnNtB1X_5Macro6try_fns1_0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB3a_11TokenStreamINtNtNtBa_6traits7collect12FromIteratorB3A_E9from_iterBR_E0ENtNtB3Y_8iterator8Iterator3mapNtNtB3a_8fallback11TokenStreamNCINvXs6_NtB3a_3impNtB5Y_11TokenStreamIB3U_B68_E9from_iterB3_Es_0EB1Z_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_INtNtNtBc_5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn2ty4TypeENCNvMs_NtCshVzvyy7iigg_12salsa_macros10tracked_fnNtB1X_5Macro6try_fns1_0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB3a_11TokenStreamINtNtNtBa_6traits7collect12FromIteratorB3A_E9from_iterBR_E0ENtNtB3Y_8iterator8Iterator7collectNtNtB3a_3imp11TokenStreamEB1Z_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  tail call void @_RINvXs6_NtCsRujiHMkeh3_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBC_E9from_iterINtNtNtB11_8adapters3map3MapIB29_INtNtNtB13_5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn2ty4TypeENCNvMs_NtCshVzvyy7iigg_12salsa_macros10tracked_fnNtB3I_5Macro6try_fns1_0ENCINvXsb_B8_NtB8_11TokenStreamIBV_B4Y_E9from_iterB2A_E0EEB3K_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_NtNtCs3Eghgi3KVFH_3syn8generics10TypeParamsNCNvNtCshVzvyy7iigg_12salsa_macros11salsa_value16add_field_bounds0ENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB2Q_7HashSetNtCsRujiHMkeh3_11proc_macro25IdentNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB3z_E6extendBR_E0ENtNtB50_8iterator8Iterator8for_eachNCINvXs1i_NtB2S_3mapINtB6s_7HashMapB3z_uB47_EIB4W_TB3z_uEE6extendB3_E0EB1I_(ptr %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %1, ptr %i.g, align 8
  store ptr %2, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCs3Eghgi3KVFH_3syn8generics9TypeParamNtCsRujiHMkeh3_11proc_macro25IdentuNCNvNtCshVzvyy7iigg_12salsa_macros11salsa_value16add_field_bounds0NCIB2_B1A_TB1A_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB3E_7HashSetB1A_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB1A_E6extendINtB4_3MapNtBX_10TypeParamsB29_EE0NCINvNvNtNtB5k_8iterator8Iterator8for_each4callB3n_NCINvXs1i_NtB3G_3mapINtB7u_7HashMapB1A_uB4r_EIB5g_B3n_E6extendIB5Y_B5X_B3v_EE0E0E0E0B2f_.exit.i.i.i, %bb.a
  %i.i = invoke align 8 ptr @_RNvXs2_NtCs3Eghgi3KVFH_3syn8genericsNtB5_10TypeParamsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr nonnull align 8 %i.f)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %.noexc4.i.i.i, %.noexc.i.i.i, %bb.e, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn8generics10TypeParamsECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.f) #10
          to label %bb.g unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapIBO_NtNtCs3Eghgi3KVFH_3syn8generics10TypeParamsNCNvNtCshVzvyy7iigg_12salsa_macros11salsa_value16add_field_bounds0ENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB2W_7HashSetNtCsRujiHMkeh3_11proc_macro25IdentNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB3F_E6extendBX_E0ENtNtB56_8iterator8Iterator4folduNCINvNvB5P_8for_each4callTB3F_uENCINvXs1i_NtB2Y_3mapINtB71_7HashMapB3F_uB4d_EIB52_B6K_E6extendBN_E0E0EB1O_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNCNvNtCshVzvyy7iigg_12salsa_macros11salsa_value16add_field_bounds0B5_(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull %i.h, ptr nonnull align 8 %i.i)
          to label %.noexc.i.i.i unwind label %bb.c

.noexc.i.i.i:                                     ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB8_7HashSetNtCsRujiHMkeh3_11proc_macro25IdentNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBQ_E6extendINtNtNtB2j_8adapters3map3MapNtNtCs3Eghgi3KVFH_3syn8generics10TypeParamsNCNvNtCshVzvyy7iigg_12salsa_macros11salsa_value16add_field_bounds0EE0B4v_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull %i.h, ptr nonnull align 8 %i.a)
          to label %.noexc4.i.i.i unwind label %bb.c

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  invoke void @_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callTNtCsRujiHMkeh3_11proc_macro25IdentuENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB20_7HashMapB1g_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters3map3MapIB4c_NtNtCs3Eghgi3KVFH_3syn8generics10TypeParamsNCNvNtCshVzvyy7iigg_12salsa_macros11salsa_value16add_field_bounds0ENCINvXs8_NtB22_3setINtB6C_7HashSetB1g_B2O_EIB3D_B1g_E6extendB4C_E0EE0E0B5u_(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.c)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCs3Eghgi3KVFH_3syn8generics9TypeParamNtCsRujiHMkeh3_11proc_macro25IdentuNCNvNtCshVzvyy7iigg_12salsa_macros11salsa_value16add_field_bounds0NCIB2_B1A_TB1A_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB3E_7HashSetB1A_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB1A_E6extendINtB4_3MapNtBX_10TypeParamsB29_EE0NCINvNvNtNtB5k_8iterator8Iterator8for_each4callB3n_NCINvXs1i_NtB3G_3mapINtB7u_7HashMapB1A_uB4r_EIB5g_B3n_E6extendIB5Y_B5X_B3v_EE0E0E0E0B2f_.exit.i.i.i unwind label %bb.c

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCs3Eghgi3KVFH_3syn8generics9TypeParamNtCsRujiHMkeh3_11proc_macro25IdentuNCNvNtCshVzvyy7iigg_12salsa_macros11salsa_value16add_field_bounds0NCIB2_B1A_TB1A_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB3E_7HashSetB1A_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB1A_E6extendINtB4_3MapNtBX_10TypeParamsB29_EE0NCINvNvNtNtB5k_8iterator8Iterator8for_each4callB3n_NCINvXs1i_NtB3G_3mapINtB7u_7HashMapB1A_uB4r_EIB5g_B3n_E6extendIB5Y_B5X_B3v_EE0E0E0E0B2f_.exit.i.i.i: ; preds = %.noexc4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.b

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.g:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapIBO_NtNtCs3Eghgi3KVFH_3syn8generics10TypeParamsNCNvNtCshVzvyy7iigg_12salsa_macros11salsa_value16add_field_bounds0ENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB2W_7HashSetNtCsRujiHMkeh3_11proc_macro25IdentNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB3F_E6extendBX_E0ENtNtB56_8iterator8Iterator4folduNCINvNvB5P_8for_each4callTB3F_uENCINvXs1i_NtB2Y_3mapINtB71_7HashMapB3F_uB4d_EIB52_B6K_E6extendBN_E0E0EB1O_.exit: ; preds = %bb.d
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn8generics10TypeParamsECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_NtNtCsRujiHMkeh3_11proc_macro212token_stream8IntoIterNCNvNtCshVzvyy7iigg_12salsa_macros5xform18respan_tokenstream0ENvNtBZ_3imp19into_compiler_tokenENtNtNtBa_6traits8iterator8Iterator7collectNtCstuaXukgBIa_10proc_macro11TokenStreamEB1S_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(48) %0, i64 48, i1 false)
  invoke void @_RNvXNtCsRujiHMkeh3_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hint(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.e)
          to label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_NtNtCsRujiHMkeh3_11proc_macro212token_stream8IntoIterNCNvNtCshVzvyy7iigg_12salsa_macros5xform18respan_tokenstream0ENvNtB14_3imp19into_compiler_tokenENtNtNtB9_6traits8iterator8Iterator9size_hintB1X_.exit.i unwind label %bb.e

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_NtNtCsRujiHMkeh3_11proc_macro212token_stream8IntoIterNCNvNtCshVzvyy7iigg_12salsa_macros5xform18respan_tokenstream0ENvNtB14_3imp19into_compiler_tokenENtNtNtB9_6traits8iterator8Iterator9size_hintB1X_.exit.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8
  invoke void @_RNvMse_CstuaXukgBIa_10proc_macroNtB5_17ConcatTreesHelper3new(ptr nonnull sret([24 x i8]) align 8 %i.d, i64 %i.f)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_NtNtCsRujiHMkeh3_11proc_macro212token_stream8IntoIterNCNvNtCshVzvyy7iigg_12salsa_macros5xform18respan_tokenstream0ENvNtB14_3imp19into_compiler_tokenENtNtNtB9_6traits8iterator8Iterator9size_hintB1X_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  invoke void @_RINvYNtNtCsRujiHMkeh3_11proc_macro212token_stream8IntoIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB10_8adapters3map8map_foldNtB7_9TokenTreeB2u_uNCNvNtCshVzvyy7iigg_12salsa_macros5xform18respan_tokenstream0NCIB1Y_B2u_NtCstuaXukgBIa_10proc_macro9TokenTreeuNvNtB7_3imp19into_compiler_tokenNCINvNvBU_8for_each4callB3Y_NCINvXsg_B40_NtB40_11TokenStreamINtNtBY_7collect12FromIteratorB3Y_E9from_iterINtB20_3MapIB6O_B3_B2O_EB4A_EE0E0E0E0EB2U_(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.d, ptr align 4 %.sroa.2.0.copyload.i)
          to label %_RINvXsg_CstuaXukgBIa_10proc_macroNtB6_11TokenStreamINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorNtB6_9TokenTreeE9from_iterINtNtNtBU_8adapters3map3MapIB2e_NtNtCsRujiHMkeh3_11proc_macro212token_stream8IntoIterNCNvNtCshVzvyy7iigg_12salsa_macros5xform18respan_tokenstream0ENvNtB2N_3imp19into_compiler_tokenEEB3G_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCstuaXukgBIa_10proc_macro17ConcatTreesHelperECsRujiHMkeh3_11proc_macro2(ptr nonnull align 8 %i.d) #10
          to label %.thread.i unwind label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
end_hunk_0
begin_hunk_1_@_RNvXsU_CstuaXukgBIa_10proc_macroNtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshVzvyy7iigg_12salsa_macros:bb.a
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_RNvXs8_NtNtCstuaXukgBIa_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr nonnull align 4 %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_RNvXsb_NtCscdodAO9FK5_5alloc6borrowINtB5_3CoweENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %0, ptr align 8 %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr %i.d, i64 %i.f, ptr align 8 %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.b, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtCs3Eghgi3KVFH_3syn5parseNvYNtCsRujiHMkeh3_11proc_macro25IdentNtNtB7_3ext8IdentExt9parse_anyNtB5_6Parser14___parse_scopedCshVzvyy7iigg_12salsa_macros(ptr sret([32 x i8]) align 8 %0, i32 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [32 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 3 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 2 uses
  %i.l = alloca [16 x i8], align 8                ; 2 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.n = call { ptr, i64 } @_RNvMNtCs3Eghgi3KVFH_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.c) ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  store ptr %i.o, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.p, ptr %i.q, align 8
  %i.r = invoke { ptr, ptr } @_RNvMNtCs3Eghgi3KVFH_3syn6bufferNtB2_11TokenBuffer5begin(ptr nonnull align 8 %i.m)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn8 = phi { ptr, i32 } [ %i.s, %bb.c ], [ %.pn, %bb.h ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.m) #10
          to label %bb.y unwind label %bb.x

bb.c:                                             ; preds = %.invoke, %bb.f, %bb.e, %bb.d, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.t = extractvalue { ptr, ptr } %i.r, 0
  %i.u = extractvalue { ptr, ptr } %i.r, 1
  store i8 0, ptr %i.k, align 8
  invoke void @_RNvMs7_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCs3Eghgi3KVFH_3syn5parse10UnexpectedE3newBK_(ptr nonnull sret([16 x i8]) align 8 %i.l, ptr nonnull align 8 %i.k)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.v = invoke ptr @_RNvMs7_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell4CellNtNtCs3Eghgi3KVFH_3syn5parse10UnexpectedEE3newB1e_(ptr nonnull align 8 %i.l)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3Eghgi3KVFH_3syn5parse16new_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.j, i32 %1, ptr %i.t, ptr %i.u, ptr %i.v)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvYNvYNtCsRujiHMkeh3_11proc_macro25IdentNtNtCs3Eghgi3KVFH_3syn3ext8IdentExt9parse_anyINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtNtBH_5parse11ParseBufferEE9call_onceCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr nonnull align 8 %i.j)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.aa, %bb.n ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j) #10
          to label %bb.b unwind label %bb.x

bb.i:                                             ; preds = %.invoke13, %bb.l, %bb.j, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsRujiHMkeh3_11proc_macro25IdentNtNtCs3Eghgi3KVFH_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1m_(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.x = load i64, ptr %i.h, align 8
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsRujiHMkeh3_11proc_macro25IdentNtNtCs3Eghgi3KVFH_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1i_EE13from_residualB1m_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @52)
          to label %.invoke unwind label %bb.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  invoke void @_RNvMs9_NtCs3Eghgi3KVFH_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.j)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.u, %bb.s, %bb.r, %bb.q, %bb.o, %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsRujiHMkeh3_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.i) #10
          to label %bb.h unwind label %bb.x

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtCs3Eghgi3KVFH_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.ab = load i64, ptr %i.f, align 8
  %.not = icmp eq i64 %i.ab, -1
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsRujiHMkeh3_11proc_macro25IdentNtNtCs3Eghgi3KVFH_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1i_EE13from_residualB1m_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @51)
          to label %.invoke13 unwind label %bb.n

bb.r:                                             ; preds = %bb.p
  %i.ac = invoke { ptr, ptr } @_RNvMs9_NtCs3Eghgi3KVFH_3syn5parseNtB5_11ParseBuffer6cursor(ptr nonnull align 8 %i.j)
          to label %bb.s unwind label %bb.n       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1
  %i.af = invoke { i32, i8 } @_RNvNtCs3Eghgi3KVFH_3syn5parse33span_of_unexpected_ignoring_nones(ptr %i.ad, ptr %i.ae)
          to label %bb.t unwind label %bb.n       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.ag = extractvalue { i32, i8 } %i.af, 1       ; 2 uses
  %.not6.not = icmp eq i8 %i.ag, -1
  br i1 %.not6.not, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ah = extractvalue { i32, i8 } %i.af, 0
  invoke void @_RNvNtCs3Eghgi3KVFH_3syn5parse20err_unexpected_token(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.ah, i8 %i.ag)
          to label %bb.v unwind label %bb.n

.thread:                                          ; preds = %bb.t
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %.invoke

bb.v:                                             ; preds = %bb.u
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  br label %.invoke13

bb.w:                                             ; preds = %.invoke
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.m)
  ret void

.invoke13:                                        ; preds = %bb.q, %bb.v
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsRujiHMkeh3_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.i)
          to label %.invoke unwind label %bb.i

.invoke:                                          ; preds = %.invoke13, %bb.l, %.thread
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j)
          to label %bb.w unwind label %bb.c

bb.x:                                             ; preds = %bb.n, %bb.h, %bb.b
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.y:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn8
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3_IB3_INtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3o_14tracked_structNtB4A_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5t_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB5T_E9from_iterBU_E0ENCINvXs6_NtB5t_3impNtB7j_11TokenStreamIB6d_B7t_E9from_iterBQ_Es_0ENtNtB6h_8iterator8Iterator7flattenB3o_(ptr nofree writeonly sret([152 x i8]) align 8 captures(none) initializes((0, 8), (32, 40), (64, 152)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %.sroa.5 = alloca [88 x i8], align 8            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull readonly align 8 dereferenceable(88) %1, i64 88, i1 false)
  store ptr null, ptr %0, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3_IB3_INtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3o_8internedNtB4A_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5m_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB5M_E9from_iterBU_E0ENCINvXs6_NtB5m_3impNtB7c_11TokenStreamIB66_B7m_E9from_iterBQ_Es_0ENtNtB6a_8iterator8Iterator7flattenB3o_(ptr nofree writeonly sret([160 x i8]) align 8 captures(none) initializes((0, 104), (128, 136)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3_IB3_INtNtNtBb_5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn2ty4TypeENCNvMs_NtCshVzvyy7iigg_12salsa_macros10tracked_fnNtB20_5Macro6try_fns1_0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB3d_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB3D_E9from_iterBU_E0ENCINvXs6_NtB3d_3impNtB53_11TokenStreamIB3X_B5d_E9from_iterBQ_Es_0ENtNtB41_8iterator8Iterator7flattenB22_(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) initializes((0, 40), (64, 72)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn8generics14WherePredicateENCNvNtCshVzvyy7iigg_12salsa_macros11salsa_value35assert_salsa_value_field_with_proof0ENtNtNtCs66Sk1bwUSDc_5quote9___private3ext14RepIteratorExt15quote_into_iterB28_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCshVzvyy7iigg_12salsa_macros11salsa_value12CheckedFieldENCNvB1i_18salsa_value_derives_0ENtNtNtCs66Sk1bwUSDc_5quote9___private3ext14RepIteratorExt15quote_into_iterB1k_(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYRNtNtCs3Eghgi3KVFH_3syn8generics12GenericParamNtNtCs66Sk1bwUSDc_5quote9to_tokens8ToTokens17into_token_streamCshVzvyy7iigg_12salsa_macros(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCsRujiHMkeh3_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !78
  invoke void @_RNvXNtCs66Sk1bwUSDc_5quote9to_tokensRNtNtCs3Eghgi3KVFH_3syn8generics12GenericParamNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %_RNvYRNtNtCs3Eghgi3KVFH_3syn8generics12GenericParamNtNtCs66Sk1bwUSDc_5quote9to_tokens8ToTokens15to_token_streamCshVzvyy7iigg_12salsa_macros.exit unwind label %bb.b, !noalias !78

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsRujiHMkeh3_11proc_macro211TokenStreamECs66Sk1bwUSDc_5quote(ptr nonnull align 8 %i.a) #10
          to label %bb.d unwind label %bb.c, !noalias !78

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11, !noalias !78
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RNvYRNtNtCs3Eghgi3KVFH_3syn8generics12GenericParamNtNtCs66Sk1bwUSDc_5quote9to_tokens8ToTokens15to_token_streamCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYRNtNtCs3Eghgi3KVFH_3syn8generics8GenericsNtNtCs66Sk1bwUSDc_5quote9to_tokens8ToTokens17into_token_streamCshVzvyy7iigg_12salsa_macros(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCsRujiHMkeh3_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !81
  invoke void @_RNvXNtNtCs3Eghgi3KVFH_3syn8generics8printingNtB4_8GenericsNtNtCs66Sk1bwUSDc_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %1, ptr nonnull align 8 %i.a)
          to label %_RNvYRNtNtCs3Eghgi3KVFH_3syn8generics8GenericsNtNtCs66Sk1bwUSDc_5quote9to_tokens8ToTokens15to_token_streamCshVzvyy7iigg_12salsa_macros.exit unwind label %bb.b, !noalias !81

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsRujiHMkeh3_11proc_macro211TokenStreamECs66Sk1bwUSDc_5quote(ptr nonnull align 8 %i.a) #10
          to label %bb.d unwind label %bb.c, !noalias !81

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11, !noalias !81
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RNvYRNtNtCs3Eghgi3KVFH_3syn8generics8GenericsNtNtCs66Sk1bwUSDc_5quote9to_tokens8ToTokens15to_token_streamCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB8_5slice4iter4IterReENtB2_12IntoIterator9into_iterCshVzvyy7iigg_12salsa_macros(ptr, ptr) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3Eghgi3KVFH_3syn(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRReNtB6_5Debug3fmtCshVzvyy7iigg_12salsa_macros(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr align 8, ptr, ptr align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn4item8ImplItemENCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2h_5Macro12try_generate0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldNtCsRujiHMkeh3_11proc_macro25IdentTB4s_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB5h_7HashSetB4s_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtB3v_7collect6ExtendB4s_E6extendBV_E0NCINvNvB3r_8for_each4callB50_NCINvXs1i_NtB5j_3mapINtB8a_7HashMapB4s_uB64_EIB6T_B50_E6extendINtB4a_3MapBV_B58_EE0E0E0EB2j_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2F_ENtCsRujiHMkeh3_11proc_macro211TokenStreamuNCNvMs0_NtB36_14tracked_structNtB6a_5Macro9try_macro0NCIB4R_B5m_NtNtB5o_3imp11TokenStreamuNCINvXsb_B5o_B5m_INtNtB4e_7collect12FromIteratorB5m_E9from_iterINtB4T_3MapBM_B62_EE0NCIB4R_B74_NtCstuaXukgBIa_10proc_macro11TokenStreamuNCINvXs6_B76_B74_IB7M_B74_E9from_iterIB8w_B8v_B7u_EE0NCINvNvB4a_8for_each4callB91_NCINvXsj_B93_B91_INtB7O_6ExtendB91_E6extendIB8w_Bah_B9G_EE0E0E0E0E0EB36_(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2F_ENtCsRujiHMkeh3_11proc_macro211TokenStreamuNCNvMs0_NtB36_8internedNtB6a_5Macro9try_macro0NCIB4R_B5m_NtNtB5o_3imp11TokenStreamuNCINvXsb_B5o_B5m_INtNtB4e_7collect12FromIteratorB5m_E9from_iterINtB4T_3MapBM_B62_EE0NCIB4R_B6X_NtCstuaXukgBIa_10proc_macro11TokenStreamuNCINvXs6_B6Z_B6X_IB7F_B6X_E9from_iterIB8p_B8o_B7n_EE0NCINvNvB4a_8for_each4callB8U_NCINvXsj_B8W_B8U_INtB7H_6ExtendB8U_E6extendIB8p_Baa_B9z_EE0E0E0E0E0EB36_(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB13_4item5FnArgEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldRB1C_INtNtBb_6result6ResultRNtNtB13_2ty4TypeNtNtB13_5error5ErrorEuINtNtNtBb_3ops12control_flow11ControlFlowIB4c_B3y_EENCNvNtCshVzvyy7iigg_12salsa_macros7fn_util9input_tys0NCINvXB7_INtB7_12GenericShuntINtB2K_3MapBN_B51_EIB3d_NtNtBb_7convert10InfallibleB3P_EEB1X_8try_folduNCINvNvB1X_12try_for_each4callB3y_B4Q_NcNtB4Q_5Break0E0B4Q_E0E0B4b_EB57_(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn4attr9AttributeENCNvNtCshVzvyy7iigg_12salsa_macros11salsa_value29reject_salsa_value_attributes0ENtNtNtBa_6traits8iterator8Iterator4foldNtNtB1x_5error5ErrorNCINvNtB8_3map8map_foldRB1t_B40_B40_NCB27_s_0NCB27_s0_0E0EB2b_(ptr sret([24 x i8]) align 8, ptr, ptr, ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtCsRujiHMkeh3_11proc_macro25IdentEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjRB1y_EB1y_uNCNvNtCshVzvyy7iigg_12salsa_macros9supertype9enum_impls0_0NCINvNvB28_8for_each4callB1y_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4U_3VecB1y_E14extend_trustedINtB2R_3MapBS_B3m_EE0E0E0EB3s_(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjRB1y_ENtCsRujiHMkeh3_11proc_macro25IdentuNCNvMB1A_INtB1A_11SalsaStructNtNtB1C_8interned14InternedStructE17field_indexed_tys0NCINvNvB2w_8for_each4callB3F_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6b_3VecB3F_E14extend_trustedINtB3f_3MapBS_B4e_EE0E0E0EB1C_(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB8_4data5FieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB16_8adapters3map12map_try_foldRBH_INtNtB18_6result6ResultNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldNtNtB8_5error5ErrorEuINtNtNtB18_3ops12control_flow11ControlFlowIB4s_B3a_EENvMs_B3c_B3a_3newNCINvXB2c_INtB2c_12GenericShuntINtB2a_3MapB3_B5i_EIB2O_NtNtB18_7convert10InfallibleB46_EEB10_8try_folduNCINvNvB10_12try_for_each4callB3a_B57_NcNtB57_5Break0E0B57_E0E0B4r_EB3e_(ptr sret([136 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtCsRujiHMkeh3_11proc_macro27LiteraluNvMsG_B27_B25_16usize_unsuffixedNCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3N_3VecB25_E14extend_trustedINtB1B_3MapB3_B2G_EE0E0E0ECshVzvyy7iigg_12salsa_macros(i64, i64, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs3Eghgi3KVFH_3syn2ty4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1r_8adapters3map8map_foldRBQ_NtCsRujiHMkeh3_11proc_macro211TokenStreamuNCNvMs_NtCshVzvyy7iigg_12salsa_macros10tracked_fnNtB3w_5Macro6try_fns1_0NCIB29_B2J_NtNtB2L_3imp11TokenStreamuNCINvXsb_B2L_B2J_INtNtB1p_7collect12FromIteratorB2J_E9from_iterINtB2b_3MapBF_B3p_EE0NCIB29_B4K_NtCstuaXukgBIa_10proc_macro11TokenStreamuNCINvXs6_B4M_B4K_IB5s_B4K_E9from_iterIB6c_B6b_B5a_EE0NCINvNvB1l_8for_each4callB6H_NCINvXsj_B6J_B6H_INtB5u_6ExtendB6H_E6extendIB6c_B7X_B7m_EE0E0E0E0E0EB3y_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs3Eghgi3KVFH_3syn2ty4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1r_8adapters3map8map_foldRBQ_BQ_uNCNvNtCshVzvyy7iigg_12salsa_macros9supertype9enum_impls_0NCINvNvB1l_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4j_3VecBQ_E14extend_trustedINtB2b_3MapBF_B2N_EE0E0E0EB2T_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionRNtNtBU_11salsa_value20ManualRetentionProofEuNCNvMBS_INtBS_11SalsaStructNtNtBU_14tracked_struct13TrackedStructE29field_manual_retention_proofs0NCINvNvB1N_8for_each4callB3b_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6s_3VecB3b_E14extend_trustedINtB2D_3MapBF_B4g_EE0E0E0EBU_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_RNtCsRujiHMkeh3_11proc_macro25IdentuNCNvMBS_INtBS_11SalsaStructNtNtBU_14tracked_struct13TrackedStructE9field_ids0NCINvNvB1N_8for_each4callB3b_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5C_3VecB3b_E14extend_trustedINtB2D_3MapBF_B3L_EE0E0E0EBU_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_RNtNtCs3Eghgi3KVFH_3syn2ty4TypeuNCNvMBS_INtBS_11SalsaStructNtNtBU_14tracked_struct13TrackedStructE9field_tys0NCINvNvB1N_8for_each4callB3b_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5y_3VecB3b_E14extend_trustedINtB2D_3MapBF_B3H_EE0E0E0EBU_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_RSRNtNtCs3Eghgi3KVFH_3syn4attr9AttributeuNCNvMBS_INtBS_11SalsaStructNtNtBU_5input11InputStructE11field_attrs0NCINvNvB1N_8for_each4callB3b_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5y_3VecB3b_E14extend_trustedINtB2D_3MapBF_B3Q_EE0E0E0EBU_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_RNtCsRujiHMkeh3_11proc_macro25IdentuNCNvMBS_INtBS_11SalsaStructNtNtBU_5input11InputStructE16field_getter_ids0NCINvNvB1N_8for_each4callB3b_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5y_3VecB3b_E14extend_trustedINtB2D_3MapBF_B3L_EE0E0E0EBU_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_RNtCsRujiHMkeh3_11proc_macro25IdentuNCNvMBS_INtBS_11SalsaStructNtNtBU_5input11InputStructE16field_setter_ids0NCINvNvB1N_8for_each4callB3b_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5y_3VecB3b_E14extend_trustedINtB2D_3MapBF_B3L_EE0E0E0EBU_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_NtCsRujiHMkeh3_11proc_macro25IdentuNCNvMBS_INtBS_11SalsaStructNtNtBU_5input11InputStructE20field_durability_ids0NCINvNvB1N_8for_each4callB3b_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5B_3VecB3b_E14extend_trustedINtB2D_3MapBF_B3K_EE0E0E0EBU_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_RNtCsRujiHMkeh3_11proc_macro25IdentuNCNvMBS_INtBS_11SalsaStructNtNtBU_5input11InputStructE9field_ids0NCINvNvB1N_8for_each4callB3b_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5q_3VecB3b_E14extend_trustedINtB2D_3MapBF_B3L_EE0E0E0EBU_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_RNtNtCs3Eghgi3KVFH_3syn2ty4TypeuNCNvMBS_INtBS_11SalsaStructNtNtBU_5input11InputStructE9field_tys0NCINvNvB1N_8for_each4callB3b_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5m_3VecB3b_E14extend_trustedINtB2D_3MapBF_B3H_EE0E0E0EBU_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_RNtNtCs3Eghgi3KVFH_3syn11restriction10VisibilityuNCNvMBS_INtBS_11SalsaStructNtNtBU_5input11InputStructE9field_vis0NCINvNvB1N_8for_each4callB3b_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5D_3VecB3b_E14extend_trustedINtB2D_3MapBF_B3Y_EE0E0E0EBU_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_RSRNtNtCs3Eghgi3KVFH_3syn4attr9AttributeuNCNvMBS_INtBS_11SalsaStructNtNtBU_8interned14InternedStructE11field_attrs0NCINvNvB1N_8for_each4callB3b_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5E_3VecB3b_E14extend_trustedINtB2D_3MapBF_B3Q_EE0E0E0EBU_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_RNtCsRujiHMkeh3_11proc_macro25IdentuNCNvMBS_INtBS_11SalsaStructNtNtBU_8interned14InternedStructE16field_getter_ids0NCINvNvB1N_8for_each4callB3b_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5E_3VecB3b_E14extend_trustedINtB2D_3MapBF_B3L_EE0E0E0EBU_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionRNtNtBU_11salsa_value20ManualRetentionProofEuNCNvMBS_INtBS_11SalsaStructNtNtBU_8interned14InternedStructE29field_manual_retention_proofs0NCINvNvB1N_8for_each4callB3b_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6m_3VecB3b_E14extend_trustedINtB2D_3MapBF_B4g_EE0E0E0EBU_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_RNtCsRujiHMkeh3_11proc_macro25IdentuNCNvMBS_INtBS_11SalsaStructNtNtBU_8interned14InternedStructE9field_ids0NCINvNvB1N_8for_each4callB3b_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5w_3VecB3b_E14extend_trustedINtB2D_3MapBF_B3L_EE0E0E0EBU_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_RNtNtCs3Eghgi3KVFH_3syn2ty4TypeuNCNvMBS_INtBS_11SalsaStructNtNtBU_8interned14InternedStructE9field_tys0NCINvNvB1N_8for_each4callB3b_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5s_3VecB3b_E14extend_trustedINtB2D_3MapBF_B3H_EE0E0E0EBU_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_RNtNtCs3Eghgi3KVFH_3syn11restriction10VisibilityuNCNvMBS_INtBS_11SalsaStructNtNtBU_8interned14InternedStructE9field_vis0NCINvNvB1N_8for_each4callB3b_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5J_3VecB3b_E14extend_trustedINtB2D_3MapBF_B3Y_EE0E0E0EBU_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_NtCsRujiHMkeh3_11proc_macro211TokenStreamuNvMs_BS_BQ_7optionsNCINvNvB1N_8for_each4callB3b_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4M_3VecB3b_E14extend_trustedINtB2D_3MapBF_B3R_EE0E0E0EBU_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1s_8adapters3map8map_foldRBQ_BR_uNCNvMs_NtCshVzvyy7iigg_12salsa_macros10tracked_fnNtB2V_5Macro6try_fns_0NCINvNvB1m_8for_each4callBR_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4y_3VecBR_E14extend_trustedINtB2c_3MapBF_B2O_EE0E0E0EB2X_(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1y_8adapters3map8map_foldBW_BX_uNCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB3e_5Macro14validity_checks0_0NCINvNvB1s_8for_each4callBX_NCINvMsj_B8_INtB8_3VecBX_E14extend_trustedINtB2y_3MapBH_B39_EE0E0E0EB3g_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYNtNtCsRujiHMkeh3_11proc_macro212token_stream8IntoIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB10_8adapters3map8map_foldNtB7_9TokenTreeB2u_uNCNvNtCshVzvyy7iigg_12salsa_macros5xform18respan_tokenstream0NCIB1Y_B2u_NtCstuaXukgBIa_10proc_macro9TokenTreeuNvNtB7_3imp19into_compiler_tokenNCINvNvBU_8for_each4callB3Y_NCINvXsg_B40_NtB40_11TokenStreamINtNtBY_7collect12FromIteratorB3Y_E9from_iterINtB20_3MapIB6O_B3_B2O_EB4A_EE0E0E0E0EB2U_(ptr align 8, ptr align 8, ptr align 4) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYNtNtCsRujiHMkeh3_11proc_macro212token_stream8IntoIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB10_8adapters3map8map_foldNtB7_9TokenTreeB2u_uNCNvNtCshVzvyy7iigg_12salsa_macros5xform18respan_tokenstream0NCINvNvBU_8for_each4callB2u_NCINvXsa_NtB7_8fallbackNtB4o_11TokenStreamINtNtBY_7collect6ExtendB2u_E6extendINtB20_3MapB3_B2O_EE0E0E0EB2U_(ptr align 8, ptr align 8, ptr align 4) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMse_CstuaXukgBIa_10proc_macroNtB5_17ConcatTreesHelper3new(ptr sret([24 x i8]) align 8, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvMse_CstuaXukgBIa_10proc_macroNtB5_17ConcatTreesHelper5build(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_1
