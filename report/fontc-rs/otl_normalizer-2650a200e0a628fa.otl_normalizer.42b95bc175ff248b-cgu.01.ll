Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/otl_normalizer-2650a200e0a628fa.otl_normalizer.42b95bc175ff248b-cgu.01?download=true
inline.NumInlined: 1102
inline.NumDeleted: 723
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2w_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3L_13CoverageTable4iter0EEEIB10_IB1o_INtB12_7FlatMapIB22_NtB3L_11RangeRecordEIB1M_INtNtNtBa_3ops5range14RangeInclusivetENvMB3c_B3a_3newENvMs6_B3L_B5r_4iterEEEENtNtNtB8_6traits8iterator8Iterator4nextCs5JazJsyow1H_14otl_normalizer:bb.a
  %.not.i.i.i.i.i.i.i.i8.i.i.i.i = icmp ugt i16 %i.cl, %i.ck
  br i1 %.not.i.i.i.i.i.i.i.i8.i.i.i.i, label %bb.ag, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB21_9GlyphId163newEB2C_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i9.i.i.i.i

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %i.cn = phi ptr [ %i.cm, %bb.af ], [ %.promoted.i.i.i.i3.i.i.i.i, %bb.ad ]
  store i8 2, ptr %i.bx, align 4, !alias.scope !3418
  br label %bb.ah

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB21_9GlyphId163newEB2C_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i9.i.i.i.i: ; preds = %bb.af
  %i.co = icmp eq i16 %i.cl, -1
  %i.cp = add i16 %i.cl, 1
  %i.cq = zext i1 %i.co to i8
  store i8 %i.cq, ptr %i.bx, align 4, !alias.scope !3425
  store i16 %i.cp, ptr %i.bw, align 8, !alias.scope !3425
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1L_5ChainINtNtB1N_7flatten7FlattenINtB3_8IntoIterINtNtB1N_3map3MapINtNtNtB5_5slice4iter4IterINtNtBM_3raw9BigEndianBI_EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB4l_13CoverageTable4iter0EEEIB2s_IB2R_INtB2u_7FlatMapIB3n_NtB4l_11RangeRecordEIB36_INtNtNtB5_3ops5range14RangeInclusivetENvMBK_BI_3newENvMs6_B4l_B61_4iterEEEENtNtNtB1P_6traits8iterator8Iterator4next0ECs5JazJsyow1H_14otl_normalizer.exit

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %i.cr = phi ptr [ %.promoted.i.i.i.i3.i.i.i.i, %bb.ad ], [ %i.cn, %bb.ag ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3426)
  %.not.i.i.i.i.i12.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i12.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3427)
  %i.cs = icmp eq ptr %i.cr, %i.bz
  br i1 %i.cs, label %bb.aj, label %bb.ae

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 142 ; 2 uses
  %cond.i17.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %cond.i17.i.i.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3429)
  %i.cv = load i16, ptr %i.ct, align 2, !alias.scope !3430, !noalias !3429, !noundef !4 ; 4 uses
  %i.cw = load i16, ptr %i.cu, align 8, !alias.scope !3431, !noalias !3428, !noundef !4
  %.not.i.i.i.i18.i.i.i.i18.i.i.i.i = icmp ugt i16 %i.cv, %i.cw
  br i1 %.not.i.i.i.i18.i.i.i.i18.i.i.i.i, label %bb.al, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1y_9GlyphId163newENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i19.i.i.i.i19.i.i.i.i

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1y_9GlyphId163newENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i19.i.i.i.i19.i.i.i.i: ; preds = %bb.ak
  %i.cx = icmp eq i16 %i.cv, -1
  %i.cy = add i16 %i.cv, 1
  %i.cz = zext i1 %i.cx to i8
  store i8 %i.cz, ptr %i.u, align 2, !alias.scope !3432
  store i16 %i.cy, ptr %i.ct, align 2, !alias.scope !3432
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1L_5ChainINtNtB1N_7flatten7FlattenINtB3_8IntoIterINtNtB1N_3map3MapINtNtNtB5_5slice4iter4IterINtNtBM_3raw9BigEndianBI_EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB4l_13CoverageTable4iter0EEEIB2s_IB2R_INtB2u_7FlatMapIB3n_NtB4l_11RangeRecordEIB36_INtNtNtB5_3ops5range14RangeInclusivetENvMBK_BI_3newENvMs6_B4l_B61_4iterEEEENtNtNtB1P_6traits8iterator8Iterator4next0ECs5JazJsyow1H_14otl_normalizer.exit

