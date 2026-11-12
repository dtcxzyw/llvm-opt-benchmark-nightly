Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.04?download=true
inline.NumInlined: 2099
inline.NumDeleted: 952
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 148
loop-unroll.NumUnrolled: 150
begin_hunk_0_@_RNvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks19get_ligature_carets0EINtNtB6_6result6ResultzNtNtB2z_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2z_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  %.not.i.i.i.i = icmp eq i64 %i.n, -3
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorINtNtBa_6result6ResultNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8builders17CaretValueBuilderNtNtCshxhuDJfZv4T_6fontbe5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB43_B2a_EENCNvNtNtB3t_8features5marks19get_ligature_carets0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4S_EIB1P_zB3p_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7a_12try_for_each4callB2a_B4H_NcNtB4H_5Break0E0B4H_E0E0B3t_.exit.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorINtNtBa_6result6ResultNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8builders17CaretValueBuilderNtNtCshxhuDJfZv4T_6fontbe5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB43_B2a_EENCNvNtNtB3t_8features5marks19get_ligature_carets0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4S_EIB1P_zB3p_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7a_12try_for_each4callB2a_B4H_NcNtB4H_5Break0E0B4H_E0E0B3t_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.r = icmp eq ptr %i.l, %i.e
  br i1 %i.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8builders17CaretValueBuilderEECshxhuDJfZv4T_6fontbe.exit, label %bb.b

bb.h:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorINtNtBa_6result6ResultNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8builders17CaretValueBuilderNtNtCshxhuDJfZv4T_6fontbe5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB43_B2a_EENCNvNtNtB3t_8features5marks19get_ligature_carets0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4S_EIB1P_zB3p_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7a_12try_for_each4callB2a_B4H_NcNtB4H_5Break0E0B4H_E0E0B3t_.exit.i.i.i
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i.i, i64 32, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8builders17CaretValueBuilderEECshxhuDJfZv4T_6fontbe.exit.sink.split

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8builders17CaretValueBuilderEECshxhuDJfZv4T_6fontbe.exit.sink.split: ; preds = %bb.h, %_RINvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks19get_ligature_carets0EINtNtB7_6result6ResultzNtNtB2A_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4g_12try_for_each4callNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8builders17CaretValueBuilderINtNtNtB7_3ops12control_flow11ControlFlowB5s_ENcNtB6H_5Break0E0B6H_EB2A_.exit.thread6
  %storemerge.ph = phi i64 [ -2, %_RINvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks19get_ligature_carets0EINtNtB7_6result6ResultzNtNtB2A_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4g_12try_for_each4callNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8builders17CaretValueBuilderINtNtNtB7_3ops12control_flow11ControlFlowB5s_ENcNtB6H_5Break0E0B6H_EB2A_.exit.thread6 ], [ %i.n, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8builders17CaretValueBuilderEECshxhuDJfZv4T_6fontbe.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8builders17CaretValueBuilderEECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8builders17CaretValueBuilderEECshxhuDJfZv4T_6fontbe.exit.sink.split, %bb.a
  %storemerge = phi i64 [ -2, %bb.a ], [ %storemerge.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8builders17CaretValueBuilderEECshxhuDJfZv4T_6fontbe.exit.sink.split ], [ -2, %bb.g ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks19get_ligature_carets0EINtNtB6_6result6ResultzNtNtB2z_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !15, !noundef !5
  %i.c = load i64, ptr %i.b, align 8, !range !17, !noundef !5
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 104
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.j, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtB6_6option6OptionRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks14resolve_anchor0EINtNtB6_6result6ResultzNtNtCsgdm2QMcbaeA_10fontdrasil10variations10DeltaErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2J_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [80 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5911)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5912
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !5911, !nonnull !5, !align !15, !noundef !5
  call void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks14resolve_anchor0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtCsgdm2QMcbaeA_10fontdrasil10variations10DeltaErrorEEB3l_8try_folduNCINvNvB3l_12try_for_each4callIB1o_NtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEINtNtNtBc_3ops12control_flow11ControlFlowB6y_ENcNtB7N_5Break0E0B7N_E0IB7O_B7N_EEB2t_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %i.d), !noalias !5913
  %i.e = load i64, ptr %i.b, align 8, !range !5914, !noalias !5912, !noundef !5 ; 3 uses
  %.not.i = icmp eq i64 %i.e, -3
  br i1 %.not.i, label %_RINvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtB7_6option6OptionRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks14resolve_anchor0EINtNtB7_6result6ResultzNtNtCsgdm2QMcbaeA_10fontdrasil10variations10DeltaErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4T_12try_for_each4callIB1F_NtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEINtNtNtB7_3ops12control_flow11ControlFlowB65_ENcNtB7k_5Break0E0B7k_EB2K_.exit.thread, label %_RINvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtB7_6option6OptionRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks14resolve_anchor0EINtNtB7_6result6ResultzNtNtCsgdm2QMcbaeA_10fontdrasil10variations10DeltaErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4T_12try_for_each4callIB1F_NtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEINtNtNtB7_3ops12control_flow11ControlFlowB65_ENcNtB7k_5Break0E0B7k_EB2K_.exit

_RINvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtB7_6option6OptionRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks14resolve_anchor0EINtNtB7_6result6ResultzNtNtCsgdm2QMcbaeA_10fontdrasil10variations10DeltaErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4T_12try_for_each4callIB1F_NtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEINtNtNtB7_3ops12control_flow11ControlFlowB65_ENcNtB7k_5Break0E0B7k_EB2K_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5912
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtB4_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEECshxhuDJfZv4T_6fontbe.exit

_RINvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtB7_6option6OptionRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks14resolve_anchor0EINtNtB7_6result6ResultzNtNtCsgdm2QMcbaeA_10fontdrasil10variations10DeltaErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4T_12try_for_each4callIB1F_NtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEINtNtNtB7_3ops12control_flow11ControlFlowB65_ENcNtB7k_5Break0E0B7k_EB2K_.exit: ; preds = %bb.a
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx7, i64 80, i1 false), !noalias !5911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5912
  %.not = icmp eq i64 %i.e, -2
  br i1 %.not, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtB4_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEECshxhuDJfZv4T_6fontbe.exit, label %bb.b

