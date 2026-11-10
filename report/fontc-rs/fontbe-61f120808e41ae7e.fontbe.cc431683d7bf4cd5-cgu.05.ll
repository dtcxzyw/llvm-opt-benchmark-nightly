Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.05?download=true
inline.NumInlined: 1595
inline.NumDeleted: 857
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16B1n_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB2n_11collections5btree3mapINtB3a_8BTreeMapB1n_B1n_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB4d_8adapters3zip3ZipINtNtNtB4d_7sources7from_fn6FromFnNCNvMs4_NtCscScJTt9VrQp_6fea_rs6commonNtB6d_12GlyphOrClass4iter0EIB5y_NCNvB69_20into_iter_for_target0EEE0E0ECshxhuDJfZv4T_6fontbe:bb.a
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16B19_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapB19_B19_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3Z_8adapters3zip3ZipINtNtNtB3Z_7sources7from_fn6FromFnNCNvMs4_NtCscScJTt9VrQp_6fea_rs6commonNtB5Z_12GlyphOrClass4iter0EIB5k_NCNvB5V_20into_iter_for_target0EEE0E0ECshxhuDJfZv4T_6fontbe.exit

bb.d:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 2
  %i.g = load i16, ptr %i.f, align 2, !noundef !10
  %i.h = load i32, ptr %i.d, align 2
  store i32 %i.h, ptr %.sroa.0.05, align 2
  %i.i = icmp eq ptr %i.d, %0
  br i1 %i.i, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  %i.j = load i32, ptr %i.l, align 2
  store i32 %i.j, ptr %.sroa.0.0.i8, align 2
  %i.k = icmp eq ptr %i.l, %0
  br i1 %i.k, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.l, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -4 ; 4 uses
  %.val8.i = load i16, ptr %i.l, align 2, !noundef !10
  %i.m = icmp ult i16 %.val9.i, %.val8.i
  br i1 %i.m, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ]
  %.sroa.0.sroa.5.0.insert.ext.i = zext i16 %i.g to i32
  %.sroa.0.sroa.5.0.insert.shift.i = shl nuw i32 %.sroa.0.sroa.5.0.insert.ext.i, 16
  %.sroa.0.sroa.0.0.insert.ext.i = zext i16 %.val9.i to i32
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.0.sroa.5.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i32 %.sroa.0.sroa.0.0.insert.insert.i, ptr %.sroa.0.0.i.lcssa, align 2, !noalias !2258
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16B19_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapB19_B19_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3Z_8adapters3zip3ZipINtNtNtB3Z_7sources7from_fn6FromFnNCNvMs4_NtCscScJTt9VrQp_6fea_rs6commonNtB5Z_12GlyphOrClass4iter0EIB5k_NCNvB5V_20into_iter_for_target0EEE0E0ECshxhuDJfZv4T_6fontbe.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16B19_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapB19_B19_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3Z_8adapters3zip3ZipINtNtNtB3Z_7sources7from_fn6FromFnNCNvMs4_NtCscScJTt9VrQp_6fea_rs6commonNtB5Z_12GlyphOrClass4iter0EIB5k_NCNvB5V_20into_iter_for_target0EEE0E0ECshxhuDJfZv4T_6fontbe.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB2k_11collections5btree3mapINtB37_8BTreeMapB1n_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB47_8adapters6filter6FilterINtNtB54_10filter_map9FilterMapINtB37_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB84_22FeatureCompilationWorkINtNtB6i_13orchestration4WorkNtNtB86_13orchestration7ContextNtB9z_9AnyWorkIdNtNtB86_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtBaT_19ClassDefBuilderImplIB41_B1m_E9from_iterB5x_E0EE0E0EB86_(ptr noalias nofree noundef nonnull align 2 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_10filter_map9FilterMapINtB2T_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB7Q_22FeatureCompilationWorkINtNtB64_13orchestration4WorkNtNtB7S_13orchestration7ContextNtB9l_9AnyWorkIdNtNtB7S_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtBaF_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7S_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_10filter_map9FilterMapINtB2T_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB7Q_22FeatureCompilationWorkINtNtB64_13orchestration4WorkNtNtB7S_13orchestration7ContextNtB9l_9AnyWorkIdNtNtB7S_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtBaF_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7S_.exit
  %.sroa.0.05 = phi ptr [ %i.n, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_10filter_map9FilterMapINtB2T_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB7Q_22FeatureCompilationWorkINtNtB64_13orchestration4WorkNtNtB7S_13orchestration7ContextNtB9l_9AnyWorkIdNtNtB7S_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtBaF_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7S_.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %.val9.i = load i16, ptr %.sroa.0.05, align 2, !noundef !10 ; 3 uses
  %.val10.i = load i16, ptr %i.d, align 2, !noundef !10
  %i.e = icmp ult i16 %.val9.i, %.val10.i
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_10filter_map9FilterMapINtB2T_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB7Q_22FeatureCompilationWorkINtNtB64_13orchestration4WorkNtNtB7S_13orchestration7ContextNtB9l_9AnyWorkIdNtNtB7S_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtBaF_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7S_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 2
  %i.g = load i16, ptr %i.f, align 2, !noundef !10
  %i.h = load i32, ptr %i.d, align 2
  store i32 %i.h, ptr %.sroa.0.05, align 2
  %i.i = icmp eq ptr %i.d, %0
  br i1 %i.i, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  %i.j = load i32, ptr %i.l, align 2
  store i32 %i.j, ptr %.sroa.0.0.i8, align 2
  %i.k = icmp eq ptr %i.l, %0
  br i1 %i.k, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.l, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -4 ; 4 uses
  %.val8.i = load i16, ptr %i.l, align 2, !noundef !10
  %i.m = icmp ult i16 %.val9.i, %.val8.i
  br i1 %i.m, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ]
  %.sroa.0.sroa.5.0.insert.ext.i = zext i16 %i.g to i32
  %.sroa.0.sroa.5.0.insert.shift.i = shl nuw i32 %.sroa.0.sroa.5.0.insert.ext.i, 16
  %.sroa.0.sroa.0.0.insert.ext.i = zext i16 %.val9.i to i32
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.0.sroa.5.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i32 %.sroa.0.sroa.0.0.insert.insert.i, ptr %.sroa.0.0.i.lcssa, align 2, !noalias !2263
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_10filter_map9FilterMapINtB2T_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB7Q_22FeatureCompilationWorkINtNtB64_13orchestration4WorkNtNtB7S_13orchestration7ContextNtB9l_9AnyWorkIdNtNtB7S_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtBaF_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7S_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_10filter_map9FilterMapINtB2T_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXsa_NtCshxhuDJfZv4T_6fontbe8featuresNtB7Q_22FeatureCompilationWorkINtNtB64_13orchestration4WorkNtNtB7S_13orchestration7ContextNtB9l_9AnyWorkIdNtNtB7S_5error5ErrorE4exec0ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtBaF_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7S_.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1n_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB2k_11collections5btree3mapINtB37_8BTreeMapB1n_B1n_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12SubstitutionENCNvMNtNtCshxhuDJfZv4T_6fontbe8features18feature_variationsNtB6R_25FeatureVariationsProvider3news0_0EE0E0EB6V_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 192153584101141163) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #12 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.d, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_B19_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB8_4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12SubstitutionENCNvMNtNtCshxhuDJfZv4T_6fontbe8features18feature_variationsNtB6D_25FeatureVariationsProvider3news0_0EE0E0EB6H_(ptr noundef %0, ptr noundef %.sroa.0.05)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtCsgCecv3eZDcN_5alloc3vec3VecjEENCINvMNtB2l_5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB2l_11collections5btree3mapINtB3v_8BTreeMapB1n_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB4y_8adapters5chain5ChainINtNtB5v_7flatten7FlattenINtNtBa_6option8IntoIterB42_EEB5W_EE0E0ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 230584300921369396) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #11 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.d, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtCsgCecv3eZDcN_5alloc3vec3VecjEENCINvMNtB27_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB27_11collections5btree3mapINtB3h_8BTreeMapB19_B22_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters5chain5ChainINtNtB5h_7flatten7FlattenINtNtBa_6option8IntoIterB3O_EEB5I_EE0E0ECshxhuDJfZv4T_6fontbe(ptr noundef %0, ptr noundef %.sroa.0.05)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB2f_5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB3t_8BTreeMapB1n_B2b_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB4w_8adapters3map3MapINtNtB5t_5chain5ChainINtNtNtB2f_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5t_6cloned6ClonedINtNtB8_4iter4IterB6J_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8x_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.8.i = alloca [24 x i8], align 8          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit
  %.sroa.0.05 = phi ptr [ %i.ae, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit ], [ %i.c, %.lr.ph.preheader ] ; 14 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -32 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  %.val9.i.i.i.i = load i16, ptr %.sroa.0.05, align 8, !alias.scope !2289, !noundef !10 ; 5 uses
  %.val10.i.i.i.i = load i16, ptr %i.d, align 8, !alias.scope !2290, !noundef !10 ; 2 uses
  %i.e = icmp eq i16 %.val9.i.i.i.i, %.val10.i.i.i.i
  %i.f = icmp ult i16 %.val9.i.i.i.i, %.val10.i.i.i.i
  br i1 %i.e, label %bb.d, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i