bb.al:                                            ; preds = %bb.ak, %bb.aj
  store i8 -1, ptr %i.u, align 2, !alias.scope !3433
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1L_5ChainINtNtB1N_7flatten7FlattenINtB3_8IntoIterINtNtB1N_3map3MapINtNtNtB5_5slice4iter4IterINtNtBM_3raw9BigEndianBI_EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB4l_13CoverageTable4iter0EEEIB2s_IB2R_INtB2u_7FlatMapIB3n_NtB4l_11RangeRecordEIB36_INtNtNtB5_3ops5range14RangeInclusivetENvMBK_BI_3newENvMs6_B4l_B61_4iterEEEENtNtNtB1P_6traits8iterator8Iterator4next0ECs5JazJsyow1H_14otl_normalizer.exit

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1L_5ChainINtNtB1N_7flatten7FlattenINtB3_8IntoIterINtNtB1N_3map3MapINtNtNtB5_5slice4iter4IterINtNtBM_3raw9BigEndianBI_EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB4l_13CoverageTable4iter0EEEIB2s_IB2R_INtB2u_7FlatMapIB3n_NtB4l_11RangeRecordEIB36_INtNtNtB5_3ops5range14RangeInclusivetENvMBK_BI_3newENvMs6_B4l_B61_4iterEEEENtNtNtB1P_6traits8iterator8Iterator4next0ECs5JazJsyow1H_14otl_normalizer.exit: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB1R_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB36_13CoverageTable4iter0EB2v_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB1o_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB2D_13CoverageTable4iter0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.thread.i7.i.i.i.i, %bb.j, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB21_9GlyphId163newEB2C_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1y_9GlyphId163newENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i19.i.i.i.i.i.i.i.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB43_9GlyphId163newENvMs6_B2c_B2a_4iterEEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.thread.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB21_9GlyphId163newEB2C_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i9.i.i.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1y_9GlyphId163newENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i19.i.i.i.i19.i.i.i.i, %bb.al
  %.pn4.i = phi i16 [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB21_9GlyphId163newEB2C_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i9.i.i.i.i ], [ 0, %bb.j ], [ 1, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1y_9GlyphId163newENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i19.i.i.i.i.i.i.i.i ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB21_9GlyphId163newEB2C_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i.i.i.i ], [ 0, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB43_9GlyphId163newENvMs6_B2c_B2a_4iterEEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.thread.i.i.i.i ], [ 0, %bb.al ], [ 1, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1y_9GlyphId163newENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i19.i.i.i.i19.i.i.i.i ], [ 1, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB1o_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB2D_13CoverageTable4iter0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.thread.i7.i.i.i.i ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB1R_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB36_13CoverageTable4iter0EB2v_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i ]
  %.pn2.i = phi i16 [ %i.cl, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB21_9GlyphId163newEB2C_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i9.i.i.i.i ], [ undef, %bb.j ], [ %.lcssa47.i.i.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1y_9GlyphId163newENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i19.i.i.i.i.i.i.i.i ], [ %.lcssa.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB21_9GlyphId163newEB2C_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i.i.i.i ], [ undef, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB43_9GlyphId163newENvMs6_B2c_B2a_4iterEEEINtB5_8FuseImplBY_E4nextCs5JazJsyow1H_14otl_normalizer.exit.thread.i.i.i.i ], [ undef, %bb.al ], [ %i.cv, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1y_9GlyphId163newENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.i19.i.i.i.i19.i.i.i.i ], [ %i.s, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB1o_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB2D_13CoverageTable4iter0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs5JazJsyow1H_14otl_normalizer.exit.thread.i7.i.i.i.i ], [ %i.l, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB1R_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB36_13CoverageTable4iter0EB2v_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i ]
  %.pn.i = insertvalue { i16, i16 } poison, i16 %.pn4.i, 0
  %.merged.i = insertvalue { i16, i16 } %.pn.i, i16 %.pn2.i, 1
  ret { i16, i16 } %.merged.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2w_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3L_13CoverageTable4iter0EEEIB10_IB1o_INtB12_7FlatMapIB22_NtB3L_11RangeRecordEIB1M_INtNtNtBa_3ops5range14RangeInclusivetENvMB3c_B3a_3newENvMs6_B3L_B5r_4iterEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %1, align 8, !range !7, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.b, 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 146
  %i.d = load i8, ptr %i.c, align 2, !range !27, !noundef !4
  %.not7 = icmp eq i8 %i.d, -2                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not7, label %bb.g, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2d_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3s_13CoverageTable4iter0EEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit

