Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs2fontir-373f4832af3edbd1.glyphs2fontir.df9a899fe87b069f-cgu.02?download=true
inline.NumInlined: 1243
inline.NumDeleted: 736
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapIBK_INtNtBO_6filter6FilterINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB38_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Z_6WorkIdNtNtB51_5error5ErrorE4execs_00EIB1Q_NtB2h_5ShapeENCB30_s_0EINtNtBO_5chain5ChainIBK_INtB3_4IterNtB2h_8GradientEINtNtBO_3map3MapIB1Q_NtB2h_9ColorStopENCNvMsc_B2h_B7s_6colors0ENCNvMsb_B2h_NtB2h_15ShapeAttributes6colors0EIB7i_NtB2h_5ColorEENCB30_s0_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3a_:bb.a
  %.sroa.8.0..sroa.8.0..sroa.8.8..i.i.i = phi i64 [ %.sroa.8.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.8..pre.i.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i ], [ 1, %bb.b ] ; 2 uses
  %.sroa.0.1.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8110.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ax = load i64, ptr %i.aw, align 8, !range !4, !alias.scope !105, !noundef !5 ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.ax, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  br i1 %.not53.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtB3_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBO_3map3MapINtNtNtB5_5slice4iter4IterNtB1W_9ColorStopENCNvMsc_B1W_B1U_6colors0ENCNvMsb_B1W_NtB1W_15ShapeAttributes6colors0EIB1K_NtB1W_5ColorEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit95.i.i.i, label %bb.o

bb.o:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtB3_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBO_3map3MapINtNtNtB5_5slice4iter4IterNtB1W_9ColorStopENCNvMsc_B1W_B1U_6colors0ENCNvMsb_B1W_NtB1W_15ShapeAttributes6colors0EIB1K_NtB1W_5ColorEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.az = load i64, ptr %i.ay, align 8, !range !4, !alias.scope !133, !noundef !5 ; 3 uses
  %.not.i.i.i60.i.i.i = icmp eq i64 %i.az, 2
  %i.ba = trunc nuw i64 %i.ax to i1               ; 2 uses
  br i1 %.not.i.i.i60.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.ba, label %bb.t, label %bb.w

bb.q:                                             ; preds = %bb.o
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val8.i.i.i94.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !133, !align !6, !noundef !5
  %i.bc = icmp ne ptr %.val8.i.i.i94.i.i.i, null
  %i.bd = zext i1 %i.bc to i64                    ; 2 uses
  store i64 1, ptr %.sroa.8110.i.i.i, align 8, !alias.scope !134, !noalias !114
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i74.i.i.i

bb.s:                                             ; preds = %bb.q
  store i64 1, ptr %.sroa.8110.i.i.i, align 8, !alias.scope !135, !noalias !114
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i74.i.i.i