bb.d:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 2
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -30
  %.val7.i.i.i.i = load i16, ptr %i.g, align 2, !alias.scope !2289, !noundef !10 ; 3 uses
  %.val8.i.i.i.i = load i16, ptr %i.h, align 2, !alias.scope !2290, !noundef !10 ; 2 uses
  %i.i = icmp eq i16 %.val7.i.i.i.i, %.val8.i.i.i.i
  %i.j = icmp ult i16 %.val7.i.i.i.i, %.val8.i.i.i.i
  br i1 %i.i, label %bb.e, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -28
  %.val.i.i.i.i = load i16, ptr %i.k, align 4, !alias.scope !2289, !noundef !10 ; 3 uses
  %.val6.i.i.i.i = load i16, ptr %i.l, align 4, !alias.scope !2290, !noundef !10 ; 2 uses
  %i.m = icmp eq i16 %.val.i.i.i.i, %.val6.i.i.i.i
  %i.n = icmp ult i16 %.val.i.i.i.i, %.val6.i.i.i.i
  br i1 %i.m, label %.split.i, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i

.split.i:                                         ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 6
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -26
  %.val11.i.i.i.i = load i16, ptr %i.o, align 2, !alias.scope !2289, !noundef !10 ; 2 uses
  %.val12.i.i.i.i = load i16, ptr %i.p, align 2, !alias.scope !2290, !noundef !10
  %i.q = icmp ult i16 %.val11.i.i.i.i, %.val12.i.i.i.i
  br i1 %i.q, label %bb.f, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i: ; preds = %bb.e, %bb.d, %.lr.ph
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.f, %.lr.ph ], [ %i.n, %bb.e ], [ %i.j, %bb.d ]
  br i1 %.sroa.0.0.i.i.i.i, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit._crit_edge.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit._crit_edge.i: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i
  %.sroa.4.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 2
  %.sroa.4.0.copyload.pre.i = load i16, ptr %.sroa.4.0..sroa_idx.phi.trans.insert.i, align 2
  %.sroa.514.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4
  %.sroa.514.0.copyload.pre.i = load i16, ptr %.sroa.514.0..sroa_idx.phi.trans.insert.i, align 4
  %.sroa.615.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 6
  %.sroa.615.0.copyload.pre.i = load i16, ptr %.sroa.615.0..sroa_idx.phi.trans.insert.i, align 2
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit._crit_edge.i, %.split.i
  %.sroa.615.0.copyload.i = phi i16 [ %.sroa.615.0.copyload.pre.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit._crit_edge.i ], [ %.val11.i.i.i.i, %.split.i ] ; 2 uses
  %.sroa.514.0.copyload.i = phi i16 [ %.sroa.514.0.copyload.pre.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit._crit_edge.i ], [ %.val.i.i.i.i, %.split.i ] ; 3 uses
  %.sroa.4.0.copyload.i = phi i16 [ %.sroa.4.0.copyload.pre.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit._crit_edge.i ], [ %.val7.i.i.i.i, %.split.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %.sroa.716.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.716.0..sroa_idx.i, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.r = icmp eq ptr %i.d, %0
  br i1 %i.r, label %.split5._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.backedge.i
  %.sroa.0.06.i = phi ptr [ %i.s, %.backedge.i ], [ %i.d, %bb.f ] ; 7 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -32 ; 4 uses
  %.val10.i.i.i9.i = load i16, ptr %i.s, align 8, !alias.scope !2291, !noundef !10 ; 2 uses
  %i.t = icmp eq i16 %.val9.i.i.i.i, %.val10.i.i.i9.i
  %i.u = icmp ult i16 %.val9.i.i.i.i, %.val10.i.i.i9.i
  br i1 %i.t, label %bb.g, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -30
  %.val8.i.i.i12.i = load i16, ptr %i.v, align 2, !alias.scope !2291, !noundef !10 ; 2 uses
  %i.w = icmp eq i16 %.sroa.4.0.copyload.i, %.val8.i.i.i12.i
  %i.x = icmp ult i16 %.sroa.4.0.copyload.i, %.val8.i.i.i12.i
  br i1 %i.w, label %bb.h, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -28
  %.val6.i.i.i14.i = load i16, ptr %i.y, align 4, !alias.scope !2291, !noundef !10 ; 2 uses
  %i.z = icmp eq i16 %.sroa.514.0.copyload.i, %.val6.i.i.i14.i
  %i.aa = icmp ult i16 %.sroa.514.0.copyload.i, %.val6.i.i.i14.i
  br i1 %i.z, label %.split5.i, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i

.split5.i:                                        ; preds = %bb.h
  %i.ab = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -26
  %.val12.i.i.i16.i = load i16, ptr %i.ab, align 2, !alias.scope !2291, !noundef !10
  %i.ac = icmp ult i16 %.sroa.615.0.copyload.i, %.val12.i.i.i16.i
  br i1 %i.ac, label %.backedge.i, label %.split5._crit_edge.i

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i: ; preds = %bb.h, %bb.g, %.lr.ph.i
  %.sroa.0.0.i.i.i10.i = phi i1 [ %i.u, %.lr.ph.i ], [ %i.aa, %bb.h ], [ %i.x, %bb.g ]
  br i1 %.sroa.0.0.i.i.i10.i, label %.backedge.i, label %.split5._crit_edge.i

.backedge.i:                                      ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i, %.split5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.06.i, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  %i.ad = icmp eq ptr %i.s, %0
  br i1 %i.ad, label %.split5._crit_edge.i, label %.lr.ph.i

.split5._crit_edge.i:                             ; preds = %.backedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i, %.split5.i, %bb.f
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.f ], [ %0, %.backedge.i ], [ %.sroa.0.06.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i ], [ %.sroa.0.06.i, %.split5.i ] ; 5 uses
  store i16 %.val9.i.i.i.i, ptr %.sroa.0.0.lcssa.i, align 8, !noalias !2292
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 2
  store i16 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 2, !noalias !2292
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 4
  store i16 %.sroa.514.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 4, !noalias !2292
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 6
  store i16 %.sroa.615.0.copyload.i, ptr %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i, align 2, !noalias !2292
  %.sroa.8.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !2292
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit: ; preds = %.split.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i, %.split5._crit_edge.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTcNtNtCsbZq13ASDQ8l_10font_types8glyph_id7GlyphIdENvYB1m_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTcNtNtCsbZq13ASDQ8l_10font_types8glyph_id7GlyphIdENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTcNtNtCsbZq13ASDQ8l_10font_types8glyph_id7GlyphIdENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit
  %.sroa.0.05 = phi ptr [ %i.u, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTcNtNtCsbZq13ASDQ8l_10font_types8glyph_id7GlyphIdENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 4 uses
  %.val11.i = load i64, ptr %.sroa.0.05, align 4  ; 3 uses
  %i.e = trunc i64 %.val11.i to i32               ; 4 uses
  %i.f = lshr i64 %.val11.i, 32
  %i.g = trunc nuw i64 %i.f to i32                ; 2 uses
  %.val13.i = load i32, ptr %i.d, align 4, !range !25, !noundef !10 ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.0.05, i64 -4
  %.val14.i = load i32, ptr %i.h, align 4
  %i.i = icmp eq i32 %.val13.i, %i.e
  %i.j = icmp samesign ugt i32 %.val13.i, %i.e
  %i.k = icmp ugt i32 %.val14.i, %i.g
  %.sroa.0.0.i.i.i = select i1 %i.i, i1 %i.k, i1 %i.j
  br i1 %.sroa.0.0.i.i.i, label %.preheader.preheader, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTcNtNtCsbZq13ASDQ8l_10font_types8glyph_id7GlyphIdENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit

.preheader.preheader:                             ; preds = %.lr.ph
  %i.l = load i64, ptr %i.d, align 4
  store i64 %i.l, ptr %.sroa.0.05, align 4
  %i.m = icmp eq ptr %i.d, %0
  br i1 %i.m, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  %i.n = load i64, ptr %i.p, align 4
  store i64 %i.n, ptr %.sroa.0.0.i8, align 4
  %i.o = icmp eq ptr %i.p, %0
  br i1 %i.o, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.p, %.preheader ], [ %i.d, %.preheader.preheader ] ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -8 ; 4 uses
  %.val9.i = load i32, ptr %i.p, align 4, !range !25, !noundef !10 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.0.0.i8, i64 -4
  %.val10.i = load i32, ptr %i.q, align 4
  %i.r = icmp eq i32 %.val9.i, %i.e
  %i.s = icmp samesign ugt i32 %.val9.i, %i.e
  %i.t = icmp ugt i32 %.val10.i, %i.g
  %.sroa.0.0.i.i15.i = select i1 %i.r, i1 %i.t, i1 %i.s
  br i1 %.sroa.0.0.i.i15.i, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ]
  store i64 %.val11.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !2297
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTcNtNtCsbZq13ASDQ8l_10font_types8glyph_id7GlyphIdENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTcNtNtCsbZq13ASDQ8l_10font_types8glyph_id7GlyphIdENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB1m_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.b, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %1
  %.not5 = icmp samesign eq i64 %2, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit
  %.sroa.0.06 = phi ptr [ %i.d, %.lr.ph ], [ %i.v, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit ] ; 7 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -80 ; 4 uses
  %.val.i.i.i = load i16, ptr %.sroa.0.06, align 8, !noundef !10 ; 2 uses
  %.val3.i.i.i = load i16, ptr %i.f, align 8, !noundef !10 ; 2 uses
  %i.g = icmp eq i16 %.val.i.i.i, %.val3.i.i.i
  br i1 %i.g, label %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.d
  %i.h = icmp ult i16 %.val.i.i.i, %.val3.i.i.i
  br i1 %i.h, label %bb.e, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit

_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 8
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -72
  %i.k = call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs8n5UXKvQVD9_10read_fonts11collections7int_setINtB5_6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtCsf3Ta7LF998c_4core3cmp3Ord3cmpCshxhuDJfZv4T_6fontbe(ptr noundef nonnull align 8 %i.i, ptr noundef nonnull align 8 %i.j)
  %i.l = icmp slt i8 %i.k, 0
  br i1 %i.l, label %bb.e, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit

bb.e:                                             ; preds = %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.06, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.06, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false)
  %i.m = icmp eq ptr %i.f, %0
  br i1 %i.m, label %.split5._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.backedge.i
  %.sroa.0.07.i = phi ptr [ %i.n, %.backedge.i ], [ %i.f, %bb.e ] ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -80 ; 4 uses
  %.val.i.i8.i = load i16, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %.val3.i.i9.i = load i16, ptr %i.n, align 8, !noundef !10 ; 2 uses
  %i.o = icmp eq i16 %.val.i.i8.i, %.val3.i.i9.i
  br i1 %i.o, label %bb.f, label %.split5.i

.split5.i:                                        ; preds = %.lr.ph.i
  %i.p = icmp ult i16 %.val.i.i8.i, %.val3.i.i9.i
  br i1 %i.p, label %.backedge.i, label %.split5._crit_edge.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -72
  %i.r = invoke noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs8n5UXKvQVD9_10read_fonts11collections7int_setINtB5_6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtCsf3Ta7LF998c_4core3cmp3Ord3cmpCshxhuDJfZv4T_6fontbe(ptr noundef nonnull align 8 %i.e, ptr noundef nonnull align 8 %i.q)
          to label %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit11.i unwind label %bb.g

_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit11.i: ; preds = %bb.f
  %i.s = icmp slt i8 %i.r, 0
  br i1 %i.s, label %.backedge.i, label %.split5._crit_edge.i

.backedge.i:                                      ; preds = %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit11.i, %.split5.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.07.i, ptr noundef nonnull align 8 dereferenceable(80) %i.n, i64 80, i1 false)
  %i.t = icmp eq ptr %i.n, %0
  br i1 %i.t, label %.split5._crit_edge.i, label %.lr.ph.i

