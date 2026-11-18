Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/codspeed_divan_compat_walltime-c1ac0e5cf225c93a.codspeed_divan_compat_walltime.34af78f07f3e25cc-cgu.09?download=true
inline.NumInlined: 224
inline.NumDeleted: 135
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counter15PrivBytesFormatENCNvXso_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB3E_15EnumValueParserB2i_ENtB3E_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_:bb.a
  call void @_RNvXsf_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counterNtB5_15PrivBytesFormatNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h), !noalias !310
  %i.j = load i64, ptr %i.b, align 8, !range !11, !noalias !309, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.j, 2
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counter15PrivBytesFormatNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3D_ENCNvXso_NtB2w_12value_parserINtB4I_15EnumValueParserB1f_ENtB4I_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4A_ENtB6i_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !309
  store i64 %.sroa.01.0.i.i7, ptr %i.a, align 8, !noalias !309
  %i.k = add i64 %.sroa.01.0.i.i7, -1
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.e), !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !309
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counter15PrivBytesFormatNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3D_ENCNvXso_NtB2w_12value_parserINtB4I_15EnumValueParserB1f_ENtB4I_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4A_ENtB6i_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counter15PrivBytesFormatNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3D_ENCNvXso_NtB2w_12value_parserINtB4I_15EnumValueParserB1f_ENtB4I_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4A_ENtB6i_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i: ; preds = %bb.d, %.lr.ph
  %.sroa.0.0.i9.i.i = phi i64 [ %i.k, %bb.d ], [ %.sroa.01.0.i.i7, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !309
  %i.l = icmp eq i64 %.sroa.0.0.i9.i.i, 0
  br i1 %i.l, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counter15PrivBytesFormatENCNvXso_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB2X_15EnumValueParserB1B_ENtB2X_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4Z_10advance_byBV_NtB6j_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5G_EEB1F_.exit, label %bb.c

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counter15PrivBytesFormatENCNvXso_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB2X_15EnumValueParserB1B_ENtB2X_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4Z_10advance_byBV_NtB6j_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5G_EEB1F_.exit: ; preds = %bb.c, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counter15PrivBytesFormatNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3D_ENCNvXso_NtB2w_12value_parserINtB4I_15EnumValueParserB1f_ENtB4I_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4A_ENtB6i_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i, %bb.b, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %1, %bb.b ], [ 0, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counter15PrivBytesFormatNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3D_ENCNvXso_NtB2w_12value_parserINtB4I_15EnumValueParserB1f_ENtB4I_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4A_ENtB6i_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i ], [ %.sroa.0.0.i9.i.i, %bb.c ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindENCNvXso_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB3C_15EnumValueParserB2i_ENtB3C_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2o_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !319 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindENCNvXso_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB2V_15EnumValueParserB1B_ENtB2V_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4X_10advance_byBV_NtB6h_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5E_EEB1H_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !322, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !322 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = icmp eq ptr %.promoted.i.i, %i.d
  br i1 %i.f, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindENCNvXso_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB2V_15EnumValueParserB1B_ENtB2V_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4X_10advance_byBV_NtB6h_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5E_EEB1H_.exit, label %.lr.ph

bb.c:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3B_ENCNvXso_NtB2u_12value_parserINtB4G_15EnumValueParserB1f_ENtB4G_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4y_ENtB6g_13SpecAdvanceBy15spec_advance_by0E0B1l_.exit.i.i
  %i.g = icmp eq ptr %i.i, %i.d
  br i1 %i.g, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindENCNvXso_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB2V_15EnumValueParserB1B_ENtB2V_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4X_10advance_byBV_NtB6h_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5E_EEB1H_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i7 = phi i64 [ %.sroa.0.0.i9.i.i, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.h = phi ptr [ %i.i, %bb.c ], [ %.promoted.i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !323
  call void @_RNvXNtCs4wrugdhLTku_30codspeed_divan_compat_walltime3cliNtNtNtB4_4time5timer9TimerKindNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h), !noalias !324
  %i.j = load i64, ptr %i.b, align 8, !range !11, !noalias !323, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.j, 2
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3B_ENCNvXso_NtB2u_12value_parserINtB4G_15EnumValueParserB1f_ENtB4G_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4y_ENtB6g_13SpecAdvanceBy15spec_advance_by0E0B1l_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !323
  store i64 %.sroa.01.0.i.i7, ptr %i.a, align 8, !noalias !323
  %i.k = add i64 %.sroa.01.0.i.i7, -1
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.e), !noalias !324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !323
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3B_ENCNvXso_NtB2u_12value_parserINtB4G_15EnumValueParserB1f_ENtB4G_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4y_ENtB6g_13SpecAdvanceBy15spec_advance_by0E0B1l_.exit.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3B_ENCNvXso_NtB2u_12value_parserINtB4G_15EnumValueParserB1f_ENtB4G_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4y_ENtB6g_13SpecAdvanceBy15spec_advance_by0E0B1l_.exit.i.i: ; preds = %bb.d, %.lr.ph
  %.sroa.0.0.i9.i.i = phi i64 [ %i.k, %bb.d ], [ %.sroa.01.0.i.i7, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !323
  %i.l = icmp eq i64 %.sroa.0.0.i9.i.i, 0
  br i1 %i.l, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindENCNvXso_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB2V_15EnumValueParserB1B_ENtB2V_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4X_10advance_byBV_NtB6h_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5E_EEB1H_.exit, label %bb.c

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindENCNvXso_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB2V_15EnumValueParserB1B_ENtB2V_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4X_10advance_byBV_NtB6h_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5E_EEB1H_.exit: ; preds = %bb.c, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3B_ENCNvXso_NtB2u_12value_parserINtB4G_15EnumValueParserB1f_ENtB4G_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4y_ENtB6g_13SpecAdvanceBy15spec_advance_by0E0B1l_.exit.i.i, %bb.b, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %1, %bb.b ], [ 0, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3B_ENCNvXso_NtB2u_12value_parserINtB4G_15EnumValueParserB1f_ENtB4G_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4y_ENtB6g_13SpecAdvanceBy15spec_advance_by0E0B1l_.exit.i.i ], [ %.sroa.0.0.i9.i.i, %bb.c ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB2o_7builder12value_parserINtB3n_15EnumValueParserB2i_ENtB3n_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !333 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1H_7builder12value_parserINtB2G_15EnumValueParserB1B_ENtB2G_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4k_10advance_byBV_NtB5E_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB51_EECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !336, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !336 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = icmp eq ptr %.promoted.i.i, %i.d
  br i1 %i.f, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1H_7builder12value_parserINtB2G_15EnumValueParserB1B_ENtB2G_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4k_10advance_byBV_NtB5E_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB51_EECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit, label %.lr.ph

bb.c:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i.i
  %i.g = icmp eq ptr %i.i, %i.d
  br i1 %i.g, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1H_7builder12value_parserINtB2G_15EnumValueParserB1B_ENtB2G_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4k_10advance_byBV_NtB5E_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB51_EECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i7 = phi i64 [ %.sroa.0.0.i9.i.i, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.h = phi ptr [ %i.i, %bb.c ], [ %.promoted.i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !337
  call void @_RNvXs1_NtNtCsdjW2DEjcQy2_12clap_builder4util5colorNtB5_11ColorChoiceNtNtB9_6derive9ValueEnum17to_possible_value(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h), !noalias !338
  %i.j = load i64, ptr %i.b, align 8, !range !11, !noalias !337, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.j, 2
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !337
  store i64 %.sroa.01.0.i.i7, ptr %i.a, align 8, !noalias !337
  %i.k = add i64 %.sroa.01.0.i.i7, -1
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.e), !noalias !338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !337
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i.i: ; preds = %bb.d, %.lr.ph
  %.sroa.0.0.i9.i.i = phi i64 [ %i.k, %bb.d ], [ %.sroa.01.0.i.i7, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !337
  %i.l = icmp eq i64 %.sroa.0.0.i9.i.i, 0
  br i1 %i.l, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1H_7builder12value_parserINtB2G_15EnumValueParserB1B_ENtB2G_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4k_10advance_byBV_NtB5E_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB51_EECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit, label %bb.c

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1H_7builder12value_parserINtB2G_15EnumValueParserB1B_ENtB2G_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4k_10advance_byBV_NtB5E_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB51_EECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit: ; preds = %bb.c, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i.i, %bb.b, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %1, %bb.b ], [ 0, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i.i ], [ %.sroa.0.0.i9.i.i, %bb.c ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_3str4iter5SplitReENtB4_13SpecAdvanceBy15spec_advance_byCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !347 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBL_10advance_byB3_NtB2c_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1z_EECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i.i, %bb.b
  %.sroa.01.0.i = phi i64 [ %1, %bb.b ], [ %i.r, %._crit_edge.i.i.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.g = load i8, ptr %i.b, align 1, !range !14, !alias.scope !351, !noundef !4
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBL_10advance_byB3_NtB2c_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1z_EECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !351
  call fastcc void @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(128) %0)
  %i.i = load i64, ptr %i.a, align 8, !range !12, !noalias !351, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.f, align 8, !noalias !351, !noundef !4
  store i64 %i.k, ptr %i.e, align 8, !alias.scope !351
  br label %._crit_edge.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.b, align 1, !range !14, !alias.scope !352, !noundef !4
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_RNvXsX_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.thread16.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.b, align 1, !alias.scope !352
  %i.n = load i8, ptr %i.c, align 8, !range !14, !alias.scope !352, !noundef !4
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %._crit_edge.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load i64, ptr %i.d, align 8, !alias.scope !352, !noundef !4
  %i.q = load i64, ptr %i.e, align 8, !alias.scope !352, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.p, %i.q
  br i1 %.not.i.i.i.i, label %_RNvXsX_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.thread16.i, label %._crit_edge.i.i.i.i

_RNvXsX_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.thread16.i: ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !351
  br label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBL_10advance_byB3_NtB2c_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1z_EECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit

._crit_edge.i.i.i.i:                              ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !351
  %i.r = add i64 %.sroa.01.0.i, -1                ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBL_10advance_byB3_NtB2c_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1z_EECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit, label %bb.c

_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBL_10advance_byB3_NtB2c_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1z_EECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit: ; preds = %._crit_edge.i.i.i.i, %bb.c, %_RNvXsX_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.thread16.i, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i, %_RNvXsX_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.thread16.i ], [ 0, %._crit_edge.i.i.i.i ], [ %.sroa.01.0.i, %bb.c ]
  ret i64 %.sroa.0.1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !362 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !12, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !14, !alias.scope !363, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !363, !nonnull !4, !noundef !4 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !363, !noundef !4 ; 16 uses
  %.promoted26 = load i8, ptr %i.g, align 8, !alias.scope !363 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.l = trunc nuw i8 %.promoted26 to i1          ; 2 uses
  %i.m = icmp eq i64 %.promoted, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.peel = icmp ult i64 %.promoted, %i.k
  br i1 %.not.i.i.peel, label %bb.c, label %.split.i.i.peel

.split.i.i.peel:                                  ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted, %i.k
  br i1 %i.n, label %bb.d, label %.loopexit74

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !365, !noalias !366, !noundef !4
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit74

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit75, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !367, !noundef !4 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !367, !noundef !4
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.peel, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.k
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !367, !noundef !4
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.peel, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted, 3
  %i.at = icmp samesign ne i64 %i.as, %i.k
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !367, !noundef !4
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.peel
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.peel ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 128
  br i1 %i.be, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 2048
  br i1 %i.bf, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 65536
  %..i.peel = select i1 %i.bg, i64 3, i64 4
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.peel = phi i64 [ 2, %bb.i ], [ %..i.peel, %bb.j ], [ 1, %bb.h ]
  %i.bh = add i64 %.sroa.01.0.i.peel, %.promoted  ; 13 uses
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !364
  %i.bi = icmp eq i64 %i.bh, 0
  %.not.i.i = icmp ult i64 %i.bh, %i.k
  %i.bj = icmp eq i64 %i.bh, %i.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh ; 4 uses
  %i.bm = icmp samesign eq i64 %i.bh, %i.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = add nuw nsw i64 %i.bh, 1
  %i.bp = icmp samesign ne i64 %i.bo, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = add nuw nsw i64 %i.bh, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bu = add nuw nsw i64 %i.bh, 3
  %i.bv = icmp samesign ne i64 %i.bu, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !4
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !4 ; 2 uses
  br i1 %i.by, label %bb.t, label %bb.u

bb.l:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %.not.i.i, label %bb.m, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit74

bb.m:                                             ; preds = %bb.l
  %i.ch = load i8, ptr %i.bk, align 1, !alias.scope !365, !noalias !368, !noundef !4
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %bb.n, label %.loopexit74

bb.n:                                             ; preds = %bb.m, %.split.i.i, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %i.bm, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = load i8, ptr %i.bl, align 1, !noalias !369, !noundef !4 ; 5 uses
  %i.ck = icmp sgt i8 %i.cj, -1
  br i1 %i.ck, label %bb.p, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i: ; preds = %bb.o
  %i.cl = and i8 %i.cj, 31
  %i.cm = zext nneg i8 %i.cl to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bp)
  %i.cn = load i8, ptr %i.bn, align 1, !noalias !369, !noundef !4
  %i.co = shl nuw nsw i32 %i.cm, 6
  %i.cp = and i8 %i.cn, 63
  %i.cq = zext nneg i8 %i.cp to i32               ; 2 uses
  %i.cr = or disjoint i32 %i.co, %i.cq
  %i.cs = icmp samesign ugt i8 %i.cj, -33
  br i1 %i.cs, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i, label %.loopexit.loopexit

bb.p:                                             ; preds = %bb.o
  %i.ct = zext nneg i8 %i.cj to i32
  br label %.loopexit.loopexit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i
  tail call void @llvm.assume(i1 %i.bs)
  %i.cu = load i8, ptr %i.bq, align 1, !noalias !369, !noundef !4
  %i.cv = shl nuw nsw i32 %i.cq, 6
  %i.cw = and i8 %i.cu, 63
  %i.cx = zext nneg i8 %i.cw to i32
  %i.cy = or disjoint i32 %i.cv, %i.cx            ; 2 uses
  %i.cz = shl nuw nsw i32 %i.cm, 12
  %i.da = or disjoint i32 %i.cy, %i.cz
  %i.db = icmp samesign ugt i8 %i.cj, -17
  br i1 %i.db, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i, label %.loopexit.loopexit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i
  tail call void @llvm.assume(i1 %i.bv)
  %i.dc = load i8, ptr %i.bt, align 1, !noalias !369, !noundef !4
  %i.dd = shl nuw nsw i32 %i.cm, 18
  %i.de = and i32 %i.dd, 1835008
  %i.df = shl nuw nsw i32 %i.cy, 6
  %i.dg = and i8 %i.dc, 63
  %i.dh = zext nneg i8 %i.dg to i32
  %i.di = or disjoint i32 %i.df, %i.dh
  %i.dj = or disjoint i32 %i.di, %i.de
  br label %.loopexit.loopexit

.loopexit74:                                      ; preds = %bb.m, %.split.i.i, %bb.c, %.split.i.i.peel
  %.lcssa70 = phi i8 [ %.promoted26, %.split.i.i.peel ], [ %.promoted26, %bb.c ], [ 1, %.split.i.i ], [ 1, %bb.m ]
  %.lcssa67 = phi i64 [ %.promoted, %.split.i.i.peel ], [ %.promoted, %bb.c ], [ %i.bh, %.split.i.i ], [ %i.bh, %bb.m ]
  %i.dk = xor i8 %.lcssa70, 1
  store i8 %i.dk, ptr %i.g, align 8, !alias.scope !363
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef %.lcssa67, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #15, !noalias !368
  unreachable

.loopexit.loopexit:                               ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i, %bb.p, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.da, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i ], [ %i.dj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i ], [ %i.cr, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i ], [ %i.ct, %bb.p ]
  %i.dl = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.dl)
  br label %.loopexit