bb.t:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !136, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i77.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i77.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i.i79.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val3.i.i.i.i.i.i78.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !137, !nonnull !5, !noundef !5
  %i.bi = ptrtoint ptr %.val3.i.i.i.i.i.i78.i.i.i to i64
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub nuw i64 %i.bi, %i.bj
  %i.bl = udiv exact i64 %i.bk, 40
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i.i79.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i.i79.i.i.i: ; preds = %bb.u, %bb.t
  %.sroa.7.0.i.i.i.i.i80.i.i.i = phi i64 [ %i.bl, %bb.u ], [ 0, %bb.t ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !136, !noundef !5 ; 2 uses
  %.not53.i.i.i.i.i81.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not53.i.i.i.i.i81.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i.i.i.i83.i.i.i, label %bb.v

bb.v:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i.i79.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val3.i61.i.i.i.i.i82.i.i.i = load ptr, ptr %i.bo, align 8, !alias.scope !138, !nonnull !5, !noundef !5
  %i.bp = ptrtoint ptr %.val3.i61.i.i.i.i.i82.i.i.i to i64
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub nuw i64 %i.bp, %i.bq
  %i.bs = udiv exact i64 %i.br, 40
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i.i.i.i83.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i.i.i.i83.i.i.i: ; preds = %bb.v, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i.i79.i.i.i
  %.sroa.8.0.i.i.i.i.i84.i.i.i = phi i64 [ %i.bs, %bb.v ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i.i79.i.i.i ]
  %i.bt = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i84.i.i.i, %.sroa.7.0.i.i.i.i.i80.i.i.i ; 2 uses
  %i.bu = trunc nuw i64 %i.az to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val.i.i.i.i.i85.i.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !136, !align !6
  %.not76.i.i.i.i.i86.i.i.i = icmp ne ptr %.val.i.i.i.i.i85.i.i.i, null
  %or.cond.not.i.i.i.i.i87.i.i.i = select i1 %i.bu, i1 %.not76.i.i.i.i.i86.i.i.i, i1 false ; 3 uses
  %spec.select.i.i.i88.i.i.i = select i1 %or.cond.not.i.i.i.i.i87.i.i.i, i64 undef, i64 %i.bt ; 2 uses
  %not.or.cond.not.i.i.i.i.i89.i.i.i = xor i1 %or.cond.not.i.i.i.i.i87.i.i.i, true
  %.val.i.i.i90.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !133, !align !6, !noundef !5
  %i.bw = icmp ne ptr %.val.i.i.i90.i.i.i, null
  %i.bx = zext i1 %i.bw to i64                    ; 2 uses
  %i.by = add nuw nsw i64 %i.bt, %i.bx
  %i.bz = add i64 %spec.select.i.i.i88.i.i.i, %i.bx ; 2 uses
  %i.ca = icmp uge i64 %i.bz, %spec.select.i.i.i88.i.i.i
  %.sroa.46.0.i.i.i91.i.i.i = select i1 %or.cond.not.i.i.i.i.i87.i.i.i, i64 undef, i64 %i.bz
  %narrow.i.i.i92.i.i.i = select i1 %not.or.cond.not.i.i.i.i.i89.i.i.i, i1 %i.ca, i1 false
  %.sroa.05.0.i.i.i93.i.i.i = zext i1 %narrow.i.i.i92.i.i.i to i64
  store i64 %.sroa.05.0.i.i.i93.i.i.i, ptr %.sroa.8110.i.i.i, align 8, !alias.scope !135, !noalias !114
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i74.i.i.i

bb.w:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !143, !noundef !5 ; 2 uses
  %.not.i.i9.i.i.i61.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i9.i.i.i61.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i11.i.i.i63.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val3.i.i.i10.i.i.i62.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !144, !nonnull !5, !noundef !5
  %i.ce = ptrtoint ptr %.val3.i.i.i10.i.i.i62.i.i.i to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub nuw i64 %i.ce, %i.cf
  %i.ch = udiv exact i64 %i.cg, 40
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i11.i.i.i63.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i11.i.i.i63.i.i.i: ; preds = %bb.x, %bb.w
  %.sroa.7.0.i.i12.i.i.i64.i.i.i = phi i64 [ %i.ch, %bb.x ], [ 0, %bb.w ]
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !143, !noundef !5 ; 2 uses
  %.not53.i.i13.i.i.i65.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not53.i.i13.i.i.i65.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i15.i.i.i67.i.i.i, label %bb.y

bb.y:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i11.i.i.i63.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val3.i61.i.i14.i.i.i66.i.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !145, !nonnull !5, !noundef !5
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
  %.val.i.i17.i.i.i69.i.i.i = load ptr, ptr %i.cr, align 8, !alias.scope !143, !align !6
  %.not76.i.i18.i.i.i70.i.i.i = icmp ne ptr %.val.i.i17.i.i.i69.i.i.i, null
  %or.cond.not.i.i19.i.i.i71.i.i.i = select i1 %i.cq, i1 %.not76.i.i18.i.i.i70.i.i.i, i1 false
  br i1 %or.cond.not.i.i19.i.i.i71.i.i.i, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i74.i.i.i, label %bb.z

bb.z:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i15.i.i.i67.i.i.i
  store i64 %i.cp, ptr %.sroa.14.i.i.i, align 8, !alias.scope !146, !noalias !114
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i74.i.i.i

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i74.i.i.i: ; preds = %bb.z, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i15.i.i.i67.i.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i.i.i.i83.i.i.i, %bb.s, %bb.r
  %.sroa.0109.0.i.i.i = phi i64 [ %i.bd, %bb.r ], [ 0, %bb.s ], [ %i.by, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i.i.i.i83.i.i.i ], [ %i.cp, %bb.z ], [ %i.cp, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i15.i.i.i67.i.i.i ]
  %.sink30.i.i.i75.sroa.phi.i.i.i = phi ptr [ %.sroa.14.i.i.i, %bb.r ], [ %.sroa.14.i.i.i, %bb.s ], [ %.sroa.14.i.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i.i.i.i83.i.i.i ], [ %.sroa.8110.i.i.i, %bb.z ], [ %.sroa.8110.i.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i15.i.i.i67.i.i.i ]
  %.sroa.46.0.sink.i.i.i76.i.i.i = phi i64 [ %i.bd, %bb.r ], [ 0, %bb.s ], [ %.sroa.46.0.i.i.i91.i.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i.i.i.i83.i.i.i ], [ 1, %bb.z ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvMsc_B1J_NtB1J_8Gradient6colors0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit62.i.i15.i.i.i67.i.i.i ]
  store i64 %.sroa.46.0.sink.i.i.i76.i.i.i, ptr %.sink30.i.i.i75.sroa.phi.i.i.i, align 8, !alias.scope !135, !noalias !114
  %.sroa.8110.i.i.i.0..sroa.8110.i.i.i.0..sroa.8110.i.i.i.0..sroa.8110.i.i.0..sroa.8110.i.i.0..sroa.8110.i.0..sroa.8110.i.0..sroa.8110.0..sroa.8110.0..sroa.8110.8..pre.i.i.i = load i64, ptr %.sroa.8110.i.i.i, align 8, !range !7, !noalias !114
  %.sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.16..pre.i.i.i = load i64, ptr %.sroa.14.i.i.i, align 8, !noalias !114
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtB3_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBO_3map3MapINtNtNtB5_5slice4iter4IterNtB1W_9ColorStopENCNvMsc_B1W_B1U_6colors0ENCNvMsb_B1W_NtB1W_15ShapeAttributes6colors0EIB1K_NtB1W_5ColorEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit95.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtB3_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBO_3map3MapINtNtNtB5_5slice4iter4IterNtB1W_9ColorStopENCNvMsc_B1W_B1U_6colors0ENCNvMsb_B1W_NtB1W_15ShapeAttributes6colors0EIB1K_NtB1W_5ColorEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit95.i.i.i: ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i74.i.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtB3_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBO_3map3MapINtNtNtB5_5slice4iter4IterNtB1W_9ColorStopENCNvMsc_B1W_B1U_6colors0ENCNvMsb_B1W_NtB1W_15ShapeAttributes6colors0EIB1K_NtB1W_5ColorEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i
  %.sroa.14.0..sroa.14.0..sroa.14.16..i.i.i = phi i64 [ %.sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.16..pre.i.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i74.i.i.i ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtB3_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBO_3map3MapINtNtNtB5_5slice4iter4IterNtB1W_9ColorStopENCNvMsc_B1W_B1U_6colors0ENCNvMsb_B1W_NtB1W_15ShapeAttributes6colors0EIB1K_NtB1W_5ColorEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i ]
  %.sroa.8110.0..sroa.8110.0..sroa.8110.8..i.i.i = phi i64 [ %.sroa.8110.i.i.i.0..sroa.8110.i.i.i.0..sroa.8110.i.i.i.0..sroa.8110.i.i.0..sroa.8110.i.i.0..sroa.8110.i.0..sroa.8110.i.0..sroa.8110.0..sroa.8110.0..sroa.8110.8..pre.i.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i74.i.i.i ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtB3_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBO_3map3MapINtNtNtB5_5slice4iter4IterNtB1W_9ColorStopENCNvMsc_B1W_B1U_6colors0ENCNvMsb_B1W_NtB1W_15ShapeAttributes6colors0EIB1K_NtB1W_5ColorEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i ] ; 2 uses
  %.sroa.0109.1.i.i.i = phi i64 [ %.sroa.0109.0.i.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtBe_6option4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtB1H_9ColorStopENCNvMsc_B1H_B1F_6colors0ENCNvMsb_B1H_NtB1H_15ShapeAttributes6colors0EIB1m_NtB1H_5ColorEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCsjceHdiZFn9b_13glyphs2fontir.exit.i74.i.i.i ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtB3_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBO_3map3MapINtNtNtB5_5slice4iter4IterNtB1W_9ColorStopENCNvMsc_B1W_B1U_6colors0ENCNvMsb_B1W_NtB1W_15ShapeAttributes6colors0EIB1K_NtB1W_5ColorEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8110.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i)
  %i.cs = add nuw nsw i64 %.sroa.0109.1.i.i.i, %.sroa.0.1.i.i.i ; 2 uses
  %i.ct = load i64, ptr %1, align 8, !range !7, !alias.scope !105, !noundef !5
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtB3_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBO_3map3MapINtNtNtB5_5slice4iter4IterNtB1W_9ColorStopENCNvMsc_B1W_B1U_6colors0ENCNvMsb_B1W_NtB1W_15ShapeAttributes6colors0EIB1K_NtB1W_5ColorEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit95.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !147, !noundef !5 ; 2 uses
  %.not54.i.i.i.i.i.i = icmp eq ptr %i.cw, null
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val61.i.i.i.i.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !147, !nonnull !5
  %i.cy = icmp eq ptr %.val61.i.i.i.i.i.i, %i.cw
  %or.cond.i.i.i.i.i.i = select i1 %.not54.i.i.i.i.i.i, i1 true, i1 %i.cy
  br i1 %or.cond.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.i.i.i, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.thread.i.i.i

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.i.i.i: ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !147, !noundef !5 ; 2 uses
  %.not53.i.i.i.i.i.i = icmp eq ptr %i.da, null
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3.i63.i.i.i.i.i.i = load ptr, ptr %i.db, align 8, !alias.scope !147, !nonnull !5
  %i.dc = ptrtoint ptr %.val3.i63.i.i.i.i.i.i to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub nuw i64 %i.dc, %i.dd
  %i.df = lshr exact i64 %i.de, 8
  %.sroa.8.0.i.i.i.i.i.i = select i1 %.not53.i.i.i.i.i.i, i64 0, i64 %i.df
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !147, !noundef !5 ; 2 uses
  %.not.i.i.i96.i.i.i = icmp eq ptr %i.dh, null
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.di, align 8, !alias.scope !147, !nonnull !5
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
  %3 = freeze i1 %op.rdx
  %op.rdx15 = select i1 %3, i1 %i.dp, i1 false
  br i1 %op.rdx15, label %bb.ac, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.thread.i.i.i

bb.ab:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtB3_4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8GradientEINtNtBO_3map3MapINtNtNtB5_5slice4iter4IterNtB1W_9ColorStopENCNvMsc_B1W_B1U_6colors0ENCNvMsb_B1W_NtB1W_15ShapeAttributes6colors0EIB1K_NtB1W_5ColorEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsjceHdiZFn9b_13glyphs2fontir.exit95.i.i.i
  %i.dr = and i64 %.sroa.8110.0..sroa.8110.0..sroa.8110.8..i.i.i, %.sroa.8.0..sroa.8.0..sroa.8.8..i.i.i
  %or.cond54.not.i.i.i = icmp eq i64 %i.dr, 0
  br i1 %or.cond54.not.i.i.i, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.thread.i.i.i, label %bb.ac

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.thread.i.i.i: ; preds = %bb.ab, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.i.i.i, %bb.aa
  store i64 %i.cs, ptr %0, align 8, !alias.scope !148
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapIB6_INtNtBa_6filter6FilterINtNtNtBe_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2K_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4B_6WorkIdNtNtB4D_5error5ErrorE4execs_00EIB1s_NtB1T_5ShapeENCB2C_s_0EINtNtBa_5chain5ChainIB6_INtNtBe_6option4IterNtB1T_8GradientEINtNtBa_3map3MapIB1s_NtB1T_9ColorStopENCNvMsc_B1T_B7d_6colors0ENCNvMsb_B1T_NtB1T_15ShapeAttributes6colors0EIB6U_NtB1T_5ColorEENCB2C_s0_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2M_.exit

bb.ac:                                            ; preds = %bb.ab, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.i.i.i
  %i.ds = add i64 %.sroa.14.0..sroa.14.0..sroa.14.16..i.i.i, %.sroa.13.0..sroa.13.0..sroa.13.16..i.i.i ; 2 uses
  %i.dt = icmp uge i64 %i.ds, %.sroa.13.0..sroa.13.0..sroa.13.16..i.i.i
  %.55.i.i.i = zext i1 %i.dt to i64
  store i64 %i.cs, ptr %0, align 8, !alias.scope !148
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.55.i.i.i, ptr %i.du, align 8, !alias.scope !148
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapIB6_INtNtBa_6filter6FilterINtNtNtBe_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2K_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4B_6WorkIdNtNtB4D_5error5ErrorE4execs_00EIB1s_NtB1T_5ShapeENCB2C_s_0EINtNtBa_5chain5ChainIB6_INtNtBe_6option4IterNtB1T_8GradientEINtNtBa_3map3MapIB1s_NtB1T_9ColorStopENCNvMsc_B1T_B7d_6colors0ENCNvMsb_B1T_NtB1T_15ShapeAttributes6colors0EIB6U_NtB1T_5ColorEENCB2C_s0_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2M_.exit

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapIB6_INtNtBa_6filter6FilterINtNtNtBe_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2K_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4B_6WorkIdNtNtB4D_5error5ErrorE4execs_00EIB1s_NtB1T_5ShapeENCB2C_s_0EINtNtBa_5chain5ChainIB6_INtNtBe_6option4IterNtB1T_8GradientEINtNtBa_3map3MapIB1s_NtB1T_9ColorStopENCNvMsc_B1T_B7d_6colors0ENCNvMsb_B1T_NtB1T_15ShapeAttributes6colors0EIB6U_NtB1T_5ColorEENCB2C_s0_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2M_.exit: ; preds = %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.thread.i.i.i, %bb.ac
  %.sink136.i.i.i = phi i64 [ 16, %bb.ac ], [ 8, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.thread.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.ds, %bb.ac ], [ 0, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNCNvXs9_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB2Z_16ColorPaletteWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4Q_6WorkIdNtNtB4S_5error5ErrorE4execs_00EIB1H_NtB28_5ShapeENCB2R_s_0ENCB2R_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB31_.exit.thread.i.i.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %.sink136.i.i.i
  store i64 %.sink.i.i.i, ptr %i.dv, align 8, !alias.scope !148
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
  %i.i = load i32, ptr %i.h, align 8, !alias.scope !153, !noundef !5
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
  store double %.val12, ptr %i.m, align 8, !alias.scope !153
  %.sroa.5.024 = add nuw nsw i64 %.sroa.0.023, 1  ; 2 uses
  %i.n = icmp samesign ult i64 %.sroa.5.024, %i.b
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
  %i.r = load i32, ptr %i.q, align 8, !alias.scope !154, !noundef !5
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
  store double %.val10, ptr %i.v, align 8, !alias.scope !154
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
  %.val.i = load ptr, ptr %1, align 8, !noalias !163, !nonnull !5, !align !6, !noundef !5
  %i.h = tail call noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TaguNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keyBO_ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
  %i.i = add nuw nsw i64 %.sroa.0.0, 1            ; 4 uses
  br i1 %i.h, label %bb.c, label %.preheader, !prof !8

.preheader:                                       ; preds = %bb.b
  %i.j = icmp samesign ult i64 %i.i, %i.b
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
  %.val.i10 = load ptr, ptr %1, align 8, !noalias !164, !nonnull !5, !align !6, !noundef !5
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
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.l, i64 %i.s, i1 false), !noalias !165
  %i.t = add i64 %i.q, %.sroa.13.029
  store i64 %i.t, ptr %i.a, align 8, !noalias !165
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

end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map6ValuesNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEINtNtB7_5chain5ChainINtNtBb_6option8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtB7_10filter_map9FilterMapINtNtB7_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB40_INtNtB1d_3vec3VecRNtB2A_5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB8U_33make_preliminary_glyph_categoriess0_0s_0EENCB9X_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB8W_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3794)
  %i.ab = icmp eq i16 %i.y, 0
  br i1 %i.ab, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3798)
  %i.ac = load i8, ptr %i.j, align 8, !range !11, !alias.scope !3799, !noundef !5
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i8 %i.ac, 25
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3801)
  %i.ad = load ptr, ptr %i.k, align 8, !alias.scope !3802, !nonnull !5, !noundef !5
  %i.ae = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !3803
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i unwind label %bb.s, !noalias !3776