bb.c:                                             ; preds = %bb.a
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call fastcc void @_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3Z_9GlyphId163newENvMs6_B28_B26_4iterEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.e) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.g, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2d_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3s_13CoverageTable4iter0EEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2d_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3s_13CoverageTable4iter0EEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit20, %bb.e, %bb.d
  ret void

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2d_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3s_13CoverageTable4iter0EEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !3446, !noalias !3447, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val3.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !3446, !noalias !3447, !nonnull !4
  %i.l = ptrtoint ptr %.val3.i.i.i to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 1
  %.sroa.7.0.i.i = select i1 %.not.i.i, i64 0, i64 %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !3446, !noalias !3447, !noundef !4 ; 2 uses
  %.not53.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3.i61.i.i = load ptr, ptr %i.r, align 8, !alias.scope !3446, !noalias !3447, !nonnull !4
  %i.s = ptrtoint ptr %.val3.i61.i.i to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 1
  %.sroa.8.0.i.i = select i1 %.not53.i.i, i64 0, i64 %i.v
  %i.w = add nuw i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i ; 2 uses
  %i.x = trunc nuw i64 %i.b to i1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.y, align 8, !alias.scope !3446, !noalias !3447
  %.not76.i.i = icmp ne ptr %.val.i.i, null
  %or.cond.not.i.i = select i1 %i.x, i1 %.not76.i.i, i1 false ; 2 uses
  %spec.select = select i1 %or.cond.not.i.i, i64 undef, i64 %i.w ; 2 uses
  %not.or.cond.not.i.i = xor i1 %or.cond.not.i.i, true
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3Z_9GlyphId163newENvMs6_B28_B26_4iterEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.h) #26
  %i.z = load i64, ptr %i.a, align 8, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !6, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ad = load i64, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = tail call i64 @llvm.uadd.sat.i64(i64 %i.w, i64 %i.z)
  %i.af = trunc nuw i64 %i.ab to i1
  %or.cond = and i1 %not.or.cond.not.i.i, %i.af   ; 2 uses
  %i.ag = add i64 %spec.select, %i.ad             ; 2 uses
  %i.ah = icmp uge i64 %i.ag, %spec.select
  %.sroa.46.0 = select i1 %or.cond, i64 %i.ag, i64 undef
  %narrow = select i1 %or.cond, i1 %i.ah, i1 false
  %.sroa.05.0 = zext i1 %narrow to i64
  store i64 %i.ae, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.46.0, ptr %i.aj, align 8
  br label %bb.f

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3451)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !3452, !noalias !3453, !noundef !4 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.al, null
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val3.i.i.i11 = load ptr, ptr %i.am, align 8, !alias.scope !3452, !noalias !3453, !nonnull !4
  %i.an = ptrtoint ptr %.val3.i.i.i11 to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub nuw i64 %i.an, %i.ao
  %i.aq = lshr exact i64 %i.ap, 1
  %.sroa.7.0.i.i12 = select i1 %.not.i.i10, i64 0, i64 %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !3452, !noalias !3453, !noundef !4 ; 2 uses
  %.not53.i.i13 = icmp eq ptr %i.as, null
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3.i61.i.i14 = load ptr, ptr %i.at, align 8, !alias.scope !3452, !noalias !3453, !nonnull !4
  %i.au = ptrtoint ptr %.val3.i61.i.i14 to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub nuw i64 %i.au, %i.av
  %i.ax = lshr exact i64 %i.aw, 1
  %.sroa.8.0.i.i15 = select i1 %.not53.i.i13, i64 0, i64 %i.ax
  %i.ay = add nuw i64 %.sroa.8.0.i.i15, %.sroa.7.0.i.i12 ; 2 uses
  %i.az = trunc nuw i64 %i.b to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i16 = load ptr, ptr %i.ba, align 8, !alias.scope !3452, !noalias !3453
  %.not76.i.i17 = icmp ne ptr %.val.i.i16, null
  %or.cond.not.i.i18 = select i1 %i.az, i1 %.not76.i.i17, i1 false
  br i1 %or.cond.not.i.i18, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2d_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3s_13CoverageTable4iter0EEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit20, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ay, ptr %i.bb, align 8, !alias.scope !3453, !noalias !3452
  br label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2d_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3s_13CoverageTable4iter0EEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit20

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2d_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3s_13CoverageTable4iter0EEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit20: ; preds = %bb.g, %bb.h
  %.sink.i.i19 = phi i64 [ 1, %bb.h ], [ 0, %bb.g ]
  store i64 %i.ay, ptr %0, align 8, !alias.scope !3453, !noalias !3452
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink.i.i19, ptr %i.bc, align 8, !alias.scope !3453, !noalias !3452
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorEENtNtBK_5clone5Clone5cloneB1l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.518.i = alloca [32 x i8], align 8        ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = load i64, ptr %i.h, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3493)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3494
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef range(i64 0, 115292150460684698) %i.k, i1 noundef zeroext false, i64 noundef 8, i64 noundef 80), !noalias !3494
  %i.l = load i64, ptr %i.f, align 8, !range !6, !noalias !3494, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !22, !noalias !3494, !noundef !4 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.m, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.q = load i64, ptr %i.p, align 8, !noalias !3494
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #25, !noalias !3494
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i: ; preds = %bb.a
  %i.r = load ptr, ptr %i.p, align 8, !noalias !3494, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = icmp ule i64 %i.k, %i.o
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3494
  store i64 %i.o, ptr %i.g, align 8, !noalias !3494
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.r, ptr %i.t, align 8, !noalias !3494
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %i.k
  %i.w = icmp eq i64 %i.o, 0
  br i1 %i.w, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1q_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.5.sroa.0.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorENtNtB7_5clone5Clone5cloneBO_.exit.i, %.lr.ph.i
  %.sroa.015.076.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.ai, %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorENtNtB7_5clone5Clone5cloneBO_.exit.i ] ; 18 uses
  %.sroa.7.074.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aj, %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorENtNtB7_5clone5Clone5cloneBO_.exit.i ] ; 3 uses
  %.sroa.10.073.i = phi i64 [ %i.o, %.lr.ph.i ], [ %i.ag, %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorENtNtB7_5clone5Clone5cloneBO_.exit.i ]
  %i.ag = add i64 %.sroa.10.073.i, -1             ; 2 uses
  %i.ah = icmp eq ptr %.sroa.015.076.i, %i.v
  br i1 %i.ah, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1q_.exit, label %bb.d

