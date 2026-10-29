Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.01?download=true
inline.NumInlined: 5575
inline.NumDeleted: 3074
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2a_6filter6FilterINtNtNtNtB6_11collections5btree3map4IterBU_IBL_RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks16find_mark_glyphs0ENCB4F_s_0EE9from_iterB4L_:bb.a
  %i.ad = load i64, ptr %i.g, align 8, !range !10, !alias.scope !3940, !noalias !3931, !noundef !4
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i, label %.noexc8.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i: ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ab, i64 noundef 1, i64 noundef 2, i64 noundef 2)
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3930

.noexc8.i:                                        ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i, %bb.i
  %i.af = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3940, !noalias !3931, !nonnull !4, !noundef !4
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ab
  store i16 %.val.i.i.i.i, ptr %i.ag, align 2, !noalias !3930
  %i.ah = add nuw nsw i64 %i.ab, 1
  store i64 %i.ah, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3940, !noalias !3931
  br label %bb.f

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3932
  store i64 0, ptr %0, align 8, !alias.scope !3930
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.ai, align 8, !alias.scope !3930
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aj, align 8, !alias.scope !3930
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2o_6filter6FilterINtNtNtNtB6_11collections5btree3map4IterB11_IBS_RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks16find_mark_glyphs0ENCB4U_s_0EE9from_iterB50_.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.g, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i
  %lpad.loopexit.split-lp12 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i unwind label %bb.l, !noalias !3930

