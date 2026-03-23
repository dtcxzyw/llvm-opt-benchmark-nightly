begin_hunk_0
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %11 = load i64, ptr %10, align 8, !alias.scope !12359, !noalias !12364, !noundef !10 ; 3 uses
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %13 = load ptr, ptr %12, align 8, !alias.scope !12367, !noalias !12368
  %.fr.i.i.i.i = freeze ptr %13                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.fr.i.i.i.i, null
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %15 = load i64, ptr %14, align 8, !alias.scope !12367, !noalias !12368
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_0
begin_hunk_1
  br i1 %32, label %38, label %.loopexit.i.i

.split.us.thread38.i.i.i.i:                       ; preds = %38, %.lr.ph.split.split.i.i.i.i
  %33 = atomicrmw sub ptr %.fr.i.i.i.i, i64 1 release, align 8, !noalias !12376
  %34 = icmp eq i64 %33, 1
  br i1 %34, label %35, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB17_5array15byte_view_array20GenericByteViewArrayNtNtB17_5types14StringViewTypeEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i

end_hunk_1
begin_hunk_2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.promoted = load ptr, ptr %5, align 8          ; 4 uses
  %6 = load i8, ptr %1, align 8, !range !349
  %.fr14 = freeze i8 %6
  %7 = trunc i8 %.fr14 to i1
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = load ptr, ptr %8, align 8, !nonnull !10, !align !304 ; 5 uses
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
end_hunk_2
begin_hunk_3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.peel) ]
  %19 = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %11, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val6.peel, i64 noundef %.val7.peel), !noalias !16157 ; 2 uses
  %.not.i.i.i.i.i.i.peel = icmp eq ptr %19, null
  br i1 %.not.i.i.i.i.i.i.peel, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqIB3z_B1k_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit, label %.loopexit16, !prof !982

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqIB3z_B1k_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.us: ; preds = %2
  br i1 %.not.us, label %.loopexit, label %.split13.us
end_hunk_3
begin_hunk_4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %26 = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %11, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val6, i64 noundef %.val7), !noalias !16163 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %26, null
  br i1 %.not.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqIB3z_B1k_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit, label %.loopexit16, !prof !982, !llvm.loop !16164

.loopexit:                                        ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqIB3z_B1k_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqIB3z_B1k_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.preheader, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqIB3z_B1k_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.us, %.loopexit16
  %.sroa.0.0 = phi ptr [ %27, %.loopexit16 ], [ null, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqIB3z_B1k_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.us ], [ null, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqIB3z_B1k_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.preheader ], [ null, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqIB3z_B1k_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit ]
  ret ptr %.sroa.0.0

.loopexit16:                                      ; preds = %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.peel
  %.lcssa = phi ptr [ %19, %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.peel ], [ %26, %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %27 = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.lcssa), !noalias !16163
  br label %.loopexit