.loopexit.i:                                      ; preds = %bb.i, %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp.i:                             ; preds = %.invoke
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.015.076.i, i64 80
  %i.aj = add nuw nsw i64 %.sroa.7.074.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3495)
  %i.ak = load i64, ptr %.sroa.015.076.i, align 8, !range !11, !alias.scope !3496, !noalias !3497, !noundef !4 ; 3 uses
  %.not.i.i = icmp eq i64 %i.ak, -3
  br i1 %.not.i.i, label %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorENtNtB7_5clone5Clone5cloneBO_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3498)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3501)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.015.076.i, i64 32
  %i.am = load i16, ptr %i.al, align 8, !alias.scope !3502, !noalias !3503, !noundef !4
  switch i64 %i.ak, label %bb.i [
    i64 -2, label %_RNvXs6_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_13ResolvedValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i
    i64 -1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3504)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.015.076.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.015.076.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !3505, !noalias !3506, !nonnull !4, !noundef !4
  %i.aq = load i64, ptr %i.an, align 8, !alias.scope !3505, !noalias !3506, !noundef !4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3507
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 2305843009213693952) %i.aq, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !3494

.noexc.i:                                         ; preds = %bb.f
  %i.ar = load i64, ptr %i.d, align 8, !range !6, !noalias !3507, !noundef !4
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = load i64, ptr %i.x, align 8, !range !22, !noalias !3507, !noundef !4 ; 3 uses
  br i1 %i.as, label %bb.g, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i.i, !prof !10

bb.g:                                             ; preds = %.noexc.i
  %i.au = load i64, ptr %i.y, align 8, !noalias !3507
  br label %.invoke

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i.i: ; preds = %.noexc.i
  %i.av = load ptr, ptr %i.y, align 8, !noalias !3507, !nonnull !4, !noundef !4 ; 2 uses
  %i.aw = icmp ule i64 %i.aq, %i.at
  tail call void @llvm.assume(i1 %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3507
  %i.ax = ptrtoint ptr %i.av to i64
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i.i
  %i.ay = shl nuw nsw i64 %i.aq, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.av, ptr nonnull readonly align 4 %i.ap, i64 %i.ay, i1 false), !noalias !3508
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i: ; preds = %bb.h, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i.i
  %i.az = inttoptr i64 %i.at to ptr
  %.sroa.614.16.extract.trunc.i.i.i.i = trunc i64 %i.aq to i16
  %.sroa.614.18.extract.shift.i.i.i.i = lshr i64 %i.aq, 16
  %.sroa.614.18.extract.trunc.i.i.i.i = trunc i64 %.sroa.614.18.extract.shift.i.i.i.i to i16
  %.sroa.614.20.extract.shift.i.i.i.i = lshr i64 %i.aq, 32
  %.sroa.614.20.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.614.20.extract.shift.i.i.i.i to i32
  br label %_RNvXs6_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_13ResolvedValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.015.076.i, i64 24
  %2 = load i16, ptr %i.ba, align 8, !alias.scope !3502, !noalias !3503, !noundef !4 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.015.076.i, i64 26
  %4 = load i16, ptr %3, align 2, !alias.scope !3502, !noalias !3503, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3509)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.015.076.i, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.015.076.i, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !3510, !noalias !3511, !nonnull !4, !noundef !4
  %i.be = load i64, ptr %i.bb, align 8, !alias.scope !3510, !noalias !3511, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3512
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, -9223372036854775808) %i.be, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc13.i unwind label %.loopexit.i, !noalias !3494

.noexc13.i:                                       ; preds = %bb.i
  %i.bf = load i64, ptr %i.c, align 8, !range !6, !noalias !3512, !noundef !4
  %i.bg = trunc nuw i64 %i.bf to i1
  %i.bh = load i64, ptr %i.z, align 8, !range !22, !noalias !3512, !noundef !4 ; 4 uses
  br i1 %i.bg, label %bb.j, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i.i.i.i, !prof !10

bb.j:                                             ; preds = %.noexc13.i
  %i.bi = load i64, ptr %i.aa, align 8, !noalias !3512
  br label %.invoke

.invoke:                                          ; preds = %bb.g, %bb.j
  %i.bj = phi i64 [ %i.bh, %bb.j ], [ %i.at, %bb.g ]
  %i.bk = phi i64 [ %i.bi, %bb.j ], [ %i.au, %bb.g ]
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.bj, i64 %i.bk) #25
          to label %.cont unwind label %.loopexit.split-lp.i, !noalias !3494

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i.i.i.i: ; preds = %.noexc13.i
  %i.bl = load ptr, ptr %i.aa, align 8, !noalias !3512, !nonnull !4, !noundef !4 ; 3 uses
  %i.bm = icmp ule i64 %i.be, %i.bh
  tail call void @llvm.assume(i1 %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3512
  %.not.i.i9.i.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i9.i.i.i.i, label %_RNvXs6_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_13ResolvedValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull readonly align 1 %i.bd, i64 range(i64 0, -9223372036854775808) %i.be, i1 false), !noalias !3513
  br label %_RNvXs6_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_13ResolvedValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i