bb.s:                                             ; preds = %bb.r
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %i.e, align 8, !alias.scope !3804, !noundef !5
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.body.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtCsbeZck1VjBmm_8indexmap6BucketNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtB7_3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %.body.i unwind label %bb.v, !noalias !3776

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.aj = load ptr, ptr %i.e, align 8, !alias.scope !3805, !noundef !5
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtB12_10filter_map9FilterMapINtNtB12_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1P_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7x_33make_preliminary_glyph_categoriess0_0s_0EEEEB7z_.exit.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtCsbeZck1VjBmm_8indexmap6BucketNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtB7_3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtB12_10filter_map9FilterMapINtNtB12_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1P_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7x_33make_preliminary_glyph_categoriess0_0s_0EEEEB7z_.exit.i unwind label %bb.w, !noalias !3776

bb.v:                                             ; preds = %bb.t
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !3776
  unreachable

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map6ValuesNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source33make_preliminary_glyph_categoriess0_0EEINtB5_8FuseImplBY_E4nextB3x_.exit.thread.i: ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEECsjceHdiZFn9b_13glyphs2fontir.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call fastcc void @_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_5chain5ChainINtNtB8_6option8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtB4_10filter_map9FilterMapINtNtB4_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1P_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7v_33make_preliminary_glyph_categoriess0_0s_0EEB1O_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB7x_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %i.am) #24
  br label %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map6ValuesNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source33make_preliminary_glyph_categoriess0_0EINtNtB7_5chain5ChainINtNtBb_6option8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtB7_10filter_map9FilterMapIB1c_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB5H_INtNtB1A_3vec3VecRNtB2X_5LayerEEENCNvB3I_19bracket_glyph_names0ENCNCB3G_s0_0s_0EEENtNtNtB9_6traits8iterator8Iterator4nextB3K_.exit