end_hunk_4
begin_hunk_5
  %.phi.trans.insert78.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pre79.i.i.i = load i64, ptr %.phi.trans.insert78.i.i.i, align 8, !noalias !22147
  %24 = call i64 @llvm.uadd.sat.i64(i64 %20, i64 %.pre75.i.i.i)
  %25 = freeze i64 %.pre77.i.i.i
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i.i: ; preds = %23, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %26 = phi i64 [ %.pre79.i.i.i, %23 ], [ 0, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.fr6 = phi i64 [ %25, %23 ], [ 1, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ] ; 2 uses
  %27 = phi i64 [ %24, %23 ], [ %20, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !22147
  %28 = trunc nuw i64 %9 to i1
end_hunk_5
begin_hunk_6
  %.val.i.i.i = load ptr, ptr %30, align 8, !alias.scope !22148, !noalias !22149, !noundef !10
  %.not71.i.i.i = icmp eq ptr %.val.i.i.i, null
  %31 = trunc nuw i64 %19 to i1
  %32 = trunc i64 %.fr6 to i1
  %op.rdx = and i1 %.not71.i.i.i, %32
  %op.rdx2 = select i1 %op.rdx, i1 %31, i1 false
  br i1 %op.rdx2, label %36, label %35

33:                                               ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i.i
  %34 = and i64 %.fr6, %19
  %or.cond55.not.i.i.i = icmp eq i64 %34, 0
  br i1 %or.cond55.not.i.i.i, label %35, label %36

end_hunk_6
begin_hunk_7
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_9size_hintCs14kWLkQVSKO_14deltalake_core.exit

36:                                               ; preds = %33, %29
  %37 = add i64 %26, %18                          ; 2 uses
  %38 = icmp uge i64 %37, %18
  %.56.i.i.i = zext i1 %38 to i64
  store i64 %27, ptr %0, align 8, !alias.scope !22149, !noalias !22148
end_hunk_7
begin_hunk_8
  %.phi.trans.insert78.i.i22.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre79.i.i23.i = load i64, ptr %.phi.trans.insert78.i.i22.i, align 8, !noalias !22166
  %52 = call i64 @llvm.uadd.sat.i64(i64 %48, i64 %.pre75.i.i19.i)
  %53 = freeze i64 %.pre77.i.i21.i
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i24.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i24.i: ; preds = %51, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i
  %54 = phi i64 [ %.pre79.i.i23.i, %51 ], [ 0, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i ]
  %.fr5 = phi i64 [ %53, %51 ], [ 1, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i ] ; 2 uses
  %55 = phi i64 [ %52, %51 ], [ %48, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !22166
  %56 = trunc nuw i64 %9 to i1
end_hunk_8
begin_hunk_9
  %.val.i.i29.i = load ptr, ptr %58, align 8, !alias.scope !22167, !noalias !22168, !noundef !10
  %.not71.i.i30.i = icmp eq ptr %.val.i.i29.i, null
  %59 = trunc nuw i64 %47 to i1
  %60 = trunc i64 %.fr5 to i1
  %op.rdx3 = and i1 %.not71.i.i30.i, %60
  %op.rdx4 = select i1 %op.rdx3, i1 %59, i1 false
  br i1 %op.rdx4, label %63, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1t_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorENtNtBb_6marker4SendEL_EEEB22_9size_hintCs14kWLkQVSKO_14deltalake_core.exit34.i

61:                                               ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i24.i
  %62 = and i64 %.fr5, %47
  %or.cond55.not.i.i25.i = icmp eq i64 %62, 0
  br i1 %or.cond55.not.i.i25.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1t_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorENtNtBb_6marker4SendEL_EEEB22_9size_hintCs14kWLkQVSKO_14deltalake_core.exit34.i, label %63

63:                                               ; preds = %61, %57
  %64 = add i64 %54, %46                          ; 2 uses
  %65 = icmp uge i64 %64, %46
  %.56.i.i26.i = zext i1 %65 to i64
  store i64 %.56.i.i26.i, ptr %.sroa.5.i, align 8, !alias.scope !22175, !noalias !22176
end_hunk_9
begin_hunk_10
  %159 = urem i32 %113, 12                        ; 2 uses
  %160 = icmp eq i32 %159, 0
  %161 = trunc nuw nsw i32 %159 to i8
  %162 = select i1 %160, i8 12, i8 %161
  %.frozen.i.i = freeze i8 %162                   ; 4 uses
  %.cmp9.i.i = icmp samesign ugt i8 %.frozen.i.i, 9
  %163 = icmp ult i8 %.frozen.i.i, 10             ; 2 uses
  %164 = select i1 %.cmp9.i.i, i8 49, i8 48
  %.urem10.i.i = add i8 %.frozen.i.i, -10
  %165 = select i1 %163, i8 %.frozen.i.i, i8 %.urem10.i.i
  %166 = or disjoint i8 %165, 48
  %167 = icmp ult i8 %114, 10
  %168 = add nuw nsw i8 %119, 48
end_hunk_10
begin_hunk_11
!12373 = !{!12374, !12365, !12360, !12366, !12362, !12357, !12352, !12358, !12354, !12349, !12346, !12341, !12344, !12336, !12339}
!12374 = distinct !{!12374, !12375, !"_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15byte_view_array20GenericByteViewArrayNtNtB4_5types14StringViewTypeEE7is_nullCs14kWLkQVSKO_14deltalake_core: argument 0"}
!12375 = distinct !{!12375, !"_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15byte_view_array20GenericByteViewArrayNtNtB4_5types14StringViewTypeEE7is_nullCs14kWLkQVSKO_14deltalake_core"}
!12376 = !{!12377, !12379, !12381, !12383, !12385, !12387, !12389, !12391, !12357, !12352, !12358, !12354}
!12377 = distinct !{!12377, !12378, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!12378 = distinct !{!12378, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!12379 = distinct !{!12379, !12380, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core: argument 0"}
end_hunk_11