.split5._crit_edge.i:                             ; preds = %.backedge.i, %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit11.i, %.split5.i, %bb.e
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.e ], [ %0, %.backedge.i ], [ %.sroa.0.07.i, %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit11.i ], [ %.sroa.0.07.i, %.split5.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !2306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.07.i, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !2307
  resume { ptr, i32 } %i.u

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit: ; preds = %.split.i, %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit.i, %.split5._crit_edge.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 80 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.c
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTtlENvYB1m_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTtlENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTtlENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit
  %.sroa.0.05 = phi ptr [ %i.s, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTtlENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit ], [ %i.c, %.lr.ph.preheader ] ; 6 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 4 uses
  %.val11.i = load i16, ptr %.sroa.0.05, align 4, !noundef !10 ; 5 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 4
  %.val12.i = load i32, ptr %i.e, align 4         ; 3 uses
  %.val13.i = load i16, ptr %i.d, align 4, !noundef !10 ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.0.05, i64 -4
  %.val14.i = load i32, ptr %i.f, align 4
  %i.g = icmp eq i16 %.val11.i, %.val13.i
  %i.h = icmp ult i16 %.val11.i, %.val13.i
  %i.i = icmp slt i32 %.val12.i, %.val14.i
  %.sroa.0.0.i.i.i = select i1 %i.g, i1 %i.i, i1 %i.h
  br i1 %.sroa.0.0.i.i.i, label %.preheader.preheader, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTtlENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit

.preheader.preheader:                             ; preds = %.lr.ph
  %i.j = load i64, ptr %i.d, align 4
  store i64 %i.j, ptr %.sroa.0.05, align 4
  %i.k = icmp eq ptr %i.d, %0
  br i1 %i.k, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  %i.l = load i64, ptr %i.n, align 4
  store i64 %i.l, ptr %.sroa.0.0.i8, align 4
  %i.m = icmp eq ptr %i.n, %0
  br i1 %i.m, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.n, %.preheader ], [ %i.d, %.preheader.preheader ] ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -8 ; 4 uses
  %.val9.i = load i16, ptr %i.n, align 4, !noundef !10 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.0.0.i8, i64 -4
  %.val10.i = load i32, ptr %i.o, align 4
  %i.p = icmp eq i16 %.val11.i, %.val9.i
  %i.q = icmp ult i16 %.val11.i, %.val9.i
  %i.r = icmp slt i32 %.val12.i, %.val10.i
  %.sroa.0.0.i.i15.i = select i1 %i.p, i1 %i.r, i1 %i.q
  br i1 %.sroa.0.0.i.i15.i, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ]
  %.sroa.0.sroa.58.0.insert.ext.i = zext i32 %.val12.i to i64
  %.sroa.0.sroa.58.0.insert.shift.i = shl nuw i64 %.sroa.0.sroa.58.0.insert.ext.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i = zext i16 %.val11.i to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.58.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !2312
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTtlENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTtlENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 3 uses
  %.val9.i = load i64, ptr %.sroa.0.05, align 8, !alias.scope !2320, !noundef !10 ; 3 uses
  %.val10.i = load i64, ptr %i.d, align 8, !alias.scope !2321, !noundef !10 ; 2 uses
  %i.e = icmp ult i64 %.val9.i, %.val10.i
  br i1 %i.e, label %.preheader.preheader, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i64 %.val10.i, ptr %.sroa.0.05, align 8
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  store i64 %.val8.i, ptr %.sroa.0.0.i8, align 8
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.h, %.preheader ], [ %i.d, %.preheader.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -8 ; 3 uses
  %.val8.i = load i64, ptr %i.h, align 8, !alias.scope !2321, !noundef !10 ; 2 uses
  %i.i = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.i, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ]
  store i64 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !2322
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENvYB1s_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 11 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %1 ; 5 uses
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENvYB19_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENvYB19_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noundef readonly %i.h, ptr noundef %i.i)
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENvYB1g_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8, ptr noundef nonnull %2)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENvYB19_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENvYB19_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noundef readonly %i.m, ptr noundef %i.n)
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENvYB1g_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 8, ptr noundef nonnull %i.k)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENvYB19_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noundef %0, ptr noundef %2)
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENvYB19_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noundef %i.o, ptr noundef %i.p)
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.q = load i32, ptr %0, align 1
  store i32 %i.q, ptr %2, align 1
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d
  %i.t = load i32, ptr %i.r, align 1
  store i32 %i.t, ptr %i.s, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.u = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.v = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.v, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit, %bb.i
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 4 uses
  %i.y = icmp samesign ult i64 %.sroa.0.0, %i.u
  br i1 %i.y, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit.1
  %.sroa.05.030.1 = phi i64 [ %i.bf, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.sroa.05.030.1
  %.idx64 = shl nuw nsw i64 %.sroa.05.030.1, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx64 ; 6 uses
  %i.ab = load i32, ptr %i.z, align 1             ; 6 uses
  store i32 %i.ab, ptr %i.aa, align 1
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -4 ; 3 uses
  %i.ad = trunc i32 %i.ab to i8                   ; 4 uses
  %.val11.i.i.i.i.i.i.1 = load i8, ptr %i.ac, align 1, !range !23, !alias.scope !2361, !noundef !10 ; 2 uses
  %i.ae = icmp eq i8 %.val11.i.i.i.i.i.i.1, %i.ad
  %i.af = lshr i32 %i.ab, 8
  %i.ag = trunc i32 %i.af to i8                   ; 4 uses
  %i.ah = lshr i32 %i.ab, 16
  %i.ai = trunc i32 %i.ah to i8                   ; 4 uses
  %i.aj = lshr i32 %i.ab, 24
  %i.ak = trunc nuw i32 %i.aj to i8               ; 4 uses
  br i1 %i.ae, label %bb.j, label %_RNvYNvYINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBZ_3ops8function5FnMutTRB5_B25_EE8call_mutCshxhuDJfZv4T_6fontbe.exit.i.1

bb.j:                                             ; preds = %.lr.ph.1
  %i.al = getelementptr inbounds i8, ptr %i.aa, i64 -3
  %.val11.1.i.i.i.i.i.i.1 = load i8, ptr %i.al, align 1, !range !23, !alias.scope !2361, !noundef !10 ; 2 uses
  %i.am = icmp eq i8 %.val11.1.i.i.i.i.i.i.1, %i.ag
  br i1 %i.am, label %bb.k, label %_RNvYNvYINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBZ_3ops8function5FnMutTRB5_B25_EE8call_mutCshxhuDJfZv4T_6fontbe.exit.i.1

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds i8, ptr %i.aa, i64 -2
  %.val11.2.i.i.i.i.i.i.1 = load i8, ptr %i.an, align 1, !range !23, !alias.scope !2361, !noundef !10 ; 2 uses
  %i.ao = icmp eq i8 %.val11.2.i.i.i.i.i.i.1, %i.ai
  br i1 %i.ao, label %bb.l, label %_RNvYNvYINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBZ_3ops8function5FnMutTRB5_B25_EE8call_mutCshxhuDJfZv4T_6fontbe.exit.i.1

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds i8, ptr %i.aa, i64 -1
  %.val11.3.i.i.i.i.i.i.1 = load i8, ptr %i.ap, align 1, !range !23, !alias.scope !2361, !noundef !10 ; 2 uses
  %i.aq = icmp eq i8 %.val11.3.i.i.i.i.i.i.1, %i.ak
  br i1 %i.aq, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit.1, label %_RNvYNvYINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBZ_3ops8function5FnMutTRB5_B25_EE8call_mutCshxhuDJfZv4T_6fontbe.exit.i.1

_RNvYNvYINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBZ_3ops8function5FnMutTRB5_B25_EE8call_mutCshxhuDJfZv4T_6fontbe.exit.i.1: ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph.1
  %.val10.lcssa.i.i.i.i.i.i.1 = phi i8 [ %i.ad, %.lr.ph.1 ], [ %i.ag, %bb.j ], [ %i.ai, %bb.k ], [ %i.ak, %bb.l ]
  %.val11.lcssa.i.i.i.i.i.i.1 = phi i8 [ %.val11.i.i.i.i.i.i.1, %.lr.ph.1 ], [ %.val11.1.i.i.i.i.i.i.1, %bb.j ], [ %.val11.2.i.i.i.i.i.i.1, %bb.k ], [ %.val11.3.i.i.i.i.i.i.1, %bb.l ]
  %i.ar = icmp samesign ult i8 %.val10.lcssa.i.i.i.i.i.i.1, %.val11.lcssa.i.i.i.i.i.i.1
  br i1 %i.ar, label %.preheader, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit.1

.preheader:                                       ; preds = %_RNvYNvYINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBZ_3ops8function5FnMutTRB5_B25_EE8call_mutCshxhuDJfZv4T_6fontbe.exit.i.1
  %i.as = load i32, ptr %i.ac, align 1
  store i32 %i.as, ptr %i.aa, align 1
  %i.at = icmp eq i64 %.sroa.05.030.1, 1
  br i1 %i.at, label %_RNvYNvYINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBZ_3ops8function5FnMutTRB5_B25_EE8call_mutCshxhuDJfZv4T_6fontbe.exit22.thread.i.1, label %.lr.ph59

end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtCsgCecv3eZDcN_5alloc3vec3VecjEENCINvMNtB2r_5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2r_11collections5btree3mapINtB3B_8BTreeMapB1t_B2m_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4E_8adapters5chain5ChainINtNtB5B_7flatten7FlattenINtNtBa_6option8IntoIterB48_EEB62_EE0E0ECshxhuDJfZv4T_6fontbe:bb.a
  %i.el = getelementptr inbounds i8, ptr %i.ec, i64 -36
  %i.em = load i32, ptr %i.ek, align 1
  %i.en = load i32, ptr %i.el, align 1
  %i.eo = tail call i32 @llvm.bswap.i32(i32 %i.em)
  %i.ep = tail call i32 @llvm.bswap.i32(i32 %i.en)
  %i.eq = tail call i32 @llvm.ucmp.i32.i32(i32 %i.eo, i32 %i.ep) ; 2 uses
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.x, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB7_3vec3VecjEE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1s_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters5chain5ChainINtNtB4g_7flatten7FlattenINtNtB36_6option8IntoIterB2z_EEB4H_EE0E0CshxhuDJfZv4T_6fontbe.exit.i26

bb.x:                                             ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.et = getelementptr inbounds i8, ptr %i.ec, i64 -32
  %i.eu = load i32, ptr %i.es, align 1
  %i.ev = load i32, ptr %i.et, align 1
  %i.ew = tail call i32 @llvm.bswap.i32(i32 %i.eu)
  %i.ex = tail call i32 @llvm.bswap.i32(i32 %i.ev)
  %i.ey = tail call i32 @llvm.ucmp.i32.i32(i32 %i.ew, i32 %i.ex)
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB7_3vec3VecjEE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1s_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters5chain5ChainINtNtB4g_7flatten7FlattenINtNtB36_6option8IntoIterB2z_EEB4H_EE0E0CshxhuDJfZv4T_6fontbe.exit.i26

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB7_3vec3VecjEE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1s_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters5chain5ChainINtNtB4g_7flatten7FlattenINtNtB36_6option8IntoIterB2z_EEB4H_EE0E0CshxhuDJfZv4T_6fontbe.exit.i26: ; preds = %bb.x, %bb.w, %.lr.ph
  %.sroa.0.0.i.i.in.i.i27 = phi i32 [ %i.ey, %bb.x ], [ %i.eq, %bb.w ], [ %i.ei, %.lr.ph ]
  %.sroa.0.0.i.i.i.i28 = icmp slt i32 %.sroa.0.0.i.i.in.i.i27, 0
  br i1 %.sroa.0.0.i.i.i.i28, label %bb.y, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtCsgCecv3eZDcN_5alloc3vec3VecjEENCINvMNtB27_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB27_11collections5btree3mapINtB3h_8BTreeMapB19_B22_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters5chain5ChainINtNtB5h_7flatten7FlattenINtNtBa_6option8IntoIterB3O_EEB5I_EE0E0ECshxhuDJfZv4T_6fontbe.exit

bb.y:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB7_3vec3VecjEE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1s_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters5chain5ChainINtNtB4g_7flatten7FlattenINtNtB36_6option8IntoIterB2z_EEB4H_EE0E0CshxhuDJfZv4T_6fontbe.exit.i26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.eb, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ec, ptr noundef nonnull align 8 dereferenceable(40) %i.ed, i64 40, i1 false)
  %i.ez = icmp eq i64 %.sroa.05.037, 1
  br i1 %i.ez, label %._crit_edge, label %.lr.ph72

bb.z:                                             ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i2971, ptr noundef nonnull align 8 dereferenceable(40) %i.fb, i64 40, i1 false)
  %i.fa = icmp eq ptr %i.fb, %2
  br i1 %i.fa, label %._crit_edge, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.y, %bb.z
  %.sroa.0.0.i2971 = phi ptr [ %i.fb, %bb.z ], [ %i.ed, %bb.y ] ; 5 uses
  %i.fb = getelementptr inbounds i8, ptr %.sroa.0.0.i2971, i64 -40 ; 4 uses
  %i.fc = load i32, ptr %i.a, align 8
  %i.fd = load i32, ptr %i.fb, align 8
  %i.fe = tail call i32 @llvm.bswap.i32(i32 %i.fc)
  %i.ff = tail call i32 @llvm.bswap.i32(i32 %i.fd)
  %i.fg = tail call i32 @llvm.ucmp.i32.i32(i32 %i.fe, i32 %i.ff) ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.lr.ph72
  %i.fi = getelementptr inbounds i8, ptr %.sroa.0.0.i2971, i64 -36
  %i.fj = load i32, ptr %i.j, align 1
  %i.fk = load i32, ptr %i.fi, align 1
  %i.fl = tail call i32 @llvm.bswap.i32(i32 %i.fj)
  %i.fm = tail call i32 @llvm.bswap.i32(i32 %i.fk)
  %i.fn = tail call i32 @llvm.ucmp.i32.i32(i32 %i.fl, i32 %i.fm) ; 2 uses
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fp = getelementptr inbounds i8, ptr %.sroa.0.0.i2971, i64 -32
  %i.fq = load i32, ptr %i.k, align 1
  %i.fr = load i32, ptr %i.fp, align 1
  %i.fs = tail call i32 @llvm.bswap.i32(i32 %i.fq)
  %i.ft = tail call i32 @llvm.bswap.i32(i32 %i.fr)
  %i.fu = tail call i32 @llvm.ucmp.i32.i32(i32 %i.fs, i32 %i.ft)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.lr.ph72
  %.sroa.0.0.i.i.in.i8.i = phi i32 [ %i.fu, %bb.ab ], [ %i.fn, %bb.aa ], [ %i.fg, %.lr.ph72 ]
  %.sroa.0.0.i.i.i9.i = icmp slt i32 %.sroa.0.0.i.i.in.i8.i, 0
  br i1 %.sroa.0.0.i.i.i9.i, label %bb.z, label %._crit_edge