bb.w:                                             ; preds = %bb.u
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.w, %bb.t, %bb.s
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.an, %bb.w ], [ %i.ag, %bb.t ], [ %i.ag, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.011.i, i64 32, i1 false), !noalias !3776
  store ptr %i.m, ptr %.sroa.512.0..sroa_idx13.i, align 8, !alias.scope !3774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.i, i64 24, i1 false), !noalias !3776
  store i16 %.sroa.7.40.copyload.i, ptr %i.i, align 8, !alias.scope !3774
  br label %common.resume.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtB12_10filter_map9FilterMapINtNtB12_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1P_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7x_33make_preliminary_glyph_categoriess0_0s_0EEEEB7z_.exit.i: ; preds = %bb.u, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.011.i, i64 32, i1 false), !noalias !3776
  store ptr %i.m, ptr %.sroa.512.0..sroa_idx13.i, align 8, !alias.scope !3774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.i, i64 24, i1 false), !noalias !3776
  store i16 %.sroa.7.40.copyload.i, ptr %i.i, align 8, !alias.scope !3774
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.011.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3775
  call fastcc void @_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_5chain5ChainINtNtB8_6option8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtB4_10filter_map9FilterMapINtNtB4_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1P_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7v_33make_preliminary_glyph_categoriess0_0s_0EEB1O_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB7x_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef align 8 dereferenceable(72) %i.e) #24, !noalias !3776
  %i.ao = load i16, ptr %i.f, align 8, !range !16, !noalias !3775, !noundef !5
  %.not.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEECsjceHdiZFn9b_13glyphs2fontir.exit.i, label %._crit_edge.i