_RNvXs6_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_13ResolvedValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.k, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i.i.i.i, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i, %bb.e
  %.sroa.5.sroa.0.sroa.4.0.i.i.i.i = phi i64 [ undef, %bb.e ], [ %i.ax, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i ], [ 0, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i.i.i.i ], [ %i.be, %bb.k ]
  %.sroa.5.sroa.0.sroa.0.0.i.i.i.i = phi ptr [ undef, %bb.e ], [ %i.az, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i ], [ %i.bl, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i.i.i.i ], [ %i.bl, %bb.k ]
  %.sroa.5.sroa.6.0.i.i.i.i = phi i32 [ undef, %bb.e ], [ %.sroa.614.20.extract.trunc.i.i.i.i, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i ], [ undef, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i.i.i.i ], [ undef, %bb.k ]
  %.sroa.5.sroa.5.0.i.i.i.i = phi i16 [ undef, %bb.e ], [ %.sroa.614.18.extract.trunc.i.i.i.i, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i ], [ %4, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i.i.i.i ], [ %4, %bb.k ]
  %.sroa.5.sroa.4.0.i.i.i.i = phi i16 [ undef, %bb.e ], [ %.sroa.614.16.extract.trunc.i.i.i.i, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i ], [ %2, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i.i.i.i ], [ %2, %bb.k ]
  %.sroa.016.0.copyload17.i = phi i64 [ %i.ak, %bb.e ], [ -1, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i ], [ %i.bh, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i.i.i.i ], [ %i.bh, %bb.k ] ; 2 uses
  store i16 %i.am, ptr %i.ab, align 8, !alias.scope !3500, !noalias !3514
  store i64 %.sroa.016.0.copyload17.i, ptr %i.e, align 8, !alias.scope !3500, !noalias !3514
  store ptr %.sroa.5.sroa.0.sroa.0.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3500, !noalias !3514
  store i64 %.sroa.5.sroa.0.sroa.4.0.i.i.i.i, ptr %.sroa.5.sroa.0.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !3500, !noalias !3514
  store i16 %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !3500, !noalias !3514
  store i16 %.sroa.5.sroa.5.0.i.i.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 2, !alias.scope !3500, !noalias !3514
  store i32 %.sroa.5.sroa.6.0.i.i.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 4, !alias.scope !3500, !noalias !3514
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.015.076.i, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3515)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.015.076.i, i64 72
  %i.bp = load i16, ptr %i.bo, align 8, !alias.scope !3516, !noalias !3517, !noundef !4
  %i.bq = load i64, ptr %i.bn, align 8, !range !12, !alias.scope !3516, !noalias !3517, !noundef !4 ; 2 uses
  switch i64 %i.bq, label %bb.o [
    i64 -2, label %_RNvXsm_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_14ResolvedAnchorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i
    i64 -1, label %bb.l
  ]

bb.l:                                             ; preds = %_RNvXs6_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_13ResolvedValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3518)
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.015.076.i, i64 64
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.015.076.i, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !3519, !noalias !3520, !nonnull !4, !noundef !4
  %i.bu = load i64, ptr %i.br, align 8, !alias.scope !3519, !noalias !3520, !noundef !4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3521
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 2305843009213693952) %i.bu, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i unwind label %.loopexit49.i, !noalias !3499

.noexc.i.i.i:                                     ; preds = %bb.l
  %i.bv = load i64, ptr %i.b, align 8, !range !6, !noalias !3521, !noundef !4
  %i.bw = trunc nuw i64 %i.bv to i1
  %i.bx = load i64, ptr %i.ac, align 8, !range !22, !noalias !3521, !noundef !4 ; 3 uses
  br i1 %i.bw, label %bb.m, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i.i1.i.i.i, !prof !10

