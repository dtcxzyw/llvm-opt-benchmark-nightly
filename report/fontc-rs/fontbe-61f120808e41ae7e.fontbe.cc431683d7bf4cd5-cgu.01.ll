Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.01?download=true
inline.NumInlined: 5575
inline.NumDeleted: 3074
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed20GlyphsAppPredicateOpNtCs9NoVXegZYB5_8smol_str7SmolStrEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB31_10filter_map9FilterMapNtBZ_9ChildIterNvYNtBX_24GlyphsAppPredicateClauseNtBX_7AstNode4castENCINvNtNtNtB11_7compile20glyphsapp_syntax_ext9predicate18evaluate_predicateNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16IB3L_INtNtNtNtB6_11collections5btree3map4IterB6y_NtNtB11_6common10GlyphIdentENCNvMNtB5u_11compile_ctxINtB8F_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB9n_16FeaVariationInfoE24resolve_glyphs_predicate0EE0EE9from_iterB9p_:bb.a
          cleanup
  br label %bb.k

bb.n:                                             ; preds = %bb.j
  %i.z = load i64, ptr %i.b, align 8, !range !44, !noalias !8171, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.z, -1
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !8171
  %i.aa = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !8173, !noalias !8165, !noundef !4 ; 5 uses
  %i.ab = icmp ult i64 %i.aa, 144115188075855872
  call void @llvm.assume(i1 %i.ab)
  %i.ac = load i64, ptr %i.g, align 8, !range !10, !alias.scope !8173, !noalias !8165, !noundef !4
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.s, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed20GlyphsAppPredicateOpNtCs9NoVXegZYB5_8smol_str7SmolStrEE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8171
  %i.ae = load i64, ptr %i.d, align 8, !range !17, !alias.scope !8174, !noalias !8165, !noundef !4
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed20GlyphsAppPredicateOpNtCs9NoVXegZYB5_8smol_str7SmolStrEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2W_10filter_map9FilterMapNtBW_9ChildIterNvYNtBU_24GlyphsAppPredicateClauseNtBU_7AstNode4castENCINvNtNtNtBY_7compile20glyphsapp_syntax_ext9predicate18evaluate_predicateNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16IB3G_INtNtNtNtB6_11collections5btree3map4IterB6s_NtNtBY_6common10GlyphIdentENCNvMNtB5p_11compile_ctxINtB8y_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB9g_16FeaVariationInfoE24resolve_glyphs_predicate0EE0EE11spec_extendB9i_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.d)
          to label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed20GlyphsAppPredicateOpNtCs9NoVXegZYB5_8smol_str7SmolStrEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2W_10filter_map9FilterMapNtBW_9ChildIterNvYNtBU_24GlyphsAppPredicateClauseNtBU_7AstNode4castENCINvNtNtNtBY_7compile20glyphsapp_syntax_ext9predicate18evaluate_predicateNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16IB3G_INtNtNtNtB6_11collections5btree3map4IterB6s_NtNtBY_6common10GlyphIdentENCNvMNtB5p_11compile_ctxINtB8y_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB9g_16FeaVariationInfoE24resolve_glyphs_predicate0EE0EE11spec_extendB9i_.exit.i unwind label %bb.u, !noalias !8163

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed20GlyphsAppPredicateOpNtCs9NoVXegZYB5_8smol_str7SmolStrEE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i: ; preds = %bb.s, %bb.o
  %i.ag = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8173, !noalias !8165, !nonnull !4, !noundef !4
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !8163
  %i.ai = add nuw nsw i64 %i.aa, 1
  store i64 %i.ai, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !8173, !noalias !8165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8171
  br label %bb.j

bb.r:                                             ; preds = %bb.s
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed20GlyphsAppPredicateOpNtCs9NoVXegZYB5_8smol_str7SmolStrEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a) #26
          to label %bb.k unwind label %bb.t, !noalias !8163

bb.s:                                             ; preds = %bb.o
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.aa, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 64)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed20GlyphsAppPredicateOpNtCs9NoVXegZYB5_8smol_str7SmolStrEE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i unwind label %bb.r, !noalias !8163

bb.t:                                             ; preds = %bb.r, %bb.l
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !8163
  unreachable