_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map6ValuesNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source33make_preliminary_glyph_categoriess0_0EINtNtB7_5chain5ChainINtNtBb_6option8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtB7_10filter_map9FilterMapIB1c_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB5H_INtNtB1A_3vec3VecRNtB2X_5LayerEEENCNvB3I_19bracket_glyph_names0ENCNCB3G_s0_0s_0EEENtNtNtB9_6traits8iterator8Iterator4nextB3K_.exit: ; preds = %._crit_edge.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map6ValuesNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source33make_preliminary_glyph_categoriess0_0EEINtB5_8FuseImplBY_E4nextB3x_.exit.thread.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map6ValuesNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEINtNtB7_5chain5ChainINtNtBb_6option8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtB7_10filter_map9FilterMapINtNtB7_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB40_INtNtB1d_3vec3VecRNtB2A_5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB8U_33make_preliminary_glyph_categoriess0_0s_0EENCB9X_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB8W_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3842)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = load i16, ptr %i.e, align 8, !range !13, !alias.scope !3842, !noundef !5 ; 3 uses
  %.not.i = icmp eq i16 %i.f, -2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3843)
  br i1 %.not.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtBO_10filter_map9FilterMapINtNtBO_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1B_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7h_33make_preliminary_glyph_categoriess0_0s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB7j_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3845)
  %.not.i.i.i.i = icmp eq i16 %i.f, -1
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !3846, !noundef !5
  %.not7.i.i.i.i = icmp eq ptr %i.h, null         ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ne i16 %i.f, 0
  %i.j = zext i1 %i.i to i64                      ; 5 uses
  br i1 %.not7.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtBO_10filter_map9FilterMapINtNtBO_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1B_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7h_33make_preliminary_glyph_categoriess0_0s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB7j_.exit.i, label %bb.f

