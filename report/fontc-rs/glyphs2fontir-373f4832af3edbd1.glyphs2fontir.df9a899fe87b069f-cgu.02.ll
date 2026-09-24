Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs2fontir-373f4832af3edbd1.glyphs2fontir.df9a899fe87b069f-cgu.02?download=true
inline.NumInlined: 1243
inline.NumDeleted: 736
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapIBK_INtNtBO_6filter6FilterINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB38_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Z_6WorkIdNtNtB51_5error5ErrorE4execs_00EIB1Q_NtB2h_5ShapeENCB30_s_0EINtNtBO_5chain5ChainIBK_INtB3_4IterNtB2h_8GradientEINtNtBO_3map3MapIB1Q_NtB2h_9ColorStopENCNvMsc_B2h_B7s_6colors0ENCNvMsb_B2h_NtB2h_15ShapeAttributes6colors0EIB7i_NtB2h_5ColorEENCB30_s0_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3a_:bb.a
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i.i.i.i83.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i.i.i.i83.i.i.i: ; preds = %bb.v, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i.i79.i.i.i
  %.sroa.8.0.i.i.i.i.i84.i.i.i = phi i64 [ %i.bs, %bb.v ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i.i79.i.i.i ]
  %i.bt = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i84.i.i.i, %.sroa.7.0.i.i.i.i.i80.i.i.i ; 2 uses
  %i.bu = trunc nuw i64 %i.az to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val.i.i.i.i.i85.i.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !173, !noalias !174, !align !6
  %.not76.i.i.i.i.i86.i.i.i = icmp ne ptr %.val.i.i.i.i.i85.i.i.i, null
  %or.cond.not.i.i.i.i.i87.i.i.i = select i1 %i.bu, i1 %.not76.i.i.i.i.i86.i.i.i, i1 false ; 3 uses
  %spec.select.i.i.i88.i.i.i = select i1 %or.cond.not.i.i.i.i.i87.i.i.i, i64 undef, i64 %i.bt ; 2 uses
  %not.or.cond.not.i.i.i.i.i89.i.i.i = xor i1 %or.cond.not.i.i.i.i.i87.i.i.i, true
  %.val.i.i.i90.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !168, !noalias !169, !align !6, !noundef !5
  %i.bw = icmp ne ptr %.val.i.i.i90.i.i.i, null
  %i.bx = zext i1 %i.bw to i64                    ; 2 uses
  %i.by = add nuw nsw i64 %i.bt, %i.bx
  %i.bz = add i64 %spec.select.i.i.i88.i.i.i, %i.bx ; 2 uses
  %i.ca = icmp uge i64 %i.bz, %spec.select.i.i.i88.i.i.i
  %.sroa.46.0.i.i.i91.i.i.i = select i1 %or.cond.not.i.i.i.i.i87.i.i.i, i64 undef, i64 %i.bz
  %narrow.i.i.i92.i.i.i = select i1 %not.or.cond.not.i.i.i.i.i89.i.i.i, i1 %i.ca, i1 false
  %.sroa.05.0.i.i.i93.i.i.i = zext i1 %narrow.i.i.i92.i.i.i to i64
  store i64 %.sroa.05.0.i.i.i93.i.i.i, ptr %.sroa.8110.i.i.i, align 8, !alias.scope !172, !noalias !171
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i74.i.i.i

bb.w:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !183, !noalias !184, !noundef !5 ; 2 uses
  %.not.i.i9.i.i.i61.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i9.i.i.i61.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i11.i.i.i63.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val3.i.i.i10.i.i.i62.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !185, !noalias !186, !nonnull !5, !noundef !5
  %i.ce = ptrtoint ptr %.val3.i.i.i10.i.i.i62.i.i.i to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub nuw i64 %i.ce, %i.cf
  %i.ch = udiv exact i64 %i.cg, 40
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i11.i.i.i63.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i11.i.i.i63.i.i.i: ; preds = %bb.x, %bb.w
  %.sroa.7.0.i.i12.i.i.i64.i.i.i = phi i64 [ %i.ch, %bb.x ], [ 0, %bb.w ]
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !183, !noalias !184, !noundef !5 ; 2 uses
  %.not53.i.i13.i.i.i65.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not53.i.i13.i.i.i65.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i15.i.i.i67.i.i.i, label %bb.y

