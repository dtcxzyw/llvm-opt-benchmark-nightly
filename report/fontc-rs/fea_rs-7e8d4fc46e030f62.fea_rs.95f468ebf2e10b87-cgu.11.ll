Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fea_rs-7e8d4fc46e030f62.fea_rs.95f468ebf2e10b87-cgu.11?download=true
inline.NumInlined: 998
inline.NumDeleted: 527
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2_11AllFeatures13finalize_aalt:bb.a
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.gk = load i64, ptr %i.gj, align 8, !noundef !5
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr %i.gi, i64 %i.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !802
  store i64 2, ptr %i.h, align 8, !noalias !803
  store i64 2, ptr %.sroa.4299.0..sroa_idx, align 8, !noalias !803
  store ptr %i.gi, ptr %.sroa.5301.0..sroa_idx, align 8, !noalias !803
  store ptr %i.gl, ptr %.sroa.6302.0..sroa_idx, align 8, !noalias !803
  br label %.noexc245

.noexc245:                                        ; preds = %bb.bh, %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !804)
  call void @llvm.experimental.noalias.scope.decl(metadata !805)
  %.pre.i.i.i238 = load i64, ptr %i.h, align 8, !range !14, !alias.scope !806, !noalias !802
  %i.gm = icmp eq i64 %.pre.i.i.i238, 2
  call void @llvm.experimental.noalias.scope.decl(metadata !807)
  br i1 %i.gm, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Y_11AllFeatures13finalize_aalts4_0EEINtB5_8FuseImplBY_E4nextB32_.exit.i.i.i, %.noexc245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !808
  store ptr %.sroa.4299.0..sroa_idx, ptr %i.g, align 8, !noalias !809
  br label %bb.ba

bb.ba:                                            ; preds = %.noexc242, %bb.az
  %i.gn = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtBb_3vec3VecB13_EENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.h)
          to label %.noexc241 unwind label %.loopexit342 ; 2 uses

.noexc241:                                        ; preds = %bb.ba
  %i.go = extractvalue { ptr, ptr } %i.gn, 0      ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1g_3vec3VecB22_EENCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderNtB3k_13IterAaltPairs15iter_aalt_pairs0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB3o_.exit.thread.i.i.i.i, label %bb.bb

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1g_3vec3VecB22_EENCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderNtB3k_13IterAaltPairs15iter_aalt_pairs0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB3o_.exit.thread.i.i.i.i: ; preds = %.noexc241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !808
  store i64 2, ptr %i.h, align 8, !alias.scope !806, !noalias !802
  br label %bb.bc

bb.bb:                                            ; preds = %.noexc241
  %i.gp = extractvalue { ptr, ptr } %i.gn, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gp) ]
  %i.gq = invoke i48 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderNtBW_13IterAaltPairs15iter_aalt_pairs0INtB7_5FnMutTTRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RINtNtCsgCecv3eZDcN_5alloc3vec3VecB3G_EEEE8call_mutB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.go, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gp)
          to label %.noexc242 unwind label %.loopexit342 ; 3 uses

.noexc242:                                        ; preds = %bb.bb
  %i.gr = trunc i48 %i.gq to i1
  br i1 %i.gr, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderEINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB3m_3vec3VecB48_EENCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsB1u_NtB5q_13IterAaltPairs15iter_aalt_pairs0ENCNvMNtB5s_8featuresNtB6S_11AllFeatures13finalize_aalts4_0ENtNtNtB9_6traits8iterator8Iterator4nextB5u_.exit.thread.i, label %bb.ba

bb.bc:                                            ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1g_3vec3VecB22_EENCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderNtB3k_13IterAaltPairs15iter_aalt_pairs0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB3o_.exit.thread.i.i.i.i, %.noexc245
  call void @llvm.experimental.noalias.scope.decl(metadata !810)
  %i.gs = load ptr, ptr %.sroa.5301.0..sroa_idx, align 8, !alias.scope !811, !noalias !812, !noundef !5 ; 6 uses
  %.not.i5.i.i.i239 = icmp eq ptr %i.gs, null
  br i1 %.not.i5.i.i.i239, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Y_11AllFeatures13finalize_aalts4_0EEINtB5_8FuseImplBY_E4nextB32_.exit.thread.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.gt = load ptr, ptr %.sroa.6302.0..sroa_idx, align 8, !alias.scope !814, !noalias !815, !nonnull !5, !noundef !5
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Y_11AllFeatures13finalize_aalts4_0EEINtB5_8FuseImplBY_E4nextB32_.exit.thread.i.i.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Y_11AllFeatures13finalize_aalts4_0EEINtB5_8FuseImplBY_E4nextB32_.exit.i.i.i

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Y_11AllFeatures13finalize_aalts4_0EEINtB5_8FuseImplBY_E4nextB32_.exit.i.i.i: ; preds = %bb.bd
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  store ptr %i.gv, ptr %.sroa.5301.0..sroa_idx, align 8, !alias.scope !814, !noalias !815
  %i.gw = load ptr, ptr %i.gs, align 8, !alias.scope !816, !noalias !817, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i240 = icmp ne ptr %i.gw, null  ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !816, !noalias !817
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !816, !noalias !817
  %.sroa.0.sroa.0.0.i.i.i.i.i.i = zext i1 %.not.i.i.i.i.i.i240 to i64 ; 2 uses
  %.sroa.0.sroa.5.sroa.6.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i240, i64 %i.gy, i64 undef ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i240, i64 %i.ha, i64 0
  store i64 %.sroa.0.sroa.0.0.i.i.i.i.i.i, ptr %i.h, align 8, !alias.scope !818, !noalias !802
  store ptr null, ptr %.sroa.4298.0..sroa_idx, align 8, !alias.scope !818, !noalias !802
  store ptr %i.gw, ptr %.sroa.537.0..sroa_idx.i.i.i231, align 8, !alias.scope !818, !noalias !802
  store i64 %.sroa.0.sroa.5.sroa.6.0.i.i.i.i.i.i, ptr %.sroa.638.0..sroa_idx.i.i.i232, align 8, !alias.scope !818, !noalias !802
  store i64 %.sroa.0.sroa.0.0.i.i.i.i.i.i, ptr %.sroa.739.0..sroa_idx.i.i.i233, align 8, !alias.scope !818, !noalias !802
  store ptr null, ptr %.sroa.840.0..sroa_idx.i.i.i234, align 8, !alias.scope !818, !noalias !802
  store ptr %i.gw, ptr %.sroa.941.0..sroa_idx.i.i.i235, align 8, !alias.scope !818, !noalias !802
  store i64 %.sroa.0.sroa.5.sroa.6.0.i.i.i.i.i.i, ptr %.sroa.1042.0..sroa_idx.i.i.i236, align 8, !alias.scope !818, !noalias !802
  store i64 %.sroa.5.0.i.i.i.i.i.i, ptr %.sroa.1143.0..sroa_idx.i.i.i237, align 8, !alias.scope !818, !noalias !802
  call void @llvm.experimental.noalias.scope.decl(metadata !807)
  br label %bb.az

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderEINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB3m_3vec3VecB48_EENCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsB1u_NtB5q_13IterAaltPairs15iter_aalt_pairs0ENCNvMNtB5s_8featuresNtB6S_11AllFeatures13finalize_aalts4_0ENtNtNtB9_6traits8iterator8Iterator4nextB5u_.exit.thread.i: ; preds = %.noexc242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !808
  %extract521 = lshr i48 %i.gq, 16
  %extract.t522 = trunc i48 %extract521 to i16
  %extract525 = lshr i48 %i.gq, 32
  %extract.t526 = trunc nuw i48 %extract525 to i16
  br label %bb.bh

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Y_11AllFeatures13finalize_aalts4_0EEINtB5_8FuseImplBY_E4nextB32_.exit.thread.i.i.i: ; preds = %bb.bd, %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !819)
  %i.hb = load i64, ptr %.sroa.4299.0..sroa_idx, align 8, !range !14, !alias.scope !820, !noalias !802, !noundef !5
  %.not.i6.i.i.i = icmp eq i64 %i.hb, 2
  br i1 %.not.i6.i.i.i, label %.loopexit365, label %bb.be