._crit_edge:                                      ; preds = %bb.z, %bb.ac, %bb.y
  %.sroa.0.0.i29.lcssa = phi ptr [ %2, %bb.y ], [ %2, %bb.z ], [ %.sroa.0.0.i2971, %bb.ac ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i29.lcssa, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !3227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtCsgCecv3eZDcN_5alloc3vec3VecjEENCINvMNtB27_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB27_11collections5btree3mapINtB3h_8BTreeMapB19_B22_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters5chain5ChainINtNtB5h_7flatten7FlattenINtNtBa_6option8IntoIterB3O_EEB5I_EE0E0ECshxhuDJfZv4T_6fontbe.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtCsgCecv3eZDcN_5alloc3vec3VecjEENCINvMNtB27_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB27_11collections5btree3mapINtB3h_8BTreeMapB19_B22_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters5chain5ChainINtNtB5h_7flatten7FlattenINtNtBa_6option8IntoIterB3O_EEB5I_EE0E0ECshxhuDJfZv4T_6fontbe.exit: ; preds = %._crit_edge, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB7_3vec3VecjEE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1s_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters5chain5ChainINtNtB4g_7flatten7FlattenINtNtB36_6option8IntoIterB2z_EEB4H_EE0E0CshxhuDJfZv4T_6fontbe.exit.i26
  %i.fv = add nuw nsw i64 %.sroa.05.037, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.fv, %i.e
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB2l_5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2l_11collections5btree3mapINtB3z_8BTreeMapB1t_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4C_8adapters3map3MapINtNtB5z_5chain5ChainINtNtNtB2l_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5z_6cloned6ClonedINtNtB8_4iter4IterB6P_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8D_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.8.i = alloca [24 x i8], align 8          ; 8 uses
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB29_5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB3n_8BTreeMapB1h_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4q_8adapters3map3MapINtNtB5n_5chain5ChainINtNtNtB29_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5n_6cloned6ClonedINtNtB8_4iter4IterB6D_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 8 uses
  %i.e = icmp samesign ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.d ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB22_5sliceSB19_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB3g_8BTreeMapB1a_B1Y_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtNtB4j_8adapters3map3MapINtNtB5g_5chain5ChainINtNtNtB22_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5g_6cloned6ClonedINtNtB8_4iter4IterB6w_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8k_(ptr noundef %0, ptr noundef %2)
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB22_5sliceSB19_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB3g_8BTreeMapB1a_B1Y_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtNtB4j_8adapters3map3MapINtNtB5g_5chain5ChainINtNtNtB22_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5g_6cloned6ClonedINtNtB8_4iter4IterB6w_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8k_(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.i, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit, %bb.g
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.d
  %i.k = getelementptr [32 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0, %i.h
  br i1 %i.l, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit.1
  %.sroa.05.044.1 = phi i64 [ %i.aq, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.05.044.1 ; 2 uses
  %.idx.1 = shl nuw nsw i64 %.sroa.05.044.1, 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.1 ; 13 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -32 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3294)
  %.val9.i.i.i.i26.1 = load i16, ptr %i.n, align 8, !alias.scope !3295, !noundef !10 ; 5 uses
  %.val10.i.i.i.i27.1 = load i16, ptr %i.o, align 8, !alias.scope !3296, !noundef !10 ; 2 uses
  %i.p = icmp eq i16 %.val9.i.i.i.i26.1, %.val10.i.i.i.i27.1
  %i.q = icmp ult i16 %.val9.i.i.i.i26.1, %.val10.i.i.i.i27.1
  br i1 %i.p, label %bb.h, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i28.1

bb.h:                                             ; preds = %.lr.ph.1
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 -30
  %.val7.i.i.i.i31.1 = load i16, ptr %i.r, align 2, !alias.scope !3295, !noundef !10 ; 3 uses
  %.val8.i.i.i.i32.1 = load i16, ptr %i.s, align 2, !alias.scope !3296, !noundef !10 ; 2 uses
  %i.t = icmp eq i16 %.val7.i.i.i.i31.1, %.val8.i.i.i.i32.1
  %i.u = icmp ult i16 %.val7.i.i.i.i31.1, %.val8.i.i.i.i32.1
  br i1 %i.t, label %bb.i, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i28.1

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.w = getelementptr inbounds i8, ptr %i.n, i64 -28
  %.val.i.i.i.i33.1 = load i16, ptr %i.v, align 4, !alias.scope !3295, !noundef !10 ; 3 uses
  %.val6.i.i.i.i34.1 = load i16, ptr %i.w, align 4, !alias.scope !3296, !noundef !10 ; 2 uses
  %i.x = icmp eq i16 %.val.i.i.i.i33.1, %.val6.i.i.i.i34.1
  %i.y = icmp ult i16 %.val.i.i.i.i33.1, %.val6.i.i.i.i34.1
  br i1 %i.x, label %.split.i.1, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i28.1

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i28.1: ; preds = %bb.i, %bb.h, %.lr.ph.1
  %.sroa.0.0.i.i.i.i29.1 = phi i1 [ %i.q, %.lr.ph.1 ], [ %i.y, %bb.i ], [ %i.u, %bb.h ]
  br i1 %.sroa.0.0.i.i.i.i29.1, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit._crit_edge.i.1, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit.1

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit._crit_edge.i.1: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i28.1
  %.sroa.4.0..sroa_idx.phi.trans.insert.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %.sroa.4.0.copyload.pre.i.1 = load i16, ptr %.sroa.4.0..sroa_idx.phi.trans.insert.i.1, align 2
  %.sroa.514.0..sroa_idx.phi.trans.insert.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.514.0.copyload.pre.i.1 = load i16, ptr %.sroa.514.0..sroa_idx.phi.trans.insert.i.1, align 4
  %.sroa.615.0..sroa_idx.phi.trans.insert.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %.sroa.615.0.copyload.pre.i.1 = load i16, ptr %.sroa.615.0..sroa_idx.phi.trans.insert.i.1, align 2
  br label %bb.j

.split.i.1:                                       ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %i.aa = getelementptr inbounds i8, ptr %i.n, i64 -26
  %.val11.i.i.i.i35.1 = load i16, ptr %i.z, align 2, !alias.scope !3295, !noundef !10 ; 2 uses
  %.val12.i.i.i.i36.1 = load i16, ptr %i.aa, align 2, !alias.scope !3296, !noundef !10
  %i.ab = icmp ult i16 %.val11.i.i.i.i35.1, %.val12.i.i.i.i36.1
  br i1 %i.ab, label %bb.j, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit.1

bb.j:                                             ; preds = %.split.i.1, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit._crit_edge.i.1
  %.sroa.615.0.copyload.i.1 = phi i16 [ %.sroa.615.0.copyload.pre.i.1, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit._crit_edge.i.1 ], [ %.val11.i.i.i.i35.1, %.split.i.1 ] ; 2 uses
  %.sroa.514.0.copyload.i.1 = phi i16 [ %.sroa.514.0.copyload.pre.i.1, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit._crit_edge.i.1 ], [ %.val.i.i.i.i33.1, %.split.i.1 ] ; 3 uses
  %.sroa.4.0.copyload.i.1 = phi i16 [ %.sroa.4.0.copyload.pre.i.1, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit._crit_edge.i.1 ], [ %.val7.i.i.i.i31.1, %.split.i.1 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  %i.ad = icmp eq i64 %.sroa.05.044.1, 1
  br i1 %i.ad, label %.split5._crit_edge.i.1, label %.lr.ph.i30.1

.lr.ph.i30.1:                                     ; preds = %bb.j, %.backedge.i.1
  %.sroa.0.06.i.1 = phi ptr [ %i.ae, %.backedge.i.1 ], [ %i.o, %bb.j ] ; 7 uses
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.06.i.1, i64 -32 ; 4 uses
  %.val10.i.i.i9.i.1 = load i16, ptr %i.ae, align 8, !alias.scope !3297, !noundef !10 ; 2 uses
  %i.af = icmp eq i16 %.val9.i.i.i.i26.1, %.val10.i.i.i9.i.1
  %i.ag = icmp ult i16 %.val9.i.i.i.i26.1, %.val10.i.i.i9.i.1
  br i1 %i.af, label %bb.k, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i.1

bb.k:                                             ; preds = %.lr.ph.i30.1
  %i.ah = getelementptr inbounds i8, ptr %.sroa.0.06.i.1, i64 -30
  %.val8.i.i.i12.i.1 = load i16, ptr %i.ah, align 2, !alias.scope !3297, !noundef !10 ; 2 uses
  %i.ai = icmp eq i16 %.sroa.4.0.copyload.i.1, %.val8.i.i.i12.i.1
  %i.aj = icmp ult i16 %.sroa.4.0.copyload.i.1, %.val8.i.i.i12.i.1
  br i1 %i.ai, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i.1

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds i8, ptr %.sroa.0.06.i.1, i64 -28
  %.val6.i.i.i14.i.1 = load i16, ptr %i.ak, align 4, !alias.scope !3297, !noundef !10 ; 2 uses
  %i.al = icmp eq i16 %.sroa.514.0.copyload.i.1, %.val6.i.i.i14.i.1
  %i.am = icmp ult i16 %.sroa.514.0.copyload.i.1, %.val6.i.i.i14.i.1
  br i1 %i.al, label %.split5.i.1, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i.1

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i.1: ; preds = %bb.l, %bb.k, %.lr.ph.i30.1
  %.sroa.0.0.i.i.i10.i.1 = phi i1 [ %i.ag, %.lr.ph.i30.1 ], [ %i.am, %bb.l ], [ %i.aj, %bb.k ]
  br i1 %.sroa.0.0.i.i.i10.i.1, label %.backedge.i.1, label %.split5._crit_edge.i.1

.split5.i.1:                                      ; preds = %bb.l
  %i.an = getelementptr inbounds i8, ptr %.sroa.0.06.i.1, i64 -26
  %.val12.i.i.i16.i.1 = load i16, ptr %i.an, align 2, !alias.scope !3297, !noundef !10
  %i.ao = icmp ult i16 %.sroa.615.0.copyload.i.1, %.val12.i.i.i16.i.1
  br i1 %i.ao, label %.backedge.i.1, label %.split5._crit_edge.i.1

.backedge.i.1:                                    ; preds = %.split5.i.1, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.06.i.1, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false)
  %i.ap = icmp eq ptr %i.ae, %i.k
  br i1 %i.ap, label %.split5._crit_edge.i.1, label %.lr.ph.i30.1

.split5._crit_edge.i.1:                           ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i.1, %.split5.i.1, %.backedge.i.1, %bb.j
  %.sroa.0.0.lcssa.i.1 = phi ptr [ %i.o, %bb.j ], [ %i.k, %.backedge.i.1 ], [ %.sroa.0.06.i.1, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i.1 ], [ %.sroa.0.06.i.1, %.split5.i.1 ] ; 5 uses
  store i16 %.val9.i.i.i.i26.1, ptr %.sroa.0.0.lcssa.i.1, align 8, !noalias !3298
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 2
  store i16 %.sroa.4.0.copyload.i.1, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, align 2, !noalias !3298
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 4
  store i16 %.sroa.514.0.copyload.i.1, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1, align 4, !noalias !3298
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 6
  store i16 %.sroa.615.0.copyload.i.1, ptr %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.1, align 2, !noalias !3298
  %.sroa.8.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa.0.0.lcssa.sroa_idx.i.1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !3298
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit.1

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit.1: ; preds = %.split5._crit_edge.i.1, %.split.i.1, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i28.1
  %i.aq = add nuw nsw i64 %.sroa.05.044.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.aq, %i.h
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit.1, %.loopexit
  %i.ar = add nsw i64 %1, -1                      ; 2 uses
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.ar
  %i.au = getelementptr i8, ptr %i.k, i64 -32
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit31.i
  %i.av = getelementptr i8, ptr %i.ci, i64 32     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ch, i64 32
  %i.ax = and i64 %1, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.t, label %bb.s

.lr.ph.i:                                         ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit31.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.bs, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit31.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.az, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit31.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.br, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit31.i ], [ %2, %.loopexit.1 ] ; 6 uses
  %.sroa.011.07.i = phi ptr [ %i.bp, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit31.i ], [ %i.k, %.loopexit.1 ] ; 6 uses
  %.sroa.015.06.i = phi ptr [ %i.ci, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit31.i ], [ %i.au, %.loopexit.1 ] ; 6 uses
  %.sroa.017.05.i = phi ptr [ %i.ch, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit31.i ], [ %i.at, %.loopexit.1 ] ; 6 uses
  %.sroa.019.04.i = phi ptr [ %i.cj, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit31.i ], [ %i.as, %.loopexit.1 ] ; 2 uses
  %i.az = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3304)
  %.val9.i.i.i.i = load i16, ptr %.sroa.011.07.i, align 8, !alias.scope !3305, !noundef !10 ; 2 uses
  %.val10.i.i.i.i = load i16, ptr %.sroa.06.08.i, align 8, !alias.scope !3306, !noundef !10 ; 2 uses
  %i.ba = icmp eq i16 %.val9.i.i.i.i, %.val10.i.i.i.i
  %i.bb = icmp ult i16 %.val9.i.i.i.i, %.val10.i.i.i.i
  br i1 %i.ba, label %bb.m, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i, i64 2
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 2
  %.val7.i.i.i.i = load i16, ptr %i.bc, align 2, !alias.scope !3305, !noundef !10 ; 2 uses
  %.val8.i.i.i.i = load i16, ptr %i.bd, align 2, !alias.scope !3306, !noundef !10 ; 2 uses
  %i.be = icmp eq i16 %.val7.i.i.i.i, %.val8.i.i.i.i
  %i.bf = icmp ult i16 %.val7.i.i.i.i, %.val8.i.i.i.i
  br i1 %i.be, label %bb.n, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 4
  %.val.i.i.i.i = load i16, ptr %i.bg, align 4, !alias.scope !3305, !noundef !10 ; 2 uses
  %.val6.i.i.i.i = load i16, ptr %i.bh, align 4, !alias.scope !3306, !noundef !10 ; 2 uses
  %i.bi = icmp eq i16 %.val.i.i.i.i, %.val6.i.i.i.i
  %i.bj = icmp ult i16 %.val.i.i.i.i, %.val6.i.i.i.i
  br i1 %i.bi, label %bb.o, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i, i64 6
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 6
  %.val11.i.i.i.i = load i16, ptr %i.bk, align 2, !alias.scope !3305, !noundef !10
  %.val12.i.i.i.i = load i16, ptr %i.bl, align 2, !alias.scope !3306, !noundef !10
  %i.bm = icmp ult i16 %.val11.i.i.i.i, %.val12.i.i.i.i
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i: ; preds = %bb.o, %bb.n, %bb.m, %.lr.ph.i
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.bm, %bb.o ], [ %i.bj, %bb.n ], [ %i.bf, %bb.m ], [ %i.bb, %.lr.ph.i ] ; 3 uses
  %..i21.i = select i1 %.sroa.0.0.i.i.i.i, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  %i.bn = xor i1 %.sroa.0.0.i.i.i.i, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(32) %..i21.i, i64 32, i1 false), !noalias !3307
  %i.bo = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.07.i, i64 %i.bo ; 4 uses
  %i.bq = zext i1 %i.bn to i64
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.08.i, i64 %i.bq ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3313)
  %.val9.i.i.i22.i = load i16, ptr %.sroa.017.05.i, align 8, !alias.scope !3314, !noundef !10 ; 2 uses
  %.val10.i.i.i23.i = load i16, ptr %.sroa.015.06.i, align 8, !alias.scope !3315, !noundef !10 ; 2 uses
  %i.bt = icmp eq i16 %.val9.i.i.i22.i, %.val10.i.i.i23.i
  %i.bu = icmp ult i16 %.val9.i.i.i22.i, %.val10.i.i.i23.i
  br i1 %i.bt, label %bb.p, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit31.i