bb.b:                                             ; preds = %_RINvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtB7_6option6OptionRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks14resolve_anchor0EINtNtB7_6result6ResultzNtNtCsgdm2QMcbaeA_10fontdrasil10variations10DeltaErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4T_12try_for_each4callIB1F_NtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEINtNtNtB7_3ops12control_flow11ControlFlowB65_ENcNtB7k_5Break0E0B7k_EB2K_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtB4_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEECshxhuDJfZv4T_6fontbe.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtB4_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEECshxhuDJfZv4T_6fontbe.exit: ; preds = %_RINvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtB7_6option6OptionRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks14resolve_anchor0EINtNtB7_6result6ResultzNtNtCsgdm2QMcbaeA_10fontdrasil10variations10DeltaErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4T_12try_for_each4callIB1F_NtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEINtNtNtB7_3ops12control_flow11ControlFlowB65_ENcNtB7k_5Break0E0B7k_EB2K_.exit, %_RINvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtB7_6option6OptionRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks14resolve_anchor0EINtNtB7_6result6ResultzNtNtCsgdm2QMcbaeA_10fontdrasil10variations10DeltaErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4T_12try_for_each4callIB1F_NtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEINtNtNtB7_3ops12control_flow11ControlFlowB65_ENcNtB7k_5Break0E0B7k_EB2K_.exit.thread, %bb.b
  %storemerge = phi i64 [ %i.e, %bb.b ], [ -2, %_RINvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtB7_6option6OptionRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks14resolve_anchor0EINtNtB7_6result6ResultzNtNtCsgdm2QMcbaeA_10fontdrasil10variations10DeltaErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4T_12try_for_each4callIB1F_NtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEINtNtNtB7_3ops12control_flow11ControlFlowB65_ENcNtB7k_5Break0E0B7k_EB2K_.exit.thread ], [ -2, %_RINvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtB7_6option6OptionRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks14resolve_anchor0EINtNtB7_6result6ResultzNtNtCsgdm2QMcbaeA_10fontdrasil10variations10DeltaErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4T_12try_for_each4callIB1F_NtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEINtNtNtB7_3ops12control_flow11ControlFlowB65_ENcNtB7k_5Break0E0B7k_EB2K_.exit ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtB6_6option6OptionRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks14resolve_anchor0EINtNtB6_6result6ResultzNtNtCsgdm2QMcbaeA_10fontdrasil10variations10DeltaErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2J_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !15, !noundef !5
  %i.c = load i64, ptr %i.b, align 8, !range !28, !noundef !5
  %.not = icmp eq i64 %i.c, -1
  %.val = load ptr, ptr %1, align 8, !nonnull !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %.sink = select i1 %.not, i64 %i.h, i64 0
  store i64 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.j, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_6AccessNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtB13_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !20, !noundef !5
  switch i64 %i.d, label %default.unreachable36 [
    i64 0, label %bb.e
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.b
    i64 4, label %bb.c
    i64 5, label %bb.d
  ]

default.unreachable36:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 8)
  %i.f = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @130)
  %i.g = call noundef zeroext i1 @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 3)
  %i.i = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @130)
  %i.j = call noundef zeroext i1 @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 3)
  %i.l = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131)
  %i.m = call noundef zeroext i1 @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !align !15, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !5, !nonnull !5
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 4) #37
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.s, %bb.e ], [ %i.m, %bb.d ], [ %i.y, %bb.g ], [ %i.j, %bb.c ], [ %i.ae, %bb.h ], [ %i.g, %bb.b ]
  ret i1 %.sroa.0.0.in