bb.be:                                            ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Y_11AllFeatures13finalize_aalts4_0EEINtB5_8FuseImplBY_E4nextB32_.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !821
  store ptr %.sroa.5301.0..sroa_idx, ptr %i.f, align 8, !noalias !822
  br label %bb.bf

bb.bf:                                            ; preds = %.noexc244, %bb.be
  %i.hc = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtBb_3vec3VecB13_EENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.sroa.4299.0..sroa_idx)
          to label %.noexc243 unwind label %.loopexit.split-lp343.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc243:                                        ; preds = %bb.bf
  %i.hd = extractvalue { ptr, ptr } %i.hc, 0      ; 2 uses
  %.not.i.i.i.i.i7.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i.i7.i.i.i, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1g_3vec3VecB22_EENCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderNtB3k_13IterAaltPairs15iter_aalt_pairs0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB3o_.exit.thread.i17.i.i.i, label %bb.bg

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1g_3vec3VecB22_EENCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderNtB3k_13IterAaltPairs15iter_aalt_pairs0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB3o_.exit.thread.i17.i.i.i: ; preds = %.noexc243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !821
  br label %.loopexit365

bb.bg:                                            ; preds = %.noexc243
  %i.he = extractvalue { ptr, ptr } %i.hc, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.he) ]
  %i.hf = invoke i48 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderNtBW_13IterAaltPairs15iter_aalt_pairs0INtB7_5FnMutTTRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RINtNtCsgCecv3eZDcN_5alloc3vec3VecB3G_EEEE8call_mutB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.hd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.he)
          to label %.noexc244 unwind label %.loopexit.split-lp343.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc244:                                        ; preds = %bb.bg
  %i.hg = trunc i48 %i.hf to i1
  br i1 %i.hg, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderEINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB3m_3vec3VecB48_EENCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsB1u_NtB5q_13IterAaltPairs15iter_aalt_pairs0ENCNvMNtB5s_8featuresNtB6S_11AllFeatures13finalize_aalts4_0ENtNtNtB9_6traits8iterator8Iterator4nextB5u_.exit.i, label %bb.bf

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderEINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB3m_3vec3VecB48_EENCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsB1u_NtB5q_13IterAaltPairs15iter_aalt_pairs0ENCNvMNtB5s_8featuresNtB6S_11AllFeatures13finalize_aalts4_0ENtNtNtB9_6traits8iterator8Iterator4nextB5u_.exit.i: ; preds = %.noexc244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !821
  %extract519 = lshr i48 %i.hf, 16
  %extract.t520 = trunc i48 %extract519 to i16
  %extract523 = lshr i48 %i.hf, 32
  %extract.t524 = trunc nuw i48 %extract523 to i16
  br label %bb.bh

bb.bh:                                            ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderEINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB3m_3vec3VecB48_EENCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsB1u_NtB5q_13IterAaltPairs15iter_aalt_pairs0ENCNvMNtB5s_8featuresNtB6S_11AllFeatures13finalize_aalts4_0ENtNtNtB9_6traits8iterator8Iterator4nextB5u_.exit.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderEINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB3m_3vec3VecB48_EENCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsB1u_NtB5q_13IterAaltPairs15iter_aalt_pairs0ENCNvMNtB5s_8featuresNtB6S_11AllFeatures13finalize_aalts4_0ENtNtNtB9_6traits8iterator8Iterator4nextB5u_.exit.thread.i
  %.sink518.off16 = phi i16 [ %extract.t520, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderEINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB3m_3vec3VecB48_EENCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsB1u_NtB5q_13IterAaltPairs15iter_aalt_pairs0ENCNvMNtB5s_8featuresNtB6S_11AllFeatures13finalize_aalts4_0ENtNtNtB9_6traits8iterator8Iterator4nextB5u_.exit.i ], [ %extract.t522, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderEINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB3m_3vec3VecB48_EENCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsB1u_NtB5q_13IterAaltPairs15iter_aalt_pairs0ENCNvMNtB5s_8featuresNtB6S_11AllFeatures13finalize_aalts4_0ENtNtNtB9_6traits8iterator8Iterator4nextB5u_.exit.thread.i ]
  %.sink518.off32 = phi i16 [ %extract.t524, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderEINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB3m_3vec3VecB48_EENCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsB1u_NtB5q_13IterAaltPairs15iter_aalt_pairs0ENCNvMNtB5s_8featuresNtB6S_11AllFeatures13finalize_aalts4_0ENtNtNtB9_6traits8iterator8Iterator4nextB5u_.exit.i ], [ %extract.t526, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderEINtNtB7_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB3m_3vec3VecB48_EENCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsB1u_NtB5q_13IterAaltPairs15iter_aalt_pairs0ENCNvMNtB5s_8featuresNtB6S_11AllFeatures13finalize_aalts4_0ENtNtNtB9_6traits8iterator8Iterator4nextB5u_.exit.thread.i ]
  invoke void @_RNvMs2_NtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB5_11AaltFeature3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.ai, i16 noundef %.sink518.off16, i16 noundef %.sink518.off32)
          to label %.noexc245 unwind label %.loopexit.split-lp343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bi:                                            ; preds = %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtB2r_18SubstitutionLookupEEENCNvMNtB2t_8featuresNtB3O_11AllFeatures13finalize_aalts1_0EIB1s_B2o_EENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit
  %i.hh = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.hk = load i64, ptr %i.hj, align 8, !noundef !5
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %i.hi, i64 %i.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !823
  store i64 -1, ptr %i.e, align 8, !noalias !824
  store i64 -1, ptr %.sroa.4293.0..sroa_idx, align 8, !noalias !824
  store ptr %i.hi, ptr %.sroa.5295.0..sroa_idx, align 8, !noalias !824
  store ptr %i.hl, ptr %.sroa.6296.0..sroa_idx, align 8, !noalias !824
  br label %.noexc257

.noexc257:                                        ; preds = %bb.cf, %bb.bi
  %.pre.i.i.i246 = load i64, ptr %i.e, align 8, !range !825, !alias.scope !826, !noalias !823
  %i.hm = icmp eq i64 %.pre.i.i.i246, -1
  br i1 %i.hm, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1t_3vec3VecB2f_EEINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterB2f_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB4k_19AlternateSubBuilder10iter_pairs00ENCB4e_0ETB2f_B2f_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.thread.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders19AlternateSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Z_11AllFeatures13finalize_aalts3_0EEINtB5_8FuseImplBY_E4nextB33_.exit.i.i.i, %.noexc257
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !827, !noalias !823
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bp, %bb.bj
  %i.hn = phi ptr [ %.val.i.i.i.i.i.i.i.i.i, %bb.bp ], [ %.pre.i.i.i.i.i.i.i, %bb.bj ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  %.not.i.i.i.i.i.i.i.i248 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i.i.i.i.i.i248, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !829)
  call void @llvm.experimental.noalias.scope.decl(metadata !830)
  %i.ho = load ptr, ptr %i.bq, align 8, !alias.scope !831, !noalias !823, !nonnull !5, !noundef !5
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %bb.bm, label %.loopexit.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  store ptr null, ptr %i.bp, align 8, !alias.scope !827, !noalias !823
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  %i.hq = load i64, ptr %i.e, align 8, !range !14, !alias.scope !832, !noalias !833, !noundef !5
  %.not.i5.i.i.i.i.i.i.i = icmp eq i64 %i.hq, 2
  br i1 %.not.i5.i.i.i.i.i.i.i, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hr = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtBb_3vec3VecB13_EENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.e)
          to label %.noexc255 unwind label %.loopexit.split-lp343.loopexit ; 2 uses