bb.y:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i11.i.i.i63.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val3.i61.i.i14.i.i.i66.i.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !187, !noalias !188, !nonnull !5, !noundef !5
  %i.cl = ptrtoint ptr %.val3.i61.i.i14.i.i.i66.i.i.i to i64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = sub nuw i64 %i.cl, %i.cm
  %i.co = udiv exact i64 %i.cn, 40
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i15.i.i.i67.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i15.i.i.i67.i.i.i: ; preds = %bb.y, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i11.i.i.i63.i.i.i
  %.sroa.8.0.i.i16.i.i.i68.i.i.i = phi i64 [ %i.co, %bb.y ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i11.i.i.i63.i.i.i ]
  %i.cp = add nuw nsw i64 %.sroa.8.0.i.i16.i.i.i68.i.i.i, %.sroa.7.0.i.i12.i.i.i64.i.i.i ; 3 uses
  %i.cq = trunc nuw i64 %i.az to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val.i.i17.i.i.i69.i.i.i = load ptr, ptr %i.cr, align 8, !alias.scope !183, !noalias !184, !align !6
  %.not76.i.i18.i.i.i70.i.i.i = icmp ne ptr %.val.i.i17.i.i.i69.i.i.i, null
  %or.cond.not.i.i19.i.i.i71.i.i.i = select i1 %i.cq, i1 %.not76.i.i18.i.i.i70.i.i.i, i1 false
  br i1 %or.cond.not.i.i19.i.i.i71.i.i.i, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i74.i.i.i, label %bb.z