bb.d:                                             ; preds = %bb.b
  br i1 %.not7.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtBO_10filter_map9FilterMapINtNtBO_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1B_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7h_33make_preliminary_glyph_categoriess0_0s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB7j_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3847
  call void @_RNvXso_NtNtCsbeZck1VjBmm_8indexmap3map4iterINtB5_8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9size_hintCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) dereferenceable_or_null(72) %i.g), !noalias !3848
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !7, !noalias !3847, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !3847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3847
  %i.o = trunc nuw i64 %i.l to i1
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtBO_10filter_map9FilterMapINtNtBO_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1B_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7h_33make_preliminary_glyph_categoriess0_0s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB7j_.exit.i

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3849
  call void @_RNvXso_NtNtCsbeZck1VjBmm_8indexmap3map4iterINtB5_8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9size_hintCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) dereferenceable_or_null(72) %i.g), !noalias !3850
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !7, !noalias !3849, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noalias !3849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3849
  %i.t = trunc nuw i64 %i.q to i1                 ; 2 uses
  %i.u = add i64 %i.s, %i.j                       ; 2 uses
  %i.v = icmp uge i64 %i.u, %i.j
  %.sroa.46.0.i.i.i.i = select i1 %i.t, i64 %i.u, i64 undef
  %narrow.i.i.i.i = select i1 %i.t, i1 %i.v, i1 false
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtBO_10filter_map9FilterMapINtNtBO_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1B_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7h_33make_preliminary_glyph_categoriess0_0s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB7j_.exit.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtBO_10filter_map9FilterMapINtNtBO_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1B_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7h_33make_preliminary_glyph_categoriess0_0s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB7j_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.7.0.i = phi i64 [ 0, %bb.d ], [ %.sroa.46.0.i.i.i.i, %bb.f ], [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.5.0.i = phi i1 [ true, %bb.d ], [ %narrow.i.i.i.i, %bb.f ], [ %i.o, %bb.e ], [ true, %bb.c ], [ true, %bb.a ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.d ], [ %i.j, %bb.f ], [ 0, %bb.e ], [ %i.j, %bb.c ], [ 0, %bb.a ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.x = load i16, ptr %i.w, align 8, !range !13, !alias.scope !3842, !noundef !5 ; 3 uses
  %.not53.i = icmp eq i16 %i.x, -2
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3851)
  br i1 %.not53.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtBO_10filter_map9FilterMapINtNtBO_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1B_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7h_33make_preliminary_glyph_categoriess0_0s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB7j_.exit69.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtBO_10filter_map9FilterMapINtNtBO_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1B_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7h_33make_preliminary_glyph_categoriess0_0s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB7j_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3852)
  call void @llvm.experimental.noalias.scope.decl(metadata !3853)
  %.not.i.i.i60.i = icmp eq i16 %i.x, -1
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !3854, !noundef !5
  %.not7.i.i.i61.i = icmp eq ptr %i.z, null       ; 2 uses
  br i1 %.not.i.i.i60.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp ne i16 %i.x, 0
  %i.ab = zext i1 %i.aa to i64                    ; 5 uses
  br i1 %.not7.i.i.i61.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtBO_10filter_map9FilterMapINtNtBO_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1B_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7h_33make_preliminary_glyph_categoriess0_0s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB7j_.exit69.i, label %bb.k