.noexc255:                                        ; preds = %bb.bo
  %i.hs = extractvalue { ptr, ptr } %i.hr, 0      ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.bq, label %bb.bp

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.bl
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  store ptr %i.ht, ptr %i.bp, align 8, !alias.scope !831, !noalias !823
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.br, align 8, !alias.scope !834, !noalias !823, !nonnull !5, !align !18, !noundef !5
  %.val3.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.hn, align 2, !noalias !835, !noundef !5
  %i.hu = load i16, ptr %.val.i.i.i.i.i.i.i.i.i.i, align 2, !noalias !835, !noundef !5
  %i.hv = zext i16 %.val3.i.i.i.i.i.i.i.i.i.i to i32
  %3 = shl nuw i32 %i.hv, 16
  %4 = zext i16 %i.hu to i32
  %i.hw = or disjoint i32 %3, %4
  %.sroa.3.0.insert.ext.i.le.i.i.i.i.i.i.i = zext i32 %i.hw to i48
  %.sroa.3.0.insert.shift.i.le.i.i.i.i.i.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.le.i.i.i.i.i.i.i, 16
  %.sroa.0.0.insert.insert.i.le.i.i.i.i.i.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.le.i.i.i.i.i.i.i, 1
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1a_3vec3VecB1W_EEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterB1W_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB41_19AlternateSubBuilder10iter_pairs00ENCB3V_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i.i.i.i

bb.bp:                                            ; preds = %.noexc255
  %i.hx = extractvalue { ptr, ptr } %i.hr, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hx) ]
  %i.hy = getelementptr i8, ptr %i.hx, i64 8
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hy, align 8, !noalias !836, !nonnull !5, !noundef !5 ; 3 uses
  %i.hz = getelementptr i8, ptr %i.hx, i64 16
  %.val3.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hz, align 8, !noalias !836, !noundef !5
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i.i.i.i
  store ptr %.val.i.i.i.i.i.i.i.i.i, ptr %i.bp, align 8, !alias.scope !837, !noalias !823
  store ptr %i.ia, ptr %i.bq, align 8, !alias.scope !837, !noalias !823
  store ptr %i.hs, ptr %i.br, align 8, !alias.scope !837, !noalias !823
  br label %bb.bk

bb.bq:                                            ; preds = %.noexc255, %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.ib = load ptr, ptr %i.bs, align 8, !alias.scope !839, !noalias !823, !noundef !5 ; 4 uses
  %.not.i6.i.i.i.i.i.i.i = icmp eq ptr %i.ib, null
  br i1 %.not.i6.i.i.i.i.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2K_19AlternateSubBuilder10iter_pairs00ETB1M_B1M_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit16.i.i.i.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !840)
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %i.ic = load ptr, ptr %i.bt, align 8, !alias.scope !842, !noalias !823, !nonnull !5, !noundef !5
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %bb.bs, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2h_19AlternateSubBuilder10iter_pairs00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i7.i.i.i.i.i.i.i

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2h_19AlternateSubBuilder10iter_pairs00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i7.i.i.i.i.i.i.i: ; preds = %bb.br
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  store ptr %i.ie, ptr %i.bs, align 8, !alias.scope !842, !noalias !823
  %.val.i.i.i8.i.i.i.i.i.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !843, !noalias !823, !nonnull !5, !align !18, !noundef !5
  %.val3.i.i.i9.i.i.i.i.i.i.i = load i16, ptr %i.ib, align 2, !noalias !844, !noundef !5
  %i.if = load i16, ptr %.val.i.i.i8.i.i.i.i.i.i.i, align 2, !noalias !844, !noundef !5
  %i.ig = zext i16 %.val3.i.i.i9.i.i.i.i.i.i.i to i32
  %5 = shl nuw i32 %i.ig, 16
  %6 = zext i16 %i.if to i32
  %i.ih = or disjoint i32 %5, %6
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2K_19AlternateSubBuilder10iter_pairs00ETB1M_B1M_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit16.i.i.i.i.i.i.i