bb.k:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !3941
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2o_6filter6FilterINtNtNtNtB6_11collections5btree3map4IterB11_IBS_RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks16find_mark_glyphs0ENCB4U_s_0EE9from_iterB50_.exit

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !3930
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp12

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2o_6filter6FilterINtNtNtNtB6_11collections5btree3map4IterB11_IBS_RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNvNtNtCshxhuDJfZv4T_6fontbe8features5marks16find_mark_glyphs0ENCB4U_s_0EE9from_iterB50_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3931
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB2e_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtB2e_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB2a_6copied6CopiedIB32_BU_EENCNCNCNvMNtNtB3z_7compile11compile_ctxINtB6F_14CompilationCtxNtNtB6H_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000EE9from_iterB8h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i.i.i = alloca i64, align 8            ; 4 uses
  %.sroa.7.i.i.i = alloca i64, align 8            ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 11 uses
  %.sroa.5.i = alloca i64, align 8                ; 4 uses
  %.sroa.7.i = alloca i64, align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3999)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4000
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !4001
  %i.k = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.k, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call { i16, i16 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h), !noalias !3998 ; 3 uses
  %i.m = extractvalue { i16, i16 } %i.l, 0        ; 2 uses
  %.not3.i.i.peel.i.i = icmp eq i16 %i.m, 1
  br i1 %.not3.i.i.peel.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i: ; preds = %bb.b
  store ptr null, ptr %i.h, align 8, !alias.scope !4001
  %i.n = trunc i16 %i.m to i1
  br i1 %i.n, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB71_.exit.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i, %bb.a
  %i.o = load ptr, ptr %1, align 8, !alias.scope !4002, !noundef !4 ; 3 uses
  %.not.i4.i.peel.i.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %i.i, align 8, !alias.scope !3999, !nonnull !4
  %i.q = icmp eq ptr %i.o, %i.p
  %or.cond.i = select i1 %.not.i4.i.peel.i.i, i1 true, i1 %i.q
  br i1 %or.cond.i, label %.loopexit.i.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i
  %.sink14.i.i = phi ptr [ %.pre.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i ], [ %i.o, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sink14.i.i, i64 112
  store ptr %i.r, ptr %1, align 8, !alias.scope !4003
  %i.s = getelementptr i8, ptr %.sink14.i.i, i64 8
  %.val.i.i.i.peel.i.i = load ptr, ptr %i.s, align 8, !noalias !3998, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr i8, ptr %.sink14.i.i, i64 16
  %.val3.i.i.i.peel.i.i = load i64, ptr %i.t, align 8, !noalias !3998, !noundef !4
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.peel.i.i, i64 %.val3.i.i.i.peel.i.i
  store ptr %.val.i.i.i.peel.i.i, ptr %i.h, align 8, !alias.scope !4004
  store ptr %i.u, ptr %i.j, align 8, !alias.scope !4004
  %i.v = tail call { i16, i16 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h), !noalias !3998 ; 3 uses
  %i.w = extractvalue { i16, i16 } %i.v, 0        ; 2 uses
  %.not3.i.i.i.i = icmp eq i16 %i.w, 1
  br i1 %.not3.i.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i: ; preds = %.peel.next.i.i, %bb.b
  %.lcssa.i.i = phi { i16, i16 } [ %i.l, %bb.b ], [ %i.v, %.peel.next.i.i ]
  %i.x = extractvalue { i16, i16 } %.lcssa.i.i, 1
  %i.y = insertvalue { i16, i16 } { i16 1, i16 poison }, i16 %i.x, 1
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB71_.exit.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i: ; preds = %.peel.next.i.i
  store ptr null, ptr %i.h, align 8, !alias.scope !4001
  %i.z = trunc i16 %i.w to i1
  br i1 %i.z, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB71_.exit.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i
  %.pre.i.i = load ptr, ptr %1, align 8, !alias.scope !4005 ; 3 uses
  %.not.i4.i.i.i = icmp eq ptr %.pre.i.i, null
  %i.aa = load ptr, ptr %i.i, align 8, !alias.scope !3999, !nonnull !4
  %i.ab = icmp eq ptr %.pre.i.i, %i.aa
  %or.cond18.i = select i1 %.not.i4.i.i.i, i1 true, i1 %i.ab
  br i1 %or.cond18.i, label %.loopexit.i.i, label %.peel.next.i.i, !llvm.loop !3957

.loopexit.i.i:                                    ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !4006, !noundef !4
  %.not.i7.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i7.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i.i
  %i.ae = tail call { i16, i16 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac), !noalias !3998 ; 2 uses
  %i.af = extractvalue { i16, i16 } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { i16, i16 } %i.ae, 1      ; 2 uses
  %.not3.i8.i.i.i = icmp eq i16 %i.af, 1
  br i1 %.not3.i8.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.ac, align 8, !alias.scope !4006
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i: ; preds = %bb.d, %bb.c, %.loopexit.i.i
  %.sroa.3.0.i9.i.i.i = phi i16 [ undef, %.loopexit.i.i ], [ %i.ag, %bb.d ], [ %i.ag, %bb.c ]
  %.sroa.0.0.i10.i.i.i = phi i16 [ 0, %.loopexit.i.i ], [ %i.af, %bb.d ], [ 1, %bb.c ]
  %i.ah = insertvalue { i16, i16 } poison, i16 %.sroa.0.0.i10.i.i.i, 0
  %i.ai = insertvalue { i16, i16 } %i.ah, i16 %.sroa.3.0.i9.i.i.i, 1
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB71_.exit.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB71_.exit.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i
  %.merged.i.i.i = phi { i16, i16 } [ %i.ai, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i ], [ %i.y, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i ], [ %i.l, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i ], [ %i.v, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i ] ; 2 uses
  %i.aj = extractvalue { i16, i16 } %.merged.i.i.i, 0
  %i.ak = trunc i16 %i.aj to i1
  br i1 %i.ak, label %bb.e, label %bb.x

bb.e:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB71_.exit.i
  %i.al = extractvalue { i16, i16 } %.merged.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4010)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4011
  %i.am = load ptr, ptr %i.h, align 8, !alias.scope !4012, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.h), !noalias !4013
  %.pre.i.i7.i = load i64, ptr %i.e, align 8, !noalias !4011
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre72.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !range !11, !noalias !4011
  %.phi.trans.insert73.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.pre74.i.i.i = load i64, ptr %.phi.trans.insert73.i.i.i, align 8, !noalias !4011
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.an = phi i64 [ %.pre74.i.i.i, %bb.f ], [ 0, %bb.e ]
  %i.ao = phi i64 [ %.pre72.i.i.i, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.ap = phi i64 [ %.pre.i.i7.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4011
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !4012, !noundef !4
  %.not53.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not53.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.aq), !noalias !4014
  %.pre75.i.i.i = load i64, ptr %i.d, align 8, !noalias !4011
  %.phi.trans.insert76.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre77.i.i.i = load i64, ptr %.phi.trans.insert76.i.i.i, align 8, !range !11, !noalias !4011
  %.phi.trans.insert78.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre79.i.i.i = load i64, ptr %.phi.trans.insert78.i.i.i, align 8, !noalias !4011
  %i.as = call i64 @llvm.uadd.sat.i64(i64 %i.ap, i64 %.pre75.i.i.i)
  %2 = freeze i64 %.pre77.i.i.i
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i: ; preds = %bb.g, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i
  %i.at = phi i64 [ %.pre79.i.i.i, %bb.g ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i ]
  %.fr35 = phi i64 [ %2, %bb.g ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i ] ; 2 uses
  %i.au = phi i64 [ %i.as, %bb.g ], [ %i.ap, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4011
  %i.av = load ptr, ptr %1, align 8, !alias.scope !4012, !noundef !4 ; 2 uses
  %.not54.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not54.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i
  %.val61.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !4012, !nonnull !4, !noundef !4
  %i.aw = icmp eq ptr %.val61.i.i.i, %i.av
  %i.ax = trunc nuw i64 %i.ao to i1
  %i.ay = trunc i64 %.fr35 to i1
  %op.rdx33 = and i1 %i.aw, %i.ay
  %op.rdx34 = select i1 %op.rdx33, i1 %i.ax, i1 false
  br i1 %op.rdx34, label %bb.j, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB71_.exit.i

bb.i:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i
  %i.az = and i64 %.fr35, %i.ao
  %or.cond55.not.i.i.i = icmp eq i64 %i.az, 0
  br i1 %or.cond55.not.i.i.i, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB71_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = add i64 %i.at, %i.an
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB71_.exit.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB71_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %.sink81.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %bb.j ], [ %.sroa.5.i, %bb.i ], [ %.sroa.5.i, %bb.h ]
  %.sink.i.i.i = phi i64 [ %i.ba, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ]
  store i64 %.sink.i.i.i, ptr %.sink81.i.i.sroa.phi.i, align 8, !alias.scope !4015, !noalias !4000
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.bb = call i64 @llvm.uadd.sat.i64(i64 %i.au, i64 1)
  %i.bc = call i64 @llvm.umax.i64(i64 %i.bb, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4000
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.bc, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2), !noalias !3998
  %i.bd = load i64, ptr %i.c, align 8, !range !11, !noalias !4000, !noundef !4
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !32, !noalias !4000, !noundef !4 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.be, label %bb.k, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit.i, !prof !9

bb.k:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB71_.exit.i
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !4000
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.bg, i64 %i.bi) #31, !noalias !3998
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit.i: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB71_.exit.i
  %i.bj = load ptr, ptr %i.bh, align 8, !noalias !4000, !nonnull !4, !noundef !4 ; 2 uses
  %i.bk = icmp ule i64 %i.bc, %i.bg
  call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4000
  store i16 %i.al, ptr %i.bj, align 2, !noalias !3998
  store i64 %i.bg, ptr %i.g, align 8, !noalias !4000
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4000
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !3998
  call void @llvm.experimental.noalias.scope.decl(metadata !4016)
  call void @llvm.experimental.noalias.scope.decl(metadata !4017)
  call void @llvm.experimental.noalias.scope.decl(metadata !4018)
  call void @llvm.experimental.noalias.scope.decl(metadata !4019)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 8 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.phi.trans.insert73.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.phi.trans.insert76.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.phi.trans.insert78.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !4020, !noalias !4000
  %i.bp = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %i.bp, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = invoke { i16, i16 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3998 ; 3 uses

.noexc.i:                                         ; preds = %bb.m
  %i.br = extractvalue { i16, i16 } %i.bq, 0      ; 2 uses
  %.not3.i.i.peel.i.i.i.i = icmp eq i16 %i.br, 1
  br i1 %.not3.i.i.peel.i.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i.i.i: ; preds = %.noexc.i
  store ptr null, ptr %i.bl, align 8, !alias.scope !4020, !noalias !4000
  %i.bs = trunc i16 %i.br to i1
  br i1 %i.bs, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB71_.exit.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i.i.i, %bb.l
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !4021, !noalias !4000, !noundef !4 ; 3 uses
  %.not.i4.i.peel.i.i.i.i = icmp eq ptr %i.bt, null
  %i.bu = load ptr, ptr %i.bm, align 8, !alias.scope !4022, !noalias !4000, !nonnull !4
  %i.bv = icmp eq ptr %i.bt, %i.bu
  %or.cond.i.i8.i = select i1 %.not.i4.i.peel.i.i.i.i, i1 true, i1 %i.bv
  br i1 %or.cond.i.i8.i, label %.loopexit.i.i.i.i, label %.peel.next.i.i.i.i

.peel.next.i.i.i.i:                               ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i.i.i
  %.sink14.i.i.i.i = phi ptr [ %.pre.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i.i.i ], [ %i.bt, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i.i.i ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sink14.i.i.i.i, i64 112
  store ptr %i.bw, ptr %i.f, align 8, !alias.scope !4023, !noalias !4000
  %i.bx = getelementptr i8, ptr %.sink14.i.i.i.i, i64 8
  %.val.i.i.i.peel.i.i.i.i = load ptr, ptr %i.bx, align 8, !noalias !3998, !nonnull !4, !noundef !4 ; 2 uses
  %i.by = getelementptr i8, ptr %.sink14.i.i.i.i, i64 16
  %.val3.i.i.i.peel.i.i.i.i = load i64, ptr %i.by, align 8, !noalias !3998, !noundef !4
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.peel.i.i.i.i, i64 %.val3.i.i.i.peel.i.i.i.i
  store ptr %.val.i.i.i.peel.i.i.i.i, ptr %i.bl, align 8, !alias.scope !4024, !noalias !4000
  store ptr %i.bz, ptr %i.bn, align 8, !alias.scope !4024, !noalias !4000
  %i.ca = invoke { i16, i16 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3998 ; 3 uses

.noexc9.i:                                        ; preds = %.peel.next.i.i.i.i
  %i.cb = extractvalue { i16, i16 } %i.ca, 0      ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq i16 %i.cb, 1
  br i1 %.not3.i.i.i.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i.i.i: ; preds = %.noexc9.i, %.noexc.i
  %.lcssa.i.i.i.i = phi { i16, i16 } [ %i.bq, %.noexc.i ], [ %i.ca, %.noexc9.i ]
  %i.cc = extractvalue { i16, i16 } %.lcssa.i.i.i.i, 1
  %i.cd = insertvalue { i16, i16 } { i16 1, i16 poison }, i16 %i.cc, 1
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB71_.exit.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i: ; preds = %.noexc9.i
  store ptr null, ptr %i.bl, align 8, !alias.scope !4020, !noalias !4000
  %i.ce = trunc i16 %i.cb to i1
  br i1 %i.ce, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB71_.exit.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !4025, !noalias !4000 ; 3 uses
  %.not.i4.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i, null
  %i.cf = load ptr, ptr %i.bm, align 8, !alias.scope !4022, !noalias !4000, !nonnull !4
  %i.cg = icmp eq ptr %.pre.i.i.i.i, %i.cf
  %or.cond7.i.i.i = select i1 %.not.i4.i.i.i.i.i, i1 true, i1 %i.cg
  br i1 %or.cond7.i.i.i, label %.loopexit.i.i.i.i, label %.peel.next.i.i.i.i, !llvm.loop !3957

.loopexit.i.i.i.i:                                ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i.i.i
  %i.ch = load ptr, ptr %i.bo, align 8, !alias.scope !4026, !noalias !4000, !noundef !4
  %.not.i7.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i7.i.i.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.loopexit.i.i.i.i
  %i.ci = invoke { i16, i16 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bo)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3998 ; 2 uses

.noexc10.i:                                       ; preds = %bb.n
  %i.cj = extractvalue { i16, i16 } %i.ci, 0      ; 2 uses
  %i.ck = extractvalue { i16, i16 } %i.ci, 1      ; 2 uses
  %.not3.i8.i.i.i.i.i = icmp eq i16 %i.cj, 1
  br i1 %.not3.i8.i.i.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc10.i
  store ptr null, ptr %i.bo, align 8, !alias.scope !4026, !noalias !4000
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i.i.i: ; preds = %bb.o, %.noexc10.i, %.loopexit.i.i.i.i
  %.sroa.3.0.i9.i.i.i.i.i = phi i16 [ undef, %.loopexit.i.i.i.i ], [ %i.ck, %bb.o ], [ %i.ck, %.noexc10.i ]
  %.sroa.0.0.i10.i.i.i.i.i = phi i16 [ 0, %.loopexit.i.i.i.i ], [ %i.cj, %bb.o ], [ 1, %.noexc10.i ]
  %i.cl = insertvalue { i16, i16 } poison, i16 %.sroa.0.0.i10.i.i.i.i.i, 0
  %i.cm = insertvalue { i16, i16 } %i.cl, i16 %.sroa.3.0.i9.i.i.i.i.i, 1
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB71_.exit.i.i.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB71_.exit.i.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i.i.i
  %.merged.i.i.i.i.i = phi { i16, i16 } [ %i.cm, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i.i.i ], [ %i.cd, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i.i.i ], [ %i.bq, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i.i.i ], [ %i.ca, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i ] ; 2 uses
  %i.cn = extractvalue { i16, i16 } %.merged.i.i.i.i.i, 0
  %i.co = extractvalue { i16, i16 } %.merged.i.i.i.i.i, 1
  %i.cp = trunc i16 %i.cn to i1
  br i1 %i.cp, label %bb.p, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB29_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtB29_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB25_6copied6CopiedIB2X_BR_EENCNCNCNvMNtNtB3u_7compile11compile_ctxINtB6A_14CompilationCtxNtNtB6C_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000EE11spec_extendB8c_.exit.i

bb.p:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB71_.exit.i.i.i
  %i.cq = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4027, !noalias !4000, !noundef !4 ; 4 uses
  %i.cr = icmp ult i64 %i.cq, 4611686018427387904
  call void @llvm.assume(i1 %i.cr)
  %i.cs = load i64, ptr %i.g, align 8, !range !10, !alias.scope !4027, !noalias !4000, !noundef !4
  %i.ct = icmp eq i64 %i.cq, %i.cs
  br i1 %i.ct, label %bb.q, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !4028)
  call void @llvm.experimental.noalias.scope.decl(metadata !4029)
  call void @llvm.experimental.noalias.scope.decl(metadata !4030)
  call void @llvm.experimental.noalias.scope.decl(metadata !4031)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4032
  %i.cu = load ptr, ptr %i.bl, align 8, !alias.scope !4033, !noalias !4000, !noundef !4
  %.not.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.bl)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3998

.noexc11.i:                                       ; preds = %bb.r
  %.pre.i.i3.i.i.i = load i64, ptr %i.b, align 8, !noalias !4032
  %.pre72.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !range !11, !noalias !4032
  %.pre74.i.i.i.i.i = load i64, ptr %.phi.trans.insert73.i.i.i.i.i, align 8, !noalias !4032
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i: ; preds = %.noexc11.i, %bb.q
  %i.cv = phi i64 [ %.pre74.i.i.i.i.i, %.noexc11.i ], [ 0, %bb.q ]
  %i.cw = phi i64 [ %.pre72.i.i.i.i.i, %.noexc11.i ], [ 1, %bb.q ] ; 2 uses
  %i.cx = phi i64 [ %.pre.i.i3.i.i.i, %.noexc11.i ], [ 0, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4032
  %i.cy = load ptr, ptr %i.bo, align 8, !alias.scope !4033, !noalias !4000, !noundef !4
  %.not53.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not53.i.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i
  invoke void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.bo)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3998

.noexc12.i:                                       ; preds = %bb.s
  %.pre75.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !4032
  %.pre77.i.i.i.i.i = load i64, ptr %.phi.trans.insert76.i.i.i.i.i, align 8, !range !11, !noalias !4032
  %.pre79.i.i.i.i.i = load i64, ptr %.phi.trans.insert78.i.i.i.i.i, align 8, !noalias !4032
  %i.cz = call i64 @llvm.uadd.sat.i64(i64 %i.cx, i64 %.pre75.i.i.i.i.i)
  %3 = freeze i64 %.pre77.i.i.i.i.i
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i.i.i: ; preds = %.noexc12.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i
  %i.da = phi i64 [ %.pre79.i.i.i.i.i, %.noexc12.i ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i ]
  %.fr36 = phi i64 [ %3, %.noexc12.i ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i ] ; 2 uses
  %i.db = phi i64 [ %i.cz, %.noexc12.i ], [ %i.cx, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4032
  %i.dc = load ptr, ptr %i.f, align 8, !alias.scope !4033, !noalias !4000, !noundef !4 ; 2 uses
  %.not54.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not54.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i.i.i
  %.val61.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !4033, !noalias !4000, !nonnull !4, !noundef !4
  %i.dd = icmp eq ptr %.val61.i.i.i.i.i, %i.dc
  %i.de = trunc nuw i64 %i.cw to i1
  %i.df = trunc i64 %.fr36 to i1
  %op.rdx = and i1 %i.dd, %i.df
  %op.rdx32 = select i1 %op.rdx, i1 %i.de, i1 false
  br i1 %op.rdx32, label %bb.v, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB71_.exit.i.i.i

bb.u:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i.i.i
  %i.dg = and i64 %.fr36, %i.cw
  %or.cond55.not.i.i.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %or.cond55.not.i.i.i.i.i, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB71_.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dh = add i64 %i.da, %i.cv
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB71_.exit.i.i.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB71_.exit.i.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %.sink81.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %bb.v ], [ %.sroa.5.i.i.i, %bb.u ], [ %.sroa.5.i.i.i, %bb.t ]
  %.sink.i.i.i.i.i = phi i64 [ %i.dh, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ]
  store i64 %.sink.i.i.i.i.i, ptr %.sink81.i.i.sroa.phi.i.i.i, align 8, !alias.scope !4034, !noalias !4035
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.di = call i64 @llvm.uadd.sat.i64(i64 %i.db, i64 1) ; 2 uses
  %i.dj = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4036, !noalias !4000, !noundef !4 ; 2 uses
  %i.dk = load i64, ptr %i.g, align 8, !range !10, !alias.scope !4036, !noalias !4000, !noundef !4
  %i.dl = sub i64 %i.dk, %i.dj
  %i.dm = icmp ugt i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.w, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i, !prof !9

bb.w:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB71_.exit.i.i.i
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.dj, i64 noundef %i.di, i64 noundef 2, i64 noundef 2)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3998

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i: ; preds = %bb.w, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB71_.exit.i.i.i, %bb.p
  %i.dn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4027, !noalias !4000, !nonnull !4, !noundef !4
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.cq
  store i16 %i.co, ptr %i.do, align 2, !noalias !3998
  %i.dp = add nuw nsw i64 %i.cq, 1
  store i64 %i.dp, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4027, !noalias !4000
  br label %bb.l

