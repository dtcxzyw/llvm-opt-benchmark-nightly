Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/tensor_tools.tensor_tools.f3cbf8f2a35afc65-cgu.09?download=true
inline.NumInlined: 382
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2l_15EnumValueParserB1u_ENtB2l_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_:bb.a
  store i64 %.sroa.01.0.i.i.i.i9, ptr %i.a, align 8, !noalias !493
  %i.k = add i64 %.sroa.01.0.i.i.i.i9, -1
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e), !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !493
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools12QuantizationNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB38_ENCNvXso_NtB21_12value_parserINtB4d_15EnumValueParserB1f_ENtB4d_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB45_ENtB5N_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools12QuantizationNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB38_ENCNvXso_NtB21_12value_parserINtB4d_15EnumValueParserB1f_ENtB4d_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB45_ENtB5N_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph
  %.sroa.0.0.i8.i.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.sroa.01.0.i.i.i.i9, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !493
  %i.l = icmp eq i64 %.sroa.0.0.i8.i.i.i.i, 0
  br i1 %i.l, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools12QuantizationNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB38_ENCNvXso_NtB21_12value_parserINtB4d_15EnumValueParserB1f_ENtB4d_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB45_ENtB5N_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i, %..loopexit_crit_edge
  %.promoted.i.i = phi ptr [ %.promoted.i.i.pre, %..loopexit_crit_edge ], [ %i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools12QuantizationNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB38_ENCNvXso_NtB21_12value_parserINtB4d_15EnumValueParserB1f_ENtB4d_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB45_ENtB5N_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i ] ; 2 uses
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.d, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools12QuantizationNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB38_ENCNvXso_NtB21_12value_parserINtB4d_15EnumValueParserB1f_ENtB4d_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB45_ENtB5N_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.n = icmp eq ptr %.promoted.i.i, %i.m
  br i1 %i.n, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1A_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.sink.split, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  %i.o = icmp eq ptr %i.q, %i.m
  br i1 %i.o, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1A_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.sink.split, label %.lr.ph10