bb.u:                                             ; preds = %bb.q
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.u, %bb.l, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.al, %bb.u ], [ %.pn.i.i.i, %bb.l ], [ %.pn.i.i.i, %bb.k ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed20GlyphsAppPredicateOpNtCs9NoVXegZYB5_8smol_str7SmolStrEEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNvYNtNtB1F_5typed24GlyphsAppPredicateClauseNtB2t_7AstNode4castENCINvNtNtNtB1H_7compile20glyphsapp_syntax_ext9predicate18evaluate_predicateNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16IB1a_INtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterB4C_NtNtB1H_6common10GlyphIdentENCNvMNtB3y_11compile_ctxINtB70_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB7I_16FeaVariationInfoE24resolve_glyphs_predicate0EE0EEB7K_.exit7.i unwind label %bb.v, !noalias !8163

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed20GlyphsAppPredicateOpNtCs9NoVXegZYB5_8smol_str7SmolStrEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2W_10filter_map9FilterMapNtBW_9ChildIterNvYNtBU_24GlyphsAppPredicateClauseNtBU_7AstNode4castENCINvNtNtNtBY_7compile20glyphsapp_syntax_ext9predicate18evaluate_predicateNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16IB3G_INtNtNtNtB6_11collections5btree3map4IterB6s_NtNtBY_6common10GlyphIdentENCNvMNtB5p_11compile_ctxINtB8y_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB9g_16FeaVariationInfoE24resolve_glyphs_predicate0EE0EE11spec_extendB9i_.exit.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !8164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8165
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed20GlyphsAppPredicateOpNtCs9NoVXegZYB5_8smol_str7SmolStrEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB3f_10filter_map9FilterMapNtB16_9ChildIterNvYNtB14_24GlyphsAppPredicateClauseNtB14_7AstNode4castENCINvNtNtNtB18_7compile20glyphsapp_syntax_ext9predicate18evaluate_predicateNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16IB3Z_INtNtNtNtB6_11collections5btree3map4IterB6P_NtNtB18_6common10GlyphIdentENCNvMNtB5L_11compile_ctxINtB8W_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB9E_16FeaVariationInfoE24resolve_glyphs_predicate0EE0EE9from_iterB9G_.exit

bb.v:                                             ; preds = %bb.x, %.body.i, %bb.f
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !8163
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNvYNtNtB1F_5typed24GlyphsAppPredicateClauseNtB2t_7AstNode4castENCINvNtNtNtB1H_7compile20glyphsapp_syntax_ext9predicate18evaluate_predicateNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16IB1a_INtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterB4C_NtNtB1H_6common10GlyphIdentENCNvMNtB3y_11compile_ctxINtB70_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB7I_16FeaVariationInfoE24resolve_glyphs_predicate0EE0EEB7K_.exit7.i: ; preds = %bb.x, %bb.w, %.body.i
  %.pn10.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.ph.i, %bb.x ], [ %.pn.ph.i, %bb.w ]
  resume { ptr, i32 } %.pn10.i

bb.w:                                             ; preds = %bb.f, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.n, %bb.f ] ; 2 uses
  %i.an = load i64, ptr %1, align 8, !range !17, !alias.scope !8175, !noundef !4
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNvYNtNtB1F_5typed24GlyphsAppPredicateClauseNtB2t_7AstNode4castENCINvNtNtNtB1H_7compile20glyphsapp_syntax_ext9predicate18evaluate_predicateNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16IB1a_INtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterB4C_NtNtB1H_6common10GlyphIdentENCNvMNtB3y_11compile_ctxINtB70_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB7I_16FeaVariationInfoE24resolve_glyphs_predicate0EE0EEB7K_.exit7.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNvYNtNtB1F_5typed24GlyphsAppPredicateClauseNtB2t_7AstNode4castENCINvNtNtNtB1H_7compile20glyphsapp_syntax_ext9predicate18evaluate_predicateNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16IB1a_INtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterB4C_NtNtB1H_6common10GlyphIdentENCNvMNtB3y_11compile_ctxINtB70_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB7I_16FeaVariationInfoE24resolve_glyphs_predicate0EE0EEB7K_.exit7.i unwind label %bb.v, !noalias !8163

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed20GlyphsAppPredicateOpNtCs9NoVXegZYB5_8smol_str7SmolStrEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB3f_10filter_map9FilterMapNtB16_9ChildIterNvYNtB14_24GlyphsAppPredicateClauseNtB14_7AstNode4castENCINvNtNtNtB18_7compile20glyphsapp_syntax_ext9predicate18evaluate_predicateNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16IB3Z_INtNtNtNtB6_11collections5btree3map4IterB6P_NtNtB18_6common10GlyphIdentENCNvMNtB5L_11compile_ctxINtB8W_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB9E_16FeaVariationInfoE24resolve_glyphs_predicate0EE0EE9from_iterB9G_.exit: ; preds = %bb.d, %bb.e, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed20GlyphsAppPredicateOpNtCs9NoVXegZYB5_8smol_str7SmolStrEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2W_10filter_map9FilterMapNtBW_9ChildIterNvYNtBU_24GlyphsAppPredicateClauseNtBU_7AstNode4castENCINvNtNtNtBY_7compile20glyphsapp_syntax_ext9predicate18evaluate_predicateNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16IB3G_INtNtNtNtB6_11collections5btree3map4IterB6s_NtNtBY_6common10GlyphIdentENCNvMNtB5p_11compile_ctxINtB8y_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB9g_16FeaVariationInfoE24resolve_glyphs_predicate0EE0EE11spec_extendB9i_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyIBL_jEEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtB2o_7flatten7FlattenINtNtB2s_6option8IntoIterINtNtNtNtB6_11collections5btree3map8BTreeMapBV_B1O_EEEB3b_EE9from_iterCshxhuDJfZv4T_6fontbe(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(352) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.7.i = alloca i64, align 8                ; 4 uses
  %.sroa.11.i = alloca i64, align 8               ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %i.f = alloca [352 x i8], align 8               ; 20 uses
  %.sroa.7 = alloca i64, align 8                  ; 4 uses
  %.sroa.11 = alloca i64, align 8                 ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8230)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8231
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8234)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8235
  %i.j = load i64, ptr %1, align 8, !range !14, !alias.scope !8236, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.j, -1
  br i1 %.not.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1Z_3vec3VecjEEEETB2P_B3I_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1) #23
          to label %.noexc.i unwind label %bb.e, !noalias !8229

