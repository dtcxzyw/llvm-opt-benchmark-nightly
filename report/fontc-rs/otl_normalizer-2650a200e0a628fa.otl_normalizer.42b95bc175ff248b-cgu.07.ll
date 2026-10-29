Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/otl_normalizer-2650a200e0a628fa.otl_normalizer.42b95bc175ff248b-cgu.07?download=true
inline.NumInlined: 275
inline.NumDeleted: 149
begin_hunk_0_@_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameE6insertCs5JazJsyow1H_14otl_normalizer:bb.a
_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs5JazJsyow1H_14otl_normalizer.exit: ; preds = %bb.c, %bb.b, %bb.d
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameE8into_mutCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16TNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtCsf3Ta7LF998c_4core6option6OptiontEEEINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB46_4gpos7cursive14CursivePosRuleEE6insertB46_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 8 captures(none) dereferenceable(176) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(176) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_RNvMsS_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16TNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtCsf3Ta7LF998c_4core6option6OptiontEEEINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB4n_4gpos7cursive14CursivePosRuleENtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutB4n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBG_4gpos7cursive14CursivePosRuleEEBG_(ptr noalias nofree noundef align 8 dereferenceable(176) %2) #19
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %i.c, i64 176, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.c, ptr noundef nonnull align 8 dereferenceable(176) %2, i64 176, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16TNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtCsf3Ta7LF998c_4core6option6OptiontEEEINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB46_4gpos7cursive14CursivePosRuleEE8into_mutB46_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16TNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtCsf3Ta7LF998c_4core6option6OptiontEEEINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB4n_4gpos7cursive14CursivePosRuleENtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutB4n_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryjNtNtB9_7set_val9SetValZSTE6insertCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMsS_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryjNtNtB9_7set_val9SetValZSTE8into_mutCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvMsQ_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntrytNtNtB9_7set_val9SetValZSTE6insertCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMsS_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MuttNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntrytNtNtB9_7set_val9SetValZSTE8into_mutCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvMsQ_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MuttNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3Z_9GlyphId163newENvMs6_B28_B26_4iterEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.b = load i8, ptr %i.a, align 2, !range !379, !alias.scope !378, !noundef !4 ; 2 uses
  %.not.i = icmp eq i8 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  br i1 %.not.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.e = load i8, ptr %i.d, align 4, !range !380, !alias.scope !381, !noundef !4
  %or.cond.not.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %or.cond.not.i.i.i.i.i, label %bb.c, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.h = load i16, ptr %i.f, align 8, !alias.scope !384, !noundef !4 ; 2 uses
  %i.i = load i16, ptr %i.g, align 2, !alias.scope !385, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i16 %i.h, %i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sub nuw i16 %i.i, %i.h
  %i.k = zext i16 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 1
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.7.0.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.l, %bb.d ], [ 0, %bb.b ]
  %or.cond82.not.i.i.i.i.i = icmp eq i8 %i.b, 0
  br i1 %or.cond82.not.i.i.i.i.i, label %bb.e, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i.i