bb.x:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB71_.exit.i
  store i64 0, ptr %0, align 8, !alias.scope !3998
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.dq, align 8, !alias.scope !3998
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dr, align 8, !alias.scope !3998
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB2s_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtB2s_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB2o_6copied6CopiedIB3g_B11_EENCNCNCNvMNtNtB3N_7compile11compile_ctxINtB6U_14CompilationCtxNtNtB6W_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000EE9from_iterB8w_.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next.i.i.i.i, %bb.w, %bb.s, %bb.r, %bb.n, %bb.m
  %lpad.loopexit.split-lp37 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i unwind label %bb.y, !noalias !3998

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB29_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtB29_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB25_6copied6CopiedIB2X_BR_EENCNCNCNvMNtNtB3u_7compile11compile_ctxINtB6A_14CompilationCtxNtNtB6C_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000EE11spec_extendB8c_.exit.i: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtB5r_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB71_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !3999
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB2s_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtB2s_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB2o_6copied6CopiedIB3g_B11_EENCNCNCNvMNtNtB3N_7compile11compile_ctxINtB6U_14CompilationCtxNtNtB6W_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000EE9from_iterB8w_.exit

bb.y:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !3998
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp37

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB2s_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtB2s_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB2o_6copied6CopiedIB3g_B11_EENCNCNCNvMNtNtB3N_7compile11compile_ctxINtB6U_14CompilationCtxNtNtB6W_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000EE9from_iterB8w_.exit: ; preds = %bb.x, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB29_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtB29_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB25_6copied6CopiedIB2X_BR_EENCNCNCNvMNtNtB3u_7compile11compile_ctxINtB6A_14CompilationCtxNtNtB6C_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE25resolve_named_glyph_class000EE11spec_extendB8c_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4000
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB2e_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtB2e_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB2a_6copied6CopiedIB32_BU_EENCNCNCNvMNtNtB3z_7compile11compile_ctxINtB6F_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB7x_16FeaVariationInfoE25resolve_named_glyph_class000EE9from_iterB7z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i.i.i = alloca i64, align 8            ; 4 uses
  %.sroa.7.i.i.i = alloca i64, align 8            ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 11 uses
  %.sroa.5.i = alloca i64, align 8                ; 4 uses
  %.sroa.7.i = alloca i64, align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4094)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4095
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !4096
  %i.k = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.k, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call { i16, i16 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h), !noalias !4093 ; 3 uses
  %i.m = extractvalue { i16, i16 } %i.l, 0        ; 2 uses
  %.not3.i.i.peel.i.i = icmp eq i16 %i.m, 1
  br i1 %.not3.i.i.peel.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i: ; preds = %bb.b
  store ptr null, ptr %i.h, align 8, !alias.scope !4096
  %i.n = trunc i16 %i.m to i1
  br i1 %i.n, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB6j_.exit.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i, %bb.a
  %i.o = load ptr, ptr %1, align 8, !alias.scope !4097, !noundef !4 ; 3 uses
  %.not.i4.i.peel.i.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %i.i, align 8, !alias.scope !4094, !nonnull !4
  %i.q = icmp eq ptr %i.o, %i.p
  %or.cond.i = select i1 %.not.i4.i.peel.i.i, i1 true, i1 %i.q
  br i1 %or.cond.i, label %.loopexit.i.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i
  %.sink14.i.i = phi ptr [ %.pre.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i ], [ %i.o, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sink14.i.i, i64 112
  store ptr %i.r, ptr %1, align 8, !alias.scope !4098
  %i.s = getelementptr i8, ptr %.sink14.i.i, i64 8
  %.val.i.i.i.peel.i.i = load ptr, ptr %i.s, align 8, !noalias !4093, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr i8, ptr %.sink14.i.i, i64 16
  %.val3.i.i.i.peel.i.i = load i64, ptr %i.t, align 8, !noalias !4093, !noundef !4
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.peel.i.i, i64 %.val3.i.i.i.peel.i.i
  store ptr %.val.i.i.i.peel.i.i, ptr %i.h, align 8, !alias.scope !4099
  store ptr %i.u, ptr %i.j, align 8, !alias.scope !4099
  %i.v = tail call { i16, i16 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h), !noalias !4093 ; 3 uses
  %i.w = extractvalue { i16, i16 } %i.v, 0        ; 2 uses
  %.not3.i.i.i.i = icmp eq i16 %i.w, 1
  br i1 %.not3.i.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i: ; preds = %.peel.next.i.i, %bb.b
  %.lcssa.i.i = phi { i16, i16 } [ %i.l, %bb.b ], [ %i.v, %.peel.next.i.i ]
  %i.x = extractvalue { i16, i16 } %.lcssa.i.i, 1
  %i.y = insertvalue { i16, i16 } { i16 1, i16 poison }, i16 %i.x, 1
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB6j_.exit.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i: ; preds = %.peel.next.i.i
  store ptr null, ptr %i.h, align 8, !alias.scope !4096
  %i.z = trunc i16 %i.w to i1
  br i1 %i.z, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB6j_.exit.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i
  %.pre.i.i = load ptr, ptr %1, align 8, !alias.scope !4100 ; 3 uses
  %.not.i4.i.i.i = icmp eq ptr %.pre.i.i, null
  %i.aa = load ptr, ptr %i.i, align 8, !alias.scope !4094, !nonnull !4
  %i.ab = icmp eq ptr %.pre.i.i, %i.aa
  %or.cond18.i = select i1 %.not.i4.i.i.i, i1 true, i1 %i.ab
  br i1 %or.cond18.i, label %.loopexit.i.i, label %.peel.next.i.i, !llvm.loop !4052

.loopexit.i.i:                                    ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !4101, !noundef !4
  %.not.i7.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i7.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i.i
  %i.ae = tail call { i16, i16 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac), !noalias !4093 ; 2 uses
  %i.af = extractvalue { i16, i16 } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { i16, i16 } %i.ae, 1      ; 2 uses
  %.not3.i8.i.i.i = icmp eq i16 %i.af, 1
  br i1 %.not3.i8.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.ac, align 8, !alias.scope !4101
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i: ; preds = %bb.d, %bb.c, %.loopexit.i.i
  %.sroa.3.0.i9.i.i.i = phi i16 [ undef, %.loopexit.i.i ], [ %i.ag, %bb.d ], [ %i.ag, %bb.c ]
  %.sroa.0.0.i10.i.i.i = phi i16 [ 0, %.loopexit.i.i ], [ %i.af, %bb.d ], [ 1, %bb.c ]
  %i.ah = insertvalue { i16, i16 } poison, i16 %.sroa.0.0.i10.i.i.i, 0
  %i.ai = insertvalue { i16, i16 } %i.ah, i16 %.sroa.3.0.i9.i.i.i, 1
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB6j_.exit.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB6j_.exit.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i
  %.merged.i.i.i = phi { i16, i16 } [ %i.ai, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i ], [ %i.y, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i ], [ %i.l, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i ], [ %i.v, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i ] ; 2 uses
  %i.aj = extractvalue { i16, i16 } %.merged.i.i.i, 0
  %i.ak = trunc i16 %i.aj to i1
  br i1 %i.ak, label %bb.e, label %bb.x

bb.e:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB6j_.exit.i
  %i.al = extractvalue { i16, i16 } %.merged.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4106
  %i.am = load ptr, ptr %i.h, align 8, !alias.scope !4107, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.h), !noalias !4108
  %.pre.i.i7.i = load i64, ptr %i.e, align 8, !noalias !4106
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre72.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !range !11, !noalias !4106
  %.phi.trans.insert73.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.pre74.i.i.i = load i64, ptr %.phi.trans.insert73.i.i.i, align 8, !noalias !4106
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.an = phi i64 [ %.pre74.i.i.i, %bb.f ], [ 0, %bb.e ]
  %i.ao = phi i64 [ %.pre72.i.i.i, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.ap = phi i64 [ %.pre.i.i7.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4106
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !4107, !noundef !4
  %.not53.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not53.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.aq), !noalias !4109
  %.pre75.i.i.i = load i64, ptr %i.d, align 8, !noalias !4106
  %.phi.trans.insert76.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre77.i.i.i = load i64, ptr %.phi.trans.insert76.i.i.i, align 8, !range !11, !noalias !4106
  %.phi.trans.insert78.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre79.i.i.i = load i64, ptr %.phi.trans.insert78.i.i.i, align 8, !noalias !4106
  %i.as = call i64 @llvm.uadd.sat.i64(i64 %i.ap, i64 %.pre75.i.i.i)
  %2 = freeze i64 %.pre77.i.i.i
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i: ; preds = %bb.g, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i
  %i.at = phi i64 [ %.pre79.i.i.i, %bb.g ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i ]
  %.fr35 = phi i64 [ %2, %bb.g ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i ] ; 2 uses
  %i.au = phi i64 [ %i.as, %bb.g ], [ %i.ap, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4106
  %i.av = load ptr, ptr %1, align 8, !alias.scope !4107, !noundef !4 ; 2 uses
  %.not54.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not54.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i
  %.val61.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !4107, !nonnull !4, !noundef !4
  %i.aw = icmp eq ptr %.val61.i.i.i, %i.av
  %i.ax = trunc nuw i64 %i.ao to i1
  %i.ay = trunc i64 %.fr35 to i1
  %op.rdx33 = and i1 %i.aw, %i.ay
  %op.rdx34 = select i1 %op.rdx33, i1 %i.ax, i1 false
  br i1 %op.rdx34, label %bb.j, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB6j_.exit.i

bb.i:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i
  %i.az = and i64 %.fr35, %i.ao
  %or.cond55.not.i.i.i = icmp eq i64 %i.az, 0
  br i1 %or.cond55.not.i.i.i, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB6j_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = add i64 %i.at, %i.an
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB6j_.exit.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB6j_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %.sink81.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %bb.j ], [ %.sroa.5.i, %bb.i ], [ %.sroa.5.i, %bb.h ]
  %.sink.i.i.i = phi i64 [ %i.ba, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ]
  store i64 %.sink.i.i.i, ptr %.sink81.i.i.sroa.phi.i, align 8, !alias.scope !4110, !noalias !4095
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.bb = call i64 @llvm.uadd.sat.i64(i64 %i.au, i64 1)
  %i.bc = call i64 @llvm.umax.i64(i64 %i.bb, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4095
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.bc, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2), !noalias !4093
  %i.bd = load i64, ptr %i.c, align 8, !range !11, !noalias !4095, !noundef !4
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !32, !noalias !4095, !noundef !4 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.be, label %bb.k, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit.i, !prof !9

bb.k:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB6j_.exit.i
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !4095
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.bg, i64 %i.bi) #31, !noalias !4093
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit.i: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB6j_.exit.i
  %i.bj = load ptr, ptr %i.bh, align 8, !noalias !4095, !nonnull !4, !noundef !4 ; 2 uses
  %i.bk = icmp ule i64 %i.bc, %i.bg
  call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4095
  store i16 %i.al, ptr %i.bj, align 2, !noalias !4093
  store i64 %i.bg, ptr %i.g, align 8, !noalias !4095
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4095
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4095
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !4093
  call void @llvm.experimental.noalias.scope.decl(metadata !4111)
  call void @llvm.experimental.noalias.scope.decl(metadata !4112)
  call void @llvm.experimental.noalias.scope.decl(metadata !4113)
  call void @llvm.experimental.noalias.scope.decl(metadata !4114)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 8 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.phi.trans.insert73.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.phi.trans.insert76.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.phi.trans.insert78.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !4115, !noalias !4095
  %i.bp = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %i.bp, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = invoke { i16, i16 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4093 ; 3 uses

.noexc.i:                                         ; preds = %bb.m
  %i.br = extractvalue { i16, i16 } %i.bq, 0      ; 2 uses
  %.not3.i.i.peel.i.i.i.i = icmp eq i16 %i.br, 1
  br i1 %.not3.i.i.peel.i.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i.i.i: ; preds = %.noexc.i
  store ptr null, ptr %i.bl, align 8, !alias.scope !4115, !noalias !4095
  %i.bs = trunc i16 %i.br to i1
  br i1 %i.bs, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB6j_.exit.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i.i.i, %bb.l
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !4116, !noalias !4095, !noundef !4 ; 3 uses
  %.not.i4.i.peel.i.i.i.i = icmp eq ptr %i.bt, null
  %i.bu = load ptr, ptr %i.bm, align 8, !alias.scope !4117, !noalias !4095, !nonnull !4
  %i.bv = icmp eq ptr %i.bt, %i.bu
  %or.cond.i.i8.i = select i1 %.not.i4.i.peel.i.i.i.i, i1 true, i1 %i.bv
  br i1 %or.cond.i.i8.i, label %.loopexit.i.i.i.i, label %.peel.next.i.i.i.i

.peel.next.i.i.i.i:                               ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i.i.i
  %.sink14.i.i.i.i = phi ptr [ %.pre.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i.i.i ], [ %i.bt, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i.i.i ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sink14.i.i.i.i, i64 112
  store ptr %i.bw, ptr %i.f, align 8, !alias.scope !4118, !noalias !4095
  %i.bx = getelementptr i8, ptr %.sink14.i.i.i.i, i64 8
  %.val.i.i.i.peel.i.i.i.i = load ptr, ptr %i.bx, align 8, !noalias !4093, !nonnull !4, !noundef !4 ; 2 uses
  %i.by = getelementptr i8, ptr %.sink14.i.i.i.i, i64 16
  %.val3.i.i.i.peel.i.i.i.i = load i64, ptr %i.by, align 8, !noalias !4093, !noundef !4
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.peel.i.i.i.i, i64 %.val3.i.i.i.peel.i.i.i.i
  store ptr %.val.i.i.i.peel.i.i.i.i, ptr %i.bl, align 8, !alias.scope !4119, !noalias !4095
  store ptr %i.bz, ptr %i.bn, align 8, !alias.scope !4119, !noalias !4095
  %i.ca = invoke { i16, i16 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4093 ; 3 uses

.noexc9.i:                                        ; preds = %.peel.next.i.i.i.i
  %i.cb = extractvalue { i16, i16 } %i.ca, 0      ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq i16 %i.cb, 1
  br i1 %.not3.i.i.i.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i.i.i: ; preds = %.noexc9.i, %.noexc.i
  %.lcssa.i.i.i.i = phi { i16, i16 } [ %i.bq, %.noexc.i ], [ %i.ca, %.noexc9.i ]
  %i.cc = extractvalue { i16, i16 } %.lcssa.i.i.i.i, 1
  %i.cd = insertvalue { i16, i16 } { i16 1, i16 poison }, i16 %i.cc, 1
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB6j_.exit.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i: ; preds = %.noexc9.i
  store ptr null, ptr %i.bl, align 8, !alias.scope !4115, !noalias !4095
  %i.ce = trunc i16 %i.cb to i1
  br i1 %i.ce, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB6j_.exit.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !4120, !noalias !4095 ; 3 uses
  %.not.i4.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i, null
  %i.cf = load ptr, ptr %i.bm, align 8, !alias.scope !4117, !noalias !4095, !nonnull !4
  %i.cg = icmp eq ptr %.pre.i.i.i.i, %i.cf
  %or.cond7.i.i.i = select i1 %.not.i4.i.i.i.i.i, i1 true, i1 %i.cg
  br i1 %or.cond7.i.i.i, label %.loopexit.i.i.i.i, label %.peel.next.i.i.i.i, !llvm.loop !4052

.loopexit.i.i.i.i:                                ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread14.i.peel.i.i.i.i
  %i.ch = load ptr, ptr %i.bo, align 8, !alias.scope !4121, !noalias !4095, !noundef !4
  %.not.i7.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i7.i.i.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.loopexit.i.i.i.i
  %i.ci = invoke { i16, i16 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bo)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4093 ; 2 uses

.noexc10.i:                                       ; preds = %bb.n
  %i.cj = extractvalue { i16, i16 } %i.ci, 0      ; 2 uses
  %i.ck = extractvalue { i16, i16 } %i.ci, 1      ; 2 uses
  %.not3.i8.i.i.i.i.i = icmp eq i16 %i.cj, 1
  br i1 %.not3.i8.i.i.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc10.i
  store ptr null, ptr %i.bo, align 8, !alias.scope !4121, !noalias !4095
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i.i.i: ; preds = %bb.o, %.noexc10.i, %.loopexit.i.i.i.i
  %.sroa.3.0.i9.i.i.i.i.i = phi i16 [ undef, %.loopexit.i.i.i.i ], [ %i.ck, %bb.o ], [ %i.ck, %.noexc10.i ]
  %.sroa.0.0.i10.i.i.i.i.i = phi i16 [ 0, %.loopexit.i.i.i.i ], [ %i.cj, %bb.o ], [ 1, %.noexc10.i ]
  %i.cl = insertvalue { i16, i16 } poison, i16 %.sroa.0.0.i10.i.i.i.i.i, 0
  %i.cm = insertvalue { i16, i16 } %i.cl, i16 %.sroa.3.0.i9.i.i.i.i.i, 1
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB6j_.exit.i.i.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB6j_.exit.i.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i.i.i
  %.merged.i.i.i.i.i = phi { i16, i16 } [ %i.cm, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit11.i.i.i.i.i ], [ %i.cd, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.thread.i.i.i.i.i ], [ %i.bq, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.peel.i.i.i.i ], [ %i.ca, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i ] ; 2 uses
  %i.cn = extractvalue { i16, i16 } %.merged.i.i.i.i.i, 0
  %i.co = extractvalue { i16, i16 } %.merged.i.i.i.i.i, 1
  %i.cp = trunc i16 %i.cn to i1
  br i1 %i.cp, label %bb.p, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB29_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtB29_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB25_6copied6CopiedIB2X_BR_EENCNCNCNvMNtNtB3u_7compile11compile_ctxINtB6A_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB7s_16FeaVariationInfoE25resolve_named_glyph_class000EE11spec_extendB7u_.exit.i

bb.p:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB6j_.exit.i.i.i
  %i.cq = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4122, !noalias !4095, !noundef !4 ; 4 uses
  %i.cr = icmp ult i64 %i.cq, 4611686018427387904
  call void @llvm.assume(i1 %i.cr)
  %i.cs = load i64, ptr %i.g, align 8, !range !10, !alias.scope !4122, !noalias !4095, !noundef !4
  %i.ct = icmp eq i64 %i.cq, %i.cs
  br i1 %i.ct, label %bb.q, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !4123)
  call void @llvm.experimental.noalias.scope.decl(metadata !4124)
  call void @llvm.experimental.noalias.scope.decl(metadata !4125)
  call void @llvm.experimental.noalias.scope.decl(metadata !4126)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4127
  %i.cu = load ptr, ptr %i.bl, align 8, !alias.scope !4128, !noalias !4095, !noundef !4
  %.not.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.bl)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4093

.noexc11.i:                                       ; preds = %bb.r
  %.pre.i.i3.i.i.i = load i64, ptr %i.b, align 8, !noalias !4127
  %.pre72.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !range !11, !noalias !4127
  %.pre74.i.i.i.i.i = load i64, ptr %.phi.trans.insert73.i.i.i.i.i, align 8, !noalias !4127
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i: ; preds = %.noexc11.i, %bb.q
  %i.cv = phi i64 [ %.pre74.i.i.i.i.i, %.noexc11.i ], [ 0, %bb.q ]
  %i.cw = phi i64 [ %.pre72.i.i.i.i.i, %.noexc11.i ], [ 1, %bb.q ] ; 2 uses
  %i.cx = phi i64 [ %.pre.i.i3.i.i.i, %.noexc11.i ], [ 0, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4127
  %i.cy = load ptr, ptr %i.bo, align 8, !alias.scope !4128, !noalias !4095, !noundef !4
  %.not53.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not53.i.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i
  invoke void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.bo)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4093

.noexc12.i:                                       ; preds = %bb.s
  %.pre75.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !4127
  %.pre77.i.i.i.i.i = load i64, ptr %.phi.trans.insert76.i.i.i.i.i, align 8, !range !11, !noalias !4127
  %.pre79.i.i.i.i.i = load i64, ptr %.phi.trans.insert78.i.i.i.i.i, align 8, !noalias !4127
  %i.cz = call i64 @llvm.uadd.sat.i64(i64 %i.cx, i64 %.pre75.i.i.i.i.i)
  %3 = freeze i64 %.pre77.i.i.i.i.i
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i.i.i: ; preds = %.noexc12.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i
  %i.da = phi i64 [ %.pre79.i.i.i.i.i, %.noexc12.i ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i ]
  %.fr36 = phi i64 [ %3, %.noexc12.i ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i ] ; 2 uses
  %i.db = phi i64 [ %i.cz, %.noexc12.i ], [ %i.cx, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4127
  %i.dc = load ptr, ptr %i.f, align 8, !alias.scope !4128, !noalias !4095, !noundef !4 ; 2 uses
  %.not54.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not54.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i.i.i
  %.val61.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !4128, !noalias !4095, !nonnull !4, !noundef !4
  %i.dd = icmp eq ptr %.val61.i.i.i.i.i, %i.dc
  %i.de = trunc nuw i64 %i.cw to i1
  %i.df = trunc i64 %.fr36 to i1
  %op.rdx = and i1 %i.dd, %i.df
  %op.rdx32 = select i1 %op.rdx, i1 %i.de, i1 false
  br i1 %op.rdx32, label %bb.v, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB6j_.exit.i.i.i

bb.u:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit62.i.i.i.i.i
  %i.dg = and i64 %.fr36, %i.cw
  %or.cond55.not.i.i.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %or.cond55.not.i.i.i.i.i, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB6j_.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dh = add i64 %i.da, %i.cv
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB6j_.exit.i.i.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB6j_.exit.i.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %.sink81.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %bb.v ], [ %.sroa.5.i.i.i, %bb.u ], [ %.sroa.5.i.i.i, %bb.t ]
  %.sink.i.i.i.i.i = phi i64 [ %i.dh, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ]
  store i64 %.sink.i.i.i.i.i, ptr %.sink81.i.i.sroa.phi.i.i.i, align 8, !alias.scope !4129, !noalias !4130
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.di = call i64 @llvm.uadd.sat.i64(i64 %i.db, i64 1) ; 2 uses
  %i.dj = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4131, !noalias !4095, !noundef !4 ; 2 uses
  %i.dk = load i64, ptr %i.g, align 8, !range !10, !alias.scope !4131, !noalias !4095, !noundef !4
  %i.dl = sub i64 %i.dk, %i.dj
  %i.dm = icmp ugt i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.w, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i, !prof !9

bb.w:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB6j_.exit.i.i.i
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.dj, i64 noundef %i.di, i64 noundef 2, i64 noundef 2)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4093

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i: ; preds = %bb.w, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator9size_hintB6j_.exit.i.i.i, %bb.p
  %i.dn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4122, !noalias !4095, !nonnull !4, !noundef !4
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.cq
  store i16 %i.co, ptr %i.do, align 2, !noalias !4093
  %i.dp = add nuw nsw i64 %i.cq, 1
  store i64 %i.dp, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4122, !noalias !4095
  br label %bb.l