.lr.ph10:                                         ; preds = %.loopexit, %bb.e
  %i.p = phi ptr [ %i.q, %bb.e ], [ %.promoted.i.i, %.loopexit ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 3 uses
  store ptr %i.q, ptr %1, align 8, !alias.scope !489
  call void @_RNvXs4_CskVIURZGHVHJ_12tensor_toolsNtB5_12QuantizationNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.p), !noalias !489
  %i.r = load i64, ptr %0, align 8, !range !11, !alias.scope !499, !noundef !6
  %.not.i.i1 = icmp eq i64 %i.r, -1
  br i1 %.not.i.i1, label %bb.e, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1A_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1A_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.sink.split: ; preds = %bb.c, %bb.e, %bb.b, %.loopexit
  store i64 -1, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1A_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1A_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit: ; preds = %.lr.ph10, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1A_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.sink.split
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !513, !nonnull !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.pre.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !514
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i, %bb.b
  %i.f = phi ptr [ %.pre.i.i.i, %bb.b ], [ %i.k, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %.sroa.0.0.i8.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i ] ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.i, ptr %i.c, align 8, !alias.scope !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !515
  call void @_RNvXs1_CskVIURZGHVHJ_12tensor_toolsNtB5_16QuantizationModeNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d), !noalias !513
  %i.j = load i64, ptr %i.b, align 8, !range !11, !noalias !515, !noundef !6
  %.not.i.i.i.i = icmp eq i64 %i.j, -1
  %i.k = inttoptr i64 %i.i to ptr
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !515
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !515
  %i.l = add i64 %.sroa.01.0.i.i.i, -1
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e), !noalias !513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !515
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i8.i.i.i = phi i64 [ %i.l, %bb.e ], [ %.sroa.01.0.i.i.i, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !515
  %i.m = icmp eq i64 %.sroa.0.0.i8.i.i.i, 0
  br i1 %i.m, label %_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit: ; preds = %bb.c, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %bb.c ], [ 0, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !536
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !539
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i, %bb.b
  %i.e = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.j, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i ] ; 2 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %2, %bb.b ], [ %.sroa.0.0.i8.i.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i ] ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.h, ptr %i.c, align 8, !alias.scope !539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !540
  call void @_RNvXs1_CskVIURZGHVHJ_12tensor_toolsNtB5_16QuantizationModeNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.pre), !noalias !541
  %i.i = load i64, ptr %i.b, align 8, !range !11, !noalias !540, !noundef !6
  %.not.i.i.i.i.i = icmp eq i64 %i.i, -1
  %i.j = inttoptr i64 %i.h to ptr                 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !540
  store i64 %.sroa.01.0.i.i.i.i, ptr %i.a, align 8, !noalias !540
  %i.k = add i64 %.sroa.01.0.i.i.i.i, -1
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !540
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i8.i.i.i.i = phi i64 [ %i.k, %bb.e ], [ %.sroa.01.0.i.i.i.i, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !540
  %i.l = icmp eq i64 %.sroa.0.0.i8.i.i.i.i, 0
  br i1 %i.l, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i, %..loopexit_crit_edge
  %.pre.i.i = phi ptr [ %.pre.i.i.pre, %..loopexit_crit_edge ], [ %i.j, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.loopexit
  %i.n = phi ptr [ %i.s, %bb.g ], [ %.pre.i.i, %.loopexit ] ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = add i64 %i.p, -1                         ; 2 uses
  store i64 %i.q, ptr %i.m, align 8, !alias.scope !536
  call void @_RNvXs1_CskVIURZGHVHJ_12tensor_toolsNtB5_16QuantizationModeNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.pre), !noalias !536
  %i.r = load i64, ptr %0, align 8, !range !11, !alias.scope !546, !noundef !6
  %.not.i.i1 = icmp eq i64 %i.r, -1
  %i.s = inttoptr i64 %i.q to ptr
  br i1 %.not.i.i1, label %bb.f, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.sink.split: ; preds = %bb.c, %bb.f
  store i64 -1, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit: ; preds = %bb.g, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.sink.split
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2i_ENtB32_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !558, !nonnull !6, !noundef !6
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !558
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.86.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.97.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.108.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %i.e = phi ptr [ %.promoted.i.i.i, %bb.b ], [ %i.g, %switch.lookup ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %2, %switch.lookup ] ; 3 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2i_ENtB32_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !558
  %.val.i.i.i = load i8, ptr %i.e, align 1, !range !22, !noalias !559, !noundef !6 ; 2 uses
  %i.h = zext nneg i8 %.val.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.95, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.i = zext nneg i8 %.val.i.i.i to i64
  %switch.gep3 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.96, i64 %i.i
  %switch.load4 = load i8, ptr %switch.gep3, align 1
  %switch.ext = zext i8 %switch.load4 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !559
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !559
  store i64 0, ptr %i.d, align 8, !noalias !559
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !559
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !559
  store i64 -1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !559
  store ptr %switch.load, ptr %.sroa.86.0..sroa_idx.i.i.i.i, align 8, !noalias !559
  store i64 %switch.ext, ptr %.sroa.97.0..sroa_idx.i.i.i.i, align 8, !noalias !559
  store i8 0, ptr %.sroa.108.0..sroa_idx.i.i.i.i, align 8, !noalias !559
  %2 = add i64 %.sroa.01.0.i.i.i, -1              ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !559
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2i_ENtB32_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2i_ENtB32_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit: ; preds = %bb.c, %switch.lookup, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %bb.c ], [ 0, %switch.lookup ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !584
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !587, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.86.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.97.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.108.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.g, %switch.lookup ] ; 3 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %2, %bb.b ], [ %3, %switch.lookup ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1w_.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !alias.scope !587
  %.val.i.i.i.i = load i8, ptr %i.e, align 1, !range !22, !noalias !588, !noundef !6 ; 2 uses
  %i.h = zext nneg i8 %.val.i.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.95, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.i = zext nneg i8 %.val.i.i.i.i to i64
  %switch.gep11 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.96, i64 %i.i
  %switch.load12 = load i8, ptr %switch.gep11, align 1
  %switch.ext = zext i8 %switch.load12 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !588
  store i64 %.sroa.01.0.i.i.i.i, ptr %i.a, align 8, !noalias !588
  store i64 0, ptr %i.d, align 8, !noalias !588
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !588
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !588
  store i64 -1, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i, align 8, !noalias !588
  store ptr %switch.load, ptr %.sroa.86.0..sroa_idx.i.i.i.i.i, align 8, !noalias !588
  store i64 %switch.ext, ptr %.sroa.97.0..sroa_idx.i.i.i.i.i, align 8, !noalias !588
  store i8 0, ptr %.sroa.108.0..sroa_idx.i.i.i.i.i, align 8, !noalias !588
  %3 = add i64 %.sroa.01.0.i.i.i.i, -1            ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !588
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %.loopexit, label %bb.c

_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1w_.exit: ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit

.loopexit:                                        ; preds = %switch.lookup, %..loopexit_crit_edge
  %i.j = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %switch.lookup ]
  %i.k = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.g, %switch.lookup ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  call void @llvm.experimental.noalias.scope.decl(metadata !591)
  call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.l = icmp eq ptr %i.k, %i.j
  br i1 %i.l, label %bb.d, label %switch.lookup13