bb.bs:                                            ; preds = %bb.br
  store ptr null, ptr %i.bs, align 8, !alias.scope !839, !noalias !823
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2K_19AlternateSubBuilder10iter_pairs00ETB1M_B1M_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit16.i.i.i.i.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2K_19AlternateSubBuilder10iter_pairs00ETB1M_B1M_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit16.i.i.i.i.i.i.i: ; preds = %bb.bs, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2h_19AlternateSubBuilder10iter_pairs00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i7.i.i.i.i.i.i.i, %bb.bq
  %.sroa.3.0.i10.i.i.i.i.i.i.i = phi i32 [ undef, %bb.bq ], [ 0, %bb.bs ], [ %i.ih, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2h_19AlternateSubBuilder10iter_pairs00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i7.i.i.i.i.i.i.i ]
  %.sroa.0.0.i11.i.i.i.i.i.i.i = phi i16 [ 0, %bb.bq ], [ 0, %bb.bs ], [ 1, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2h_19AlternateSubBuilder10iter_pairs00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i7.i.i.i.i.i.i.i ]
  %.sroa.3.0.insert.ext.i12.i.i.i.i.i.i.i = zext i32 %.sroa.3.0.i10.i.i.i.i.i.i.i to i48
  %.sroa.3.0.insert.shift.i13.i.i.i.i.i.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i12.i.i.i.i.i.i.i, 16
  %.sroa.0.0.insert.ext.i14.i.i.i.i.i.i.i = zext nneg i16 %.sroa.0.0.i11.i.i.i.i.i.i.i to i48
  %.sroa.0.0.insert.insert.i15.i.i.i.i.i.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i13.i.i.i.i.i.i.i, %.sroa.0.0.insert.ext.i14.i.i.i.i.i.i.i
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1a_3vec3VecB1W_EEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterB1W_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB41_19AlternateSubBuilder10iter_pairs00ENCB3V_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i.i.i.i

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1a_3vec3VecB1W_EEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterB1W_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB41_19AlternateSubBuilder10iter_pairs00ENCB3V_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i.i.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2K_19AlternateSubBuilder10iter_pairs00ETB1M_B1M_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit16.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi i48 [ %.sroa.0.0.insert.insert.i15.i.i.i.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2K_19AlternateSubBuilder10iter_pairs00ETB1M_B1M_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit16.i.i.i.i.i.i.i ], [ %.sroa.0.0.insert.insert.i.le.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.05.0.extract.trunc.mask.i.i.i.i = and i48 %.sroa.0.0.i.i.i.i.i.i.i, 65535
  %.not6.i.i.i.i = icmp eq i48 %.sroa.05.0.extract.trunc.mask.i.i.i.i, 1
  br i1 %.not6.i.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1t_3vec3VecB2f_EEINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterB2f_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB4k_19AlternateSubBuilder10iter_pairs00ENCB4e_0ETB2f_B2f_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1a_3vec3VecB1W_EEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterB1W_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB41_19AlternateSubBuilder10iter_pairs00ENCB3V_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i.i.i.i
  store i64 -1, ptr %i.e, align 8, !alias.scope !826, !noalias !823
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1t_3vec3VecB2f_EEINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterB2f_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB4k_19AlternateSubBuilder10iter_pairs00ENCB4e_0ETB2f_B2f_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1t_3vec3VecB2f_EEINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterB2f_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB4k_19AlternateSubBuilder10iter_pairs00ENCB4e_0ETB2f_B2f_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.i.i.i: ; preds = %bb.bt, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1a_3vec3VecB1W_EEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterB1W_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB41_19AlternateSubBuilder10iter_pairs00ENCB3V_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i.i.i.i
  %i.ii = trunc i48 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.ii, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders19AlternateSubBuilderEIBR_INtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB2X_3vec3VecB3J_EEINtNtB7_3map3MapIB15_B3J_ENCNCNvMs3_B1w_B1u_10iter_pairs00ENCB5n_0ENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB63_11AllFeatures13finalize_aalts3_0ENtNtNtB9_6traits8iterator8Iterator4nextB67_.exit.thread.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1t_3vec3VecB2f_EEINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterB2f_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB4k_19AlternateSubBuilder10iter_pairs00ENCB4e_0ETB2f_B2f_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.thread.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1t_3vec3VecB2f_EEINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterB2f_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB4k_19AlternateSubBuilder10iter_pairs00ENCB4e_0ETB2f_B2f_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.thread.i.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1t_3vec3VecB2f_EEINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterB2f_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB4k_19AlternateSubBuilder10iter_pairs00ENCB4e_0ETB2f_B2f_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.i.i.i, %.noexc257
  call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %i.ij = load ptr, ptr %.sroa.5295.0..sroa_idx, align 8, !alias.scope !846, !noalias !847, !noundef !5 ; 6 uses
  %.not.i5.i.i.i249 = icmp eq ptr %i.ij, null
  br i1 %.not.i5.i.i.i249, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders19AlternateSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Z_11AllFeatures13finalize_aalts3_0EEINtB5_8FuseImplBY_E4nextB33_.exit.thread.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1t_3vec3VecB2f_EEINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterB2f_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB4k_19AlternateSubBuilder10iter_pairs00ENCB4e_0ETB2f_B2f_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.thread.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !848)
  %i.ik = load ptr, ptr %.sroa.6296.0..sroa_idx, align 8, !alias.scope !849, !noalias !850, !nonnull !5, !noundef !5
  %i.il = icmp eq ptr %i.ij, %i.ik
  br i1 %i.il, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders19AlternateSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Z_11AllFeatures13finalize_aalts3_0EEINtB5_8FuseImplBY_E4nextB33_.exit.thread.i.i.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders19AlternateSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Z_11AllFeatures13finalize_aalts3_0EEINtB5_8FuseImplBY_E4nextB33_.exit.i.i.i

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders19AlternateSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Z_11AllFeatures13finalize_aalts3_0EEINtB5_8FuseImplBY_E4nextB33_.exit.i.i.i: ; preds = %bb.bu
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  store ptr %i.im, ptr %.sroa.5295.0..sroa_idx, align 8, !alias.scope !849, !noalias !850
  %i.in = load ptr, ptr %i.ij, align 8, !alias.scope !851, !noalias !852, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i250 = icmp ne ptr %i.in, null  ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.ip = load i64, ptr %i.io, align 8, !alias.scope !851, !noalias !852
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.ir = load i64, ptr %i.iq, align 8, !alias.scope !851, !noalias !852
  %.sroa.0.sroa.0.0.i.i.i.i.i.i251 = zext i1 %.not.i.i.i.i.i.i250 to i64 ; 2 uses
  %.sroa.0.sroa.5.sroa.6.0.i.i.i.i.i.i252 = select i1 %.not.i.i.i.i.i.i250, i64 %i.ip, i64 undef ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i253 = select i1 %.not.i.i.i.i.i.i250, i64 %i.ir, i64 0
  store i64 %.sroa.0.sroa.0.0.i.i.i.i.i.i251, ptr %i.e, align 8, !alias.scope !853, !noalias !823
  store ptr null, ptr %.sroa.4292.0..sroa_idx, align 8, !alias.scope !853, !noalias !823
  store ptr %i.in, ptr %.sroa.571.0..sroa_idx.i.i.i, align 8, !alias.scope !853, !noalias !823
  store i64 %.sroa.0.sroa.5.sroa.6.0.i.i.i.i.i.i252, ptr %.sroa.672.0..sroa_idx.i.i.i, align 8, !alias.scope !853, !noalias !823
  store i64 %.sroa.0.sroa.0.0.i.i.i.i.i.i251, ptr %.sroa.773.0..sroa_idx.i.i.i, align 8, !alias.scope !853, !noalias !823
  store ptr null, ptr %.sroa.874.0..sroa_idx.i.i.i, align 8, !alias.scope !853, !noalias !823
  store ptr %i.in, ptr %.sroa.975.0..sroa_idx.i.i.i, align 8, !alias.scope !853, !noalias !823
  store i64 %.sroa.0.sroa.5.sroa.6.0.i.i.i.i.i.i252, ptr %.sroa.1076.0..sroa_idx.i.i.i, align 8, !alias.scope !853, !noalias !823
  store i64 %.sroa.5.0.i.i.i.i.i.i253, ptr %.sroa.1177.0..sroa_idx.i.i.i, align 8, !alias.scope !853, !noalias !823
  store ptr null, ptr %i.bp, align 8, !alias.scope !853, !noalias !823
  store ptr null, ptr %i.bs, align 8, !alias.scope !853, !noalias !823
  br label %bb.bj

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders19AlternateSubBuilderEIBR_INtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB2X_3vec3VecB3J_EEINtNtB7_3map3MapIB15_B3J_ENCNCNvMs3_B1w_B1u_10iter_pairs00ENCB5n_0ENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB63_11AllFeatures13finalize_aalts3_0ENtNtNtB9_6traits8iterator8Iterator4nextB67_.exit.thread.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1t_3vec3VecB2f_EEINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterB2f_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB4k_19AlternateSubBuilder10iter_pairs00ENCB4e_0ETB2f_B2f_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.i.i.i
  %.sroa.05.2.extract.shift.i.le.i.i.i = lshr i48 %.sroa.0.0.i.i.i.i.i.i.i, 16
  %.sroa.05.2.extract.trunc.i.le.i.i.i = trunc nuw i48 %.sroa.05.2.extract.shift.i.le.i.i.i to i32
  br label %bb.cf

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders19AlternateSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Z_11AllFeatures13finalize_aalts3_0EEINtB5_8FuseImplBY_E4nextB33_.exit.thread.i.i.i: ; preds = %bb.bu, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1t_3vec3VecB2f_EEINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterB2f_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB4k_19AlternateSubBuilder10iter_pairs00ENCB4e_0ETB2f_B2f_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.thread.i.i.i
  %i.is = load i64, ptr %.sroa.4293.0..sroa_idx, align 8, !range !825, !alias.scope !854, !noalias !823, !noundef !5
  %.not.i6.i.i.i254 = icmp eq i64 %i.is, -1
  br i1 %.not.i6.i.i.i254, label %bb.cs, label %bb.bv

bb.bv:                                            ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders19AlternateSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Z_11AllFeatures13finalize_aalts3_0EEINtB5_8FuseImplBY_E4nextB33_.exit.thread.i.i.i
  %.pre.i.i.i.i7.i.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !855, !noalias !823
  br label %bb.bw

bb.bw:                                            ; preds = %bb.cb, %bb.bv
  %i.it = phi ptr [ %.val.i.i.i.i.i.i30.i.i.i, %bb.cb ], [ %.pre.i.i.i.i7.i.i.i, %bb.bv ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %.not.i.i.i.i.i8.i.i.i = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i.i.i8.i.i.i, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  call void @llvm.experimental.noalias.scope.decl(metadata !858)
  %i.iu = load ptr, ptr %i.bw, align 8, !alias.scope !859, !noalias !823, !nonnull !5, !noundef !5
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %bb.by, label %.loopexit.i.i.i.i9.i.i.i

bb.by:                                            ; preds = %bb.bx
  store ptr null, ptr %i.bv, align 8, !alias.scope !855, !noalias !823
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bw
  %i.iw = load i64, ptr %.sroa.4293.0..sroa_idx, align 8, !range !14, !alias.scope !860, !noalias !861, !noundef !5
  %.not.i5.i.i.i.i28.i.i.i = icmp eq i64 %i.iw, 2
  br i1 %.not.i5.i.i.i.i28.i.i.i, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ix = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtBb_3vec3VecB13_EENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %.sroa.4293.0..sroa_idx)
          to label %.noexc256 unwind label %.loopexit.split-lp343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc256:                                        ; preds = %bb.ca
  %i.iy = extractvalue { ptr, ptr } %i.ix, 0      ; 2 uses
  %.not.i.i.i.i.i.i29.i.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i.i.i.i29.i.i.i, label %bb.cc, label %bb.cb

.loopexit.i.i.i.i9.i.i.i:                         ; preds = %bb.bx
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  store ptr %i.iz, ptr %i.bv, align 8, !alias.scope !859, !noalias !823
  %.val.i.i.i.i.i.i.i10.i.i.i = load ptr, ptr %i.bx, align 8, !alias.scope !862, !noalias !823, !nonnull !5, !align !18, !noundef !5
  %.val3.i.i.i.i.i.i.i11.i.i.i = load i16, ptr %i.it, align 2, !noalias !863, !noundef !5
  %i.ja = load i16, ptr %.val.i.i.i.i.i.i.i10.i.i.i, align 2, !noalias !863, !noundef !5
  %i.jb = zext i16 %.val3.i.i.i.i.i.i.i11.i.i.i to i32
  %7 = shl nuw i32 %i.jb, 16
  %8 = zext i16 %i.ja to i32
  %i.jc = or disjoint i32 %7, %8
  %.sroa.3.0.insert.ext.i.le.i.i.i.i12.i.i.i = zext i32 %i.jc to i48
  %.sroa.3.0.insert.shift.i.le.i.i.i.i13.i.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.le.i.i.i.i12.i.i.i, 16
  %.sroa.0.0.insert.insert.i.le.i.i.i.i14.i.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.le.i.i.i.i13.i.i.i, 1
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1a_3vec3VecB1W_EEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterB1W_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB41_19AlternateSubBuilder10iter_pairs00ENCB3V_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i15.i.i.i