.noexc.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !17, !noalias !8235, !noundef !4 ; 2 uses
  %.not6.i.i.i = icmp eq i64 %i.l, -1
  br i1 %.not6.i.i.i, label %bb.c, label %.thread24.i

bb.c:                                             ; preds = %.noexc.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBE_8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB21_3vec3VecjEEEEEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1)
          to label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1Z_3vec3VecjEEEETB2P_B3I_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread8.i.i unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtCsgCecv3eZDcN_5alloc3vec3VecjEEEECshxhuDJfZv4T_6fontbe.exit.i.i.i, !noalias !8237

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1Z_3vec3VecjEEEETB2P_B3I_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread8.i.i: ; preds = %bb.c
  store i64 -1, ptr %1, align 8, !alias.scope !8236
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1Z_3vec3VecjEEEETB2P_B3I_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtCsgCecv3eZDcN_5alloc3vec3VecjEEEECshxhuDJfZv4T_6fontbe.exit.i.i.i: ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %1, align 8, !alias.scope !8236
  br label %bb.ae

.thread24.i:                                      ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !8238
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i64 16, i1 false), !noalias !8238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8235
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8240)
  %.sroa.4.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx3.i.i, align 8, !alias.scope !8241, !noalias !8231
  br label %bb.g

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1Z_3vec3VecjEEEETB2P_B3I_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1Z_3vec3VecjEEEETB2P_B3I_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread8.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8235
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !range !14, !alias.scope !8242, !noalias !8243, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.o, -1
  br i1 %.not.i.i.i.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1Z_3vec3VecjEEEETB2P_B3I_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i
  invoke fastcc void @_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.n) #23
          to label %bb.f unwind label %bb.e, !noalias !8229

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.f:                                             ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !range !17, !noalias !8231
  %i.q = icmp eq i64 %.pre.i, -1
  br i1 %i.q, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread24.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !8231
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8245)
  %i.r = load i64, ptr %1, align 8, !range !14, !alias.scope !8245, !noalias !8229, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.r, -1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.t = load i64, ptr %i.s, align 8, !range !14, !alias.scope !8245, !noalias !8229, !noundef !4 ; 3 uses
  %.not7.i = icmp eq i64 %i.t, -1                 ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i64, ptr %i.u, align 8, !range !13, !alias.scope !8245, !noalias !8229, !noundef !4
  %.not.i.i28.i = icmp eq i64 %i.v, 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val.i.i.i29.i = load i64, ptr %i.w, align 8, !alias.scope !8245, !noalias !8229
  %.sroa.7.0.i.i30.i = select i1 %.not.i.i28.i, i64 0, i64 %.val.i.i.i29.i ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.y = load i64, ptr %i.x, align 8, !range !13, !alias.scope !8245, !noalias !8229, !noundef !4
  %.not53.i.i31.i = icmp eq i64 %i.y, 2
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val.i61.i.i32.i = load i64, ptr %i.z, align 8, !alias.scope !8245, !noalias !8229
  %.sroa.8.0.i.i33.i = select i1 %.not53.i.i31.i, i64 0, i64 %.val.i61.i.i32.i ; 4 uses
  %i.aa = icmp ne i64 %i.r, 1                     ; 2 uses
  br i1 %.not7.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit36.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit18.i