bb.z:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i15.i.i.i67.i.i.i
  store i64 %i.cp, ptr %.sroa.14.i.i.i, align 8, !alias.scope !189, !noalias !190
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i74.i.i.i

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i74.i.i.i: ; preds = %bb.z, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i15.i.i.i67.i.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i.i.i.i83.i.i.i, %bb.s, %bb.r
  %.sroa.0109.0.i.i.i = phi i64 [ %i.bd, %bb.r ], [ 0, %bb.s ], [ %i.by, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i.i.i.i83.i.i.i ], [ %i.cp, %bb.z ], [ %i.cp, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i15.i.i.i67.i.i.i ]
  %.sink30.i.i.i75.sroa.phi.i.i.i = phi ptr [ %.sroa.14.i.i.i, %bb.r ], [ %.sroa.14.i.i.i, %bb.s ], [ %.sroa.14.i.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i.i.i.i83.i.i.i ], [ %.sroa.8110.i.i.i, %bb.z ], [ %.sroa.8110.i.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i15.i.i.i67.i.i.i ]
  %.sroa.46.0.sink.i.i.i76.i.i.i = phi i64 [ %i.bd, %bb.r ], [ 0, %bb.s ], [ %.sroa.46.0.i.i.i91.i.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i.i.i.i83.i.i.i ], [ 1, %bb.z ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i15.i.i.i67.i.i.i ]
  store i64 %.sroa.46.0.sink.i.i.i76.i.i.i, ptr %.sink30.i.i.i75.sroa.phi.i.i.i, align 8, !alias.scope !172, !noalias !171
  %.sroa.8110.i.i.i.0..sroa.8110.i.i.i.0..sroa.8110.i.i.i.0..sroa.8110.i.i.0..sroa.8110.i.i.0..sroa.8110.i.0..sroa.8110.i.0..sroa.8110.0..sroa.8110.0..sroa.8110.8..pre.i.i.i = load i64, ptr %.sroa.8110.i.i.i, align 8, !range !7, !noalias !161
  %.sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.16..pre.i.i.i = load i64, ptr %.sroa.14.i.i.i, align 8, !noalias !161
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtB3_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBO_3map3MapINtNtNtB5_5slice4iter4IterNtB1W_9ColorStopENCNvMsc_B1W_B1U_6colors0ENCNvMsb_B1W_NtB1W_15ShapeAttributes6colors0EIB1K_NtB1W_5ColorEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit95.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtB3_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBO_3map3MapINtNtNtB5_5slice4iter4IterNtB1W_9ColorStopENCNvMsc_B1W_B1U_6colors0ENCNvMsb_B1W_NtB1W_15ShapeAttributes6colors0EIB1K_NtB1W_5ColorEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit95.i.i.i: ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i74.i.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtB3_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBO_3map3MapINtNtNtB5_5slice4iter4IterNtB1W_9ColorStopENCNvMsc_B1W_B1U_6colors0ENCNvMsb_B1W_NtB1W_15ShapeAttributes6colors0EIB1K_NtB1W_5ColorEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i
  %.sroa.14.0..sroa.14.0..sroa.14.16..i.i.i = phi i64 [ %.sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.16..pre.i.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i74.i.i.i ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtB3_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBO_3map3MapINtNtNtB5_5slice4iter4IterNtB1W_9ColorStopENCNvMsc_B1W_B1U_6colors0ENCNvMsb_B1W_NtB1W_15ShapeAttributes6colors0EIB1K_NtB1W_5ColorEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i ]
  %.sroa.8110.0..sroa.8110.0..sroa.8110.8..i.i.i = phi i64 [ %.sroa.8110.i.i.i.0..sroa.8110.i.i.i.0..sroa.8110.i.i.i.0..sroa.8110.i.i.0..sroa.8110.i.i.0..sroa.8110.i.0..sroa.8110.i.0..sroa.8110.0..sroa.8110.0..sroa.8110.8..pre.i.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i74.i.i.i ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtB3_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBO_3map3MapINtNtNtB5_5slice4iter4IterNtB1W_9ColorStopENCNvMsc_B1W_B1U_6colors0ENCNvMsb_B1W_NtB1W_15ShapeAttributes6colors0EIB1K_NtB1W_5ColorEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i ] ; 2 uses
  %.sroa.0109.1.i.i.i = phi i64 [ %.sroa.0109.0.i.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i74.i.i.i ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtB3_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBO_3map3MapINtNtNtB5_5slice4iter4IterNtB1W_9ColorStopENCNvMsc_B1W_B1U_6colors0ENCNvMsb_B1W_NtB1W_15ShapeAttributes6colors0EIB1K_NtB1W_5ColorEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8110.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i)
  %i.cs = add nuw nsw i64 %.sroa.0109.1.i.i.i, %.sroa.0.1.i.i.i ; 2 uses
  %i.ct = load i64, ptr %1, align 8, !range !7, !alias.scope !130, !noalias !131, !noundef !5
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtB3_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBO_3map3MapINtNtNtB5_5slice4iter4IterNtB1W_9ColorStopENCNvMsc_B1W_B1U_6colors0ENCNvMsb_B1W_NtB1W_15ShapeAttributes6colors0EIB1K_NtB1W_5ColorEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit95.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !191, !noalias !192, !noundef !5 ; 2 uses
  %.not54.i.i.i.i.i.i = icmp eq ptr %i.cw, null
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val61.i.i.i.i.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !191, !noalias !192, !nonnull !5
  %i.cy = icmp eq ptr %.val61.i.i.i.i.i.i, %i.cw
  %or.cond.i.i.i.i.i.i = select i1 %.not54.i.i.i.i.i.i, i1 true, i1 %i.cy
  br i1 %or.cond.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.i.i.i, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.thread.i.i.i

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.i.i.i: ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !191, !noalias !192, !noundef !5 ; 2 uses
  %.not53.i.i.i.i.i.i = icmp eq ptr %i.da, null
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3.i63.i.i.i.i.i.i = load ptr, ptr %i.db, align 8, !alias.scope !191, !noalias !192, !nonnull !5
  %i.dc = ptrtoint ptr %.val3.i63.i.i.i.i.i.i to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub nuw i64 %i.dc, %i.dd
  %i.df = lshr exact i64 %i.de, 8
  %.sroa.8.0.i.i.i.i.i.i = select i1 %.not53.i.i.i.i.i.i, i64 0, i64 %i.df
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !191, !noalias !192, !noundef !5 ; 2 uses
  %.not.i.i.i96.i.i.i = icmp eq ptr %i.dh, null
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.di, align 8, !alias.scope !191, !noalias !192, !nonnull !5
  %i.dj = ptrtoint ptr %.val3.i.i.i.i.i.i.i to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub nuw i64 %i.dj, %i.dk
  %i.dm = lshr exact i64 %i.dl, 8
  %.sroa.7.0.i.i.i.i.i.i = select i1 %.not.i.i.i96.i.i.i, i64 0, i64 %i.dm
  %i.dn = or i64 %.sroa.7.0.i.i.i.i.i.i, %.sroa.8.0.i.i.i.i.i.i
  %i.do = icmp eq i64 %i.dn, 0
  %i.dp = trunc nuw i64 %.sroa.8.0..sroa.8.0..sroa.8.8..i.i.i to i1
  %i.dq = trunc nuw i64 %.sroa.8110.0..sroa.8110.0..sroa.8110.8..i.i.i to i1
  %op.rdx = select i1 %i.do, i1 %i.dq, i1 false
  %i.dr = freeze i1 %op.rdx
  %op.rdx15 = select i1 %i.dr, i1 %i.dp, i1 false
  br i1 %op.rdx15, label %bb.ac, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.thread.i.i.i