bb.cb:                                            ; preds = %.noexc256
  %i.jd = extractvalue { ptr, ptr } %i.ix, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jd) ]
  %i.je = getelementptr i8, ptr %i.jd, i64 8
  %.val.i.i.i.i.i.i30.i.i.i = load ptr, ptr %i.je, align 8, !noalias !864, !nonnull !5, !noundef !5 ; 3 uses
  %i.jf = getelementptr i8, ptr %i.jd, i64 16
  %.val3.i.i.i.i.i.i31.i.i.i = load i64, ptr %i.jf, align 8, !noalias !864, !noundef !5
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i.i30.i.i.i, i64 %.val3.i.i.i.i.i.i31.i.i.i
  store ptr %.val.i.i.i.i.i.i30.i.i.i, ptr %i.bv, align 8, !alias.scope !865, !noalias !823
  store ptr %i.jg, ptr %i.bw, align 8, !alias.scope !865, !noalias !823
  store ptr %i.iy, ptr %i.bx, align 8, !alias.scope !865, !noalias !823
  br label %bb.bw

bb.cc:                                            ; preds = %.noexc256, %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %i.jh = load ptr, ptr %i.by, align 8, !alias.scope !867, !noalias !823, !noundef !5 ; 4 uses
  %.not.i6.i.i.i.i32.i.i.i = icmp eq ptr %i.jh, null
  br i1 %.not.i6.i.i.i.i32.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2K_19AlternateSubBuilder10iter_pairs00ETB1M_B1M_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit16.i.i.i.i36.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  call void @llvm.experimental.noalias.scope.decl(metadata !869)
  %i.ji = load ptr, ptr %i.bz, align 8, !alias.scope !870, !noalias !823, !nonnull !5, !noundef !5
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %bb.ce, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2h_19AlternateSubBuilder10iter_pairs00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i7.i.i.i.i33.i.i.i

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2h_19AlternateSubBuilder10iter_pairs00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i7.i.i.i.i33.i.i.i: ; preds = %bb.cd
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  store ptr %i.jk, ptr %i.by, align 8, !alias.scope !870, !noalias !823
  %.val.i.i.i8.i.i.i.i34.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !871, !noalias !823, !nonnull !5, !align !18, !noundef !5
  %.val3.i.i.i9.i.i.i.i35.i.i.i = load i16, ptr %i.jh, align 2, !noalias !872, !noundef !5
  %i.jl = load i16, ptr %.val.i.i.i8.i.i.i.i34.i.i.i, align 2, !noalias !872, !noundef !5
  %i.jm = zext i16 %.val3.i.i.i9.i.i.i.i35.i.i.i to i32
  %9 = shl nuw i32 %i.jm, 16
  %10 = zext i16 %i.jl to i32
  %i.jn = or disjoint i32 %9, %10
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2K_19AlternateSubBuilder10iter_pairs00ETB1M_B1M_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit16.i.i.i.i36.i.i.i

bb.ce:                                            ; preds = %bb.cd
  store ptr null, ptr %i.by, align 8, !alias.scope !867, !noalias !823
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2K_19AlternateSubBuilder10iter_pairs00ETB1M_B1M_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit16.i.i.i.i36.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2K_19AlternateSubBuilder10iter_pairs00ETB1M_B1M_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit16.i.i.i.i36.i.i.i: ; preds = %bb.ce, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2h_19AlternateSubBuilder10iter_pairs00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i7.i.i.i.i33.i.i.i, %bb.cc
  %.sroa.3.0.i10.i.i.i.i37.i.i.i = phi i32 [ undef, %bb.cc ], [ 0, %bb.ce ], [ %i.jn, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2h_19AlternateSubBuilder10iter_pairs00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i7.i.i.i.i33.i.i.i ]
  %.sroa.0.0.i11.i.i.i.i38.i.i.i = phi i16 [ 0, %bb.cc ], [ 0, %bb.ce ], [ 1, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2h_19AlternateSubBuilder10iter_pairs00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i7.i.i.i.i33.i.i.i ]
  %.sroa.3.0.insert.ext.i12.i.i.i.i39.i.i.i = zext i32 %.sroa.3.0.i10.i.i.i.i37.i.i.i to i48
  %.sroa.3.0.insert.shift.i13.i.i.i.i40.i.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i12.i.i.i.i39.i.i.i, 16
  %.sroa.0.0.insert.ext.i14.i.i.i.i41.i.i.i = zext nneg i16 %.sroa.0.0.i11.i.i.i.i38.i.i.i to i48
  %.sroa.0.0.insert.insert.i15.i.i.i.i42.i.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i13.i.i.i.i40.i.i.i, %.sroa.0.0.insert.ext.i14.i.i.i.i41.i.i.i
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1a_3vec3VecB1W_EEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterB1W_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB41_19AlternateSubBuilder10iter_pairs00ENCB3V_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i15.i.i.i

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1a_3vec3VecB1W_EEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterB1W_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB41_19AlternateSubBuilder10iter_pairs00ENCB3V_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i15.i.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2K_19AlternateSubBuilder10iter_pairs00ETB1M_B1M_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit16.i.i.i.i36.i.i.i, %.loopexit.i.i.i.i9.i.i.i
  %.sroa.0.0.i.i.i.i16.i.i.i = phi i48 [ %.sroa.0.0.insert.insert.i15.i.i.i.i42.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB2K_19AlternateSubBuilder10iter_pairs00ETB1M_B1M_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit16.i.i.i.i36.i.i.i ], [ %.sroa.0.0.insert.insert.i.le.i.i.i.i14.i.i.i, %.loopexit.i.i.i.i9.i.i.i ] ; 3 uses
  %.sroa.05.0.extract.trunc.i17.i.i.i = trunc i48 %.sroa.0.0.i.i.i.i16.i.i.i to i1 ; 2 uses
  %.sroa.05.2.extract.shift.i18.i.i.i = lshr i48 %.sroa.0.0.i.i.i.i16.i.i.i, 16
  %.sroa.05.2.extract.trunc.i19.i.i.i = trunc nuw i48 %.sroa.05.2.extract.shift.i18.i.i.i to i32 ; 2 uses
  %.sroa.05.0.extract.trunc.mask.i20.i.i.i = and i48 %.sroa.0.0.i.i.i.i16.i.i.i, 65535
  %.not6.i21.i.i.i = icmp eq i48 %.sroa.05.0.extract.trunc.mask.i20.i.i.i, 1
  br i1 %.not6.i21.i.i.i, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders19AlternateSubBuilderEIBR_INtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB2X_3vec3VecB3J_EEINtNtB7_3map3MapIB15_B3J_ENCNCNvMs3_B1w_B1u_10iter_pairs00ENCB5n_0ENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB63_11AllFeatures13finalize_aalts3_0ENtNtNtB9_6traits8iterator8Iterator4nextB67_.exit.i, label %.split.i

.split.i:                                         ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1a_3vec3VecB1W_EEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterB1W_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB41_19AlternateSubBuilder10iter_pairs00ENCB3V_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i15.i.i.i
  store i64 -1, ptr %.sroa.4293.0..sroa_idx, align 8, !alias.scope !854, !noalias !823
  br i1 %.sroa.05.0.extract.trunc.i17.i.i.i, label %bb.cf, label %bb.cs

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders19AlternateSubBuilderEIBR_INtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB2X_3vec3VecB3J_EEINtNtB7_3map3MapIB15_B3J_ENCNCNvMs3_B1w_B1u_10iter_pairs00ENCB5n_0ENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB63_11AllFeatures13finalize_aalts3_0ENtNtNtB9_6traits8iterator8Iterator4nextB67_.exit.i: ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1a_3vec3VecB1W_EEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterB1W_ENCNCNvMs3_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8buildersNtB41_19AlternateSubBuilder10iter_pairs00ENCB3V_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i15.i.i.i
  br i1 %.sroa.05.0.extract.trunc.i17.i.i.i, label %bb.cf, label %bb.cs