bb.x:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB6j_.exit.i
  store i64 0, ptr %0, align 8, !alias.scope !4093
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.dq, align 8, !alias.scope !4093
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dr, align 8, !alias.scope !4093
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB2s_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtB2s_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB2o_6copied6CopiedIB3g_B11_EENCNCNCNvMNtNtB3N_7compile11compile_ctxINtB6U_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB7M_16FeaVariationInfoE25resolve_named_glyph_class000EE9from_iterB7O_.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next.i.i.i.i, %bb.w, %bb.s, %bb.r, %bb.n, %bb.m
  %lpad.loopexit.split-lp37 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i unwind label %bb.y, !noalias !4093

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB29_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtB29_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB25_6copied6CopiedIB2X_BR_EENCNCNCNvMNtNtB3u_7compile11compile_ctxINtB6A_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB7s_16FeaVariationInfoE25resolve_named_glyph_class000EE11spec_extendB7u_.exit.i: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtBb_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB7_6copied6CopiedIB15_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCNCNCNvMNtNtB1B_7compile11compile_ctxINtB5p_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB6h_16FeaVariationInfoE25resolve_named_glyph_class000ENtNtNtB9_6traits8iterator8Iterator4nextB6j_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4095
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !4094
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB2s_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtB2s_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB2o_6copied6CopiedIB3g_B11_EENCNCNCNvMNtNtB3N_7compile11compile_ctxINtB6U_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB7M_16FeaVariationInfoE25resolve_named_glyph_class000EE9from_iterB7O_.exit