bb.ab:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtB3_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBO_3map3MapINtNtNtB5_5slice4iter4IterNtB1W_9ColorStopENCNvMsc_B1W_B1U_6colors0ENCNvMsb_B1W_NtB1W_15ShapeAttributes6colors0EIB1K_NtB1W_5ColorEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit95.i.i.i
  %i.ds = and i64 %.sroa.8110.0..sroa.8110.0..sroa.8110.8..i.i.i, %.sroa.8.0..sroa.8.0..sroa.8.8..i.i.i
  %or.cond54.not.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %or.cond54.not.i.i.i, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.thread.i.i.i, label %bb.ac

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.thread.i.i.i: ; preds = %bb.ab, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.i.i.i, %bb.aa
  store i64 %i.cs, ptr %0, align 8, !alias.scope !131, !noalias !130
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapIB6_INtNtBa_6filter6FilterINtNtNtBe_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2K_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4B_6WorkIdNtNtB4D_5error5ErrorE4execs_00EIB1s_NtB1T_5ShapeENCB2C_s_0EINtNtBa_5chain5ChainIB6_INtNtBe_6option4IterNtB1T_8GradientEINtNtBa_3map3MapIB1s_NtB1T_9ColorStopENCNvMsc_B1T_B7d_6colors0ENCNvMsb_B1T_NtB1T_15ShapeAttributes6colors0EIB6U_NtB1T_5ColorEENCB2C_s0_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2M_.exit