bb.cf:                                            ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders19AlternateSubBuilderEIBR_INtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB2X_3vec3VecB3J_EEINtNtB7_3map3MapIB15_B3J_ENCNCNvMs3_B1w_B1u_10iter_pairs00ENCB5n_0ENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB63_11AllFeatures13finalize_aalts3_0ENtNtNtB9_6traits8iterator8Iterator4nextB67_.exit.i, %.split.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders19AlternateSubBuilderEIBR_INtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB2X_3vec3VecB3J_EEINtNtB7_3map3MapIB15_B3J_ENCNCNvMs3_B1w_B1u_10iter_pairs00ENCB5n_0ENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB63_11AllFeatures13finalize_aalts3_0ENtNtNtB9_6traits8iterator8Iterator4nextB67_.exit.thread.i
  %.sroa.05.2.extract.trunc.i.le.sink.i.i17.i = phi i32 [ %.sroa.05.2.extract.trunc.i.le.i.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders19AlternateSubBuilderEIBR_INtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB2X_3vec3VecB3J_EEINtNtB7_3map3MapIB15_B3J_ENCNCNvMs3_B1w_B1u_10iter_pairs00ENCB5n_0ENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB63_11AllFeatures13finalize_aalts3_0ENtNtNtB9_6traits8iterator8Iterator4nextB67_.exit.thread.i ], [ %.sroa.05.2.extract.trunc.i19.i.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders19AlternateSubBuilderEIBR_INtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB2X_3vec3VecB3J_EEINtNtB7_3map3MapIB15_B3J_ENCNCNvMs3_B1w_B1u_10iter_pairs00ENCB5n_0ENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB63_11AllFeatures13finalize_aalts3_0ENtNtNtB9_6traits8iterator8Iterator4nextB67_.exit.i ], [ %.sroa.05.2.extract.trunc.i19.i.i.i, %.split.i ] ; 2 uses
  %.sroa.01.4.extract.shift.i = lshr i32 %.sroa.05.2.extract.trunc.i.le.sink.i.i17.i, 16
  %.sroa.01.4.extract.trunc.i = trunc nuw i32 %.sroa.01.4.extract.shift.i to i16
  %.sroa.01.2.extract.trunc.i = trunc i32 %.sroa.05.2.extract.trunc.i.le.sink.i.i17.i to i16
  invoke void @_RNvMs2_NtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB5_11AaltFeature3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.ai, i16 noundef %.sroa.01.2.extract.trunc.i, i16 noundef %.sroa.01.4.extract.trunc.i)
          to label %.noexc257 unwind label %.loopexit.split-lp343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cg:                                            ; preds = %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtB2r_18SubstitutionLookupEEENCNvMNtB2t_8featuresNtB3O_11AllFeatures13finalize_aalts1_0EIB1s_B2o_EENtNtNtB9_6traits8iterator8Iterator4nextB2v_.exit
  %i.jo = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.jr = load i64, ptr %i.jq, align 8, !noundef !5
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %i.jp, i64 %i.jr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !873
  store i64 -1, ptr %i.d, align 8, !noalias !874
  store i64 -1, ptr %.sroa.4305.0..sroa_idx, align 8, !noalias !874
  store ptr %i.jp, ptr %.sroa.5307.0..sroa_idx, align 8, !noalias !874
  store ptr %i.js, ptr %.sroa.6308.0..sroa_idx, align 8, !noalias !874
  br label %.noexc280

.noexc280:                                        ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderEINtNtB7_10filter_map9FilterMapIBR_INtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB3q_3vec3VecTIB50_B4c_EB4c_EEEINtNtB7_3map3MapIB15_B5g_ENCNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsB1u_NtB67_13IterAaltPairs15iter_aalt_pairs00ENCB62_0ENCB62_s_0ENCNvMNtB69_8featuresNtB7S_11AllFeatures13finalize_aalts5_0ENtNtNtB9_6traits8iterator8Iterator4nextB6b_.exit.thread20.i, %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %.pre.i.i.i258 = load i64, ptr %i.d, align 8, !range !825, !alias.scope !877, !noalias !873
  br label %bb.ch

bb.ch:                                            ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Y_11AllFeatures13finalize_aalts5_0EEINtB5_8FuseImplBY_E4nextB32_.exit.i.i.i, %.noexc280
  %i.jt = phi i64 [ %.sroa.0.sroa.0.0.i.i.i.i.i.i270, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Y_11AllFeatures13finalize_aalts5_0EEINtB5_8FuseImplBY_E4nextB32_.exit.i.i.i ], [ %.pre.i.i.i258, %.noexc280 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %.not.i.i.i.i259 = icmp eq i64 %i.jt, -1
  br i1 %.not.i.i.i.i259, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_10filter_map9FilterMapINtB2_7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1X_3vec3VecTIB3x_B2J_EB2J_EEEINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterB3N_ENCNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB4Z_13IterAaltPairs15iter_aalt_pairs00ENCB4U_0ENCB4U_s_0ETB2J_B2J_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB53_.exit.thread.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.experimental.noalias.scope.decl(metadata !879)
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  call void @llvm.experimental.noalias.scope.decl(metadata !883)
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !885
  store ptr %.sroa.4305.0..sroa_idx, ptr %i.c, align 8, !noalias !886
  %i.ju = load ptr, ptr %i.bl, align 8, !alias.scope !887, !noalias !888, !noundef !5
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.jv = invoke i48 @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EB1V_EENCNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB2Y_13IterAaltPairs15iter_aalt_pairs00ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB5w_8find_map5checkTB1V_RB1n_ETB1V_B1V_EQNCB2T_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6Q_EEB32_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc274 unwind label %.loopexit.split-lp343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc274:                                        ; preds = %bb.cj
  %i.jw = trunc i48 %i.jv to i1
  br i1 %i.jw, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtBa_7flatten7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1E_3vec3VecTIB3e_B2q_EB2q_EEEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterB3u_ENCNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB4G_13IterAaltPairs15iter_aalt_pairs00ENCB4B_0ENCB4B_s_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB4K_.exit.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc274
  %.pre.i.i.i.i = load i64, ptr %i.d, align 8, !range !14, !alias.scope !889, !noalias !888
  br label %bb.ck

bb.ck:                                            ; preds = %._crit_edge.i.i.i.i, %bb.ci
  %i.jx = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.jt, %bb.ci ]
  store ptr null, ptr %i.bl, align 8, !alias.scope !887, !noalias !888
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jx, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1o_3vec3VecTIB2Y_B2a_EB2a_EEENCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB3D_13IterAaltPairs15iter_aalt_pairs0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB6P_13FlattenCompatppE13iter_try_fold7flattenIB10_INtNtNtBc_5slice4iter4IterB3e_ENCNCB3y_00EuINtNtNtBc_3ops12control_flow11ControlFlowTB2a_B2a_EENCINvNvXsi_B6P_B72_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB7O_uB8A_NCINvNvB9J_8find_map5checkTB2a_RB3e_EB9f_QNCB3y_s_0E0E0E0B8A_EB3H_.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1o_3vec3VecTIB2Y_B2a_EB2a_EEENCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB3D_13IterAaltPairs15iter_aalt_pairs0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB6P_13FlattenCompatppE13iter_try_fold7flattenIB10_INtNtNtBc_5slice4iter4IterB3e_ENCNCB3y_00EuINtNtNtBc_3ops12control_flow11ControlFlowTB2a_B2a_EENCINvNvXsi_B6P_B72_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB7O_uB8A_NCINvNvB9J_8find_map5checkTB2a_RB3e_EB9f_QNCB3y_s_0E0E0E0B8A_EB3H_.exit.i.i.i.i.i.i.i.i.i.i