bb.p:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i, i64 2
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i, i64 2
  %.val7.i.i.i25.i = load i16, ptr %i.bv, align 2, !alias.scope !3314, !noundef !10 ; 2 uses
  %.val8.i.i.i26.i = load i16, ptr %i.bw, align 2, !alias.scope !3315, !noundef !10 ; 2 uses
  %i.bx = icmp eq i16 %.val7.i.i.i25.i, %.val8.i.i.i26.i
  %i.by = icmp ult i16 %.val7.i.i.i25.i, %.val8.i.i.i26.i
  br i1 %i.bx, label %bb.q, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit31.i

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i, i64 4
  %.val.i.i.i27.i = load i16, ptr %i.bz, align 4, !alias.scope !3314, !noundef !10 ; 2 uses
  %.val6.i.i.i28.i = load i16, ptr %i.ca, align 4, !alias.scope !3315, !noundef !10 ; 2 uses
  %i.cb = icmp eq i16 %.val.i.i.i27.i, %.val6.i.i.i28.i
  %i.cc = icmp ult i16 %.val.i.i.i27.i, %.val6.i.i.i28.i
  br i1 %i.cb, label %bb.r, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit31.i

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i, i64 6
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i, i64 6
  %.val11.i.i.i29.i = load i16, ptr %i.cd, align 2, !alias.scope !3314, !noundef !10
  %.val12.i.i.i30.i = load i16, ptr %i.ce, align 2, !alias.scope !3315, !noundef !10
  %i.cf = icmp ult i16 %.val11.i.i.i29.i, %.val12.i.i.i30.i
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit31.i

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit31.i: ; preds = %bb.r, %bb.q, %bb.p, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i
  %.sroa.0.0.i.i.i24.i = phi i1 [ %i.cf, %bb.r ], [ %i.cc, %bb.q ], [ %i.by, %bb.p ], [ %i.bu, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i ] ; 3 uses
  %..i.i = select i1 %.sroa.0.0.i.i.i24.i, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.cg = xor i1 %.sroa.0.0.i.i.i24.i, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !noalias !3316
  %.neg.i.i = sext i1 %i.cg to i64
  %i.ch = getelementptr [32 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %.sroa.0.0.i.i.i24.i to i64
  %i.ci = getelementptr [32 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -32
  %exitcond.not.i = icmp eq i64 %i.az, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.s:                                             ; preds = %._crit_edge.i
  %i.ck = icmp ult ptr %i.br, %i.av               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.ck, ptr %i.br, ptr %i.bp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.0..sroa.011.0.i, i64 32, i1 false)
  %i.cl = zext i1 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %i.br, i64 %i.cl
  %i.cn = xor i1 %i.ck, true
  %i.co = zext i1 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %i.co
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.bp, %._crit_edge.i ], [ %i.cp, %bb.s ]
  %.sroa.06.1.i = phi ptr [ %i.br, %._crit_edge.i ], [ %i.cm, %bb.s ]
  %i.cq = icmp ne ptr %.sroa.06.1.i, %i.av
  %i.cr = icmp ne ptr %.sroa.011.1.i, %i.aw
  %or.cond.i = select i1 %i.cq, i1 true, i1 %i.cr, !prof !24
  br i1 %or.cond.i, label %bb.u, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB29_5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB3n_8BTreeMapB1h_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4q_8adapters3map3MapINtNtB5n_5chain5ChainINtNtNtB29_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5n_6cloned6ClonedINtNtB8_4iter4IterB6D_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8r_.exit, !prof !24

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #39
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = shl nuw nsw i64 %1, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.ct, i1 false), !noalias !3317
  resume { ptr, i32 } %i.cs

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB29_5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB3n_8BTreeMapB1h_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4q_8adapters3map3MapINtNtB5n_5chain5ChainINtNtNtB29_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5n_6cloned6ClonedINtNtB8_4iter4IterB6D_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8r_.exit: ; preds = %bb.t, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit
  %.sroa.05.044 = phi i64 [ %i.dy, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.05.044 ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.05.044, 5
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 13 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %i.cu, i64 32, i1 false)
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -32 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3323)
  %.val9.i.i.i.i26 = load i16, ptr %i.cv, align 8, !alias.scope !3324, !noundef !10 ; 5 uses
  %.val10.i.i.i.i27 = load i16, ptr %i.cw, align 8, !alias.scope !3325, !noundef !10 ; 2 uses
  %i.cx = icmp eq i16 %.val9.i.i.i.i26, %.val10.i.i.i.i27
  %i.cy = icmp ult i16 %.val9.i.i.i.i26, %.val10.i.i.i.i27
  br i1 %i.cx, label %bb.w, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i28