bb.ac:                                            ; preds = %bb.ab, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.i.i.i
  %i.dt = add i64 %.sroa.14.0..sroa.14.0..sroa.14.16..i.i.i, %.sroa.13.0..sroa.13.0..sroa.13.16..i.i.i ; 2 uses
  %i.du = icmp uge i64 %i.dt, %.sroa.13.0..sroa.13.0..sroa.13.16..i.i.i
  %.55.i.i.i = zext i1 %i.du to i64
  store i64 %i.cs, ptr %0, align 8, !alias.scope !131, !noalias !130
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.55.i.i.i, ptr %i.dv, align 8, !alias.scope !131, !noalias !130
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapIB6_INtNtBa_6filter6FilterINtNtNtBe_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2K_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4B_6WorkIdNtNtB4D_5error5ErrorE4execs_00EIB1s_NtB1T_5ShapeENCB2C_s_0EINtNtBa_5chain5ChainIB6_INtNtBe_6option4IterNtB1T_8GradientEINtNtBa_3map3MapIB1s_NtB1T_9ColorStopENCNvMsc_B1T_B7d_6colors0ENCNvMsb_B1T_NtB1T_15ShapeAttributes6colors0EIB6U_NtB1T_5ColorEENCB2C_s0_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2M_.exit

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapIB6_INtNtBa_6filter6FilterINtNtNtBe_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2K_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4B_6WorkIdNtNtB4D_5error5ErrorE4execs_00EIB1s_NtB1T_5ShapeENCB2C_s_0EINtNtBa_5chain5ChainIB6_INtNtBe_6option4IterNtB1T_8GradientEINtNtBa_3map3MapIB1s_NtB1T_9ColorStopENCNvMsc_B1T_B7d_6colors0ENCNvMsb_B1T_NtB1T_15ShapeAttributes6colors0EIB6U_NtB1T_5ColorEENCB2C_s0_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2M_.exit: ; preds = %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.thread.i.i.i, %bb.ac
  %.sink136.i.i.i = phi i64 [ 16, %bb.ac ], [ 8, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.thread.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.dt, %bb.ac ], [ 0, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.thread.i.i.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %.sink136.i.i.i
  store i64 %.sink.i.i.i, ptr %i.dw, align 8, !alias.scope !131, !noalias !130
  br label %bb.ae

bb.ad:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapIB6_INtNtBa_6filter6FilterINtNtNtBe_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2K_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4B_6WorkIdNtNtB4D_5error5ErrorE4execs_00EIB1s_NtB1T_5ShapeENCB2C_s_0EINtNtBa_5chain5ChainIB6_INtNtBe_6option4IterNtB1T_8GradientEINtNtBa_3map3MapIB1s_NtB1T_9ColorStopENCNvMsc_B1T_B7d_6colors0ENCNvMsb_B1T_NtB1T_15ShapeAttributes6colors0EIB6U_NtB1T_5ColorEENCB2C_s0_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2M_.exit, %bb.ad
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_11DesignSpaceEEE8dedup_byNCNvXs7_B1l_INtB1l_8LocationB20_EINtNtCsf3Ta7LF998c_4core7convert4FromBv_E4froms_0ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 5 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_11DesignSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit
  %.sroa.0.023 = phi i64 [ 1, %bb.b ], [ %i.k, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_11DesignSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit ] ; 5 uses
  %i.g = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.0.023 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.val11 = load i32, ptr %i.g, align 8, !noundef !5
  %i.i = load i32, ptr %i.h, align 8, !alias.scope !197, !noundef !5
  %i.j = icmp eq i32 %.val11, %i.i
  br i1 %i.j, label %bb.d, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_11DesignSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_11DesignSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.c
  %i.k = add nuw nsw i64 %.sroa.0.023, 1          ; 2 uses
  %.not = icmp eq i64 %i.k, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val12 = load double, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.g, i64 -8
  store double %.val12, ptr %i.m, align 8, !alias.scope !197
  %.sroa.5.024 = add nuw i64 %.sroa.0.023, 1      ; 2 uses
  %i.n = icmp ult i64 %.sroa.5.024, %i.b
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.023, %bb.d ], [ %.sroa.11.1, %bb.f ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.sroa.5.026 = phi i64 [ %.sroa.5.0, %bb.f ], [ %.sroa.5.024, %bb.d ] ; 2 uses
  %.sroa.11.025 = phi i64 [ %.sroa.11.1, %bb.f ], [ %.sroa.0.023, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.5.026 ; 3 uses
  %i.p = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.11.025 ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16
  %.val = load i32, ptr %i.o, align 8, !noundef !5
  %i.r = load i32, ptr %i.q, align 8, !alias.scope !198, !noundef !5
  %i.s = icmp eq i32 %.val, %i.r
  br i1 %i.s, label %bb.e, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_11DesignSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit13

.thread:                                          ; preds = %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_11DesignSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit, %bb.a, %._crit_edge
  ret void

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_11DesignSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit13: ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.t = add i64 %.sroa.11.025, 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %i.o, i64 8
  %.val10 = load double, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.p, i64 -8
  store double %.val10, ptr %i.v, align 8, !alias.scope !198
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_11DesignSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit13
  %.sroa.11.1 = phi i64 [ %.sroa.11.025, %bb.e ], [ %i.t, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_11DesignSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit13 ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.026, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEE10retain_mutNCINvMs8_B1l_INtB1l_8LocationB20_E6retainNCNCNvXNtCsjceHdiZFn9b_13glyphs2fontir4toirNtB3o_8FontInfoINtNtCsf3Ta7LF998c_4core7convert7TryFromNtNtCs1qcNTItuk7F_13glyphs_reader4font4FontE8try_froms4_00E0EB3q_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 6 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %.loopexit, label %.preheader22

.preheader22:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader22, %bb.c
  %.sroa.0.0 = phi i64 [ %i.i, %bb.c ], [ 0, %.preheader22 ] ; 4 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.0.0
  %.val.i = load ptr, ptr %1, align 8, !noalias !207, !nonnull !5, !align !6, !noundef !5
  %i.h = tail call noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TaguNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keyBO_ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
  %i.i = add nuw i64 %.sroa.0.0, 1                ; 4 uses
  br i1 %i.h, label %bb.c, label %.preheader, !prof !8

.preheader:                                       ; preds = %bb.b
  %i.j = icmp ult i64 %i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.i, %i.b
  br i1 %i.k, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a, %._crit_edge
  ret void

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.sroa.13.0.lcssa = phi i64 [ %.sroa.0.0, %.preheader ], [ %.sroa.13.1, %bb.e ]
  store i64 %.sroa.13.0.lcssa, ptr %i.a, align 8
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.sroa.7.030 = phi i64 [ %.sroa.7.0, %bb.e ], [ %i.i, %.preheader ] ; 3 uses
  %.sroa.13.029 = phi i64 [ %.sroa.13.1, %bb.e ], [ %.sroa.0.0, %.preheader ] ; 5 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.7.030 ; 3 uses
  %.val.i10 = load ptr, ptr %1, align 8, !noalias !208, !nonnull !5, !align !6, !noundef !5
  %i.m = invoke noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TaguNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keyBO_ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
          to label %_RNCINvMs8_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB8_8LocationNtB8_15NormalizedSpaceE6retainNCNCNvXNtCsjceHdiZFn9b_13glyphs2fontir4toirNtB1x_8FontInfoINtNtCsf3Ta7LF998c_4core7convert7TryFromNtNtCs1qcNTItuk7F_13glyphs_reader4font4FontE8try_froms4_00E0B1z_.exit unwind label %bb.f

_RNCINvMs8_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB8_8LocationNtB8_15NormalizedSpaceE6retainNCNCNvXNtCsjceHdiZFn9b_13glyphs2fontir4toirNtB1x_8FontInfoINtNtCsf3Ta7LF998c_4core7convert7TryFromNtNtCs1qcNTItuk7F_13glyphs_reader4font4FontE8try_froms4_00E0B1z_.exit: ; preds = %.lr.ph
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNCINvMs8_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB8_8LocationNtB8_15NormalizedSpaceE6retainNCNCNvXNtCsjceHdiZFn9b_13glyphs2fontir4toirNtB1x_8FontInfoINtNtCsf3Ta7LF998c_4core7convert7TryFromNtNtCs1qcNTItuk7F_13glyphs_reader4font4FontE8try_froms4_00E0B1z_.exit
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.13.029
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.o = add i64 %.sroa.13.029, 1
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvMs8_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB8_8LocationNtB8_15NormalizedSpaceE6retainNCNCNvXNtCsjceHdiZFn9b_13glyphs2fontir4toirNtB1x_8FontInfoINtNtCsf3Ta7LF998c_4core7convert7TryFromNtNtCs1qcNTItuk7F_13glyphs_reader4font4FontE8try_froms4_00E0B1z_.exit, %bb.d
  %.sroa.13.1 = phi i64 [ %i.o, %bb.d ], [ %.sroa.13.029, %_RNCINvMs8_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB8_8LocationNtB8_15NormalizedSpaceE6retainNCNCNvXNtCsjceHdiZFn9b_13glyphs2fontir4toirNtB1x_8FontInfoINtNtCsf3Ta7LF998c_4core7convert7TryFromNtNtCs1qcNTItuk7F_13glyphs_reader4font4FontE8try_froms4_00E0B1z_.exit ] ; 2 uses
  %.sroa.7.0 = add nuw nsw i64 %.sroa.7.030, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.7.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = sub nuw nsw i64 %i.b, %.sroa.7.030       ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.13.029
  %i.s = shl nuw nsw i64 %i.q, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.l, i64 %i.s, i1 false), !noalias !209
  %i.t = add i64 %i.q, %.sroa.13.029
  store i64 %i.t, ptr %i.a, align 8, !noalias !209
  resume { ptr, i32 } %i.p
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEE8dedup_byNCNvXs7_B1l_INtB1l_8LocationB20_EINtNtCsf3Ta7LF998c_4core7convert4FromBv_E4froms_0ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 5 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit
  %.sroa.0.023 = phi i64 [ 1, %bb.b ], [ %i.k, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit ] ; 5 uses
  %i.g = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.0.023 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.val11 = load i32, ptr %i.g, align 8, !noundef !5
  %i.i = load i32, ptr %i.h, align 8, !alias.scope !214, !noundef !5
  %i.j = icmp eq i32 %.val11, %i.i
  br i1 %i.j, label %bb.d, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.c
  %i.k = add nuw nsw i64 %.sroa.0.023, 1          ; 2 uses
  %.not = icmp eq i64 %i.k, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val12 = load double, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.g, i64 -8
  store double %.val12, ptr %i.m, align 8, !alias.scope !214
  %.sroa.5.024 = add nuw i64 %.sroa.0.023, 1      ; 2 uses
  %i.n = icmp ult i64 %.sroa.5.024, %i.b
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.023, %bb.d ], [ %.sroa.11.1, %bb.f ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.sroa.5.026 = phi i64 [ %.sroa.5.0, %bb.f ], [ %.sroa.5.024, %bb.d ] ; 2 uses
  %.sroa.11.025 = phi i64 [ %.sroa.11.1, %bb.f ], [ %.sroa.0.023, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.5.026 ; 3 uses
  %i.p = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.11.025 ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16
  %.val = load i32, ptr %i.o, align 8, !noundef !5
  %i.r = load i32, ptr %i.q, align 8, !alias.scope !215, !noundef !5
  %i.s = icmp eq i32 %.val, %i.r
  br i1 %i.s, label %bb.e, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit13

.thread:                                          ; preds = %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit, %bb.a, %._crit_edge
  ret void

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit13: ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.t = add i64 %.sroa.11.025, 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %i.o, i64 8
  %.val10 = load double, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.p, i64 -8
  store double %.val10, ptr %i.v, align 8, !alias.scope !215
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit13
  %.sroa.11.1 = phi i64 [ %.sroa.11.025, %bb.e ], [ %i.t, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit13 ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.026, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_9UserSpaceEEE8dedup_byNCNvXs7_B1l_INtB1l_8LocationB20_EINtNtCsf3Ta7LF998c_4core7convert4FromBv_E4froms_0ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 5 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit
  %.sroa.0.023 = phi i64 [ 1, %bb.b ], [ %i.k, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit ] ; 5 uses
  %i.g = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.0.023 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.val11 = load i32, ptr %i.g, align 8, !noundef !5
  %i.i = load i32, ptr %i.h, align 8, !alias.scope !220, !noundef !5
  %i.j = icmp eq i32 %.val11, %i.i
  br i1 %i.j, label %bb.d, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.c
  %i.k = add nuw nsw i64 %.sroa.0.023, 1          ; 2 uses
  %.not = icmp eq i64 %i.k, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val12 = load double, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.g, i64 -8
  store double %.val12, ptr %i.m, align 8, !alias.scope !220
  %.sroa.5.024 = add nuw i64 %.sroa.0.023, 1      ; 2 uses
  %i.n = icmp ult i64 %.sroa.5.024, %i.b
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.023, %bb.d ], [ %.sroa.11.1, %bb.f ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.sroa.5.026 = phi i64 [ %.sroa.5.0, %bb.f ], [ %.sroa.5.024, %bb.d ] ; 2 uses
  %.sroa.11.025 = phi i64 [ %.sroa.11.1, %bb.f ], [ %.sroa.0.023, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.5.026 ; 3 uses
  %i.p = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.11.025 ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16
  %.val = load i32, ptr %i.o, align 8, !noundef !5
  %i.r = load i32, ptr %i.q, align 8, !alias.scope !221, !noundef !5
  %i.s = icmp eq i32 %.val, %i.r
  br i1 %i.s, label %bb.e, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit13

.thread:                                          ; preds = %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit, %bb.a, %._crit_edge
  ret void

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit13: ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.t = add i64 %.sroa.11.025, 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %i.o, i64 8
  %.val10 = load double, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.p, i64 -8
  store double %.val10, ptr %i.v, align 8, !alias.scope !221
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit13
  %.sroa.11.1 = phi i64 [ %.sroa.11.025, %bb.e ], [ %i.t, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CsjceHdiZFn9b_13glyphs2fontir.exit13 ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.026, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjE8dedup_byNCNvMs5_B5_Bv_5dedup0ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 7 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvar = phi i64 [ 0, %bb.b ], [ %indvar.next, %bb.e ] ; 3 uses
  %.sroa.0.022 = phi i64 [ 1, %bb.b ], [ %.sroa.5.023, %bb.e ] ; 8 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %.val11 = load i64, ptr %i.g, align 8, !noundef !5
  %.val12 = load i64, ptr %i.h, align 8, !noundef !5
  %i.i = icmp eq i64 %.val11, %.val12
  %.sroa.5.023 = add nuw i64 %.sroa.0.022, 1      ; 5 uses
  br i1 %i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.j = icmp ult i64 %.sroa.5.023, %i.b
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = sub i64 %i.b, %indvar
  %i.l = add nsw i64 %i.b, -3
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.023
  %i.n = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %.val.prol = load i64, ptr %i.m, align 8, !noundef !5 ; 2 uses
  %.val10.prol = load i64, ptr %i.o, align 8, !noundef !5
  %i.p = icmp eq i64 %.val.prol, %.val10.prol
  br i1 %i.p, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.prol
  store i64 %.val.prol, ptr %i.n, align 8
  %i.q = add i64 %.sroa.0.022, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.sroa.11.1.prol = phi i64 [ %i.q, %bb.d ], [ %.sroa.0.022, %.lr.ph.prol ] ; 2 uses
  %.sroa.5.0.prol = add nuw i64 %.sroa.0.022, 2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.11.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.5.025.unr = phi i64 [ %.sroa.5.023, %.lr.ph.preheader ], [ %.sroa.5.0.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.11.024.unr = phi i64 [ %.sroa.0.022, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i64 %i.l, %indvar
  br i1 %i.r, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.023, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.022, %.preheader ], [ %.sroa.11.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.sroa.11.1.1, %bb.h ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.a, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.sroa.5.025 = phi i64 [ %.sroa.5.0.1, %bb.h ], [ %.sroa.5.025.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.11.024 = phi i64 [ %.sroa.11.1.1, %bb.h ], [ %.sroa.11.024.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.t = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.024 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %.val = load i64, ptr %i.s, align 8, !noundef !5 ; 2 uses
  %.val10 = load i64, ptr %i.u, align 8, !noundef !5
  %i.v = icmp eq i64 %.val, %.val10
  br i1 %i.v, label %.lr.ph.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i64 %.val, ptr %i.t, align 8
  %i.w = add i64 %.sroa.11.024, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.f
  %.sroa.11.1 = phi i64 [ %i.w, %bb.f ], [ %.sroa.11.024, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.1 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %.val.1 = load i64, ptr %i.y, align 8, !noundef !5 ; 2 uses
  %.val10.1 = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ab = icmp eq i64 %.val.1, %.val10.1
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1
  store i64 %.val.1, ptr %i.z, align 8
  %i.ac = add i64 %.sroa.11.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.1
  %.sroa.11.1.1 = phi i64 [ %i.ac, %bb.g ], [ %.sroa.11.1, %.lr.ph.1 ] ; 2 uses
  %.sroa.5.0.1 = add nuw nsw i64 %.sroa.5.025, 2  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.5.0.1, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtCs9NoVXegZYB5_8smol_str7SmolStrE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1D_5slice4iter4IterTBG_NtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEENCNvNtCsjceHdiZFn9b_13glyphs2fontir4toir18split_color_glyphss0_0EEB3D_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 224                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !224, !noundef !5 ; 3 uses
  %i.h = load i64, ptr %0, align 8, !range !9, !alias.scope !224, !noundef !5
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %i.e, %i.i
  br i1 %i.j, label %bb.b, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtCs9NoVXegZYB5_8smol_str7SmolStrE7reserveCsjceHdiZFn9b_13glyphs2fontir.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, i64 noundef %i.e, i64 noundef 8, i64 noundef 24)
  %.pre = load i64, ptr %i.f, align 8
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtCs9NoVXegZYB5_8smol_str7SmolStrE7reserveCsjceHdiZFn9b_13glyphs2fontir.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtCs9NoVXegZYB5_8smol_str7SmolStrE7reserveCsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %i.g, %bb.a ], [ %.pre, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %i.n, align 8
  store ptr %i.f, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.k, ptr %i.o, align 8
  call void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEENCNvNtCsjceHdiZFn9b_13glyphs2fontir4toir18split_color_glyphss0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3I_8for_each4callB1o_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4Y_3VecB1o_E14extend_trustedBN_E0E0EB2L_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsbeZck1VjBmm_8indexmap6BucketNtCs9NoVXegZYB5_8smol_str7SmolStrINtNtCsgCecv3eZDcN_5alloc3vec3VecB18_EEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.b = load i8, ptr %i.a, align 8, !range !11, !alias.scope !235, !noundef !5
  %switch.i.i = icmp samesign ult i8 %i.b, 25
  br i1 %switch.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !238, !nonnull !5, !noundef !5
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !238
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #20
          to label %bb.f unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.b, %bb.a, %bb.c
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %0)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsbeZck1VjBmm_8indexmap6BucketNtCs9NoVXegZYB5_8smol_str7SmolStrINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2D_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo5point5PointEEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.a = load i8, ptr %0, align 8, !range !11, !alias.scope !249, !noundef !5
  %switch.i.i = icmp samesign ult i8 %i.a, 25
  br i1 %switch.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !252, !nonnull !5, !noundef !5
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !252
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBS_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo5point5PointEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1z_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo5point5PointEECsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBS_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo5point5PointEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1z_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo5point5PointEECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsbeZck1VjBmm_8indexmap6BucketNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs3v5ql5U6hxj_6fontir2ir5PaintEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.b = load i8, ptr %i.a, align 8, !range !11, !alias.scope !266, !noundef !5
  %switch.i.i.i = icmp samesign ult i8 %i.b, 25
  br i1 %switch.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
end_hunk_0