_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1o_3vec3VecTIB2Y_B2a_EB2a_EEENCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB3D_13IterAaltPairs15iter_aalt_pairs0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB6P_13FlattenCompatppE13iter_try_fold7flattenIB10_INtNtNtBc_5slice4iter4IterB3e_ENCNCB3y_00EuINtNtNtBc_3ops12control_flow11ControlFlowTB2a_B2a_EENCINvNvXsi_B6P_B72_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB7O_uB8A_NCINvNvB9J_8find_map5checkTB2a_RB3e_EB9f_QNCB3y_s_0E0E0E0B8A_EB3H_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ck
  %i.jy = invoke i48 @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB16_3vec3VecTIB2G_B1S_EB1S_EEENCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB3l_13IterAaltPairs15iter_aalt_pairs0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB6L_13FlattenCompatppE13iter_try_fold7flattenIBO_INtNtNtBc_5slice4iter4IterB2W_ENCNCB3g_00EuINtNtNtBc_3ops12control_flow11ControlFlowTB1S_B1S_EENCINvNvXsi_B6L_B6Y_B5S_8try_fold7flattenB7K_uB8v_NCINvNvB5S_8find_map5checkTB1S_RB2W_EB9a_QNCB3g_s_0E0E0E0B8v_EB3p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.d, ptr noundef nonnull align 8 %i.c, ptr noundef nonnull align 8 %i.bl)
          to label %.noexc275 unwind label %.loopexit.split-lp343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc275:                                        ; preds = %_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1o_3vec3VecTIB2Y_B2a_EB2a_EEENCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB3D_13IterAaltPairs15iter_aalt_pairs0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB6P_13FlattenCompatppE13iter_try_fold7flattenIB10_INtNtNtBc_5slice4iter4IterB3e_ENCNCB3y_00EuINtNtNtBc_3ops12control_flow11ControlFlowTB2a_B2a_EENCINvNvXsi_B6P_B72_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB7O_uB8A_NCINvNvB9J_8find_map5checkTB2a_RB3e_EB9f_QNCB3y_s_0E0E0E0B8A_EB3H_.exit.i.i.i.i.i.i.i.i.i.i
  %i.jz = and i48 %i.jy, 1
  %.not61.i.i.i.i.i.i.i.i.i.i = icmp eq i48 %i.jz, 0
  br i1 %.not61.i.i.i.i.i.i.i.i.i.i, label %_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1o_3vec3VecTIB2Y_B2a_EB2a_EEENCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB3D_13IterAaltPairs15iter_aalt_pairs0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB6P_13FlattenCompatppE13iter_try_fold7flattenIB10_INtNtNtBc_5slice4iter4IterB3e_ENCNCB3y_00EuINtNtNtBc_3ops12control_flow11ControlFlowTB2a_B2a_EENCINvNvXsi_B6P_B72_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB7O_uB8A_NCINvNvB9J_8find_map5checkTB2a_RB3e_EB9f_QNCB3y_s_0E0E0E0B8A_EB3H_.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtBa_7flatten7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1E_3vec3VecTIB3e_B2q_EB2q_EEEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterB3u_ENCNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB4G_13IterAaltPairs15iter_aalt_pairs00ENCB4B_0ENCB4B_s_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB4K_.exit.i.i.i.i

_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1o_3vec3VecTIB2Y_B2a_EB2a_EEENCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB3D_13IterAaltPairs15iter_aalt_pairs0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB6P_13FlattenCompatppE13iter_try_fold7flattenIB10_INtNtNtBc_5slice4iter4IterB3e_ENCNCB3y_00EuINtNtNtBc_3ops12control_flow11ControlFlowTB2a_B2a_EENCINvNvXsi_B6P_B72_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB7O_uB8A_NCINvNvB9J_8find_map5checkTB2a_RB3e_EB9f_QNCB3y_s_0E0E0E0B8A_EB3H_.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc275, %bb.ck
  store ptr null, ptr %i.bl, align 8, !alias.scope !887, !noalias !888
  %i.ka = load ptr, ptr %i.bm, align 8, !alias.scope !887, !noalias !888, !noundef !5
  %.not46.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ka, null
  br i1 %.not46.i.i.i.i.i.i.i.i.i.i, label %.split.thread.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1o_3vec3VecTIB2Y_B2a_EB2a_EEENCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB3D_13IterAaltPairs15iter_aalt_pairs0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB6P_13FlattenCompatppE13iter_try_fold7flattenIB10_INtNtNtBc_5slice4iter4IterB3e_ENCNCB3y_00EuINtNtNtBc_3ops12control_flow11ControlFlowTB2a_B2a_EENCINvNvXsi_B6P_B72_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB7O_uB8A_NCINvNvB9J_8find_map5checkTB2a_RB3e_EB9f_QNCB3y_s_0E0E0E0B8A_EB3H_.exit.thread.i.i.i.i.i.i.i.i.i.i
  %i.kb = invoke i48 @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EB1V_EENCNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB2Y_13IterAaltPairs15iter_aalt_pairs00ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB5w_8find_map5checkTB1V_RB1n_ETB1V_B1V_EQNCB2T_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6Q_EEB32_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc276 unwind label %.loopexit.split-lp343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc276:                                        ; preds = %bb.cl
  %i.kc = trunc i48 %i.kb to i1
  br i1 %i.kc, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtBa_7flatten7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1E_3vec3VecTIB3e_B2q_EB2q_EEEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterB3u_ENCNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB4G_13IterAaltPairs15iter_aalt_pairs00ENCB4B_0ENCB4B_s_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB4K_.exit.i.i.i.i, label %.split.thread.i.i.i