bb.m:                                             ; preds = %.noexc.i.i.i
  %i.by = load i64, ptr %i.ad, align 8, !noalias !3521
  br label %.invoke.i.i.i

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i.i1.i.i.i: ; preds = %.noexc.i.i.i
  %i.bz = load ptr, ptr %i.ad, align 8, !noalias !3521, !nonnull !4, !noundef !4 ; 2 uses
  %i.ca = icmp ule i64 %i.bu, %i.bx
  tail call void @llvm.assume(i1 %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3521
  %i.cb = ptrtoint ptr %i.bz to i64
  %.not.i.i.i2.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i2.i.i.i, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i3.i.i.i, label %bb.n

bb.n:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i.i1.i.i.i
  %i.cc = shl nuw nsw i64 %i.bu, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bz, ptr nonnull readonly align 4 %i.bt, i64 %i.cc, i1 false), !noalias !3522
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i3.i.i.i

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i3.i.i.i: ; preds = %bb.n, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i.i1.i.i.i
  %i.cd = inttoptr i64 %i.bx to ptr
  %.sroa.614.16.extract.trunc.i4.i.i.i = trunc i64 %i.bu to i16
  %.sroa.614.18.extract.shift.i5.i.i.i = lshr i64 %i.bu, 16
  %.sroa.614.18.extract.trunc.i6.i.i.i = trunc i64 %.sroa.614.18.extract.shift.i5.i.i.i to i16
  %.sroa.614.20.extract.shift.i7.i.i.i = lshr i64 %i.bu, 32
  %.sroa.614.20.extract.trunc.i8.i.i.i = trunc nuw i64 %.sroa.614.20.extract.shift.i7.i.i.i to i32
  br label %_RNvXsm_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_14ResolvedAnchorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.o:                                             ; preds = %_RNvXs6_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_13ResolvedValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.015.076.i, i64 64
  %5 = load i16, ptr %i.ce, align 8, !alias.scope !3516, !noalias !3517, !noundef !4 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.015.076.i, i64 66
  %7 = load i16, ptr %6, align 2, !alias.scope !3516, !noalias !3517, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3523)
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.015.076.i, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.015.076.i, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !3524, !noalias !3525, !nonnull !4, !noundef !4
  %i.ci = load i64, ptr %i.cf, align 8, !alias.scope !3524, !noalias !3525, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3526
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.ci, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc23.i.i.i unwind label %.loopexit49.i, !noalias !3499

.noexc23.i.i.i:                                   ; preds = %bb.o
  %i.cj = load i64, ptr %i.a, align 8, !range !6, !noalias !3526, !noundef !4
  %i.ck = trunc nuw i64 %i.cj to i1
  %i.cl = load i64, ptr %i.ae, align 8, !range !22, !noalias !3526, !noundef !4 ; 4 uses
  br i1 %i.ck, label %bb.p, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i20.i.i.i, !prof !10

bb.p:                                             ; preds = %.noexc23.i.i.i
  %i.cm = load i64, ptr %i.af, align 8, !noalias !3526
  br label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.p, %bb.m
  %i.cn = phi i64 [ %i.cl, %bb.p ], [ %i.bx, %bb.m ]
  %i.co = phi i64 [ %i.cm, %bb.p ], [ %i.by, %bb.m ]
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.cn, i64 %i.co) #25
          to label %.cont.i.i.i unwind label %.loopexit.split-lp50.i, !noalias !3499

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i20.i.i.i: ; preds = %.noexc23.i.i.i
  %i.cp = load ptr, ptr %i.af, align 8, !noalias !3526, !nonnull !4, !noundef !4 ; 3 uses
  %i.cq = icmp ule i64 %i.ci, %i.cl
  tail call void @llvm.assume(i1 %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3526
  %.not.i.i9.i21.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i9.i21.i.i.i, label %_RNvXsm_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_14ResolvedAnchorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i20.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr nonnull readonly align 1 %i.ch, i64 range(i64 0, -9223372036854775808) %i.ci, i1 false), !noalias !3527
  br label %_RNvXsm_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_14ResolvedAnchorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

.loopexit49.i:                                    ; preds = %bb.o, %bb.l
  %lpad.loopexit51.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp50.i:                           ; preds = %.invoke.i.i.i
  %lpad.loopexit.split-lp52.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp50.i, %.loopexit49.i
  %lpad.phi53.i = phi { ptr, i32 } [ %lpad.loopexit51.i, %.loopexit49.i ], [ %lpad.loopexit.split-lp52.i, %.loopexit.split-lp50.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer4gpos13ResolvedValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.e) #22
          to label %bb.u unwind label %bb.s, !noalias !3499

bb.s:                                             ; preds = %bb.r
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !3499
  unreachable