bb.i:                                             ; preds = %bb.g
  br i1 %.not7.i, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1U_3vec3VecjEEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit.i

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit.i: ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !alias.scope !8246, !noalias !8229, !noundef !4
  %.not.i.i.i2 = icmp eq i64 %i.ac, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !8246, !noalias !8229
  %.sroa.7.0.i.i.i = select i1 %.not.i.i.i2, i64 0, i64 %.val.i.i.i.i ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.af = load i64, ptr %i.ae, align 8, !range !13, !alias.scope !8246, !noalias !8229, !noundef !4
  %.not53.i.i.i = icmp eq i64 %i.af, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 344
  %.val.i61.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !8246, !noalias !8229
  %.sroa.8.0.i.i.i = select i1 %.not53.i.i.i, i64 0, i64 %.val.i61.i.i.i ; 2 uses
  %i.ah = icmp ne i64 %i.t, 1
  %i.ai = xor i64 %.sroa.7.0.i.i.i, -1
  %i.aj = icmp ule i64 %.sroa.8.0.i.i.i, %i.ai
  %narrow13 = select i1 %i.ah, i1 %i.aj, i1 false
  %.56.sink.i.i.i = zext i1 %narrow13 to i64
  %i.ak = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i, i64 %.sroa.8.0.i.i.i)
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1U_3vec3VecjEEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit18.i: ; preds = %bb.h
  %i.al = add i64 %.sroa.8.0.i.i33.i, %.sroa.7.0.i.i30.i ; 2 uses
  %i.am = icmp uge i64 %i.al, %.sroa.7.0.i.i30.i
  %narrow.i1 = select i1 %i.aa, i1 %i.am, i1 false
  %2 = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i30.i, i64 %.sroa.8.0.i.i33.i)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ao = load i64, ptr %i.an, align 8, !range !13, !alias.scope !8247, !noalias !8229, !noundef !4
  %.not.i.i19.i = icmp eq i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val.i.i.i20.i = load i64, ptr %i.ap, align 8, !alias.scope !8247, !noalias !8229
  %.sroa.7.0.i.i21.i = select i1 %.not.i.i19.i, i64 0, i64 %.val.i.i.i20.i ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.ar = load i64, ptr %i.aq, align 8, !range !13, !alias.scope !8247, !noalias !8229, !noundef !4
  %.not53.i.i22.i = icmp eq i64 %i.ar, 2
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 344
  %.val.i61.i.i23.i = load i64, ptr %i.as, align 8, !alias.scope !8247, !noalias !8229
  %.sroa.8.0.i.i24.i = select i1 %.not53.i.i22.i, i64 0, i64 %.val.i61.i.i23.i ; 2 uses
  %i.at = icmp ne i64 %i.t, 1
  %i.au = add i64 %.sroa.8.0.i.i24.i, %.sroa.7.0.i.i21.i ; 2 uses
  %i.av = icmp uge i64 %i.au, %.sroa.7.0.i.i21.i
  %i.aw = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i21.i, i64 %.sroa.8.0.i.i24.i)
  %i.ax = tail call i64 @llvm.uadd.sat.i64(i64 %2, i64 %i.aw)
  %i.ay = and i1 %i.at, %narrow.i1
  %or.cond.i = select i1 %i.ay, i1 %i.av, i1 false
  %i.az = add i64 %i.au, %i.al
  %.sroa.46.0.i = select i1 %or.cond.i, i64 %i.az, i64 undef
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1U_3vec3VecjEEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit36.i: ; preds = %bb.h
  %i.ba = xor i64 %.sroa.7.0.i.i30.i, -1
  %i.bb = icmp ule i64 %.sroa.8.0.i.i33.i, %i.ba
  %narrow = select i1 %i.aa, i1 %i.bb, i1 false
  %.56.sink.i.i35.i = zext i1 %narrow to i64
  %3 = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i30.i, i64 %.sroa.8.0.i.i33.i)
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1U_3vec3VecjEEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1U_3vec3VecjEEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit18.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit36.i
  %.sroa.0.0 = phi i64 [ %i.ax, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit18.i ], [ %i.ak, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit.i ], [ %3, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit36.i ], [ 0, %bb.i ]
  %.sink44.i.sroa.phi = phi ptr [ %.sroa.11, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit18.i ], [ %.sroa.7, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit.i ], [ %.sroa.7, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit36.i ], [ %.sroa.11, %bb.i ]
  %.sroa.46.0.sink.i = phi i64 [ %.sroa.46.0.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit18.i ], [ %.56.sink.i.i.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit.i ], [ %.56.sink.i.i35.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit36.i ], [ 0, %bb.i ]
  store i64 %.sroa.46.0.sink.i, ptr %.sink44.i.sroa.phi, align 8, !alias.scope !8244, !noalias !8229
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %i.bc = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0, i64 1)
  %i.bd = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8231
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.bd, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
          to label %.noexc6.i unwind label %bb.l, !noalias !8229

.thread.i:                                        ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1Z_3vec3VecjEEEETB2P_B3I_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i, %bb.f
  store i64 0, ptr %0, align 8, !alias.scope !8229
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.be, align 8, !alias.scope !8229
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bf, align 8, !alias.scope !8229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8231
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBE_8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB21_3vec3VecjEEEEEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_7flatten7FlattenINtNtB4_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB28_3vec3VecjEEEEB1d_EECshxhuDJfZv4T_6fontbe.exit.i unwind label %bb.j, !noalias !8229

bb.j:                                             ; preds = %.thread.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBE_8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB21_3vec3VecjEEEEEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(176) %i.n) #26
          to label %common.resume.i unwind label %bb.k, !noalias !8229

bb.k:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !8229
  unreachable

common.resume.i:                                  ; preds = %bb.ae, %.body8.i, %bb.j
  %common.resume.op.i = phi { ptr, i32 } [ %i.bg, %bb.j ], [ %.pn.ph.i, %bb.ae ], [ %eh.lpad-body9.i, %.body8.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_7flatten7FlattenINtNtB4_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB28_3vec3VecjEEEEB1d_EECshxhuDJfZv4T_6fontbe.exit.i: ; preds = %.thread.i
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBE_8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB21_3vec3VecjEEEEEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(176) %i.n), !noalias !8229
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyIBS_jEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtB2C_7flatten7FlattenINtNtB2G_6option8IntoIterINtNtNtNtB6_11collections5btree3map8BTreeMapB12_B1V_EEEB3p_EE9from_iterCshxhuDJfZv4T_6fontbe.exit

bb.l:                                             ; preds = %bb.m, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1U_3vec3VecjEEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %bb.ae unwind label %bb.ad, !noalias !8229

.noexc6.i:                                        ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1U_3vec3VecjEEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit
  %i.bk = load i64, ptr %i.d, align 8, !range !11, !noalias !8231, !noundef !4
  %i.bl = trunc nuw i64 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !32, !noalias !8231, !noundef !4 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.bl, label %bb.m, label %bb.n, !prof !9

bb.m:                                             ; preds = %.noexc6.i
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !8231
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.bn, i64 %i.bp) #31
          to label %.noexc7.i unwind label %bb.l, !noalias !8229