bb.i:                                             ; preds = %bb.g
  br i1 %.not7.i.i.i61.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtBO_10filter_map9FilterMapINtNtBO_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1B_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7h_33make_preliminary_glyph_categoriess0_0s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB7j_.exit69.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3855
  call void @_RNvXso_NtNtCsbeZck1VjBmm_8indexmap3map4iterINtB5_8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9size_hintCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) dereferenceable_or_null(72) %i.y), !noalias !3856
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !7, !noalias !3855, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noalias !3855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3855
  %i.ag = trunc nuw i64 %i.ad to i1
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtBO_10filter_map9FilterMapINtNtBO_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1B_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7h_33make_preliminary_glyph_categoriess0_0s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB7j_.exit69.i

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3857
  call void @_RNvXso_NtNtCsbeZck1VjBmm_8indexmap3map4iterINtB5_8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9size_hintCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) dereferenceable_or_null(72) %i.y), !noalias !3858
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !7, !noalias !3857, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !3857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3857
  %i.al = trunc nuw i64 %i.ai to i1               ; 2 uses
  %i.am = add i64 %i.ak, %i.ab                    ; 2 uses
  %i.an = icmp uge i64 %i.am, %i.ab
  %.sroa.46.0.i.i.i62.i = select i1 %i.al, i64 %i.am, i64 undef
  %narrow.i.i.i63.i = select i1 %i.al, i1 %i.an, i1 false
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtBO_10filter_map9FilterMapINtNtBO_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1B_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7h_33make_preliminary_glyph_categoriess0_0s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB7j_.exit69.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtBO_10filter_map9FilterMapINtNtBO_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1B_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7h_33make_preliminary_glyph_categoriess0_0s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB7j_.exit69.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtBO_10filter_map9FilterMapINtNtBO_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1B_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7h_33make_preliminary_glyph_categoriess0_0s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB7j_.exit.i
  %.sroa.8.0.i = phi i64 [ 0, %bb.i ], [ %.sroa.46.0.i.i.i62.i, %bb.k ], [ %i.af, %bb.j ], [ %i.ab, %bb.h ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtBO_10filter_map9FilterMapINtNtBO_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1B_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7h_33make_preliminary_glyph_categoriess0_0s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB7j_.exit.i ]
  %.sroa.577.0.i = phi i1 [ true, %bb.i ], [ %narrow.i.i.i63.i, %bb.k ], [ %i.ag, %bb.j ], [ true, %bb.h ], [ true, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtBO_10filter_map9FilterMapINtNtBO_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1B_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7h_33make_preliminary_glyph_categoriess0_0s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB7j_.exit.i ]
  %.sroa.076.0.i = phi i64 [ 0, %bb.i ], [ %i.ab, %bb.k ], [ 0, %bb.j ], [ %i.ab, %bb.h ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtBO_10filter_map9FilterMapINtNtBO_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1B_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7h_33make_preliminary_glyph_categoriess0_0s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB7j_.exit.i ]
  %.sroa.577.0.i.fr = freeze i1 %.sroa.577.0.i    ; 2 uses
  %i.ao = add nuw nsw i64 %.sroa.076.0.i, %.sroa.0.0.i ; 2 uses
  %i.ap = load i64, ptr %1, align 8, !range !4, !alias.scope !3842, !noundef !5
  %.not54.i = icmp eq i64 %i.ap, 2
  br i1 %.not54.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtBO_10filter_map9FilterMapINtNtBO_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1B_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7h_33make_preliminary_glyph_categoriess0_0s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB7j_.exit69.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i = load i64, ptr %i.aq, align 8, !alias.scope !3842, !noundef !5
  %i.ar = icmp eq i64 %.val.i, 0
  %op.rdx = and i1 %i.ar, %.sroa.577.0.i.fr
  %op.rdx2 = select i1 %op.rdx, i1 %.sroa.5.0.i, i1 false
  br i1 %op.rdx2, label %bb.o, label %bb.n