bb.w:                                             ; preds = %.lr.ph
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  %i.da = getelementptr inbounds i8, ptr %i.cv, i64 -30
  %.val7.i.i.i.i31 = load i16, ptr %i.cz, align 2, !alias.scope !3324, !noundef !10 ; 3 uses
  %.val8.i.i.i.i32 = load i16, ptr %i.da, align 2, !alias.scope !3325, !noundef !10 ; 2 uses
  %i.db = icmp eq i16 %.val7.i.i.i.i31, %.val8.i.i.i.i32
  %i.dc = icmp ult i16 %.val7.i.i.i.i31, %.val8.i.i.i.i32
  br i1 %i.db, label %bb.x, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i28

bb.x:                                             ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.de = getelementptr inbounds i8, ptr %i.cv, i64 -28
  %.val.i.i.i.i33 = load i16, ptr %i.dd, align 4, !alias.scope !3324, !noundef !10 ; 3 uses
  %.val6.i.i.i.i34 = load i16, ptr %i.de, align 4, !alias.scope !3325, !noundef !10 ; 2 uses
  %i.df = icmp eq i16 %.val.i.i.i.i33, %.val6.i.i.i.i34
  %i.dg = icmp ult i16 %.val.i.i.i.i33, %.val6.i.i.i.i34
  br i1 %i.df, label %.split.i, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i28

.split.i:                                         ; preds = %bb.x
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 6
  %i.di = getelementptr inbounds i8, ptr %i.cv, i64 -26
  %.val11.i.i.i.i35 = load i16, ptr %i.dh, align 2, !alias.scope !3324, !noundef !10 ; 2 uses
  %.val12.i.i.i.i36 = load i16, ptr %i.di, align 2, !alias.scope !3325, !noundef !10
  %i.dj = icmp ult i16 %.val11.i.i.i.i35, %.val12.i.i.i.i36
  br i1 %i.dj, label %bb.y, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i28: ; preds = %bb.x, %bb.w, %.lr.ph
  %.sroa.0.0.i.i.i.i29 = phi i1 [ %i.cy, %.lr.ph ], [ %i.dg, %bb.x ], [ %i.dc, %bb.w ]
  br i1 %.sroa.0.0.i.i.i.i29, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit._crit_edge.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit._crit_edge.i: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i28
  %.sroa.4.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  %.sroa.4.0.copyload.pre.i = load i16, ptr %.sroa.4.0..sroa_idx.phi.trans.insert.i, align 2
  %.sroa.514.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %.sroa.514.0.copyload.pre.i = load i16, ptr %.sroa.514.0..sroa_idx.phi.trans.insert.i, align 4
  %.sroa.615.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 6
  %.sroa.615.0.copyload.pre.i = load i16, ptr %.sroa.615.0..sroa_idx.phi.trans.insert.i, align 2
  br label %bb.y

bb.y:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit._crit_edge.i, %.split.i
  %.sroa.615.0.copyload.i = phi i16 [ %.sroa.615.0.copyload.pre.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit._crit_edge.i ], [ %.val11.i.i.i.i35, %.split.i ] ; 2 uses
  %.sroa.514.0.copyload.i = phi i16 [ %.sroa.514.0.copyload.pre.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit._crit_edge.i ], [ %.val.i.i.i.i33, %.split.i ] ; 3 uses
  %.sroa.4.0.copyload.i = phi i16 [ %.sroa.4.0.copyload.pre.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit._crit_edge.i ], [ %.val7.i.i.i.i31, %.split.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i64 32, i1 false)
  %i.dl = icmp eq i64 %.sroa.05.044, 1
  br i1 %i.dl, label %.split5._crit_edge.i, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.y, %.backedge.i
  %.sroa.0.06.i = phi ptr [ %i.dm, %.backedge.i ], [ %i.cw, %bb.y ] ; 7 uses
  %i.dm = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -32 ; 4 uses
  %.val10.i.i.i9.i = load i16, ptr %i.dm, align 8, !alias.scope !3297, !noundef !10 ; 2 uses
  %i.dn = icmp eq i16 %.val9.i.i.i.i26, %.val10.i.i.i9.i
  %i.do = icmp ult i16 %.val9.i.i.i.i26, %.val10.i.i.i9.i
  br i1 %i.dn, label %bb.z, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i

bb.z:                                             ; preds = %.lr.ph.i30
  %i.dp = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -30
  %.val8.i.i.i12.i = load i16, ptr %i.dp, align 2, !alias.scope !3297, !noundef !10 ; 2 uses
  %i.dq = icmp eq i16 %.sroa.4.0.copyload.i, %.val8.i.i.i12.i
  %i.dr = icmp ult i16 %.sroa.4.0.copyload.i, %.val8.i.i.i12.i
  br i1 %i.dq, label %bb.aa, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i

bb.aa:                                            ; preds = %bb.z
  %i.ds = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -28
  %.val6.i.i.i14.i = load i16, ptr %i.ds, align 4, !alias.scope !3297, !noundef !10 ; 2 uses
  %i.dt = icmp eq i16 %.sroa.514.0.copyload.i, %.val6.i.i.i14.i
  %i.du = icmp ult i16 %.sroa.514.0.copyload.i, %.val6.i.i.i14.i
  br i1 %i.dt, label %.split5.i, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i

.split5.i:                                        ; preds = %bb.aa
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -26
  %.val12.i.i.i16.i = load i16, ptr %i.dv, align 2, !alias.scope !3297, !noundef !10
  %i.dw = icmp ult i16 %.sroa.615.0.copyload.i, %.val12.i.i.i16.i
  br i1 %i.dw, label %.backedge.i, label %.split5._crit_edge.i

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i: ; preds = %bb.aa, %bb.z, %.lr.ph.i30
  %.sroa.0.0.i.i.i10.i = phi i1 [ %i.do, %.lr.ph.i30 ], [ %i.du, %bb.aa ], [ %i.dr, %bb.z ]
  br i1 %.sroa.0.0.i.i.i10.i, label %.backedge.i, label %.split5._crit_edge.i

.backedge.i:                                      ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i, %.split5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.06.i, ptr noundef nonnull align 8 dereferenceable(32) %i.dm, i64 32, i1 false)
  %i.dx = icmp eq ptr %i.dm, %2
  br i1 %i.dx, label %.split5._crit_edge.i, label %.lr.ph.i30