.noexc7.i:                                        ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %.noexc6.i
  %i.bq = load ptr, ptr %i.bo, align 8, !noalias !8231, !nonnull !4, !noundef !4 ; 2 uses
  %i.br = icmp ule i64 %i.bd, %i.bn
  tail call void @llvm.assume(i1 %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !8229
  store i64 %i.bn, ptr %i.i, align 8, !noalias !8231
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.bq, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !8231
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !8231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.f, ptr noundef nonnull align 8 dereferenceable(352) %1, i64 352, i1 false), !noalias !8229
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8251)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 176 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 208 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 272 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 280 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 344 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyIBv_jEEE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8252
  call void @llvm.experimental.noalias.scope.decl(metadata !8253)
  call void @llvm.experimental.noalias.scope.decl(metadata !8254)
  call void @llvm.experimental.noalias.scope.decl(metadata !8255)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8256
  %i.cc = load i64, ptr %i.f, align 8, !range !14, !alias.scope !8257, !noalias !8231, !noundef !4
  %.not.i.i.i.i.i = icmp eq i64 %i.cc, -1
  br i1 %.not.i.i.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1Z_3vec3VecjEEEETB2P_B3I_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %i.f) #23
          to label %.noexc.i.i.i unwind label %bb.s, !noalias !8229

.noexc.i.i.i:                                     ; preds = %bb.p
  %i.cd = load i64, ptr %i.bs, align 8, !range !17, !noalias !8256, !noundef !4 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i64 %i.cd, -1
  br i1 %.not6.i.i.i.i.i, label %bb.q, label %.thread8.i.i.i

bb.q:                                             ; preds = %.noexc.i.i.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBE_8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB21_3vec3VecjEEEEEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %i.f)
          to label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1Z_3vec3VecjEEEETB2P_B3I_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread8.i.i.i.i unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtCsgCecv3eZDcN_5alloc3vec3VecjEEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i, !noalias !8258

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1Z_3vec3VecjEEEETB2P_B3I_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread8.i.i.i.i: ; preds = %bb.q
  store i64 -1, ptr %i.f, align 8, !alias.scope !8257, !noalias !8231
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1Z_3vec3VecjEEEETB2P_B3I_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtCsgCecv3eZDcN_5alloc3vec3VecjEEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i: ; preds = %bb.q
  %i.ce = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.f, align 8, !alias.scope !8257, !noalias !8231
  br label %.body.i.i.i

.thread8.i.i.i:                                   ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !8259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !8259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8256
  call void @llvm.experimental.noalias.scope.decl(metadata !8260)
  call void @llvm.experimental.noalias.scope.decl(metadata !8261)
  store i64 %i.cd, ptr %.sroa.4.0..sroa_idx3.i.i.i.i, align 8, !alias.scope !8262, !noalias !8252
  br label %bb.u

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1Z_3vec3VecjEEEETB2P_B3I_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1Z_3vec3VecjEEEETB2P_B3I_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread8.i.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8256
  %i.cf = load i64, ptr %i.bt, align 8, !range !14, !alias.scope !8263, !noalias !8264, !noundef !4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cf, -1
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1Z_3vec3VecjEEEETB2P_B3I_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i.i
  invoke fastcc void @_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.bt) #23
          to label %bb.t unwind label %bb.s, !noalias !8229

.body.i.i.i:                                      ; preds = %bb.aa, %bb.s, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtCsgCecv3eZDcN_5alloc3vec3VecjEEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ce, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtCsgCecv3eZDcN_5alloc3vec3VecjEEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i ], [ %i.cg, %bb.s ], [ %i.dq, %bb.aa ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_7flatten7FlattenINtNtB4_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB28_3vec3VecjEEEEB1d_EECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %i.f) #26
          to label %.body8.i unwind label %bb.ab, !noalias !8229

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.t:                                             ; preds = %bb.r
  %.pre.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx3.i.i.i.i, align 8, !range !17, !noalias !8252
  %i.ch = icmp eq i64 %.pre.i.i.i, -1
  br i1 %i.ch, label %.loopexit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread8.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !8252
  %i.ci = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !8265, !noalias !8231, !noundef !4 ; 5 uses
  %i.cj = icmp ult i64 %i.ci, 230584300921369396
  call void @llvm.assume(i1 %i.cj)
  %i.ck = load i64, ptr %i.i, align 8, !range !10, !alias.scope !8265, !noalias !8231, !noundef !4
  %i.cl = icmp eq i64 %i.ci, %i.ck
  br i1 %i.cl, label %bb.x, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyIBv_jEEE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.t, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1Z_3vec3VecjEEEETB2P_B3I_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8252
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBE_8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB21_3vec3VecjEEEEEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %i.f)
          to label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyIBx_jEEE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtB25_7flatten7FlattenINtNtB29_6option8IntoIterINtNtNtNtB8_11collections5btree3map8BTreeMapBH_B1A_EEEB2S_EECshxhuDJfZv4T_6fontbe.exit.i.i unwind label %bb.v, !noalias !8229

bb.v:                                             ; preds = %.loopexit.i.i.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBE_8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB21_3vec3VecjEEEEEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(176) %i.bt) #26
          to label %.body8.i unwind label %bb.w, !noalias !8229