bb.y:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !4093
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp37

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB2s_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtB2s_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB2o_6copied6CopiedIB3g_B11_EENCNCNCNvMNtNtB3N_7compile11compile_ctxINtB6U_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB7M_16FeaVariationInfoE25resolve_named_glyph_class000EE9from_iterB7O_.exit: ; preds = %bb.x, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB29_5slice4iter4IterTNtNtNtCscScJTt9VrQp_6fea_rs6common11glyph_class10GlyphClassINtNtB29_6option6OptionNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders13AnchorBuilderEEEINtNtB25_6copied6CopiedIB2X_BR_EENCNCNCNvMNtNtB3u_7compile11compile_ctxINtB6A_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB7s_16FeaVariationInfoE25resolve_named_glyph_class000EE11spec_extendB7u_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4095
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB27_10filter_map9FilterMapINtNtB27_10take_while9TakeWhileNtNtBY_10token_tree9ChildIterNCNvMsu_NtB3S_5typedNtB4r_5Gsub46target0ENvYNtB4r_12GlyphOrClassNtB4r_7AstNode4castENCNvMNtNtBY_7compile11compile_ctxINtB5K_14CompilationCtxNtNtB5M_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE16add_ligature_sub0EE9from_iterB7l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(176) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [176 x i8], align 8               ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4186)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4187
  invoke fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_10take_while9TakeWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMsu_NtB1W_5typedNtB2N_5Gsub46target0ENvYNtB2N_12GlyphOrClassNtB2N_7AstNode4castENCNvMNtNtB1Y_7compile11compile_ctxINtB46_14CompilationCtxNtNtB48_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE16add_ligature_sub0ENtNtNtB9_6traits8iterator8Iterator4nextB5I_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1)
          to label %bb.c unwind label %bb.b, !noalias !4185

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !38, !noalias !4187, !noundef !4
  %.not.i = icmp eq i64 %i.i, -1
  br i1 %.not.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !4185
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !alias.scope !4185
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8, !alias.scope !4185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4187
  %i.l = load i64, ptr %1, align 8, !range !17, !alias.scope !4188, !noundef !4
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2l_10filter_map9FilterMapINtNtB2l_10take_while9TakeWhileNtNtB15_10token_tree9ChildIterNCNvMsu_NtB46_5typedNtB4G_5Gsub46target0ENvYNtB4G_12GlyphOrClassNtB4G_7AstNode4castENCNvMNtNtB15_7compile11compile_ctxINtB5Z_14CompilationCtxNtNtB61_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE16add_ligature_sub0EE9from_iterB7B_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1), !noalias !4185
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2l_10filter_map9FilterMapINtNtB2l_10take_while9TakeWhileNtNtB15_10token_tree9ChildIterNCNvMsu_NtB46_5typedNtB4G_5Gsub46target0ENvYNtB4G_12GlyphOrClassNtB4G_7AstNode4castENCNvMNtNtB15_7compile11compile_ctxINtB5Z_14CompilationCtxNtNtB61_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE16add_ligature_sub0EE9from_iterB7B_.exit