bb.e:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.o = load i16, ptr %i.m, align 2, !alias.scope !388, !noundef !4 ; 2 uses
  %i.p = load i16, ptr %i.n, align 8, !alias.scope !389, !noundef !4 ; 2 uses
  %.not.i.i.i.i61.i.i.i.i.i = icmp ugt i16 %i.o, %i.p
  br i1 %.not.i.i.i.i61.i.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = sub nuw i16 %i.p, %i.o
  %i.r = zext i16 %i.q to i64
  %i.s = add nuw nsw i64 %i.r, 1
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i.i: ; preds = %bb.f, %bb.e, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.s, %bb.f ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i.i ]
  %i.t = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i ; 2 uses
  %i.u = load ptr, ptr %i.c, align 8, !alias.scope !381, !noundef !4 ; 2 uses
  %.not54.i.i.i.i.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val60.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !381, !nonnull !4
  %i.w = icmp eq ptr %.val60.i.i.i.i.i, %i.u
  %or.cond84.i.i.i.i.i = select i1 %.not54.i.i.i.i.i, i1 true, i1 %i.w ; 2 uses
  %spec.select.i = select i1 %or.cond84.i.i.i.i.i, i64 %i.t, i64 undef
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i.i, %bb.a
  %.sroa.7.1.i = phi i64 [ %spec.select.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.5.0.i = phi i1 [ %or.cond84.i.i.i.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.t, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i.i ], [ 0, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 90
  %i.y = load i8, ptr %i.x, align 2, !range !379, !alias.scope !378, !noundef !4 ; 2 uses
  %.not53.i = icmp eq i8 %i.y, -1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  br i1 %.not53.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit73.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ab = load i8, ptr %i.aa, align 4, !range !380, !alias.scope !390, !noundef !4
  %or.cond.not.i.i.i.i60.i = icmp eq i8 %i.ab, 0
  br i1 %or.cond.not.i.i.i.i60.i, label %bb.h, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i61.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 82
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.ae = load i16, ptr %i.ac, align 8, !alias.scope !393, !noundef !4 ; 2 uses
  %i.af = load i16, ptr %i.ad, align 2, !alias.scope !394, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i72.i = icmp ugt i16 %i.ae, %i.af
  br i1 %.not.i.i.i.i.i.i.i.i72.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i61.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = sub nuw i16 %i.af, %i.ae
  %i.ah = zext i16 %i.ag to i64
  %i.ai = add nuw nsw i64 %i.ah, 1
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i61.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i61.i: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.7.0.i.i.i.i62.i = phi i64 [ 0, %bb.h ], [ %i.ai, %bb.i ], [ 0, %bb.g ]
  %or.cond82.not.i.i.i.i63.i = icmp eq i8 %i.y, 0
  br i1 %or.cond82.not.i.i.i.i63.i, label %bb.j, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i64.i

bb.j:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i61.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 86
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.al = load i16, ptr %i.aj, align 2, !alias.scope !397, !noundef !4 ; 2 uses
  %i.am = load i16, ptr %i.ak, align 8, !alias.scope !398, !noundef !4 ; 2 uses
  %.not.i.i.i.i61.i.i.i.i71.i = icmp ugt i16 %i.al, %i.am
  br i1 %.not.i.i.i.i61.i.i.i.i71.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i64.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = sub nuw i16 %i.am, %i.al
  %i.ao = zext i16 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, 1
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i64.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i64.i: ; preds = %bb.k, %bb.j, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i61.i
  %.sroa.8.0.i.i.i.i65.i = phi i64 [ 0, %bb.j ], [ %i.ap, %bb.k ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i.i.i.i61.i ]
  %i.aq = add nuw nsw i64 %.sroa.8.0.i.i.i.i65.i, %.sroa.7.0.i.i.i.i62.i ; 2 uses
  %i.ar = load ptr, ptr %i.z, align 8, !alias.scope !390, !noundef !4 ; 2 uses
  %.not54.i.i.i.i66.i = icmp eq ptr %i.ar, null
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val60.i.i.i.i67.i = load ptr, ptr %i.as, align 8, !alias.scope !390, !nonnull !4
  %i.at = icmp eq ptr %.val60.i.i.i.i67.i, %i.ar
  %or.cond84.i.i.i.i68.i = select i1 %.not54.i.i.i.i66.i, i1 true, i1 %i.at ; 2 uses
  %spec.select88.i = select i1 %or.cond84.i.i.i.i68.i, i64 %i.aq, i64 undef
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit73.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit73.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i64.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i
  %.sroa.8.1.i = phi i64 [ %spec.select88.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i64.i ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i ]
  %.sroa.581.0.i = phi i1 [ %or.cond84.i.i.i.i68.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i64.i ], [ true, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i ] ; 2 uses
  %.sroa.080.0.i = phi i64 [ %i.aq, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit64.i.i.i.i64.i ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit.i ]
  %i.au = add nuw nsw i64 %.sroa.080.0.i, %.sroa.0.0.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.aw = load i8, ptr %i.av, align 2, !range !16, !alias.scope !378, !noundef !4 ; 2 uses
  %.not54.i = icmp eq i8 %i.aw, -2
  br i1 %.not54.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit73.i
  %.not90.i = icmp eq i8 %i.aw, -1
  %op.rdx = select i1 %.not90.i, i1 %.sroa.5.0.i, i1 false
  %op.rdx11 = select i1 %op.rdx, i1 %.sroa.581.0.i, i1 false
  br i1 %op.rdx11, label %bb.o, label %bb.n

bb.m:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3I_9GlyphId163newENvMs6_B1R_B1P_4iterEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs5JazJsyow1H_14otl_normalizer.exit73.i
  %or.cond55.i = select i1 %.sroa.5.0.i, i1 %.sroa.581.0.i, i1 false
  br i1 %or.cond55.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i64 %i.au, ptr %0, align 8, !alias.scope !377
  br label %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB46_9GlyphId163newENvMs6_B2f_B2d_4iterEEB1z_ENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ax = add i64 %.sroa.8.1.i, %.sroa.7.1.i      ; 2 uses
  %i.ay = icmp uge i64 %i.ax, %.sroa.7.1.i
  %..i = zext i1 %i.ay to i64
  store i64 %i.au, ptr %0, align 8, !alias.scope !377
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %..i, ptr %i.az, align 8, !alias.scope !377
  br label %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB46_9GlyphId163newENvMs6_B2f_B2d_4iterEEB1z_ENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit

_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB46_9GlyphId163newENvMs6_B2f_B2d_4iterEEB1z_ENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit: ; preds = %bb.n, %bb.o
  %.sink102.i = phi i64 [ 16, %bb.o ], [ 8, %bb.n ]
  %.sink.i = phi i64 [ %i.ax, %bb.o ], [ 0, %bb.n ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.sink102.i
  store i64 %.sink.i, ptr %i.ba, align 8, !alias.scope !377
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgCecv3eZDcN_5alloc3vec3VectEEIB1r_NtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterB29_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgCecv3eZDcN_5alloc3vec3VectEEIB1t_NtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterB2b_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCs5JazJsyow1H_14otl_normalizer6common8GlyphSetTNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtCsf3Ta7LF998c_4core6option6OptiontEEEINtB1D_10SingleRuleNtNtNtB1F_4gpos7pairpos11PairPosRuleENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtB3G_4iter6traits7collect12IntoIterator9into_iterB1F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCs5JazJsyow1H_14otl_normalizer6common8GlyphSetTNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtCsf3Ta7LF998c_4core6option6OptiontEEEINtB1F_10SingleRuleNtNtNtB1H_4gpos7pairpos11PairPosRuleEEENtNtNtNtB3I_4iter6traits7collect12IntoIterator9into_iterB1H_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16TNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtCsf3Ta7LF998c_4core6option6OptiontEENtNtCs5JazJsyow1H_14otl_normalizer4gpos19ResolvedValueRecordB3s_EINtNtB3w_6common10SingleRuleNtNtB3u_7pairpos11PairPosRuleENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtB2S_4iter6traits7collect12IntoIterator9into_iterB3w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16TNtNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11lookup_flag10LookupFlagINtNtCsf3Ta7LF998c_4core6option6OptiontEENtNtCs5JazJsyow1H_14otl_normalizer4gpos19ResolvedValueRecordB3u_EINtNtB3y_6common10SingleRuleNtNtB3w_7pairpos11PairPosRuleEEENtNtNtNtB2U_4iter6traits7collect12IntoIterator9into_iterB3y_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_5chain5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2Y_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB4d_13CoverageTable4iter0EEEIB1s_IB1Q_INtB1u_7FlatMapIB2u_NtB4d_11RangeRecordEIB2e_INtNtNtBa_3ops5range14RangeInclusivetENvMB3E_B3C_3newENvMs6_B4d_B5T_4iterEEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.b = load i64, ptr %1, align 8, !range !414, !alias.scope !413, !noundef !4 ; 3 uses
  %.not.i = icmp eq i64 %i.b, 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 146
  %i.d = load i8, ptr %i.c, align 2, !range !16, !alias.scope !413, !noundef !4
  %.not7.i = icmp eq i8 %i.d, -2                  ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not7.i, label %bb.f, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2d_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3s_13CoverageTable4iter0EEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit.i

bb.c:                                             ; preds = %bb.a
  br i1 %.not7.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call fastcc void @_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3Z_9GlyphId163newENvMs6_B28_B26_4iterEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.e) #16
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2w_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3L_13CoverageTable4iter0EEEIB10_IB1o_INtB12_7FlatMapIB22_NtB3L_11RangeRecordEIB1M_INtNtNtBa_3ops5range14RangeInclusivetENvMB3c_B3a_3newENvMs6_B3L_B5r_4iterEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !412
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !412
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.g, align 8, !alias.scope !412
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2w_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3L_13CoverageTable4iter0EEEIB10_IB1o_INtB12_7FlatMapIB22_NtB3L_11RangeRecordEIB1M_INtNtNtBa_3ops5range14RangeInclusivetENvMB3c_B3a_3newENvMs6_B3L_B5r_4iterEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2d_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3s_13CoverageTable4iter0EEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !415, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val3.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !415, !nonnull !4
  %i.l = ptrtoint ptr %.val3.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 1
  %.sroa.7.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !415, !noundef !4 ; 2 uses
  %.not53.i.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3.i61.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !415, !nonnull !4
  %i.s = ptrtoint ptr %.val3.i61.i.i.i to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 1
  %.sroa.8.0.i.i.i = select i1 %.not53.i.i.i, i64 0, i64 %i.v
  %i.w = add nuw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i ; 2 uses
  %i.x = trunc nuw i64 %i.b to i1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !415
  %.not76.i.i.i = icmp ne ptr %.val.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.x, i1 %.not76.i.i.i, i1 false ; 2 uses
  %spec.select.i = select i1 %or.cond.not.i.i.i, i64 undef, i64 %i.w ; 2 uses
  %not.or.cond.not.i.i.i = xor i1 %or.cond.not.i.i.i, true
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !416
  call fastcc void @_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3Z_9GlyphId163newENvMs6_B28_B26_4iterEEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.h) #16, !noalias !412
  %i.z = load i64, ptr %i.a, align 8, !noalias !416, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !417, !noalias !416, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !416
  %i.ae = tail call i64 @llvm.uadd.sat.i64(i64 %i.w, i64 %i.z)
  %i.af = trunc nuw i64 %i.ab to i1
  %or.cond.i = and i1 %not.or.cond.not.i.i.i, %i.af ; 2 uses
  %i.ag = add i64 %spec.select.i, %i.ad           ; 2 uses
  %i.ah = icmp uge i64 %i.ag, %spec.select.i
  %.sroa.46.0.i = select i1 %or.cond.i, i64 %i.ag, i64 undef
  %narrow.i = select i1 %or.cond.i, i1 %i.ah, i1 false
  %.sroa.05.0.i = zext i1 %narrow.i to i64
  store i64 %i.ae, ptr %0, align 8, !alias.scope !412
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0.i, ptr %i.ai, align 8, !alias.scope !412
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.46.0.i, ptr %i.aj, align 8, !alias.scope !412
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2w_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3L_13CoverageTable4iter0EEEIB10_IB1o_INtB12_7FlatMapIB22_NtB3L_11RangeRecordEIB1M_INtNtNtBa_3ops5range14RangeInclusivetENvMB3c_B3a_3newENvMs6_B3L_B5r_4iterEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !422, !noundef !4 ; 2 uses
  %.not.i.i10.i = icmp eq ptr %i.al, null
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val3.i.i.i11.i = load ptr, ptr %i.am, align 8, !alias.scope !422, !nonnull !4
  %i.an = ptrtoint ptr %.val3.i.i.i11.i to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub nuw i64 %i.an, %i.ao
  %i.aq = lshr exact i64 %i.ap, 1
  %.sroa.7.0.i.i12.i = select i1 %.not.i.i10.i, i64 0, i64 %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !422, !noundef !4 ; 2 uses
  %.not53.i.i13.i = icmp eq ptr %i.as, null
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3.i61.i.i14.i = load ptr, ptr %i.at, align 8, !alias.scope !422, !nonnull !4
  %i.au = ptrtoint ptr %.val3.i61.i.i14.i to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub nuw i64 %i.au, %i.av
  %i.ax = lshr exact i64 %i.aw, 1
  %.sroa.8.0.i.i15.i = select i1 %.not53.i.i13.i, i64 0, i64 %i.ax
  %i.ay = add nuw i64 %.sroa.8.0.i.i15.i, %.sroa.7.0.i.i12.i ; 2 uses
  %i.az = trunc nuw i64 %i.b to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i16.i = load ptr, ptr %i.ba, align 8, !alias.scope !422
  %.not76.i.i17.i = icmp ne ptr %.val.i.i16.i, null
  %or.cond.not.i.i18.i = select i1 %i.az, i1 %.not76.i.i17.i, i1 false
  br i1 %or.cond.not.i.i18.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2d_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3s_13CoverageTable4iter0EEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit20.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ay, ptr %i.bb, align 8, !alias.scope !423
  br label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2d_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3s_13CoverageTable4iter0EEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit20.i

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2d_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3s_13CoverageTable4iter0EEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit20.i: ; preds = %bb.g, %bb.f
  %.sink.i.i19.i = phi i64 [ 1, %bb.g ], [ 0, %bb.f ]
  store i64 %i.ay, ptr %0, align 8, !alias.scope !423
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink.i.i19.i, ptr %i.bc, align 8, !alias.scope !423
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2w_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3L_13CoverageTable4iter0EEEIB10_IB1o_INtB12_7FlatMapIB22_NtB3L_11RangeRecordEIB1M_INtNtNtBa_3ops5range14RangeInclusivetENvMB3c_B3a_3newENvMs6_B3L_B5r_4iterEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2w_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3L_13CoverageTable4iter0EEEIB10_IB1o_INtB12_7FlatMapIB22_NtB3L_11RangeRecordEIB1M_INtNtNtBa_3ops5range14RangeInclusivetENvMB3c_B3a_3newENvMs6_B3L_B5r_4iterEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit: ; preds = %bb.d, %bb.e, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2d_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3s_13CoverageTable4iter0EEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsbZq13ASDQ8l_10font_types3raw9BigEndianNtNtB2d_8glyph_id9GlyphId16EENCNvMs3_NtNtCs8n5UXKvQVD9_10read_fonts6tables6layoutNtB3s_13CoverageTable4iter0EEENtNtNtB9_6traits8iterator8Iterator9size_hintCs5JazJsyow1H_14otl_normalizer.exit20.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden { i16, i16 } @_RNvXs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtB6_7set_val9SetValZSTINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2O_5array4iter8IntoIterB1t_Kj1_ENCINvMse_NtB6_3setINtB4g_8BTreeSetB1t_E16from_sorted_iterB3t_E0EENtNtNtB2M_6traits8iterator8Iterator4nextCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %.promoted = load i16, ptr %i.a, align 8        ; 2 uses
  %.promoted13 = load i64, ptr %0, align 8        ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