switch.lookup13:                                  ; preds = %.loopexit
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.m, ptr %1, align 8, !alias.scope !584
  %.val.i.i = load i8, ptr %i.k, align 1, !range !22, !noalias !593, !noundef !6 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !594
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !594
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !594
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !594
  %i.n = zext nneg i8 %.val.i.i to i64
  %switch.gep14 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.95, i64 %i.n
  %switch.load15 = load ptr, ptr %switch.gep14, align 8
  %i.o = zext nneg i8 %.val.i.i to i64
  %switch.gep16 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.96, i64 %i.o
  %switch.load17 = load i8, ptr %switch.gep16, align 1
  %switch.ext18 = zext i8 %switch.load17 to i64
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %switch.load15, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !594
  store i64 %switch.ext18, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !594
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !594
  br label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit

bb.d:                                             ; preds = %.loopexit
  store i64 -1, ptr %0, align 8, !alias.scope !595
  br label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit: ; preds = %bb.d, %switch.lookup13, %_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1w_.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMCsfmY3yR2dyUD_8clap_lexNtB3_7RawArgs3newNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMCsfmY3yR2dyUD_8clap_lexNtB3_7RawArgs6insertRNtNtCsgCecv3eZDcN_5alloc6string6StringABK_j1_ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCsflt7xRw9JFr_12clap_builder7builder7commandNtB5_7Command9__do_parse(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsflt7xRw9JFr_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(600)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCs5Xr050g3D4S_3std3sys5stdio4unix6StderrNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmtCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull, ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCs5Xr050g3D4S_3std7process5abort() unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsflt7xRw9JFr_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsflt7xRw9JFr_12clap_builder7mkeymap3KeyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder4util2id2IdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder4util9any_value10AnyValueIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder4util9any_value8AnyValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder5error7context11ContextKindENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder5error7context12ContextValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder7builder10styled_str9StyledStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder7builder3arg3ArgENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder7builder3str3StrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder7builder6os_str5OsStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder7builder7command7CommandENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder7builder9arg_group8ArgGroupENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCsflt7xRw9JFr_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsf3Ta7LF998c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtNtB2e_3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCsflt7xRw9JFr_12clap_builder4util2id2IdNtNtNtBM_7builder6os_str5OsStrEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCsflt7xRw9JFr_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBM_4util2id2IdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCsflt7xRw9JFr_12clap_builder7builder3str3StrbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTcbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsflt7xRw9JFr_12clap_builder7mkeymap3KeyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsflt7xRw9JFr_12clap_builder4util2id2IdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsflt7xRw9JFr_12clap_builder4util9any_value10AnyValueIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsflt7xRw9JFr_12clap_builder4util9any_value8AnyValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsflt7xRw9JFr_12clap_builder5error7context11ContextKindENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsflt7xRw9JFr_12clap_builder5error7context12ContextValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsflt7xRw9JFr_12clap_builder7builder10styled_str9StyledStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsflt7xRw9JFr_12clap_builder7builder3arg3ArgENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsflt7xRw9JFr_12clap_builder7builder3str3StrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

end_hunk_0