bb.m:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtBO_10filter_map9FilterMapINtNtBO_3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB1B_INtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source19bracket_glyph_names0ENCNCNvB7h_33make_preliminary_glyph_categoriess0_0s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB7j_.exit69.i
  %or.cond55.i = and i1 %.sroa.5.0.i, %.sroa.577.0.i.fr
  br i1 %or.cond55.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i64 %i.ao, ptr %0, align 8, !alias.scope !3841
  br label %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map6ValuesNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source33make_preliminary_glyph_categoriess0_0EINtNtB7_5chain5ChainINtNtBb_6option8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtB7_10filter_map9FilterMapIB1c_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB5H_INtNtB1A_3vec3VecRNtB2X_5LayerEEENCNvB3I_19bracket_glyph_names0ENCNCB3G_s0_0s_0EEENtNtNtB9_6traits8iterator8Iterator9size_hintB3K_.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.as = add i64 %.sroa.8.0.i, %.sroa.7.0.i      ; 2 uses
  %i.at = icmp uge i64 %i.as, %.sroa.7.0.i
  %..i = zext i1 %i.at to i64
  store i64 %i.ao, ptr %0, align 8, !alias.scope !3841
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %..i, ptr %i.au, align 8, !alias.scope !3841
  br label %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map6ValuesNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source33make_preliminary_glyph_categoriess0_0EINtNtB7_5chain5ChainINtNtBb_6option8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtB7_10filter_map9FilterMapIB1c_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB5H_INtNtB1A_3vec3VecRNtB2X_5LayerEEENCNvB3I_19bracket_glyph_names0ENCNCB3G_s0_0s_0EEENtNtNtB9_6traits8iterator8Iterator9size_hintB3K_.exit

_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map6ValuesNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source33make_preliminary_glyph_categoriess0_0EINtNtB7_5chain5ChainINtNtBb_6option8IntoIterTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEINtNtB7_10filter_map9FilterMapIB1c_INtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12ConditionSetTB5H_INtNtB1A_3vec3VecRNtB2X_5LayerEEENCNvB3I_19bracket_glyph_names0ENCNCB3G_s0_0s_0EEENtNtNtB9_6traits8iterator8Iterator9size_hintB3K_.exit: ; preds = %bb.n, %bb.o
  %.sink85.i = phi i64 [ 16, %bb.o ], [ 8, %bb.n ]
  %.sink.i = phi i64 [ %i.as, %bb.o ], [ 0, %bb.n ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.sink85.i
  store i64 %.sink.i, ptr %i.av, align 8, !alias.scope !3841
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecIBx_NtNtCs1qcNTItuk7F_13glyphs_reader4font5ColorEENtB6_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 16
  %.val1 = load i64, ptr %i.d, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3864
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !3865
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.val1
  %i.f = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ColorEINtNtNtBa_5slice4iter4IterB14_EECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 %.val, ptr noundef nonnull readonly %i.e)
  %i.g = call noundef zeroext i1 @_RNvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3864
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtB6_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3868)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3868, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3868, !noundef !5
  %i.f = tail call noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdENtB5_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !3868
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtBB_11collections5btree3map8BTreeMapNtNtBB_6string6StringINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtB6_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3871)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3871, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3871, !noundef !5
  %i.f = tail call noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBE_6string6StringINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtB5_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !3871
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrENtB6_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3874)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3874, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3874, !noundef !5
  %i.f = tail call noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtCs9NoVXegZYB5_8smol_str7SmolStrNtB5_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !3874
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font12RawNameValueENtB6_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtCs1qcNTItuk7F_13glyphs_reader4font12RawNameValueNtB5_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font14NameTableEntryENtB6_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtCs1qcNTItuk7F_13glyphs_reader4font14NameTableEntryNtB5_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintENtB6_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintNtB5_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ColorENtB6_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtCs1qcNTItuk7F_13glyphs_reader4font5ColorNtB5_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font7RawNameENtB6_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtCs1qcNTItuk7F_13glyphs_reader4font7RawNameNtB5_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENtB6_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3877)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3877, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3877, !noundef !5
  %i.f = tail call noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopNtB5_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !3877
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader5plist5PlistENtB6_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtCs1qcNTItuk7F_13glyphs_reader5plist5PlistNtB5_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB14_EENtB6_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBw_ENtB5_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBB_6string6StringB14_EENtB6_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSTNtNtCsgCecv3eZDcN_5alloc6string6StringBw_ENtB5_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtShNtB5_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}
end_hunk_1