_RNvXsm_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_14ResolvedAnchorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.q, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i20.i.i.i, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i3.i.i.i, %_RNvXs6_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_13ResolvedValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i
  %.sroa.5.sroa.0.sroa.4.0.i9.i.i.i = phi i64 [ undef, %_RNvXs6_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_13ResolvedValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i ], [ %i.cb, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i3.i.i.i ], [ 0, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i20.i.i.i ], [ %i.ci, %bb.q ]
  %.sroa.5.sroa.0.sroa.0.0.i10.i.i.i = phi ptr [ undef, %_RNvXs6_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_13ResolvedValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i ], [ %i.cd, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i3.i.i.i ], [ %i.cp, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i20.i.i.i ], [ %i.cp, %bb.q ]
  %.sroa.5.sroa.6.0.i11.i.i.i = phi i32 [ undef, %_RNvXs6_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_13ResolvedValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.614.20.extract.trunc.i8.i.i.i, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i3.i.i.i ], [ undef, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i20.i.i.i ], [ undef, %bb.q ]
  %.sroa.5.sroa.5.0.i12.i.i.i = phi i16 [ undef, %_RNvXs6_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_13ResolvedValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.614.18.extract.trunc.i6.i.i.i, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i3.i.i.i ], [ %7, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i20.i.i.i ], [ %7, %bb.q ]
  %.sroa.5.sroa.4.0.i13.i.i.i = phi i16 [ undef, %_RNvXs6_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_13ResolvedValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.614.16.extract.trunc.i4.i.i.i, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i3.i.i.i ], [ %5, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i20.i.i.i ], [ %5, %bb.q ]
  %.sroa.0.0.i14.i.i.i = phi i64 [ %i.bq, %_RNvXs6_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_13ResolvedValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i ], [ -1, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer.exit.i3.i.i.i ], [ %i.cl, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i.i8.i20.i.i.i ], [ %i.cl, %bb.q ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !3528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3499
  br label %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorENtNtB7_5clone5Clone5cloneBO_.exit.i

_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorENtNtB7_5clone5Clone5cloneBO_.exit.i: ; preds = %_RNvXsm_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_14ResolvedAnchorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i, %bb.d
  %.sroa.11.0.i = phi i16 [ %i.bp, %_RNvXsm_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_14ResolvedAnchorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.d ]
  %.sroa.1022.0.i = phi i32 [ %.sroa.5.sroa.6.0.i11.i.i.i, %_RNvXsm_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_14ResolvedAnchorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.d ]
  %.sroa.9.0.i = phi i16 [ %.sroa.5.sroa.5.0.i12.i.i.i, %_RNvXsm_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_14ResolvedAnchorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.d ]
  %.sroa.8.0.i = phi i16 [ %.sroa.5.sroa.4.0.i13.i.i.i, %_RNvXsm_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_14ResolvedAnchorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.d ]
  %.sroa.721.0.i = phi i64 [ %.sroa.5.sroa.0.sroa.4.0.i9.i.i.i, %_RNvXsm_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_14ResolvedAnchorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.d ]
  %.sroa.6.0.i = phi ptr [ %.sroa.5.sroa.0.sroa.0.0.i10.i.i.i, %_RNvXsm_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_14ResolvedAnchorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.d ]
  %.sroa.520.0.i = phi i64 [ %.sroa.0.0.i14.i.i.i, %_RNvXsm_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_14ResolvedAnchorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.d ]
  %.sroa.016.0.i = phi i64 [ %.sroa.016.0.copyload17.i, %_RNvXsm_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_14ResolvedAnchorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i ], [ -3, %bb.d ]
  %i.cs = getelementptr inbounds nuw [80 x i8], ptr %i.r, i64 %.sroa.7.074.i ; 9 uses
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.434.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518.i, i64 32, i1 false), !noalias !3494
  store i64 %.sroa.016.0.i, ptr %i.cs, align 8, !noalias !3494
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  store i64 %.sroa.520.0.i, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !3494
  %.sroa.636.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  store ptr %.sroa.6.0.i, ptr %.sroa.636.0..sroa_idx.i.a, align 8, !noalias !3494
  %.sroa.737.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  store i64 %.sroa.721.0.i, ptr %.sroa.737.0..sroa_idx.i.a, align 8, !noalias !3494
  %.sroa.838.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  store i16 %.sroa.8.0.i, ptr %.sroa.838.0..sroa_idx.i.a, align 8, !noalias !3494
  %.sroa.939.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 66
  store i16 %.sroa.9.0.i, ptr %.sroa.939.0..sroa_idx.i, align 2, !noalias !3494
  %.sroa.1040.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 68
  store i32 %.sroa.1022.0.i, ptr %.sroa.1040.0..sroa_idx.i, align 4, !noalias !3494
  %.sroa.1141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  store i16 %.sroa.11.0.i, ptr %.sroa.1141.0..sroa_idx.i, align 8, !noalias !3494
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i)
  %i.ct = icmp eq i64 %i.ag, 0
  br i1 %i.ct, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1q_.exit, label %bb.c

bb.t:                                             ; preds = %bb.u
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !3494
  unreachable

bb.u:                                             ; preds = %bb.r, %.loopexit.split-lp.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi53.i, %bb.r ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  store i64 %.sroa.7.074.i, ptr %i.u, align 8, !noalias !3494
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorEEEB1y_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #22
          to label %bb.v unwind label %bb.t, !noalias !3494