bb.w:                                             ; preds = %bb.v
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !8229
  unreachable

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8266)
  call void @llvm.experimental.noalias.scope.decl(metadata !8267)
  %i.co = load i64, ptr %i.f, align 8, !range !14, !alias.scope !8267, !noalias !8231, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.co, -1
  %i.cp = load i64, ptr %i.bt, align 8, !range !14, !alias.scope !8267, !noalias !8231, !noundef !4 ; 3 uses
  %.not7.i.i = icmp eq i64 %i.cp, -1              ; 2 uses
  br i1 %.not.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = load i64, ptr %i.bu, align 8, !range !13, !alias.scope !8267, !noalias !8231, !noundef !4
  %.not.i.i28.i.i = icmp eq i64 %i.cq, 2
  %.val.i.i.i29.i.i = load i64, ptr %i.bv, align 8, !alias.scope !8267, !noalias !8231
  %.sroa.7.0.i.i30.i.i = select i1 %.not.i.i28.i.i, i64 0, i64 %.val.i.i.i29.i.i ; 5 uses
  %i.cr = load i64, ptr %i.bw, align 8, !range !13, !alias.scope !8267, !noalias !8231, !noundef !4
  %.not53.i.i31.i.i = icmp eq i64 %i.cr, 2
  %.val.i61.i.i32.i.i = load i64, ptr %i.bx, align 8, !alias.scope !8267, !noalias !8231
  %.sroa.8.0.i.i33.i.i = select i1 %.not53.i.i31.i.i, i64 0, i64 %.val.i61.i.i32.i.i ; 4 uses
  %i.cs = icmp ne i64 %i.co, 1                    ; 2 uses
  br i1 %.not7.i.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit36.i.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit18.i.i

bb.z:                                             ; preds = %bb.x
  br i1 %.not7.i.i, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1U_3vec3VecjEEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit.i.i

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit.i.i: ; preds = %bb.z
  %i.ct = load i64, ptr %i.by, align 8, !range !13, !alias.scope !8268, !noalias !8231, !noundef !4
  %.not.i.i.i11.i = icmp eq i64 %i.ct, 2
  %.val.i.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !8268, !noalias !8231
  %.sroa.7.0.i.i.i.i = select i1 %.not.i.i.i11.i, i64 0, i64 %.val.i.i.i.i.i ; 2 uses
  %i.cu = load i64, ptr %i.ca, align 8, !range !13, !alias.scope !8268, !noalias !8231, !noundef !4
  %.not53.i.i.i.i = icmp eq i64 %i.cu, 2
  %.val.i61.i.i.i.i = load i64, ptr %i.cb, align 8, !alias.scope !8268, !noalias !8231
  %.sroa.8.0.i.i.i.i = select i1 %.not53.i.i.i.i, i64 0, i64 %.val.i61.i.i.i.i ; 2 uses
  %i.cv = icmp ne i64 %i.cp, 1
  %i.cw = xor i64 %.sroa.7.0.i.i.i.i, -1
  %i.cx = icmp ule i64 %.sroa.8.0.i.i.i.i, %i.cw
  %narrow26.i = select i1 %i.cv, i1 %i.cx, i1 false
  %.56.sink.i.i.i.i = zext i1 %narrow26.i to i64
  %i.cy = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i, i64 %.sroa.8.0.i.i.i.i)
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1U_3vec3VecjEEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit.i

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit18.i.i: ; preds = %bb.y
  %i.cz = add i64 %.sroa.8.0.i.i33.i.i, %.sroa.7.0.i.i30.i.i ; 2 uses
  %i.da = icmp uge i64 %i.cz, %.sroa.7.0.i.i30.i.i
  %narrow.i.i = select i1 %i.cs, i1 %i.da, i1 false
  %4 = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i30.i.i, i64 %.sroa.8.0.i.i33.i.i)
  %i.db = load i64, ptr %i.by, align 8, !range !13, !alias.scope !8269, !noalias !8231, !noundef !4
  %.not.i.i19.i.i = icmp eq i64 %i.db, 2
  %.val.i.i.i20.i.i = load i64, ptr %i.bz, align 8, !alias.scope !8269, !noalias !8231
  %.sroa.7.0.i.i21.i.i = select i1 %.not.i.i19.i.i, i64 0, i64 %.val.i.i.i20.i.i ; 3 uses
  %i.dc = load i64, ptr %i.ca, align 8, !range !13, !alias.scope !8269, !noalias !8231, !noundef !4
  %.not53.i.i22.i.i = icmp eq i64 %i.dc, 2
  %.val.i61.i.i23.i.i = load i64, ptr %i.cb, align 8, !alias.scope !8269, !noalias !8231
  %.sroa.8.0.i.i24.i.i = select i1 %.not53.i.i22.i.i, i64 0, i64 %.val.i61.i.i23.i.i ; 2 uses
  %i.dd = icmp ne i64 %i.cp, 1
  %i.de = add i64 %.sroa.8.0.i.i24.i.i, %.sroa.7.0.i.i21.i.i ; 2 uses
  %i.df = icmp uge i64 %i.de, %.sroa.7.0.i.i21.i.i
  %i.dg = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i21.i.i, i64 %.sroa.8.0.i.i24.i.i)
  %i.dh = call i64 @llvm.uadd.sat.i64(i64 %4, i64 %i.dg)
  %i.di = and i1 %i.dd, %narrow.i.i
  %or.cond.i.i = select i1 %i.di, i1 %i.df, i1 false
  %i.dj = add i64 %i.de, %i.cz
  %.sroa.46.0.i.i = select i1 %or.cond.i.i, i64 %i.dj, i64 undef
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1U_3vec3VecjEEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit.i

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit36.i.i: ; preds = %bb.y
  %i.dk = xor i64 %.sroa.7.0.i.i30.i.i, -1
  %i.dl = icmp ule i64 %.sroa.8.0.i.i33.i.i, %i.dk
  %narrow.i = select i1 %i.cs, i1 %i.dl, i1 false
  %.56.sink.i.i35.i.i = zext i1 %narrow.i to i64
  %5 = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i30.i.i, i64 %.sroa.8.0.i.i33.i.i)
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1U_3vec3VecjEEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit.i

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1U_3vec3VecjEEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit.i: ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit36.i.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit18.i.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit.i.i, %bb.z
  %.sroa.0.0.i = phi i64 [ %i.dh, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit18.i.i ], [ %i.cy, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit.i.i ], [ %5, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit36.i.i ], [ 0, %bb.z ]
  %.sink44.i.sroa.phi.i = phi ptr [ %.sroa.11.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit18.i.i ], [ %.sroa.7.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit.i.i ], [ %.sroa.7.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit36.i.i ], [ %.sroa.11.i, %bb.z ]
  %.sroa.46.0.sink.i.i = phi i64 [ %.sroa.46.0.i.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit18.i.i ], [ %.56.sink.i.i.i.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit.i.i ], [ %.56.sink.i.i35.i.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1B_3vec3VecjEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit36.i.i ], [ 0, %bb.z ]
  store i64 %.sroa.46.0.sink.i.i, ptr %.sink44.i.sroa.phi.i, align 8, !alias.scope !8266, !noalias !8231
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  %i.dm = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i, i64 1)
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ci, i64 noundef range(i64 1, 0) %i.dm, i64 noundef 8, i64 noundef 40)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyIBv_jEEE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i unwind label %bb.aa, !noalias !8229

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyIBv_jEEE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1U_3vec3VecjEEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit.i, %bb.u
  %i.dn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8265, !noalias !8231, !nonnull !4, !noundef !4
  %i.do = getelementptr inbounds nuw [40 x i8], ptr %i.dn, i64 %i.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.do, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !8229
  %i.dp = add nuw nsw i64 %i.ci, 1
  store i64 %i.dp, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !8265, !noalias !8231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8252
  br label %bb.o