.split.thread.i.i.i:                              ; preds = %.noexc276, %_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1o_3vec3VecTIB2Y_B2a_EB2a_EEENCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB3D_13IterAaltPairs15iter_aalt_pairs0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB6P_13FlattenCompatppE13iter_try_fold7flattenIB10_INtNtNtBc_5slice4iter4IterB3e_ENCNCB3y_00EuINtNtNtBc_3ops12control_flow11ControlFlowTB2a_B2a_EENCINvNvXsi_B6P_B72_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB7O_uB8A_NCINvNvB9J_8find_map5checkTB2a_RB3e_EB9f_QNCB3y_s_0E0E0E0B8A_EB3H_.exit.thread.i.i.i.i.i.i.i.i.i.i
  store ptr null, ptr %i.bm, align 8, !alias.scope !887, !noalias !888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !885
  store i64 -1, ptr %i.d, align 8, !alias.scope !877, !noalias !873
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_10filter_map9FilterMapINtB2_7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1X_3vec3VecTIB3x_B2J_EB2J_EEEINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterB3N_ENCNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB4Z_13IterAaltPairs15iter_aalt_pairs00ENCB4U_0ENCB4U_s_0ETB2J_B2J_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB53_.exit.thread.i.i.i

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtBa_7flatten7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1E_3vec3VecTIB3e_B2q_EB2q_EEEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterB3u_ENCNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB4G_13IterAaltPairs15iter_aalt_pairs00ENCB4B_0ENCB4B_s_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB4K_.exit.i.i.i.i: ; preds = %.noexc276, %.noexc275, %.noexc274
  %.sroa.0.0.i.i.i.i.i.i.in.i.i.i.i = phi i48 [ %i.jv, %.noexc274 ], [ %i.kb, %.noexc276 ], [ %i.jy, %.noexc275 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !885
  %.sroa.05.0.extract.trunc.mask.i.i.i.i260 = and i48 %.sroa.0.0.i.i.i.i.i.i.in.i.i.i.i, 1
  %.not6.not.i.i.i.i = icmp eq i48 %.sroa.05.0.extract.trunc.mask.i.i.i.i260, 0
  br i1 %.not6.not.i.i.i.i, label %.split.i.i.i, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderEINtNtB7_10filter_map9FilterMapIBR_INtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB3q_3vec3VecTIB50_B4c_EB4c_EEEINtNtB7_3map3MapIB15_B5g_ENCNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsB1u_NtB67_13IterAaltPairs15iter_aalt_pairs00ENCB62_0ENCB62_s_0ENCNvMNtB69_8featuresNtB7S_11AllFeatures13finalize_aalts5_0ENtNtNtB9_6traits8iterator8Iterator4nextB6b_.exit.thread.i

.split.i.i.i:                                     ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtBa_7flatten7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1E_3vec3VecTIB3e_B2q_EB2q_EEEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterB3u_ENCNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB4G_13IterAaltPairs15iter_aalt_pairs00ENCB4B_0ENCB4B_s_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB4K_.exit.i.i.i.i
  store i64 -1, ptr %i.d, align 8, !alias.scope !877, !noalias !873
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderEINtNtB7_10filter_map9FilterMapIBR_INtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB3q_3vec3VecTIB50_B4c_EB4c_EEEINtNtB7_3map3MapIB15_B5g_ENCNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsB1u_NtB67_13IterAaltPairs15iter_aalt_pairs00ENCB62_0ENCB62_s_0ENCNvMNtB69_8featuresNtB7S_11AllFeatures13finalize_aalts5_0ENtNtNtB9_6traits8iterator8Iterator4nextB6b_.exit.thread.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_10filter_map9FilterMapINtB2_7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1X_3vec3VecTIB3x_B2J_EB2J_EEEINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterB3N_ENCNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB4Z_13IterAaltPairs15iter_aalt_pairs00ENCB4U_0ENCB4U_s_0ETB2J_B2J_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB53_.exit.thread.i.i.i: ; preds = %.split.thread.i.i.i, %bb.ch
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %i.kd = load ptr, ptr %.sroa.5307.0..sroa_idx, align 8, !alias.scope !891, !noalias !892, !noundef !5 ; 6 uses
  %.not.i5.i.i.i267 = icmp eq ptr %i.kd, null
  br i1 %.not.i5.i.i.i267, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Y_11AllFeatures13finalize_aalts5_0EEINtB5_8FuseImplBY_E4nextB32_.exit.thread.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_10filter_map9FilterMapINtB2_7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1X_3vec3VecTIB3x_B2J_EB2J_EEEINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterB3N_ENCNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB4Z_13IterAaltPairs15iter_aalt_pairs00ENCB4U_0ENCB4U_s_0ETB2J_B2J_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB53_.exit.thread.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  %i.ke = load ptr, ptr %.sroa.6308.0..sroa_idx, align 8, !alias.scope !894, !noalias !895, !nonnull !5, !noundef !5
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Y_11AllFeatures13finalize_aalts5_0EEINtB5_8FuseImplBY_E4nextB32_.exit.thread.i.i.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Y_11AllFeatures13finalize_aalts5_0EEINtB5_8FuseImplBY_E4nextB32_.exit.i.i.i

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Y_11AllFeatures13finalize_aalts5_0EEINtB5_8FuseImplBY_E4nextB32_.exit.i.i.i: ; preds = %bb.cm
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  store ptr %i.kg, ptr %.sroa.5307.0..sroa_idx, align 8, !alias.scope !894, !noalias !895
  %i.kh = load ptr, ptr %i.kd, align 8, !alias.scope !896, !noalias !897, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i268 = icmp ne ptr %i.kh, null  ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kj = load i64, ptr %i.ki, align 8, !alias.scope !896, !noalias !897
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kl = load i64, ptr %i.kk, align 8, !alias.scope !896, !noalias !897
  %.sroa.0.sroa.5.sroa.6.0.i.i.i.i.i.i269 = select i1 %.not.i.i.i.i.i.i268, i64 %i.kj, i64 undef ; 2 uses
  %.sroa.0.sroa.0.0.i.i.i.i.i.i270 = zext i1 %.not.i.i.i.i.i.i268 to i64 ; 3 uses
  %.sroa.5.0.i.i.i.i.i.i271 = select i1 %.not.i.i.i.i.i.i268, i64 %i.kl, i64 0
  store i64 %.sroa.0.sroa.0.0.i.i.i.i.i.i270, ptr %i.d, align 8, !alias.scope !898, !noalias !873
  store ptr null, ptr %.sroa.4304.0..sroa_idx, align 8, !alias.scope !898, !noalias !873
  store ptr %i.kh, ptr %.sroa.559.0..sroa_idx.i.i.i, align 8, !alias.scope !898, !noalias !873
  store i64 %.sroa.0.sroa.5.sroa.6.0.i.i.i.i.i.i269, ptr %.sroa.660.0..sroa_idx.i.i.i, align 8, !alias.scope !898, !noalias !873
  store i64 %.sroa.0.sroa.0.0.i.i.i.i.i.i270, ptr %.sroa.761.0..sroa_idx.i.i.i, align 8, !alias.scope !898, !noalias !873
  store ptr null, ptr %.sroa.862.0..sroa_idx.i.i.i, align 8, !alias.scope !898, !noalias !873
  store ptr %i.kh, ptr %.sroa.963.0..sroa_idx.i.i.i, align 8, !alias.scope !898, !noalias !873
  store i64 %.sroa.0.sroa.5.sroa.6.0.i.i.i.i.i.i269, ptr %.sroa.1064.0..sroa_idx.i.i.i, align 8, !alias.scope !898, !noalias !873
  store i64 %.sroa.5.0.i.i.i.i.i.i271, ptr %.sroa.1165.0..sroa_idx.i.i.i, align 8, !alias.scope !898, !noalias !873
  store ptr null, ptr %i.bl, align 8, !alias.scope !898, !noalias !873
  store ptr null, ptr %i.bm, align 8, !alias.scope !898, !noalias !873
  br label %bb.ch

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderEINtNtB7_10filter_map9FilterMapIBR_INtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB3q_3vec3VecTIB50_B4c_EB4c_EEEINtNtB7_3map3MapIB15_B5g_ENCNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsB1u_NtB67_13IterAaltPairs15iter_aalt_pairs00ENCB62_0ENCB62_s_0ENCNvMNtB69_8featuresNtB7S_11AllFeatures13finalize_aalts5_0ENtNtNtB9_6traits8iterator8Iterator4nextB6b_.exit.thread.i: ; preds = %.split.i.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtBa_7flatten7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1E_3vec3VecTIB3e_B2q_EB2q_EEEINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterB3u_ENCNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB4G_13IterAaltPairs15iter_aalt_pairs00ENCB4B_0ENCB4B_s_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB4K_.exit.i.i.i.i
  %extract = lshr i48 %.sroa.0.0.i.i.i.i.i.i.in.i.i.i.i, 16
  %extract.t = trunc i48 %extract to i16
  %extract479 = lshr i48 %.sroa.0.0.i.i.i.i.i.i.in.i.i.i.i, 32
  %extract.t480 = trunc nuw i48 %extract479 to i16
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderEINtNtB7_10filter_map9FilterMapIBR_INtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB3q_3vec3VecTIB50_B4c_EB4c_EEEINtNtB7_3map3MapIB15_B5g_ENCNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsB1u_NtB67_13IterAaltPairs15iter_aalt_pairs00ENCB62_0ENCB62_s_0ENCNvMNtB69_8featuresNtB7S_11AllFeatures13finalize_aalts5_0ENtNtNtB9_6traits8iterator8Iterator4nextB6b_.exit.thread20.i

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Y_11AllFeatures13finalize_aalts5_0EEINtB5_8FuseImplBY_E4nextB32_.exit.thread.i.i.i: ; preds = %bb.cm, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_10filter_map9FilterMapINtB2_7FlatMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtB1X_3vec3VecTIB3x_B2J_EB2J_EEEINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterB3N_ENCNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB4Z_13IterAaltPairs15iter_aalt_pairs00ENCB4U_0ENCB4U_s_0ETB2J_B2J_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB53_.exit.thread.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.km = load i64, ptr %.sroa.4305.0..sroa_idx, align 8, !range !825, !alias.scope !900, !noalias !873, !noundef !5 ; 2 uses
  %.not.i6.i.i.i272 = icmp eq i64 %i.km, -1
  br i1 %.not.i6.i.i.i272, label %.loopexit372, label %bb.cn

bb.cn:                                            ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderENCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8featuresNtB2Y_11AllFeatures13finalize_aalts5_0EEINtB5_8FuseImplBY_E4nextB32_.exit.thread.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !901)
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  call void @llvm.experimental.noalias.scope.decl(metadata !904)
  call void @llvm.experimental.noalias.scope.decl(metadata !905)
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !907
  store ptr %.sroa.5307.0..sroa_idx, ptr %i.b, align 8, !noalias !908
  %i.kn = load ptr, ptr %i.bn, align 8, !alias.scope !909, !noalias !910, !noundef !5
  %.not.i.i.i.i.i.i.i7.i.i.i = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i.i.i.i.i7.i.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ko = invoke i48 @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EB1V_EENCNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtB2Y_13IterAaltPairs15iter_aalt_pairs00ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB5w_8find_map5checkTB1V_RB1n_ETB1V_B1V_EQNCB2T_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6Q_EEB32_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
end_hunk_0