bb.f:                                             ; preds = %bb.i, %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load i64, ptr %i.e, align 8, !range !22, !alias.scope !4189, !noalias !4187, !noundef !4 ; 2 uses
  %i.p = icmp ne i64 %i.o, -9223372036854775807
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp sgt i64 %i.o, -1
  br i1 %i.q, label %bb.g, label %bb.x

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.x unwind label %bb.w, !noalias !4185

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !4187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4187
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc4.i unwind label %bb.f, !noalias !4185

.noexc4.i:                                        ; preds = %bb.h
  %i.r = load i64, ptr %i.c, align 8, !range !11, !noalias !4187, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !32, !noalias !4187, !noundef !4 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.s, label %bb.i, label %bb.j, !prof !9

bb.i:                                             ; preds = %.noexc4.i
  %i.w = load i64, ptr %i.v, align 8, !noalias !4187
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.w) #31
          to label %.noexc5.i unwind label %bb.f, !noalias !4185

.noexc5.i:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %.noexc4.i
  %i.x = load ptr, ptr %i.v, align 8, !noalias !4187, !nonnull !4, !noundef !4 ; 2 uses
  %i.y = icmp ugt i64 %i.u, 3
  tail call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !4185
  store i64 %i.u, ptr %i.g, align 8, !noalias !4187
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4187
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 176, i1 false), !noalias !4185
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4193)
  br label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4194
  invoke fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_10take_while9TakeWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMsu_NtB1W_5typedNtB2N_5Gsub46target0ENvYNtB2N_12GlyphOrClassNtB2N_7AstNode4castENCNvMNtNtB1Y_7compile11compile_ctxINtB46_14CompilationCtxNtNtB48_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE16add_ligature_sub0ENtNtNtB9_6traits8iterator8Iterator4nextB5I_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.d)
          to label %bb.n unwind label %bb.m, !noalias !4185

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassECshxhuDJfZv4T_6fontbe.exit.i.i.i: ; preds = %bb.s, %bb.r, %bb.m
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.am, %bb.s ], [ %i.am, %bb.r ] ; 2 uses
  %i.z = load i64, ptr %i.d, align 8, !range !17, !alias.scope !4195, !noalias !4187, !noundef !4
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %.body.i, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassECshxhuDJfZv4T_6fontbe.exit.i.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.d)
          to label %.body.i unwind label %bb.u, !noalias !4185

bb.m:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs6common12GlyphOrClassECshxhuDJfZv4T_6fontbe.exit.i.i.i

bb.n:                                             ; preds = %bb.k
  %i.ac = load i64, ptr %i.b, align 8, !range !38, !noalias !4194, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.ac, -1
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !4194
  %i.ad = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4196, !noalias !4187, !noundef !4 ; 5 uses
  %i.ae = icmp ult i64 %i.ad, 384307168202282326
  call void @llvm.assume(i1 %i.ae)
end_hunk_0