bb.v:                                             ; preds = %bb.u
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1q_.exit: ; preds = %bb.c, %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5JazJsyow1H_14otl_normalizer4gpos14ResolvedAnchorENtNtB7_5clone5Clone5cloneBO_.exit.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i
  store i64 %i.k, ptr %i.u, align 8, !noalias !3494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !3493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3494
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3535)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3536
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !3536
  %i.g = load i64, ptr %i.a, align 8, !range !6, !noalias !3536, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !22, !noalias !3536, !noundef !4 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !noalias !3536
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #25, !noalias !3536
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !noalias !3536, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3536
  store i64 %i.j, ptr %i.b, align 8, !noalias !3536
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !3536
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.f
  %i.r = icmp eq i64 %i.j, 0
  br i1 %i.r, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5JazJsyow1H_14otl_normalizer.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i, %_RNvXsm_NtNtCs7SuSGX4jtHW_12clap_builder4util2idNtB5_2IdNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i
  %.sroa.013.033.i = phi ptr [ %i.u, %_RNvXsm_NtNtCs7SuSGX4jtHW_12clap_builder4util2idNtB5_2IdNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i ], [ %i.e, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 5 uses
  %.sroa.7.032.i = phi i64 [ %i.v, %_RNvXsm_NtNtCs7SuSGX4jtHW_12clap_builder4util2idNtB5_2IdNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i ] ; 3 uses
  %.sroa.10.031.i = phi i64 [ %i.s, %_RNvXsm_NtNtCs7SuSGX4jtHW_12clap_builder4util2idNtB5_2IdNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i ], [ %i.j, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i ]
  %i.s = add i64 %.sroa.10.031.i, -1              ; 2 uses
  %i.t = icmp eq ptr %.sroa.013.033.i, %i.q
  br i1 %i.t, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5JazJsyow1H_14otl_normalizer.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.033.i, i64 24
  %i.v = add nuw nsw i64 %.sroa.7.032.i, 1
  %i.w = load i64, ptr %.sroa.013.033.i, align 8, !range !6, !alias.scope !3537, !noalias !3538, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.033.i, i64 8 ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = invoke { ptr, i64 } @_RNvXsf_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxeENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y)
          to label %.noexc.i unwind label %bb.g, !noalias !3539 ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %i.aa = extractvalue { ptr, i64 } %i.z, 0
  %i.ab = extractvalue { ptr, i64 } %i.z, 1
  br label %_RNvXsm_NtNtCs7SuSGX4jtHW_12clap_builder4util2idNtB5_2IdNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.y, align 8, !alias.scope !3537, !noalias !3538, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.033.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !3537, !noalias !3538, !noundef !4
  br label %_RNvXsm_NtNtCs7SuSGX4jtHW_12clap_builder4util2idNtB5_2IdNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i

_RNvXsm_NtNtCs7SuSGX4jtHW_12clap_builder4util2idNtB5_2IdNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i: ; preds = %bb.e, %.noexc.i
  %.sroa.7.0.i.i = phi i64 [ %i.ab, %.noexc.i ], [ %i.ae, %bb.e ]
  %.sroa.5.0.i.i = phi ptr [ %i.aa, %.noexc.i ], [ %i.ac, %bb.e ]
  %.sroa.0.0.i12.i = phi i64 [ 1, %.noexc.i ], [ 0, %bb.e ]
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.7.032.i ; 3 uses
  store i64 %.sroa.0.0.i12.i, ptr %i.af, align 8, !noalias !3539
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !3539
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.sroa.7.0.i.i, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !3539
  %i.ag = icmp eq i64 %i.s, 0
  br i1 %i.ag, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5JazJsyow1H_14otl_normalizer.exit, label %.lr.ph.i

bb.f:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !3539
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.032.i, ptr %i.p, align 8, !noalias !3536
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdEECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #22
          to label %bb.h unwind label %bb.f, !noalias !3539

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5JazJsyow1H_14otl_normalizer.exit: ; preds = %.lr.ph.i, %_RNvXsm_NtNtCs7SuSGX4jtHW_12clap_builder4util2idNtB5_2IdNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i
  store i64 %i.f, ptr %i.p, align 8, !noalias !3536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3536
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs7SuSGX4jtHW_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs5JazJsyow1H_14otl_normalizer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.441.i = alloca [16 x i8], align 8        ; 4 uses
  %.sroa.542.i = alloca [24 x i8], align 8        ; 4 uses
  %.sroa.643.i = alloca [24 x i8], align 8        ; 4 uses
  %.sroa.744.i = alloca [24 x i8], align 8        ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = load i64, ptr %i.o, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3599)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3600
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef range(i64 0, 88686269585142076) %i.r, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104), !noalias !3600
  %i.s = load i64, ptr %i.m, align 8, !range !6, !noalias !3600, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !22, !noalias !3600, !noundef !4 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.t, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.x = load i64, ptr %i.w, align 8, !noalias !3600
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.x) #25, !noalias !3600
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i: ; preds = %bb.a
  %i.y = load ptr, ptr %i.w, align 8, !noalias !3600, !nonnull !4, !noundef !4 ; 4 uses
  %i.z = icmp ule i64 %i.r, %i.v
  tail call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3600
  store i64 %i.v, ptr %i.n, align 8, !noalias !3600
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.y, ptr %i.aa, align 8, !noalias !3600
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store i64 0, ptr %i.ab, align 8, !noalias !3600
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.q, i64 %i.r
  %i.ad = icmp eq i64 %i.v, 0
  br i1 %i.ad, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtNtNtCs7SuSGX4jtHW_12clap_builder6parser7matches11matched_arg10MatchedArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5JazJsyow1H_14otl_normalizer.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JazJsyow1H_14otl_normalizer.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
end_hunk_0