.loopexit75:                                      ; preds = %bb.d
  %i.dm = xor i8 %.promoted26, 1
  store i8 %i.dm, ptr %i.g, align 8, !alias.scope !363
  br i1 %i.l, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit75
  store i8 1, ptr %i.d, align 2, !alias.scope !363
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %.lcssa69 = phi i64 [ %.promoted, %bb.g ], [ %i.bh, %.loopexit.loopexit ]
  store i8 0, ptr %i.g, align 8, !alias.scope !363
  br label %bb.r

.critedge:                                        ; preds = %bb.n
  store i8 0, ptr %i.g, align 8, !alias.scope !363
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %.loopexit, %.loopexit75
  %i.dn = phi i64 [ %.lcssa69, %.loopexit ], [ %i.k, %.loopexit75 ], [ %i.k, %.critedge ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dn, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dn, ptr %i.dp, align 8
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7: ; preds = %.preheader, %bb.q, %bb.r
  %storemerge = phi i64 [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader ]
  store i64 %storemerge, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.u, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7
  ret void

bb.t:                                             ; preds = %bb.k
  tail call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef %i.cc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cg, i1 noundef zeroext true)
  br label %bb.s

bb.u:                                             ; preds = %bb.k
  tail call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef %i.cc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cg, i1 noundef zeroext false)
  br label %bb.s
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util9any_value10AnyValueIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util9any_value8AnyValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder6os_str5OsStrENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtNtNtBL_7builder13arg_predicate12ArgPredicateINtNtCs4NRVxsYgnAr_4core6option6OptionIBv_NtNtB1s_6os_str5OsStrEEEENtNtNtB2d_3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtNtNtBL_7builder6os_str5OsStrEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBL_4util2id2IdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTcbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTdNtNtB7_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder4util9any_value10AnyValueIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder4util9any_value8AnyValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder6os_str5OsStrENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtNtNtBS_7builder13arg_predicate12ArgPredicateINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_3vec3VecNtNtB1z_6os_str5OsStrEEEENtNtNtB2k_3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtNtNtBS_7builder6os_str5OsStrEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBS_4util2id2IdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTcbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterTdBX_EENCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRBX_INtNtNtB27_5slice4iter4IterBX_EEs0_0EE9from_iterCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvCsgYqyZSQEXjg_6strsim4jaro(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime3cliNtNtB6_6config11SortingAttrNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsf_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counterNtB5_15PrivBytesFormatNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCsdjW2DEjcQy2_12clap_builder4util5colorNtB5_11ColorChoiceNtNtB9_6derive9ValueEnum17to_possible_value(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCs4wrugdhLTku_30codspeed_divan_compat_walltime3cliNtNtNtB4_4time5timer9TimerKindNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE8truncateCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEE8grow_oneCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvXs2_NtNtCs4NRVxsYgnAr_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef double @_RNvNtNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch7measure17measure_frequency() unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fptoui.sat.i64.f64(double) #11

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr7memrchr(i8 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCs4NRVxsYgnAr_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 0, 1114112) i32 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter4fill(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!159 = !{!120, !118, !116}
!160 = !{!122}
!161 = !{!124}
!162 = !{!126}
!163 = !{!128}
!164 = !{!128, !126, !124, !122}
!165 = !{!130, !124, !122}
!166 = !{!132}
!167 = !{!134}
!168 = !{!136}
!169 = !{!136, !134, !132}
!170 = !{!138}
!171 = !{!140}
!172 = !{!142}
!173 = !{!144}
!174 = !{!144, !142, !140, !138}
!175 = !{i64 -6441977023936937507}
!176 = !{i64 1007030395088062493}
!177 = distinct !{!177, i1 true, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSTdNtNtCscdodAO9FK5_5alloc6string6StringE16binary_search_byNCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRBx_INtNtB3_4iter4IterBx_EE0ECs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!178 = distinct !{!178, !177, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSTdNtNtCscdodAO9FK5_5alloc6string6StringE16binary_search_byNCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRBx_INtNtB3_4iter4IterBx_EE0ECs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!179 = distinct !{!179, i1 true, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!180 = distinct !{!180, !179, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!181 = distinct !{!181, !179, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 1"}
!182 = !{i64 -2738150636499235931}
!183 = !{i64 0, i64 -9223372036854775807}
!184 = !{!178}
!185 = !{!180}
!186 = !{!181}
!187 = distinct !{!187, i1 true, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringdNtB5_12SpecToString14spec_to_stringCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!188 = distinct !{!188, !187, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringdNtB5_12SpecToString14spec_to_stringCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 1"}
!189 = distinct !{!189, !187, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringdNtB5_12SpecToString14spec_to_stringCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!190 = distinct !{!190, i1 true, !"_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!191 = distinct !{!191, !190, !"_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!192 = distinct !{!192, i1 true, !"_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr"}
!193 = distinct !{!193, !192, !"_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr: argument 0"}
!194 = distinct !{!194, i1 true, !"_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!195 = distinct !{!195, !194, !"_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!196 = distinct !{!196, !194, !"_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!197 = distinct !{!197, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate"}
!198 = distinct !{!198, !197, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate: argument 0"}
!199 = distinct !{!199, !197, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate: argument 1"}
!200 = distinct !{!200, i1 true, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!201 = distinct !{!201, !200, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!202 = distinct !{!202, i1 true, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5BytesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs_NtNtBN_8adapters9enumerateINtB1Y_9EnumeratepENtNtBL_8iterator8Iterator8try_fold9enumeratehuINtNtNtB9_3ops12control_flow11ControlFlowjENCINvNvB2H_8find_map5checkTjhEjNCNvNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4util3fmt10format_f640E0E0B3r_EB4L_"}
!203 = distinct !{!203, !202, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5BytesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs_NtNtBN_8adapters9enumerateINtB1Y_9EnumeratepENtNtBL_8iterator8Iterator8try_fold9enumeratehuINtNtNtB9_3ops12control_flow11ControlFlowjENCINvNvB2H_8find_map5checkTjhEjNCNvNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4util3fmt10format_f640E0E0B3r_EB4L_: argument 1"}
!204 = distinct !{!204, !202, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5BytesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs_NtNtBN_8adapters9enumerateINtB1Y_9EnumeratepENtNtBL_8iterator8Iterator8try_fold9enumeratehuINtNtNtB9_3ops12control_flow11ControlFlowjENCINvNvB2H_8find_map5checkTjhEjNCNvNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4util3fmt10format_f640E0E0B3r_EB4L_: argument 0"}
!205 = distinct !{!205, i1 true, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!206 = distinct !{!206, !205, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!207 = distinct !{!207, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate"}
!208 = distinct !{!208, !207, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate: argument 1"}
!209 = distinct !{!209, !207, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate: argument 0"}
!210 = distinct !{!210, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate"}
!211 = distinct !{!211, !210, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate: argument 1"}
!212 = distinct !{!212, !210, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate: argument 0"}
!213 = !{i64 1689106522494397497}
!214 = !{!189, !188}
!215 = !{!189}
!216 = !{!188}
!217 = !{!193, !191}
!218 = !{!196, !195}
!219 = !{!191}
!220 = !{!198}
!221 = !{!198, !199}
!222 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!223 = !{!201}
!224 = !{!206, !204, !203}
!225 = !{!209, !208}
!226 = !{!212, !211}
!227 = distinct !{!227, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push"}
!228 = distinct !{!228, !227, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push: argument 0"}
!229 = distinct !{!229, i1 true, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!230 = distinct !{!230, !229, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!231 = !{i64 8817305796179064383}
!232 = !{!228}
!233 = !{!230}
!234 = distinct !{!234, i1 true, !"_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!235 = distinct !{!235, !234, !"_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 1"}
!236 = distinct !{!236, !234, !"_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!237 = distinct !{!237, i1 true, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!238 = distinct !{!238, !237, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!239 = distinct !{!239, i1 true, !"_RINvMNtCs4NRVxsYgnAr_4core3stre11rsplit_oncecECs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!240 = distinct !{!240, !239, !"_RINvMNtCs4NRVxsYgnAr_4core3stre11rsplit_oncecECs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 1"}
!241 = !{i64 7457828132416935365}
!242 = !{i64 0, i64 17788719457055409, i64 17788809651368655, i64 17788942795354852}
!243 = !{!236, !235}
!244 = !{!238}
!245 = !{!240}
!246 = !{i64 -6295906969966805560}
!247 = !{i64 5175970309028272440}
!248 = distinct !{!248, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push"}
!249 = distinct !{!249, !248, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push: argument 0"}
!250 = !{i64 8573797946527698052}
!251 = !{!249}
!252 = distinct !{!252, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str"}
!253 = distinct !{!253, !252, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 1"}
!254 = distinct !{!254, !252, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 0"}
!255 = distinct !{!255, i1 true, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!256 = distinct !{!256, !255, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!257 = !{i64 -3882464746804280020}
!258 = !{!253}
!259 = !{!256, !254}
!260 = distinct !{!260, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push"}
!261 = distinct !{!261, !260, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push: argument 0"}
!262 = distinct !{!262, i1 true, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!263 = distinct !{!263, !262, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!264 = !{i64 7567296207218679007}
!265 = !{i8 0, i8 4}
!266 = !{!261}
!267 = !{!263}
!268 = !{i64 8429330340788083348}
!269 = distinct !{!269, i1 true, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrENtB2_11PartialDrop12partial_dropCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!270 = distinct !{!270, !269, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrENtB2_11PartialDrop12partial_dropCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!271 = distinct !{!271, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrECs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!272 = distinct !{!272, !271, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrECs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!273 = distinct !{!273, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrECs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!274 = distinct !{!274, !273, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrECs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!275 = distinct !{!275, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str5inner5InnerECs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!276 = distinct !{!276, !275, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str5inner5InnerECs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!277 = !{i64 6250395747463274260}
!278 = !{!270}
!279 = !{!272}
!280 = !{!274}
!281 = !{!276}
!282 = !{!276, !274, !272, !270}
!283 = distinct !{!283, i1 true, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime6config11SortingAttrENCNvXso_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB2S_15EnumValueParserB1B_ENtB2S_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4U_10advance_byBV_NtB6e_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5B_EEB1F_"}
!284 = distinct !{!284, !283, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime6config11SortingAttrENCNvXso_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB2S_15EnumValueParserB1B_ENtB2S_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4U_10advance_byBV_NtB6e_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5B_EEB1F_: argument 0"}
!285 = distinct !{!285, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime6config11SortingAttrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1Y_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueB2G_INtNtBa_6option6OptionB2G_ENCNvXso_NtB4d_12value_parserINtB5X_15EnumValueParserBJ_ENtB5X_16TypedValueParser15possible_values0NCNvXs_NvB1S_10advance_byINtB3h_9FilterMapB3_B5P_ENtB7w_13SpecAdvanceBy15spec_advance_by0E0B5o_EBN_"}
!286 = distinct !{!286, !285, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime6config11SortingAttrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1Y_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueB2G_INtNtBa_6option6OptionB2G_ENCNvXso_NtB4d_12value_parserINtB5X_15EnumValueParserBJ_ENtB5X_16TypedValueParser15possible_values0NCNvXs_NvB1S_10advance_byINtB3h_9FilterMapB3_B5P_ENtB7w_13SpecAdvanceBy15spec_advance_by0E0B5o_EBN_: argument 0"}
!287 = distinct !{!287, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime6config11SortingAttrENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!288 = distinct !{!288, !287, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime6config11SortingAttrENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!289 = distinct !{!289, i1 true, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime6config11SortingAttrNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3y_ENCNvXso_NtB2r_12value_parserINtB4D_15EnumValueParserB1f_ENtB4D_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4v_ENtB6d_13SpecAdvanceBy15spec_advance_by0E0B1j_"}
!290 = distinct !{!290, !289, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime6config11SortingAttrNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3y_ENCNvXso_NtB2r_12value_parserINtB4D_15EnumValueParserB1f_ENtB4D_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4v_ENtB6d_13SpecAdvanceBy15spec_advance_by0E0B1j_: argument 0"}
!291 = !{i64 -9199151886125056344}
!292 = !{!284}
!293 = !{!286}
!294 = !{!288, !286, !284}
!295 = !{!290, !286, !284}
!296 = !{!286, !284}
!297 = distinct !{!297, i1 true, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counter15PrivBytesFormatENCNvXso_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB2X_15EnumValueParserB1B_ENtB2X_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4Z_10advance_byBV_NtB6j_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5G_EEB1F_"}
!298 = distinct !{!298, !297, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counter15PrivBytesFormatENCNvXso_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB2X_15EnumValueParserB1B_ENtB2X_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4Z_10advance_byBV_NtB6j_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5G_EEB1F_: argument 0"}
!299 = distinct !{!299, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counter15PrivBytesFormatENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB23_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueB2L_INtNtBa_6option6OptionB2L_ENCNvXso_NtB4i_12value_parserINtB62_15EnumValueParserBJ_ENtB62_16TypedValueParser15possible_values0NCNvXs_NvB1X_10advance_byINtB3m_9FilterMapB3_B5U_ENtB7B_13SpecAdvanceBy15spec_advance_by0E0B5t_EBN_"}
!300 = distinct !{!300, !299, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counter15PrivBytesFormatENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB23_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueB2L_INtNtBa_6option6OptionB2L_ENCNvXso_NtB4i_12value_parserINtB62_15EnumValueParserBJ_ENtB62_16TypedValueParser15possible_values0NCNvXs_NvB1X_10advance_byINtB3m_9FilterMapB3_B5U_ENtB7B_13SpecAdvanceBy15spec_advance_by0E0B5t_EBN_: argument 0"}
!301 = distinct !{!301, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counter15PrivBytesFormatENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!302 = distinct !{!302, !301, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counter15PrivBytesFormatENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!303 = distinct !{!303, i1 true, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counter15PrivBytesFormatNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3D_ENCNvXso_NtB2w_12value_parserINtB4I_15EnumValueParserB1f_ENtB4I_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4A_ENtB6i_13SpecAdvanceBy15spec_advance_by0E0B1j_"}
!304 = distinct !{!304, !303, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counter15PrivBytesFormatNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3D_ENCNvXso_NtB2w_12value_parserINtB4I_15EnumValueParserB1f_ENtB4I_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4A_ENtB6i_13SpecAdvanceBy15spec_advance_by0E0B1j_: argument 0"}
!305 = !{i64 -5608246785328684979}
!306 = !{!298}
!307 = !{!300}
!308 = !{!302, !300, !298}
!309 = !{!304, !300, !298}
!310 = !{!300, !298}
!311 = distinct !{!311, i1 true, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindENCNvXso_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB2V_15EnumValueParserB1B_ENtB2V_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4X_10advance_byBV_NtB6h_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5E_EEB1H_"}
!312 = distinct !{!312, !311, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindENCNvXso_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB2V_15EnumValueParserB1B_ENtB2V_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4X_10advance_byBV_NtB6h_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5E_EEB1H_: argument 0"}
!313 = distinct !{!313, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB21_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueB2J_INtNtBa_6option6OptionB2J_ENCNvXso_NtB4g_12value_parserINtB60_15EnumValueParserBJ_ENtB60_16TypedValueParser15possible_values0NCNvXs_NvB1V_10advance_byINtB3k_9FilterMapB3_B5S_ENtB7z_13SpecAdvanceBy15spec_advance_by0E0B5r_EBP_"}
!314 = distinct !{!314, !313, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB21_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueB2J_INtNtBa_6option6OptionB2J_ENCNvXso_NtB4g_12value_parserINtB60_15EnumValueParserBJ_ENtB60_16TypedValueParser15possible_values0NCNvXs_NvB1V_10advance_byINtB3k_9FilterMapB3_B5S_ENtB7z_13SpecAdvanceBy15spec_advance_by0E0B5r_EBP_: argument 0"}
!315 = distinct !{!315, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_"}
!316 = distinct !{!316, !315, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_: argument 0"}
!317 = distinct !{!317, i1 true, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3B_ENCNvXso_NtB2u_12value_parserINtB4G_15EnumValueParserB1f_ENtB4G_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4y_ENtB6g_13SpecAdvanceBy15spec_advance_by0E0B1l_"}
!318 = distinct !{!318, !317, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer9TimerKindNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3B_ENCNvXso_NtB2u_12value_parserINtB4G_15EnumValueParserB1f_ENtB4G_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB4y_ENtB6g_13SpecAdvanceBy15spec_advance_by0E0B1l_: argument 0"}
!319 = !{i64 -69581754724611039}
!320 = !{!312}
!321 = !{!314}
!322 = !{!316, !314, !312}
!323 = !{!318, !314, !312}
!324 = !{!314, !312}
!325 = distinct !{!325, i1 true, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1H_7builder12value_parserINtB2G_15EnumValueParserB1B_ENtB2G_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4k_10advance_byBV_NtB5E_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB51_EECs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!326 = distinct !{!326, !325, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceENCNvXso_NtNtB1H_7builder12value_parserINtB2G_15EnumValueParserB1B_ENtB2G_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4k_10advance_byBV_NtB5E_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB51_EECs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!327 = distinct !{!327, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1M_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtBP_7builder14possible_value13PossibleValueB2u_INtNtBa_6option6OptionB2u_ENCNvXso_NtB41_12value_parserINtB5m_15EnumValueParserBJ_ENtB5m_16TypedValueParser15possible_values0NCNvXs_NvB1G_10advance_byINtB35_9FilterMapB3_B5e_ENtB6V_13SpecAdvanceBy15spec_advance_by0E0B4N_ECs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!328 = distinct !{!328, !327, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1M_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtBP_7builder14possible_value13PossibleValueB2u_INtNtBa_6option6OptionB2u_ENCNvXso_NtB41_12value_parserINtB5m_15EnumValueParserBJ_ENtB5m_16TypedValueParser15possible_values0NCNvXs_NvB1G_10advance_byINtB35_9FilterMapB3_B5e_ENtB6V_13SpecAdvanceBy15spec_advance_by0E0B4N_ECs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!329 = distinct !{!329, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!330 = distinct !{!330, !329, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!331 = distinct !{!331, i1 true, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!332 = distinct !{!332, !331, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Y_ENCNvXso_NtB2f_12value_parserINtB43_15EnumValueParserB1f_ENtB43_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3V_ENtB5D_13SpecAdvanceBy15spec_advance_by0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!333 = !{i64 7114422355391482513}
!334 = !{!326}
!335 = !{!328}
!336 = !{!330, !328, !326}
!337 = !{!332, !328, !326}
!338 = !{!328, !326}
!339 = distinct !{!339, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBL_10advance_byB3_NtB2c_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1z_EECs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!340 = distinct !{!340, !339, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBL_10advance_byB3_NtB2c_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1z_EECs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!341 = distinct !{!341, i1 true, !"_RNvXsX_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!342 = distinct !{!342, !341, !"_RNvXsX_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!343 = distinct !{!343, i1 true, !"_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!344 = distinct !{!344, !343, !"_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!345 = distinct !{!345, i1 true, !"_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!346 = distinct !{!346, !345, !"_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!347 = !{i64 7065961487007611032}
!348 = !{!340}
!349 = !{!342}
!350 = !{!344}
!351 = !{!344, !342, !340}
!352 = !{!346, !344, !342, !340}
!353 = distinct !{!353, i1 true, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!354 = distinct !{!354, !353, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!355 = distinct !{!355, i1 true, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!356 = distinct !{!356, !355, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!357 = distinct !{!357, i1 true, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!358 = distinct !{!358, !357, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!359 = distinct !{!359, !353, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!360 = distinct !{!360, i1 true, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!361 = distinct !{!361, !360, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!362 = !{i64 1225458659117863909}
!363 = !{!354}
!364 = !{!356}
!365 = !{!358}
!366 = !{!359, !356}
!367 = !{!361, !359, !356}
!368 = !{!359, !354}
!369 = !{!361, !359, !354}
end_hunk_1