bb.g:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !align !15, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !5, !nonnull !5
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 7) #37
  br label %bb.f

bb.h:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !5, !align !15, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !5, !nonnull !5
  %i.ae = tail call noundef zeroext i1 %i.ad(ptr noundef nonnull %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 3) #37
  br label %bb.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs0_NtCshxhuDJfZv4T_6fontbe13orchestrationNtB5_9AnyWorkIdNtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10Identifier12discriminant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #10 {
_RNvXs_NtCshxhuDJfZv4T_6fontbe13orchestrationNtB4_6WorkIdNtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10Identifier12discriminant.exit:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.c, align 8, !range !19, !noundef !5 ; 2 uses
  %switch.table._RNvXs0_NtCshxhuDJfZv4T_6fontbe13orchestrationNtB5_9AnyWorkIdNtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10Identifier12discriminant.switch.table._RNvXs0_NtCshxhuDJfZv4T_6fontbe13orchestrationNtB5_9AnyWorkIdNtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10Identifier12discriminant.255 = select i1 %i.b, ptr @switch.table._RNvXs0_NtCshxhuDJfZv4T_6fontbe13orchestrationNtB5_9AnyWorkIdNtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10Identifier12discriminant, ptr @switch.table._RNvXs0_NtCshxhuDJfZv4T_6fontbe13orchestrationNtB5_9AnyWorkIdNtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10Identifier12discriminant.255
  %switch.table._RNvXs0_NtCshxhuDJfZv4T_6fontbe13orchestrationNtB5_9AnyWorkIdNtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10Identifier12discriminant.254.switch.table._RNvXs0_NtCshxhuDJfZv4T_6fontbe13orchestrationNtB5_9AnyWorkIdNtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10Identifier12discriminant.256 = select i1 %i.b, ptr @switch.table._RNvXs0_NtCshxhuDJfZv4T_6fontbe13orchestrationNtB5_9AnyWorkIdNtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10Identifier12discriminant.254, ptr @switch.table._RNvXs0_NtCshxhuDJfZv4T_6fontbe13orchestrationNtB5_9AnyWorkIdNtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10Identifier12discriminant.256
  %switch.gep = getelementptr inbounds nuw i8, ptr %switch.table._RNvXs0_NtCshxhuDJfZv4T_6fontbe13orchestrationNtB5_9AnyWorkIdNtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10Identifier12discriminant.switch.table._RNvXs0_NtCshxhuDJfZv4T_6fontbe13orchestrationNtB5_9AnyWorkIdNtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10Identifier12discriminant.255, i64 %.val
  %switch.load6 = load i8, ptr %switch.gep, align 1
  %switch.ext7 = zext i8 %switch.load6 to i64
  %switch.gep8 = getelementptr inbounds nuw [8 x i8], ptr %switch.table._RNvXs0_NtCshxhuDJfZv4T_6fontbe13orchestrationNtB5_9AnyWorkIdNtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10Identifier12discriminant.254.switch.table._RNvXs0_NtCshxhuDJfZv4T_6fontbe13orchestrationNtB5_9AnyWorkIdNtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10Identifier12discriminant.256, i64 %.val
  %.sroa.0.0 = load ptr, ptr %switch.gep8, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %switch.ext7, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCshxhuDJfZv4T_6fontbe4mvarNtB5_8MvarWorkNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 8)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders17MarkToMarkBuilderNtB5_21MarkAttachmentBuilder8add_base(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i16 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %3, align 8, !range !8, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @146, ptr noundef nonnull inttoptr (i64 71 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #38
          to label %bb.m unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  %i.d = load i8, ptr %2, align 8, !range !9, !noundef !5 ; 2 uses
  %i.e = icmp samesign ugt i8 %i.d, 23
  %i.f = zext nneg i8 %i.d to i64                 ; 2 uses
  %i.g = add nsw i64 %i.f, -23
  %i.h = select i1 %i.e, i64 %i.g, i64 0
  switch i64 %i.h, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.4.0 = phi i64 [ %i.f, %bb.e ], [ %i.m, %bb.f ], [ %i.q, %bb.g ]
  %.sroa.0.0 = phi ptr [ %i.i, %bb.e ], [ %i.k, %bb.f ], [ %i.r, %bb.g ]
  invoke void @_RNvMsk_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8buildersNtB5_17MarkToMarkBuilder12insert_mark2(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, i16 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.4.0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load i64, ptr %3, align 8, !range !8, !noundef !5
  %.not = icmp eq i64 %i.t, -1
  br i1 %.not, label %bb.o, label %bb.n

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = load i64, ptr %3, align 8, !range !8, !noundef !5
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCshxhuDJfZv4T_6fontbe8features5marks16BaseOrLigAnchorsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEBI_(ptr noalias nofree noundef align 8 dereferenceable(88) %3)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void

bb.m:                                             ; preds = %bb.b
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.i
  resume { ptr, i32 } %i.s

bb.o:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCshxhuDJfZv4T_6fontbe8features5marks16BaseOrLigAnchorsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEBI_(ptr noalias nofree noundef align 8 dereferenceable(88) %3) #32
          to label %bb.n unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders17MarkToMarkBuilderNtB5_21MarkAttachmentBuilder8add_mark(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i16 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %2, align 8, !range !9, !noundef !5 ; 2 uses
  %i.c = icmp samesign ugt i8 %i.b, 23
  %i.d = zext nneg i8 %i.b to i64                 ; 2 uses
  %i.e = add nsw i64 %i.d, -23
  %i.f = select i1 %i.c, i64 %i.e, i64 0
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.4.0 = phi i64 [ %i.d, %bb.c ], [ %i.k, %bb.d ], [ %i.o, %bb.e ]
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.d ], [ %i.p, %bb.e ]
  call void @_RNvMsk_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8buildersNtB5_17MarkToMarkBuilder12insert_mark1(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, i16 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.4.0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %3)
  %i.q = load i64, ptr %i.a, align 8, !range !6, !alias.scope !5917, !noundef !5
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders23PreviouslyAssignedClassEECshxhuDJfZv4T_6fontbe.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders23PreviouslyAssignedClassECshxhuDJfZv4T_6fontbe.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i: ; preds = %bb.h
  resume { ptr, i32 } %i.s

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders23PreviouslyAssignedClassECshxhuDJfZv4T_6fontbe.exit.i: ; preds = %bb.g
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders23PreviouslyAssignedClassEECshxhuDJfZv4T_6fontbe.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResulttNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders23PreviouslyAssignedClassEECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders23PreviouslyAssignedClassECshxhuDJfZv4T_6fontbe.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders16MarkToLigBuilderNtB5_21MarkAttachmentBuilder8add_base(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i16 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %3, align 8, !range !8, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.e = load i8, ptr %2, align 8, !range !9, !noundef !5 ; 2 uses
  %i.f = icmp samesign ugt i8 %i.e, 23
  %i.g = zext nneg i8 %i.e to i64                 ; 2 uses
  %i.h = add nsw i64 %i.g, -23
  %i.i = select i1 %i.f, i64 %i.h, i64 0
  switch i64 %i.i, label %bb.f [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @149, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #38
end_hunk_0