bb.aa:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB1U_3vec3VecjEEEEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe.exit.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dr)
          to label %.body.i.i.i unwind label %bb.ab, !noalias !8229

bb.ab:                                            ; preds = %bb.aa, %.body.i.i.i
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !8229
  unreachable

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyIBx_jEEE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtB25_7flatten7FlattenINtNtB29_6option8IntoIterINtNtNtNtB8_11collections5btree3map8BTreeMapBH_B1A_EEEB2S_EECshxhuDJfZv4T_6fontbe.exit.i.i: ; preds = %.loopexit.i.i.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBE_8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB21_3vec3VecjEEEEEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(176) %i.bt)
          to label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyIBI_jEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtB6_11collections5btree3map8BTreeMapBS_B1L_EEEB36_EE11spec_extendCshxhuDJfZv4T_6fontbe.exit.i unwind label %bb.ac, !noalias !8229

bb.ac:                                            ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyIBx_jEEE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtB25_7flatten7FlattenINtNtB29_6option8IntoIterINtNtNtNtB8_11collections5btree3map8BTreeMapBH_B1A_EEEB2S_EECshxhuDJfZv4T_6fontbe.exit.i.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i

.body8.i:                                         ; preds = %bb.ac, %bb.v, %.body.i.i.i
  %eh.lpad-body9.i = phi { ptr, i32 } [ %i.dt, %bb.ac ], [ %i.cm, %bb.v ], [ %.pn.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyIBC_jEEEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #26
          to label %common.resume.i unwind label %bb.ad, !noalias !8229

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyIBI_jEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtB6_11collections5btree3map8BTreeMapBS_B1L_EEEB36_EE11spec_extendCshxhuDJfZv4T_6fontbe.exit.i: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyIBx_jEEE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtB25_7flatten7FlattenINtNtB29_6option8IntoIterINtNtNtNtB8_11collections5btree3map8BTreeMapBH_B1A_EEEB2S_EECshxhuDJfZv4T_6fontbe.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !8230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8231
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyIBS_jEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtB2C_7flatten7FlattenINtNtB2G_6option8IntoIterINtNtNtNtB6_11collections5btree3map8BTreeMapB12_B1V_EEEB3p_EE9from_iterCshxhuDJfZv4T_6fontbe.exit

bb.ad:                                            ; preds = %bb.ae, %.body8.i, %bb.l
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !8229
  unreachable

bb.ae:                                            ; preds = %bb.l, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtCsgCecv3eZDcN_5alloc3vec3VecjEEEECshxhuDJfZv4T_6fontbe.exit.i.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtCsgCecv3eZDcN_5alloc3vec3VecjEEEECshxhuDJfZv4T_6fontbe.exit.i.i.i ], [ %i.p, %bb.e ], [ %i.bi, %bb.l ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_7flatten7FlattenINtNtB4_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB28_3vec3VecjEEEEB1d_EECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1) #26
          to label %common.resume.i unwind label %bb.ad, !noalias !8229

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyIBS_jEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtB2C_7flatten7FlattenINtNtB2G_6option8IntoIterINtNtNtNtB6_11collections5btree3map8BTreeMapB12_B1V_EEEB3p_EE9from_iterCshxhuDJfZv4T_6fontbe.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_7flatten7FlattenINtNtB4_6option8IntoIterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtB28_3vec3VecjEEEEB1d_EECshxhuDJfZv4T_6fontbe.exit.i, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyIBI_jEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtB6_11collections5btree3map8BTreeMapBS_B1L_EEEB36_EE11spec_extendCshxhuDJfZv4T_6fontbe.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtB6_6string6StringEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2y_5chain5ChainINtNtB4_9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB2y_6cloned6ClonedINtNtNtB2C_5slice4iter4IterB43_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE9from_iterB60_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8303)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8306)
  %i.j = load ptr, ptr %1, align 8, !alias.scope !8307, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !8307, !noundef !4
  %.not7.i.i.i = icmp eq ptr %i.l, null           ; 2 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !8307, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val10.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !8307, !nonnull !4, !noundef !4
  %i.o = ptrtoint ptr %.val10.i.i.i to i64
  %i.p = ptrtoint ptr %.val.i.i.i to i64
  %i.q = sub nuw i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 4                   ; 3 uses
  br i1 %.not7.i.i.i, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit.thread.i, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %.not7.i.i.i, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k)
          to label %._RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit_crit_edge.i unwind label %bb.w, !noalias !8308

._RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit_crit_edge.i: ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !range !11, !noalias !8304
  %i.s = trunc nuw i64 %.pre.i to i1
  br i1 %i.s, label %._RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit_crit_edge.i._RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit.thread.i_crit_edge, label %bb.g, !prof !8309

._RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit_crit_edge.i._RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit.thread.i_crit_edge: ; preds = %._RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit_crit_edge.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !noalias !8304
  br label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit.thread.i

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8310
  invoke void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k)
          to label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit.i unwind label %bb.w, !noalias !8308

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !11, !noalias !8310, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !8310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8310
  %i.x = trunc nuw i64 %i.u to i1
  %i.y = add i64 %i.w, %i.r                       ; 2 uses
  %i.z = icmp uge i64 %i.y, %i.r
  %narrow.i.i.i = select i1 %i.x, i1 %i.z, i1 false
  br i1 %narrow.i.i.i, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit.thread.i, label %bb.g, !prof !8309

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit.thread.i: ; preds = %bb.b, %bb.c, %._RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit_crit_edge.i._RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit.thread.i_crit_edge, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit.i
  %i.aa = phi i64 [ %.pre, %._RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit_crit_edge.i._RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit.thread.i_crit_edge ], [ %i.y, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit.i ], [ 0, %bb.c ], [ %i.r, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8304
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.aa, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
          to label %.noexc4.i unwind label %bb.w, !noalias !8308

.noexc4.i:                                        ; preds = %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit.thread.i
  %i.ab = load i64, ptr %i.e, align 8, !range !11, !noalias !8304, !noundef !4
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !32, !noalias !8304, !noundef !4 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.f, label %bb.h, !prof !9

bb.f:                                             ; preds = %.noexc4.i
  %i.ag = load i64, ptr %i.af, align 8, !noalias !8304
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.ag) #31
          to label %.noexc5.i unwind label %bb.w, !noalias !8308

.noexc5.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit.i, %._RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit_crit_edge.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #31
          to label %bb.v unwind label %bb.w, !noalias !8308

bb.h:                                             ; preds = %.noexc4.i
  %i.ah = load ptr, ptr %i.af, align 8, !noalias !8304, !nonnull !4, !noundef !4 ; 2 uses
  %i.ai = icmp ule i64 %i.aa, %i.ae
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8304
  store i64 %i.ae, ptr %i.i, align 8, !noalias !8304
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.ah, ptr %i.aj, align 8, !noalias !8304
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 0, ptr %i.ak, align 8, !noalias !8304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !8308
  call void @llvm.experimental.noalias.scope.decl(metadata !8311)
  call void @llvm.experimental.noalias.scope.decl(metadata !8312)
  call void @llvm.experimental.noalias.scope.decl(metadata !8313)
  call void @llvm.experimental.noalias.scope.decl(metadata !8314)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8315
  call void @llvm.experimental.noalias.scope.decl(metadata !8316)
  call void @llvm.experimental.noalias.scope.decl(metadata !8317)
  %i.al = load ptr, ptr %i.g, align 8, !alias.scope !8318, !noalias !8304, !noundef !4
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !8318, !noalias !8304, !noundef !4
  %.not7.i.i.i.i.i = icmp eq ptr %i.an, null      ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !8318, !noalias !8304, !nonnull !4, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val10.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !8318, !noalias !8304, !nonnull !4, !noundef !4
  %i.aq = ptrtoint ptr %.val10.i.i.i.i.i to i64
  %i.ar = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.as = sub nuw i64 %i.aq, %i.ar
  %i.at = lshr exact i64 %i.as, 4                 ; 3 uses
  br i1 %.not7.i.i.i.i.i, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB24_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB3Z_.exit.thread.i.i.i, label %bb.l
end_hunk_0