.split5._crit_edge.i:                             ; preds = %.backedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i, %.split5.i, %bb.y
  %.sroa.0.0.lcssa.i = phi ptr [ %i.cw, %bb.y ], [ %2, %.backedge.i ], [ %.sroa.0.06.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit17.i ], [ %.sroa.0.06.i, %.split5.i ] ; 5 uses
  store i16 %.val9.i.i.i.i26, ptr %.sroa.0.0.lcssa.i, align 8, !noalias !3298
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 2
  store i16 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 2, !noalias !3298
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 4
  store i16 %.sroa.514.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 4, !noalias !3298
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 6
  store i16 %.sroa.615.0.copyload.i, ptr %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i, align 2, !noalias !3298
  %.sroa.8.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !3298
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB21_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB21_11collections5btree3mapINtB3f_8BTreeMapB19_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtB5f_5chain5ChainINtNtNtB21_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB5f_6cloned6ClonedINtNtB8_4iter4IterB6v_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0EB8j_.exit: ; preds = %.split5._crit_edge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB7_6string6StringE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB21_8BTreeMapBz_B1n_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB4e_5chain5ChainINtNtNtB7_3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB4e_6cloned6ClonedINtNtNtB34_5slice4iter4IterB5t_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B7q_.exit.i28, %.split.i
  %i.dy = add nuw nsw i64 %.sroa.05.044, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.dy, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTcNtNtCsbZq13ASDQ8l_10font_types8glyph_id7GlyphIdENvYB1s_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTcNtNtCsbZq13ASDQ8l_10font_types8glyph_id7GlyphIdENvYB1g_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 12 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %1 ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableTcNtNtCsbZq13ASDQ8l_10font_types8glyph_id7GlyphIdENvYB19_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noundef %0, ptr noundef %2, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableTcNtNtCsbZq13ASDQ8l_10font_types8glyph_id7GlyphIdENvYB19_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val16.i = load i32, ptr %i.k, align 4, !range !25, !noundef !10 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 12
  %.val17.i = load i32, ptr %i.l, align 4
  %.val18.i = load i32, ptr %0, align 4, !range !25, !noundef !10 ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 4
  %.val19.i = load i32, ptr %i.m, align 4
  %i.n = icmp eq i32 %.val16.i, %.val18.i
  %i.o = icmp samesign ult i32 %.val16.i, %.val18.i
  %i.p = icmp ult i32 %.val17.i, %.val19.i
  %.sroa.0.0.i.i.i = select i1 %i.n, i1 %i.p, i1 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val12.i = load i32, ptr %i.q, align 4, !range !25, !noundef !10 ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 28
  %.val13.i = load i32, ptr %i.s, align 4
  %.val14.i = load i32, ptr %i.r, align 4, !range !25, !noundef !10 ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 20
  %.val15.i = load i32, ptr %i.t, align 4
  %i.u = icmp eq i32 %.val12.i, %.val14.i
  %i.v = icmp samesign ult i32 %.val12.i, %.val14.i
  %i.w = icmp ult i32 %.val13.i, %.val15.i
  %.sroa.0.0.i.i20.i = select i1 %i.u, i1 %i.w, i1 %i.v ; 2 uses
  %i.x = zext i1 %.sroa.0.0.i.i.i to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.x ; 4 uses
  %i.z = xor i1 %.sroa.0.0.i.i.i, true
  %i.aa = zext i1 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa ; 5 uses
  %i.ac = select i1 %.sroa.0.0.i.i20.i, i64 3, i64 2
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac ; 5 uses
  %i.ae = select i1 %.sroa.0.0.i.i20.i, i64 2, i64 3
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae ; 4 uses
  %.val8.i = load i32, ptr %i.ad, align 4, !range !25, !noundef !10 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ad, i64 4
  %.val9.i = load i32, ptr %i.ag, align 4
  %.val10.i = load i32, ptr %i.y, align 4, !range !25, !noundef !10 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.y, i64 4
  %.val11.i = load i32, ptr %i.ah, align 4
  %i.ai = icmp eq i32 %.val8.i, %.val10.i
  %i.aj = icmp samesign ult i32 %.val8.i, %.val10.i
  %i.ak = icmp ult i32 %.val9.i, %.val11.i
  %.sroa.0.0.i.i21.i = select i1 %i.ai, i1 %i.ak, i1 %i.aj ; 3 uses
  %.val4.i = load i32, ptr %i.af, align 4, !range !25, !noundef !10 ; 2 uses
  %i.al = getelementptr i8, ptr %i.af, i64 4
  %.val5.i = load i32, ptr %i.al, align 4
  %.val6.i = load i32, ptr %i.ab, align 4, !range !25, !noundef !10 ; 2 uses
  %i.am = getelementptr i8, ptr %i.ab, i64 4
  %.val7.i = load i32, ptr %i.am, align 4
  %i.an = icmp eq i32 %.val4.i, %.val6.i
  %i.ao = icmp samesign ult i32 %.val4.i, %.val6.i
  %i.ap = icmp ult i32 %.val5.i, %.val7.i
  %.sroa.0.0.i.i22.i = select i1 %i.an, i1 %i.ap, i1 %i.ao ; 3 uses
  %i.aq = select i1 %.sroa.0.0.i.i21.i, ptr %i.ad, ptr %i.y, !unpredictable !10
  %i.ar = select i1 %.sroa.0.0.i.i22.i, ptr %i.ab, ptr %i.af, !unpredictable !10
  %i.as = select i1 %.sroa.0.0.i.i22.i, ptr %i.ad, ptr %i.ab, !unpredictable !10
  %i.at = select i1 %.sroa.0.0.i.i21.i, ptr %i.y, ptr %i.as, !unpredictable !10 ; 4 uses
  %i.au = select i1 %.sroa.0.0.i.i21.i, ptr %i.ab, ptr %i.ad, !unpredictable !10
  %i.av = select i1 %.sroa.0.0.i.i22.i, ptr %i.af, ptr %i.au, !unpredictable !10 ; 4 uses
  %.val.i = load i32, ptr %i.av, align 4, !range !25, !noundef !10 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %.val1.i = load i32, ptr %i.aw, align 4
  %.val2.i = load i32, ptr %i.at, align 4, !range !25, !noundef !10 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.at, i64 4
  %.val3.i = load i32, ptr %i.ax, align 4
  %i.ay = icmp eq i32 %.val.i, %.val2.i
  %i.az = icmp samesign ult i32 %.val.i, %.val2.i
  %i.ba = icmp ult i32 %.val1.i, %.val3.i
  %.sroa.0.0.i.i23.i = select i1 %i.ay, i1 %i.ba, i1 %i.az ; 2 uses
  %i.bb = select i1 %.sroa.0.0.i.i23.i, ptr %i.av, ptr %i.at, !unpredictable !10
  %i.bc = select i1 %.sroa.0.0.i.i23.i, ptr %i.at, ptr %i.av, !unpredictable !10
  %i.bd = load i64, ptr %i.aq, align 4
  store i64 %i.bd, ptr %2, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load i64, ptr %i.bb, align 4
  store i64 %i.bf, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = load i64, ptr %i.bc, align 4
  store i64 %i.bh, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bj = load i64, ptr %i.ar, align 4
  store i64 %i.bj, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d ; 12 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.val16.i26 = load i32, ptr %i.bm, align 4, !range !25, !noundef !10 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bk, i64 12
  %.val17.i27 = load i32, ptr %i.bn, align 4
  %.val18.i28 = load i32, ptr %i.bk, align 4, !range !25, !noundef !10 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bk, i64 4
  %.val19.i29 = load i32, ptr %i.bo, align 4
  %i.bp = icmp eq i32 %.val16.i26, %.val18.i28
  %i.bq = icmp samesign ult i32 %.val16.i26, %.val18.i28
  %i.br = icmp ult i32 %.val17.i27, %.val19.i29
  %.sroa.0.0.i.i.i30 = select i1 %i.bp, i1 %i.br, i1 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.val12.i31 = load i32, ptr %i.bs, align 4, !range !25, !noundef !10 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bk, i64 28
  %.val13.i32 = load i32, ptr %i.bu, align 4
  %.val14.i33 = load i32, ptr %i.bt, align 4, !range !25, !noundef !10 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bk, i64 20
  %.val15.i34 = load i32, ptr %i.bv, align 4
  %i.bw = icmp eq i32 %.val12.i31, %.val14.i33
  %i.bx = icmp samesign ult i32 %.val12.i31, %.val14.i33
  %i.by = icmp ult i32 %.val13.i32, %.val15.i34
  %.sroa.0.0.i.i20.i35 = select i1 %i.bw, i1 %i.by, i1 %i.bx ; 2 uses
  %i.bz = zext i1 %.sroa.0.0.i.i.i30 to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bz ; 4 uses
  %i.cb = xor i1 %.sroa.0.0.i.i.i30, true
  %i.cc = zext i1 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.cc ; 5 uses
  %i.ce = select i1 %.sroa.0.0.i.i20.i35, i64 3, i64 2
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.ce ; 5 uses
  %i.cg = select i1 %.sroa.0.0.i.i20.i35, i64 2, i64 3
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.cg ; 4 uses
  %.val8.i36 = load i32, ptr %i.cf, align 4, !range !25, !noundef !10 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cf, i64 4
  %.val9.i37 = load i32, ptr %i.ci, align 4
  %.val10.i38 = load i32, ptr %i.ca, align 4, !range !25, !noundef !10 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ca, i64 4
  %.val11.i39 = load i32, ptr %i.cj, align 4
  %i.ck = icmp eq i32 %.val8.i36, %.val10.i38
  %i.cl = icmp samesign ult i32 %.val8.i36, %.val10.i38
  %i.cm = icmp ult i32 %.val9.i37, %.val11.i39
  %.sroa.0.0.i.i21.i40 = select i1 %i.ck, i1 %i.cm, i1 %i.cl ; 3 uses
  %.val4.i41 = load i32, ptr %i.ch, align 4, !range !25, !noundef !10 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.ch, i64 4
end_hunk_1
